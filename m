Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB33729D185
	for <lists+devel-acpica@lfdr.de>; Wed, 28 Oct 2020 19:43:51 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 87E4116329C6C;
	Wed, 28 Oct 2020 11:43:50 -0700 (PDT)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=david.e.box@linux.intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7F2EB16329C69
	for <devel@acpica.org>; Wed, 28 Oct 2020 11:43:49 -0700 (PDT)
IronPort-SDR: LYn/tE7a238QmJn6XA3HLDI5RswsrnxF3w9L8S80X7EjYudgV1XlCv6k54zmdzGR5YtidP/1Ss
 AhXJljlC+4sA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="186082456"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400";
   d="scan'208";a="186082456"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 11:43:48 -0700
IronPort-SDR: z73T4VYYFT8e/7DDXn39yXFeEnTXnAf5KaKtE9AS9Pb5mkBEEBd5DLuJxvDFbuThfJdpmDbnDG
 C6BaGsiPU8pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400";
   d="scan'208";a="424809030"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2020 11:43:48 -0700
Received: from debox1-desk1.jf.intel.com (debox1-desk1.jf.intel.com [10.7.201.137])
	by linux.intel.com (Postfix) with ESMTP id 8C97A580713;
	Wed, 28 Oct 2020 11:43:48 -0700 (PDT)
Message-ID: <d414a22fbae9575e6c04f4a557ae49a2cd8eac57.camel@linux.intel.com>
From: "David E. Box" <david.e.box@linux.intel.com>
To: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
	linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org,
	iommu@lists.linux-foundation.org, devel@acpica.org
Date: Wed, 28 Oct 2020 11:43:48 -0700
In-Reply-To: <20201027112646.44680-3-shameerali.kolothum.thodi@huawei.com>
References: <20201027112646.44680-1-shameerali.kolothum.thodi@huawei.com>
	 <20201027112646.44680-3-shameerali.kolothum.thodi@huawei.com>
Organization: David E. Box
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Message-ID-Hash: 4JBDSHFXQKH3CZAQMR6GMF3GYA3J3WDJ
X-Message-ID-Hash: 4JBDSHFXQKH3CZAQMR6GMF3GYA3J3WDJ
X-MailFrom: david.e.box@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org, robin.murphy@arm.com, wanghuiqiang@huawei.com, jonathan.cameron@huawei.com
X-Mailman-Version: 3.1.1
Precedence: list
Reply-To: david.e.box@linux.intel.com
Subject: [Devel] Re: [RFC PATCH 2/4] ACPI/IORT: Add support for RMR node parsing
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4JBDSHFXQKH3CZAQMR6GMF3GYA3J3WDJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 2020-10-27 at 11:26 +0000, Shameer Kolothum wrote:

...

> @@ -1647,6 +1667,100 @@ static void __init iort_enable_acs(struct
> acpi_iort_node *iort_node)
>  #else
>  static inline void iort_enable_acs(struct acpi_iort_node *iort_node)
> { }
>  #endif
> +static int iort_rmr_desc_valid(struct acpi_iort_rmr_desc *desc)
> +{
> +	struct iort_rmr_entry *e;
> +	u64 end, start = desc->base_address, length = desc->length;
> +
> +	if ((!IS_ALIGNED(start, SZ_64K)) || (length % SZ_64K != 0))

You could just do:

if ((!IS_ALIGNED(start, SZ_64K)) || (length % SZ_64K))

David
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
