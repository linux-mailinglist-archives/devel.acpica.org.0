Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A7E369233
	for <lists+devel-acpica@lfdr.de>; Fri, 23 Apr 2021 14:34:10 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A3E50100EAB5E;
	Fri, 23 Apr 2021 05:34:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.221.49; helo=mail-wr1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1DC39100EF25B
	for <devel@acpica.org>; Fri, 23 Apr 2021 05:34:05 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id c4so9338398wrt.8
        for <devel@acpica.org>; Fri, 23 Apr 2021 05:34:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CnDAq/wf30SK+v97SSEfI5TLrb0FjfVhYtu1LvUj2FE=;
        b=MVIpY8KfYhYlqaxg2o/64hW5a6SKmtcTs6scqwLCe1hImFnu3/twSZWivKPObnGeXT
         p9s4WKSAPQpyYcTbKCXaeZSsrQJQTYVI3EVdniq1VNs0ZDxXz3RRtKEfse13tJLyY8GC
         F1os1VMy3ZxGBGMYe8gX523/iLyx09u9UP9/J8cn3LTTB+5yfckg+mAZtCbnpzHQncO2
         hsXsar2AbnBgfv0ARmpbOwVcSjntUfXqsRTq47W8r92Z1rC1u6I2sj8/bg4Hx7QCz705
         ryYeNV4DyLaTCHa/0B9AKwU7xLIkV4gOalTR+NeXaTPjCYfbHF99l6LbLmdvC/TDsHhp
         Mo5A==
X-Gm-Message-State: AOAM532RWtdpff6Q3yaFJ/vV2CWRftmjduG6Jzg36xvaWxbFGJ7/fKDp
	Wai1CGr1ZI25vmkOKyC749EkGeoNiFhFNPkfEIk=
X-Google-Smtp-Source: ABdhPJwUJTJmvjUsLOs2czySsDSbXe3xbOjXToTSowi772RhmQrLzizFciArf9giECNlBWi3zp1t0vSsxQZjJSzMDJ4=
X-Received: by 2002:adf:9d81:: with SMTP id p1mr4606469wre.247.1619181244219;
 Fri, 23 Apr 2021 05:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210422214708.716164-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <20210422214708.716164-2-sathyanarayanan.kuppuswamy@linux.intel.com>
In-Reply-To: <20210422214708.716164-2-sathyanarayanan.kuppuswamy@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 23 Apr 2021 14:33:53 +0200
Message-ID: <CAJZ5v0itaKL58ieMB6ER47GVns7Ukvd_7VNBAxkktWB5cDv-SQ@mail.gmail.com>
To: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: ZY6FNCK7TN54GSNGJYNYV756K6SC63YY
X-Message-ID-Hash: ZY6FNCK7TN54GSNGJYNYV756K6SC63YY
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael J Wysocki <rjw@rjwysocki.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/3] ACPICA: ACPI 6.4: MADT: add Multiprocessor Wakeup Mailbox Structure
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZY6FNCK7TN54GSNGJYNYV756K6SC63YY/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Apr 22, 2021 at 11:47 PM Kuppuswamy Sathyanarayanan
<sathyanarayanan.kuppuswamy@linux.intel.com> wrote:
>
> ACPICA commit f1ee04207a212f6c519441e7e25397649ebc4cea
>
> Add Multiprocessor Wakeup Mailbox Structure definition. It is useful
> in parsing MADT Wake table.
>
> Link: https://github.com/acpica/acpica/commit/f1ee0420
> Signed-off-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>

I'm expecting to receive this patch from Erik at one point, so I'm
guessing that it's been added to this series for reference.

> ---
>  include/acpi/actbl2.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> index b2362600b9ff..7dce422f6119 100644
> --- a/include/acpi/actbl2.h
> +++ b/include/acpi/actbl2.h
> @@ -733,6 +733,20 @@ struct acpi_madt_multiproc_wakeup {
>         u64 base_address;
>  };
>
> +#define ACPI_MULTIPROC_WAKEUP_MB_OS_SIZE       2032
> +#define ACPI_MULTIPROC_WAKEUP_MB_FIRMWARE_SIZE 2048
> +
> +struct acpi_madt_multiproc_wakeup_mailbox {
> +       u16 command;
> +       u16 reserved;           /* reserved - must be zero */
> +       u32 apic_id;
> +       u64 wakeup_vector;
> +       u8 reserved_os[ACPI_MULTIPROC_WAKEUP_MB_OS_SIZE];       /* reserved for OS use */
> +       u8 reserved_firmware[ACPI_MULTIPROC_WAKEUP_MB_FIRMWARE_SIZE];   /* reserved for firmware use */
> +};
> +
> +#define ACPI_MP_WAKE_COMMAND_WAKEUP    1
> +
>  /*
>   * Common flags fields for MADT subtables
>   */
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
