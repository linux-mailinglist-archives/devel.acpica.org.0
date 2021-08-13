Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A384A7926
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:25 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BD484100E5D27;
	Wed,  2 Feb 2022 11:59:23 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.189; helo=szxga03-in.huawei.com; envelope-from=guohanjun@huawei.com; receiver=<UNKNOWN> 
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D23DC100EC1EB
	for <devel@acpica.org>; Thu, 12 Aug 2021 23:27:04 -0700 (PDT)
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4GmD9Y4K3nz85pm;
	Fri, 13 Aug 2021 14:26:57 +0800 (CST)
Received: from dggpemm500002.china.huawei.com (7.185.36.229) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 13 Aug 2021 14:26:57 +0800
Received: from [10.174.178.247] (10.174.178.247) by
 dggpemm500002.china.huawei.com (7.185.36.229) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 13 Aug 2021 14:26:56 +0800
To: Mario Limonciello <mario.limonciello@amd.com>, Borislav Petkov
	<bp@alien8.de>, Ingo Molnar <mingo@redhat.com>, Thomas Gleixner
	<tglx@linutronix.de>
References: <20210812051657.28605-1-mario.limonciello@amd.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <a671969e-526f-cdc0-6c77-0eb2d940ec5c@huawei.com>
Date: Fri, 13 Aug 2021 14:26:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20210812051657.28605-1-mario.limonciello@amd.com>
Content-Language: en-GB
X-Originating-IP: [10.174.178.247]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500002.china.huawei.com (7.185.36.229)
X-CFilter-Loop: Reflected
X-MailFrom: guohanjun@huawei.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: CUD6IGUA6DDFQRQA4PMNZE6WG5DGT4MZ
X-Message-ID-Hash: CUD6IGUA6DDFQRQA4PMNZE6WG5DGT4MZ
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:54 -0800
CC: Alex Deucher <alexander.deucher@amd.com>,
	Huang Rui <ray.huang@amd.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"maintainer:X86"@ml01.01.org,
	ARCHITECTURE@ml01.01.org (32-BIT AND, Erik Kaneda <erik.kaneda@intel.com>, ACPI  <linux-acpi@vger.kernel.org>, ACPICA <open list:ACPI COMPONENT ARCHITECTURE>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] x86/acpi: Don't add CPUs that are not online capable
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CUD6IGUA6DDFQRQA4PMNZE6WG5DGT4MZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021/8/12 13:16, Mario Limonciello wrote:
> A number of systems are showing "hotplug capable" CPUs when they
> are not really hotpluggable.  This is because the MADT has extra
> CPU entries to support different CPUs that may be inserted into
> the socket with different numbers of cores.
> 
> The ACPI spec is clear that the Online Capable bit in the
> MADT should be used to determine whether or not a CPU is hotplug
> capable when the enabled bit is not set.

This was introduced in ACPI 6.3 spec, which means ACPI 6.2 and
earlier versions don't include the "Online Capable bit".

> 
> Link: https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/05_ACPI_Software_Programming_Model/ACPI_Software_Programming_Model.html?#local-apic-flags
> Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
> Reviewed-by: Huang Rui <ray.huang@amd.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>   arch/x86/kernel/acpi/boot.c | 6 ++++++
>   include/acpi/actbl2.h       | 1 +
>   2 files changed, 7 insertions(+)
> 
> diff --git a/arch/x86/kernel/acpi/boot.c b/arch/x86/kernel/acpi/boot.c
> index e55e0c1fad8c..eeb10b27d6de 100644
> --- a/arch/x86/kernel/acpi/boot.c
> +++ b/arch/x86/kernel/acpi/boot.c
> @@ -239,6 +239,12 @@ acpi_parse_lapic(union acpi_subtable_headers * header, const unsigned long end)
>   	if (processor->id == 0xff)
>   		return 0;
>   
> +	/* don't register processors that can not be onlined */
> +	if (!(processor->lapic_flags & ACPI_MADT_ENABLED)) {
> +		if (!(processor->lapic_flags & ACPI_MADT_ONLINE_CAPABLE))
> +			return 0;
> +	}

For firmware using ACPI 6.2 and early versions, the
ACPI_MADT_ONLINE_CAPABLE bit is reserved as zero, so if
we set CPU as disabled, the code here will always return
0 in those firmwares.

> +
>   	/*
>   	 * We need to register disabled CPU as well to permit
>   	 * counting disabled CPUs. This allows us to size

So we will not register the disabled CPU and will break
CPU hotplug features.

I think we need to consider the compatibility with old versions
of firmware.

Thanks
Hanjun
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
