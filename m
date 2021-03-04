Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CD632D8AA
	for <lists+devel-acpica@lfdr.de>; Thu,  4 Mar 2021 18:37:19 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C952F100EB82D;
	Thu,  4 Mar 2021 09:37:14 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E2BDB100EC1E6
	for <devel@acpica.org>; Thu,  4 Mar 2021 09:37:12 -0800 (PST)
IronPort-SDR: y+exGA/wbPV/pFi1v+nUE8TVmkjoQ+yMvfuJQsdkjiSiVMSKeLnou2k8EUbXOCAIRJpKn7yF5i
 CQV2LT0PgvnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="187573581"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400";
   d="scan'208";a="187573581"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 09:37:08 -0800
IronPort-SDR: KJzydKRy94ZGK8f5bDwFohvFYd9sAZ+WiQ7aMUaiMC7iO5JXKAA+TBMh8amC/D93j1t+LjWfXB
 tQiz4XxzZN7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400";
   d="scan'208";a="507473447"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2021 09:37:02 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Mar 2021 09:37:02 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Mar 2021 09:37:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 4 Mar 2021 09:37:01 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 4 Mar 2021 09:37:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGhAcSj+g7wHLdvkFJWBP3YOalPJx751ajKWCaiKaBYYVPkwaoVGLjJ+tLHbJLTnw+buKvkWL7WrCpyBC75bxRGZm1QJKIRgNPsiVKyMzI9tMwVCVSk7CR0ULLGqABX6SYu6c2HxjuWhwGrvAF3/0Sl8rJWwO1YaTzv0hKf0XNXhm+IaZZxPiLgtHIv0tEi3gpEQMjQwavlDwN8RyOnvIsGS2utMJZWtbY3QhL1JKSZO0O9jDcOkD2fnfvHOA+PsSHAC60saN380+jgGbKWnFZLf4p1GlKwhWO5vAOFs9s5s4jje8S6QIHwP+rBxONmqGTVVSRC5LevP8p6u7RkufQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3YTsINS2Dsl1gdK0SIcb+pxsYe1BO4R/Pdrbs3WMn/Q=;
 b=khnY/XL0o3bgApMpoyt8ijDTs/XCH9kdtyM7qW/f0M0cTivyBnZpWhU9qPVZ1qFuj3gqdNr5cyz2STXicJT7JBxiFkYqGCa1fGJkIXBpAoTN8InFzORVY72xhDa+oZuubJ7tzpiaEt3HaEvHUYqYMVKlu/8NWoBZEaZ1LuMvp2kvP2xRVVBGYgjHcyFgcw5waB/TJJVm7jUkKSoOhCvPTRBR818/qKNommbjn1Kaei5nkLK0JAZodYdfQnwT0b8A6eJk/tsPwKW6CTAdCQefBYrq+uQKD8ced8oSfzPJdbdYlz6ZHJANaYA/uGxYCmJfjjvwOK6rqYiKGwI+IfoASQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3YTsINS2Dsl1gdK0SIcb+pxsYe1BO4R/Pdrbs3WMn/Q=;
 b=X25b4J6vA6nVAtFTd/sT/i7Qo+0+OIj2WAbSggDHqDNl3B1eaNIygfPjSN212ch7UjdVNkwNJKeLC7W0KIK4mTjmcMfHV/ZrV/H6jM1JCbfDUM592R1tKO3pOTdLFgzvxz4hkeYQvbSsEw4r1V87ju944JKfmDp4ZcnycMau0eE=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB5184.namprd11.prod.outlook.com (2603:10b6:a03:2d5::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Thu, 4 Mar
 2021 17:36:58 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac1e:2d22:3f90:4dc]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac1e:2d22:3f90:4dc%7]) with mapi id 15.20.3890.032; Thu, 4 Mar 2021
 17:36:58 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "weidongcui@gmail.com" <weidongcui@gmail.com>
Thread-Topic: [PATCH] Enable ACPI_ADR_SPACE_PCI_CONFIG in
 acpi_gbl_default_address_spaces only when ACPI_PCI_CONFIGURED is defined
Thread-Index: AQHW/pI3ruT7cwkxjEOUSsZ8OrOy5apyuR4AgAF306CAAANRAIAABwjQ
Date: Thu, 4 Mar 2021 17:36:58 +0000
Message-ID: <BYAPR11MB3256FD804E3F3CE584B6D3B387979@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20210209031744.26474-1-weidongcui@gmail.com>
 <MWHPR11MB1599D81078925FFD128E954EF0989@MWHPR11MB1599.namprd11.prod.outlook.com>
 <BYAPR11MB325658379DB73F6EEDD6C76F87979@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CADFYyO73g8LkgwZv4m5N2bXq0XcZru4m9+K0uudCLmcp7yewpQ@mail.gmail.com>
In-Reply-To: <CADFYyO73g8LkgwZv4m5N2bXq0XcZru4m9+K0uudCLmcp7yewpQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c49d1023-8df8-417c-77e3-08d8df341c9c
x-ms-traffictypediagnostic: SJ0PR11MB5184:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5184C09832CFDA607D33C1B987979@SJ0PR11MB5184.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Les5q1jmkMGrpx8mtqdRVUIQljPqnk9PAJdQQ2wQYWTXtZas25IJRH4PE2KKm917/T6W+WvRvY+3mqA/w3ZtCyOBeRVg+iyb0zCrdfEDYmBmiR7ej0QxhFI0v48bI0ulKnfr4gUl0q0iFzlGUWB0Id1rIXsL9MNYxG9xp9TwvEwtsEtQ2KoHAC/VrYI75lgm+2A6fAcnmmYFpHcBXlvS53VLTUuFprYOPAtinnjf1mfltkOtNzTkgoWL579ejOV1FnkAUfm0O01Bw9A7Copyc57K+vf/+FTvNbojwsNpZLSFwGsOJGU2deFSoeD8JfkXastUEJ1RSO9gCzVendHgSRdj7K9u5Fksvxe2RhKCas1d17huBN+w3+g3C3JRyLWPYjid8g9dALMglHNJXHZPWysNB3NRqW87oHkv8+bmIueHgyehknIFXNp1DSKN3byPBRapMkOeb55rOiSkvUrkOUPbDCGUXTdGxvhEDb1dOLW36OpW8qTqP2kGk/7+EKvenkCOJRXoR9CF5vEnzzORIg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(346002)(396003)(366004)(39860400002)(186003)(66946007)(83380400001)(33656002)(2906002)(76116006)(478600001)(71200400001)(55016002)(6506007)(52536014)(316002)(9686003)(86362001)(8676002)(66556008)(8936002)(5660300002)(53546011)(7696005)(4326008)(66446008)(6916009)(26005)(54906003)(66476007)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?dVRPQ3crMHJ0UDBYUFdxS3FTVHI5dnYyQ1paQU9saU1SZTU1U1hLZnplOGpm?=
 =?utf-8?B?Q1ozeS9DVGJOajBuTTJwR2JjbFJxT0JGMGgwNG5pK08yRGRiTUxueGdtaTZM?=
 =?utf-8?B?YysrS1FjODRBZDZ0Rkg1SjFteXFDZSt3c1VWN3R6N09yWS9MM1JaVVU5SDd5?=
 =?utf-8?B?Z1pIckNFaHc5QUVKUEZucCtycXQ3Lyt3TkdBRFF0S2x6cVl0S2FBeTZWUXlB?=
 =?utf-8?B?MGVMZWlTNnhNY0RBeFBNbVFsS3hIN1hsY2wzZy91dVJLSkhpc3dVOFgxZzhs?=
 =?utf-8?B?K0YwOS8vNUdZNGw2M0lYKzV3WmhTb3R6MDhZcUdTQ1BOcnNaOXEvbnJvSU5n?=
 =?utf-8?B?TkVKeEJRNHBjS3JFaE5sY2JMN3MyMEc4YlFoVXM2SE9lT1pqRXNrOHpwVld0?=
 =?utf-8?B?WjlRY3licFg4bFBmVWlqbEk5RlVNTkVpS1R1aXI5eGozNnhycXhJazNqMkZq?=
 =?utf-8?B?dUZva2tjZlcyTnI3OW9lalZheFMvQVNCVS9kM29mdWFLNjR2aHVtNU1NNUlT?=
 =?utf-8?B?NW5oSjkxRTBwcit3YlBmdGNOM1lNWHlRVWxOeSt2blpyNGd0ZEE2T1NWd1oz?=
 =?utf-8?B?MjFRS2Vvby9HYVRqOFRXUVBZckZGM3JwWC9UZEhrVVRhQkpJRUFHNURUdzJw?=
 =?utf-8?B?dWhYbjNGSlNBSUE4b3Jqd3JPWWFjUEtyWHlHSUVNYlMvTlFvMVMzV3ZwWWVW?=
 =?utf-8?B?bFpBejg3U1JRSlRWQTdSRlVKMmtidm9VN2JtWDJBdVlSMmFIMFQ0Qms4dHNp?=
 =?utf-8?B?dDlVdFFjYUNRcTZER3kwYmRPTUNnWkhnSGpVVFhwcGZkeWF5aGNxSGs3dHZH?=
 =?utf-8?B?d1VWU2RVZlQrK21DbTVhSW5MNk5qQkl3aGljcTdqTVhiMUY0dlA5UDVzbm9v?=
 =?utf-8?B?bndNbWpHTzZpcllqdGhTZkVYUzRtRTNsdHJXS2lPZ0FFaGJpazk3cWpUSG90?=
 =?utf-8?B?aVgxbWRKUXBGSktsQVE4bDlMWjV3dXpVOC9JeDQwN3R4bmJjdkxla05UM2Zk?=
 =?utf-8?B?UUhXOFlhMSswZXo3NWVrOFdSeWNOVGM3aVFJWFJmKzlCTzBvQjhwaXZpUEFI?=
 =?utf-8?B?cC9wbDBGZjFaN2QwRkYxZUlzZnl6K2RGZTV6QWN5MGREaWhxenFYcWNVcUNw?=
 =?utf-8?B?ZEtabXlrOVZxMHR1NHVlcDFWc2xZallVZ2RDV2NnZlMrenFsTWNwa2dvMk1a?=
 =?utf-8?B?ZE5oRHRZUTBpOXdHanNLaHNBMzJ3UjgxTkNZU0IzdDJmZGZtNHZxMzZZV3NC?=
 =?utf-8?B?NHJQTzJydEpNNFIrWXNaeHdXTWxpNTJHYmd1cHJoMHFyRkM3ZW1qNmNjR1ZR?=
 =?utf-8?B?UVVmNkFodFEzeWFMRHQza0hSV1FoMmhXdzk3L1VGeHd5S1M0VENQblpEb1pP?=
 =?utf-8?B?cnJ2NWlRY0dFWEY3cU4wSkxVNmtUVDBwS0F4TzZKdkVGaUVTN2dGQ0ZNeHZ1?=
 =?utf-8?B?dEJPTmc5clBrNXMrYi9KcDYwRk9xTzFTc3h0bnBydE91WU00aC9lbUlZRFhI?=
 =?utf-8?B?WVNudjRSa0dhVUhIdGhEeGk1MlRxdEpUeWdBRjFML1lHai9hOFAvNFVONjVr?=
 =?utf-8?B?ZUZJOXU1aVl3ckhHeFJLSFh1NGNuQVhnUi9EUjF0dzVpNVh2ZUJhdlRPZmFn?=
 =?utf-8?B?aVZTNUVzTUwrZm5mOENIdGE3Tnd3ZFlyYkZ0QUErVUpDTTBRWnFSVllnSTda?=
 =?utf-8?B?R1F0UWhEYmFoV2FJNVE1OHVPOHNBRy85KzNjUm4rRUJKdjB5dzFXRUhLYzJ1?=
 =?utf-8?Q?5Ez7dOVyoCcao7IdHzp0lIfKBhVlUqAK3Oh8+1l?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c49d1023-8df8-417c-77e3-08d8df341c9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 17:36:58.0746
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /ZeEpnK+K3V6xK6DlvGe1fviPETnj94Qo2JphH2xRprTZmR7vsd/I3VDdAgZ1/0TlG4iFetRDE7aW2NhX58zUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5184
X-OriginatorOrg: intel.com
Message-ID-Hash: KS5VIWRFYY6NAUCVQNHA77MBWAZNOOYY
X-Message-ID-Hash: KS5VIWRFYY6NAUCVQNHA77MBWAZNOOYY
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, Xinyang Ge <aegiryy@gmail.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] Enable ACPI_ADR_SPACE_PCI_CONFIG in acpi_gbl_default_address_spaces only when ACPI_PCI_CONFIGURED is defined
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KS5VIWRFYY6NAUCVQNHA77MBWAZNOOYY/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Weidong Cui <weidongcui@gmail.com> 
Sent: Thursday, March 04, 2021 9:06 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Xinyang Ge <aegiryy@gmail.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; Len Brown <lenb@kernel.org>
Subject: Re: [PATCH] Enable ACPI_ADR_SPACE_PCI_CONFIG in acpi_gbl_default_address_spaces only when ACPI_PCI_CONFIGURED is defined

> Well, I don't like the fact that PCI_CONFIGURED would have to be defined by each current host:
>
> > +#ifdef ACPI_PCI_CONFIGURED
>
> I would rather the logic be reversed:
>
> > +#ifdef ACPI_PCI_NOT_CONFIGURED

Thank you for the comments, Erik and Bob!

ACPI_PCI_CONFIGURED is defined in aclinux.h (see below) and used in several places in evhandler.c and exregion.c.
I'm not sure why we want to introduce ACPI_PCI_NOT_CONFIGURED.  Bob, I don't understand your concerns about "have to be defined by each current host".  Can you please shed some light on it?

It is required in aclinux.h, and thus it is required in every host-dependent configuration file (acfreebsd.h, acmacosx.h, acnetbsd.h, achaiku.h, etc.) I would rather not force these host-specific header files to change.
Bob


#ifdef CONFIG_PCI
#define ACPI_PCI_CONFIGURED
#endif

> -----Original Message-----
> From: Kaneda, Erik <erik.kaneda@intel.com>
> Sent: Wednesday, March 03, 2021 10:29 AM
> To: Weidong Cui <weidongcui@gmail.com>; Moore, Robert 
> <robert.moore@intel.com>; Wysocki, Rafael J 
> <rafael.j.wysocki@intel.com>
> Cc: Xinyang Ge <aegiryy@gmail.com>; linux-acpi@vger.kernel.org; 
> devel@acpica.org; linux-kernel@vger.kernel.org; Len Brown 
> <lenb@kernel.org>
> Subject: RE: [PATCH] Enable ACPI_ADR_SPACE_PCI_CONFIG in 
> acpi_gbl_default_address_spaces only when ACPI_PCI_CONFIGURED is 
> defined
>
> This looks good to me. Bob, do you have any comments?
>
> Erik
>
> > -----Original Message-----
> > From: Weidong Cui <weidongcui@gmail.com>
> > Sent: Monday, February 8, 2021 7:18 PM
> > To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik 
> > <erik.kaneda@intel.com>; Wysocki, Rafael J 
> > <rafael.j.wysocki@intel.com>; Len Brown <lenb@kernel.org>
> > Cc: Weidong Cui <weidongcui@gmail.com>; Xinyang Ge 
> > <aegiryy@gmail.com>; linux-acpi@vger.kernel.org; devel@acpica.org;
> > linux- kernel@vger.kernel.org
> > Subject: [PATCH] Enable ACPI_ADR_SPACE_PCI_CONFIG in 
> > acpi_gbl_default_address_spaces only when ACPI_PCI_CONFIGURED is 
> > defined
> >
> > Signed-off-by: Weidong Cui <weidongcui@gmail.com>
> > Signed-off-by: Xinyang Ge <aegiryy@gmail.com>
> > ---
> >  drivers/acpi/acpica/evhandler.c | 2 ++
> >  include/acpi/acconfig.h         | 4 ++++
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/drivers/acpi/acpica/evhandler.c 
> > b/drivers/acpi/acpica/evhandler.c index 5884eba04..4c25ad433 100644
> > --- a/drivers/acpi/acpica/evhandler.c
> > +++ b/drivers/acpi/acpica/evhandler.c
> > @@ -26,7 +26,9 @@ acpi_ev_install_handler(acpi_handle obj_handle,
> >  u8 acpi_gbl_default_address_spaces[ACPI_NUM_DEFAULT_SPACES] = {
> >       ACPI_ADR_SPACE_SYSTEM_MEMORY,
> >       ACPI_ADR_SPACE_SYSTEM_IO,
> > +#ifdef ACPI_PCI_CONFIGURED
> >       ACPI_ADR_SPACE_PCI_CONFIG,
> > +#endif
> >       ACPI_ADR_SPACE_DATA_TABLE
> >  };
> >
> > diff --git a/include/acpi/acconfig.h b/include/acpi/acconfig.h index
> > a225eff49..790999028 100644
> > --- a/include/acpi/acconfig.h
> > +++ b/include/acpi/acconfig.h
> > @@ -162,7 +162,11 @@
> >  /* Maximum space_ids for Operation Regions */
> >
> >  #define ACPI_MAX_ADDRESS_SPACE          255
> > +#ifdef ACPI_PCI_CONFIGURED
> >  #define ACPI_NUM_DEFAULT_SPACES         4
> > +#else
> > +#define ACPI_NUM_DEFAULT_SPACES         3
> > +#endif
> >
> >  /* Array sizes.  Used for range checking also */
> >
> > --
> > 2.24.3 (Apple Git-128)
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
