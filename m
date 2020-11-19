Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94B2B9212
	for <lists+devel-acpica@lfdr.de>; Thu, 19 Nov 2020 13:07:14 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CAD2B100EBB89;
	Thu, 19 Nov 2020 04:07:12 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.176.79.56; helo=frasgout.his.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 15DE4100EBBCC
	for <devel@acpica.org>; Thu, 19 Nov 2020 04:07:10 -0800 (PST)
Received: from fraeml711-chm.china.huawei.com (unknown [172.18.147.207])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4CcJJf3lMNz67F2M;
	Thu, 19 Nov 2020 20:04:50 +0800 (CST)
Received: from lhreml715-chm.china.huawei.com (10.201.108.66) by
 fraeml711-chm.china.huawei.com (10.206.15.60) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Thu, 19 Nov 2020 13:07:08 +0100
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml715-chm.china.huawei.com (10.201.108.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Thu, 19 Nov 2020 12:07:07 +0000
Received: from lhreml710-chm.china.huawei.com ([169.254.81.184]) by
 lhreml710-chm.china.huawei.com ([169.254.81.184]) with mapi id
 15.01.1913.007; Thu, 19 Nov 2020 12:07:07 +0000
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Sami Mujawar <Sami.Mujawar@arm.com>, "david.e.box@linux.intel.com"
	<david.e.box@linux.intel.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "iommu@lists.linux-foundation.org"
	<iommu@lists.linux-foundation.org>, "devel@acpica.org" <devel@acpica.org>
Thread-Topic: [Devel] Re: [RFC PATCH 2/4] ACPI/IORT: Add support for RMR node
 parsing
Thread-Index: AQHWtpQY66bs/ZNapk2zvFyjgM+sLanPaxLw
Date: Thu, 19 Nov 2020 12:07:07 +0000
Message-ID: <735edb5c4da842609c1d2a0eed73b06c@huawei.com>
References: <20201027112646.44680-1-shameerali.kolothum.thodi@huawei.com>
	 <20201027112646.44680-3-shameerali.kolothum.thodi@huawei.com>
 <d414a22fbae9575e6c04f4a557ae49a2cd8eac57.camel@linux.intel.com>
 <DB7PR08MB3097062CEEDB4635BF3F694784EA0@DB7PR08MB3097.eurprd08.prod.outlook.com>
In-Reply-To: <DB7PR08MB3097062CEEDB4635BF3F694784EA0@DB7PR08MB3097.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.210.168.73]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Message-ID-Hash: XNAANVYVW6IXCF4D7EYS5VI7ZRSGU637
X-Message-ID-Hash: XNAANVYVW6IXCF4D7EYS5VI7ZRSGU637
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Linuxarm <linuxarm@huawei.com>, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, "joro@8bytes.org" <joro@8bytes.org>, "Robin Murphy  <Robin.Murphy@arm.com>, wanghuiqiang <wanghuiqiang@huawei.com>, Jonathan Cameron" <jonathan.cameron@huawei.com>, nd <nd@arm.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC PATCH 2/4] ACPI/IORT: Add support for RMR node parsing
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XNAANVYVW6IXCF4D7EYS5VI7ZRSGU637/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit



> -----Original Message-----
> From: Sami Mujawar [mailto:Sami.Mujawar@arm.com]
> Sent: 09 November 2020 12:30
> To: david.e.box@linux.intel.com; Shameerali Kolothum Thodi
> <shameerali.kolothum.thodi@huawei.com>;
> linux-arm-kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
> iommu@lists.linux-foundation.org; devel@acpica.org
> Cc: Linuxarm <linuxarm@huawei.com>; Lorenzo Pieralisi
> <Lorenzo.Pieralisi@arm.com>; joro@8bytes.org; Robin Murphy
> <Robin.Murphy@arm.com>; wanghuiqiang <wanghuiqiang@huawei.com>;
> Jonathan Cameron <jonathan.cameron@huawei.com>; nd <nd@arm.com>
> Subject: RE: [Devel] Re: [RFC PATCH 2/4] ACPI/IORT: Add support for RMR node
> parsing
> 
> Hi,
> 
> -----Original Message-----
> From: David E. Box <david.e.box@linux.intel.com>
> Sent: 28 October 2020 06:44 PM
> To: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>;
> linux-arm-kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
> iommu@lists.linux-foundation.org; devel@acpica.org
> Cc: linuxarm@huawei.com; Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>;
> joro@8bytes.org; Robin Murphy <Robin.Murphy@arm.com>;
> wanghuiqiang@huawei.com; jonathan.cameron@huawei.com
> Subject: [Devel] Re: [RFC PATCH 2/4] ACPI/IORT: Add support for RMR node
> parsing
> 
> Hi,
> 
> On Tue, 2020-10-27 at 11:26 +0000, Shameer Kolothum wrote:
> 
> ...
> 
> > @@ -1647,6 +1667,100 @@ static void __init iort_enable_acs(struct
> > acpi_iort_node *iort_node)
> >  #else
> >  static inline void iort_enable_acs(struct acpi_iort_node *iort_node)
> > { }
> >  #endif
> > +static int iort_rmr_desc_valid(struct acpi_iort_rmr_desc *desc)
> > +{
> > +	struct iort_rmr_entry *e;
> > +	u64 end, start = desc->base_address, length = desc->length;
> > +
> > +	if ((!IS_ALIGNED(start, SZ_64K)) || (length % SZ_64K != 0))
> 
> You could just do:
> 
> if ((!IS_ALIGNED(start, SZ_64K)) || (length % SZ_64K))
> 
> [SAMI] In my opinion, the following may be better:
> 	if (!IS_ALIGNED(start, SZ_64K) || !IS_ALIGNED(length, SZ_64K))
> [/SAMI]

Thanks for your suggestions. I don't have a strong opinion on either
of those, but will change it with the latter one for now.

Thanks,
Shameer

> Regards,
> 
> Sami Mujawar
> 
> David
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org
> %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
