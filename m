Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 519084D6464
	for <lists+devel-acpica@lfdr.de>; Fri, 11 Mar 2022 16:16:40 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 47225100E6BA5;
	Fri, 11 Mar 2022 07:16:34 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C81AF100EB33C
	for <devel@acpica.org>; Fri, 11 Mar 2022 07:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647011792; x=1678547792;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=mpXdGtsC/JJUUU1DH2nvY33eFTnGcgiUvsilssY1bL0=;
  b=g0qIxNb5FDaAo1LwKaKWS4WnMjPDB4ld3AWoq6IAFZCEJ8quvi05ausw
   D2M49r/uCUidlH17EXRxE70a7u0lYB7cBDtluKBxR4QH+39OtlKe6BbLD
   jfTAr2Cw66orBKDj99lkadMYldGIoN7Ie+p1G17BdNqwlc7ceoPNpeNlC
   nFsIlICvTRRlaFC5P6JjXXHiK/izN20OPpsZcfpJ713CHGavdu3ayOC+w
   YtDLedqbID1KXD6UALWcsTxI0C1EIwO2RCativnenUIpKN1uBSMUiahXe
   a7kQB4Iv+q+Gdf+iB1UsU8LrlhZ73EAC2T/h7LKpLuhPw9hfg9ptN9JO4
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="243036531"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="243036531"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 07:16:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="597137054"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by fmsmga008.fm.intel.com with ESMTP; 11 Mar 2022 07:16:30 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 07:16:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 11 Mar 2022 07:16:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 11 Mar 2022 07:16:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZEMaJWLUpb7bEzGfSADzJSNUrTOUNdBBRMuIKJ9ZYSfa+YHuHKnMqcQt6WoeJlBNzvXMvWKtOPFxALMX4QJ/rcCLUJLYoNN9/AWb99MfU8vH6MtoT1Ydz6kskOQhcUCF7ZhYQWuhbjJH3JJgL/EAEmh16CzQkOYx72JnZ2zAJwtqXt3wQIPFuQDTFblIju0iESepEUKaeDZ4NJKbzSZ9p+amOvc22EUGAF353VaKMhETpX3SGMsPiEg+UfL1b16pMgozEMEq9XNWEr9Z5NsgreLRhOj53ifAqkqYwXUFajoFefcShaU6smO3feYj12M7ZFTHIJL6lLZ8xGyx1oRw9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpXdGtsC/JJUUU1DH2nvY33eFTnGcgiUvsilssY1bL0=;
 b=hpC/+ZA37M5ZLtKQZoO243JgtmglXyrBqDtga6gieXqKuYfvblp0Ayob2Ze5eBSO9uBIWmlQZPd+bDt+kg0MSPdDI7gg866b90xv1PxxjP2GVPHORnO9XFYhevMC/qvYLmILbNPMQbyH51EdwLN10IcvqlmG0ak7zLUbDyYsgL+aQP6zCkyGOAYEJeMYz/sjQ1oAyEsT15F3rbvhPbgr1a8YEEpp8H0lyCBgkjZZ2L0UcBS843Qgu6i1pP766RPOa8lh/E7KVYI+vu7zNeiHlsW3iWD1To0W9ItPtPdybmDHmD8FEhopj42MRgT/0uqUHQgi88IEWEov4X0NvYkcbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by CY4PR1101MB2184.namprd11.prod.outlook.com (2603:10b6:910:24::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Fri, 11 Mar
 2022 15:16:27 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::e410:1630:b7b5:b884]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::e410:1630:b7b5:b884%3]) with mapi id 15.20.5061.024; Fri, 11 Mar 2022
 15:16:27 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Huacai Chen <chenhuacai@gmail.com>, "Rafael J. Wysocki"
	<rafael@kernel.org>
Thread-Topic: [PATCH V2 0/2] ACPI: Add LoongArch-related definitions
Thread-Index: AQHYMUvSE4s38xrWc0q7d9IDc+SL/Ky119EAgACzBoCAA8hggA==
Date: Fri, 11 Mar 2022 15:16:27 +0000
Message-ID: <BYAPR11MB3256DACFEA49CBB8DBBC353C870C9@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20220306111838.810959-1-chenhuacai@loongson.cn>
 <CAJZ5v0hsHMcqd==+cJZUcd3T11NUU6bSphFbBRjvv1ktCuH08w@mail.gmail.com>
 <CAAhV-H7oB9KMSEv-ea-qazSFw+zBowqufO=8mWsPPP7L9Gx9vQ@mail.gmail.com>
In-Reply-To: <CAAhV-H7oB9KMSEv-ea-qazSFw+zBowqufO=8mWsPPP7L9Gx9vQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a289ef38-3111-41cc-592a-08da03721cdd
x-ms-traffictypediagnostic: CY4PR1101MB2184:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB2184A3CAADE2108636D65729870C9@CY4PR1101MB2184.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uCerlzZwrF1cmalaD7A2GNFS3BReGodT79jxJ1cvMdEpXnESPLyMdu351XIhX3BVxG+i5vFCWRcwGOk3mV4yeaS4+CQI+ttVBRwHUeseCgSlNWF5OFGxZXD0Ge+A42duO1K6ClwTMopJBGwcSyKRs1/ftBUKBuZjXSwXEBnXPDud5onIR0dtQDFjMAlPM/zJTFSCD2hnSqMIJrBhCqj7IG8dXlTPkiS1szLWmNJ5jTJRH5U3evKxFxyZ0cNVBHg6UCbpVkYjbGkya5UbE7S0tabSCvKIHIkmI+SgqX7LuvuOq9+7/1J/XCVB1/39OapoCtOWhZXf3B3ClE0zgPGbvK0gU2F/UBNxf1HG0cChGAIx0qzMTdSx5lMSt6u1K5sDTWVX7bWHQx2y4KEYEtrUGymAKpvLf6DgJgWRU/E4dMw4fukwWgZ2026nOubP9l0sQ9gFO4PTkmhlByeVvoaxhrW2XrDeyZV7NmnlWvgTXZ1V/LU7bRxYxzQsizsW3jnv9kuCQe8jqfnEcpSgbQZvKpbIu2t2tOnnEfmG4i17Gt29QPpmXCrTBwYLTaq9Pd24Daymb8WoixqMsX4De8R+buGcRONUfEt+atL0XQyT2z5hhBYAmjJImAsBYweeXusl+1hH+schnFZ4gkGTQ29mnyLRP2U6a5ijE68iafaSxTqa6zOKTFBj+EIvaoA4ucgx+0CMsL/ZtEjTzJAa2RAVwAdRfMdn1yVZaKdYTW2gTAvy5rDE4Hbbbnxi7fd9nNHFnm86jI6RQGG5pYg4PXMVUni0+cL7kFDqVwGjTXd55phtiEcp4y2TRFJsGomeIfwjbIYOi+iXp40DOgo64pUhCQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(122000001)(55016003)(966005)(186003)(52536014)(53546011)(16799955002)(4326008)(8936002)(8676002)(86362001)(38100700002)(66476007)(66556008)(66946007)(26005)(64756008)(66446008)(316002)(9686003)(76116006)(83380400001)(7416002)(71200400001)(33656002)(110136005)(5660300002)(54906003)(508600001)(38070700005)(7696005)(2906002)(6506007)(82960400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXFoWjh3TjNIWlYvSWc0MW00ZzVLYU45ckpob25WMmVoaXZ5aW9uYkk0YzR6?=
 =?utf-8?B?MnllZ2lFTGVhdlkvOFp6WGpVL082aHcrWEtNdFBZcnlWTm1XR2RUdWxDcWp1?=
 =?utf-8?B?SE8zTmpVN0UvdHB4OEFCT0Fkc25YSlZaMFRVdXFQRERZd3VjSElUNUR3MWx6?=
 =?utf-8?B?bzBOcHBmTjJjaVdiOTBwQVF3cTlvd2pDUGlRRGczbDJPQytmQXNPWHNrbGFO?=
 =?utf-8?B?a3pheElBNEFjZmk4RGFvNVpUTy9veWU4czJzcXZhZ3hEOTR3QmpvQm8rR3Qy?=
 =?utf-8?B?NGs1bG5obVBpdVlWeEJ4eE9YOFhLUjRWaDRzbnk0a0Rlbzd5VTgwd3NNRWJL?=
 =?utf-8?B?UyswRUpaUWZjVUJRbHJnbUNBV2xqSFZmVTExdk82cFdKcVRRaGl3SldtbVZU?=
 =?utf-8?B?Mm5TdWlPK1lPTmRvSzF1cEc3U2FQMUY5ZmFlQVRQODJ0dWFPM3FEVWVKSzBN?=
 =?utf-8?B?Z2pBTzJMUGl1aDdVaWtHRnB5T3IrUCtTeHpEQ0VvOUFWdDIzVjhMK09ydk9h?=
 =?utf-8?B?emoyd1BoaVNhYnlGa3owUGtGN1ZBK241MW1jZ2x6eHI2czc5SlJaY0ZLc25L?=
 =?utf-8?B?aVU2TXNWUXQ1NzZqRGo2aU5tRzdQbGM0VGF6ckJMaUc2MEthSExwamppelpn?=
 =?utf-8?B?VFdMaXJiQVU0M0d4UVpIOUNPUHh2T1R0Vk1ZSTJKRFhUcGtIY0l6RGpNUHBZ?=
 =?utf-8?B?bTRvQXk4Q0lod3FpZnlqa2tZWHZmRVJpODE3aGVDZG9keExIenRoZjZ5clFm?=
 =?utf-8?B?YkN0dnlIQmJ6UUs2dzNwUU1DOFd1V0I4Z1FvNTVCV0ljUzRjT3FJenlyTkYw?=
 =?utf-8?B?WXM1ejNUUk56STJ5aEJVWmdXY0laV2M5MjZGbjRIbjVoM3BuNGVVWjZkV1pk?=
 =?utf-8?B?bWxDbDgzOTJNMXNkMFBhdlQwOGxyUno0QmxvSjJ2Ti9sZGl4djB6eVJpbGs3?=
 =?utf-8?B?V1lGeXBHanFBWnpDc2c1bmdnVzhJMGllU1M1ZDBGWWt2Q1JUL1VnSGpoaEFJ?=
 =?utf-8?B?UDJmai9CU2RHKzR2WExHVWJWcnRtZlRvUGo5NzU5RS90bndIQmYrdy9LdW1H?=
 =?utf-8?B?M0sreGxuOFBabWJ1dlpvZndTaXVXZlo1bGlkWGU2LzkzTGc2c3UrWGIwcWxB?=
 =?utf-8?B?dDQ1bFBZcENzTXFHWFhPMXJxS2Ziems3aVJwL295YzNFeHRJVDB2MTZxWUVZ?=
 =?utf-8?B?VGU5VU80bGxMbVJ4SHZ4dnN3em5VUkJtdnlyUFJpOGRGQVUzTWlrdlZJSjR2?=
 =?utf-8?B?c2NGVlRMbkhoWlR5RlFJU0k3MGJwaW5SYWc5ekNqMEQzMXREek4yT0FibEJQ?=
 =?utf-8?B?c1hnZkhTRUt2V2ZFUFRkZVhtTUpSZk9VSEJ2eHZ3dXFnNndJZ2grbjM0bEsv?=
 =?utf-8?B?WDQrcWx4T05NOGxyVVc3dU5yS1VXQXlKQml1VFNRNHViQUNzejJUbnZyRzFG?=
 =?utf-8?B?K01pbG5iYjY1cGk0TVJlOHFmYkl3ZElPOTdJQ1Qyb1pJbUtoNFpVM0txWFVY?=
 =?utf-8?B?R3M5N1NhY1A4eVl5WU1yb3ZHME0vd01jT29rdFVQbVllTkRpMkhsZzNiZDAw?=
 =?utf-8?B?VWNidElEU2RJb3hvMkJ6UE1UYzFpbUxxbGFmQmRlNUhTakxITFFSQXR5ZjRz?=
 =?utf-8?B?V051bDduK3VaeCs4c01iWTlmZE9adno5QnlkNTJ6aTh5Y0c4Z1pKUmQvUVBF?=
 =?utf-8?B?ZlRvNVU1bnZTL2VmNnFMWUlzSVc1a1FaVzdyY2lVeTlrSDNUS1M3Q3YvNW1I?=
 =?utf-8?B?SzBhWWhaQ0VzQ0dPT2E5VE1zMENpcjlUQTJDRVlMaGNPQ1FhWXlRb1g2MnFV?=
 =?utf-8?B?NWI0YVZ5bjVicVU4OE1kRjdCNWZIeER5MXlYTGFDQ2JOM2JVZVpZMXNQc0Mw?=
 =?utf-8?B?VFZBWStBb3RJMUc2VnowNzFTQlhTQUUrUnFEYVZNMytrL2hoV2dUalJIcGpw?=
 =?utf-8?Q?sCD6fNVtK8AkZ+LxdmhMchkbR7q2cUgj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a289ef38-3111-41cc-592a-08da03721cdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2022 15:16:27.0676
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JPNIkRwWSr1To+vVRbGTJeghmfTDIcO4SIh+bqT1jDCnMI2T8qWSx97rFLCNB3fEWv1xT93oKpNz0XiYpaMC7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2184
X-OriginatorOrg: intel.com
Message-ID-Hash: RSVKFAIYVDVVXYX3YLONNHFELXLK2FPO
X-Message-ID-Hash: RSVKFAIYVDVVXYX3YLONNHFELXLK2FPO
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Huacai Chen <chenhuacai@loongson.cn>,
	"Rafael J . Wysocki" <rjw@rjwysocki.net>,
	Erik Kaneda <erik.kaneda@intel.com>,
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>,
	Xuefeng@ml01.01.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH V2 0/2] ACPI: Add LoongArch-related definitions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RSVKFAIYVDVVXYX3YLONNHFELXLK2FPO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Huacai Chen <chenhuacai@gmail.com> 
Sent: Tuesday, March 08, 2022 9:30 PM
To: Rafael J. Wysocki <rafael@kernel.org>
Cc: Huacai Chen <chenhuacai@loongson.cn>; Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Moore, Robert <robert.moore@intel.com>; Erik Kaneda <erik.kaneda@intel.com>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>; Xuefeng Li <lixuefeng@loongson.cn>; Jiaxun Yang <jiaxun.yang@flygoat.com>; Jianmin Lv <lvjianmin@loongson.cn>
Subject: Re: [PATCH V2 0/2] ACPI: Add LoongArch-related definitions

Hi, Rafael,

On Wed, Mar 9, 2022 at 2:49 AM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Sun, Mar 6, 2022 at 12:17 PM Huacai Chen <chenhuacai@loongson.cn> wrote:
> >
> > LoongArch is a new RISC ISA, which is a bit like MIPS or RISC-V.
> > LoongArch includes a reduced 32-bit version (LA32R), a standard 
> > 32-bit version (LA32S) and a 64-bit version (LA64). LoongArch use 
> > ACPI as its boot protocol LoongArch-specific interrupt controllers 
> > (similar to APIC) are already added in the next revision of ACPI 
> > Specification (current revision is 6.4).
> >
> > This patchset are preparing to add LoongArch support in mainline 
> > kernel, we can see a snapshot here:
> > https://github.com/loongson/linux/tree/loongarch-next
> >
> > Cross-compile tool chain to build kernel:
> > https://github.com/loongson/build-tools/releases
> >
> > Loongson and LoongArch documentations:
> > https://github.com/loongson/LoongArch-Documentation
> >
> > ECR for LoongArch-specific interrupt controllers:
> > https://mantis.uefi.org/mantis/view.php?id=2203
> > https://mantis.uefi.org/mantis/view.php?id=2313
> >
> > ACPI changes of LoongArch have been approved in the last year, but 
> > the new version of ACPI SPEC hasn't been made public yet.
> >
> > V2: Remove merged patches and update commit messages.
> >
> > Huacai Chen and Jianmin Lv(2):
> >  ACPICA: MADT: Add LoongArch APICs support.
> >  ACPICA: Events: Support fixed pcie wake event.
>
> Both patches in this series are mostly ACPICA material which needs to 
> be submitted to the upstream ACPICA project via 
> https://github.com/acpica/acpica
>
> It will be pulled by the Linux kernel from there.
I found that you are also a maintainer of the ACPICA project, do you mean I should submit by github PR, not by maillist?

Yes.
>
> >
> > Signed-off-by: Huacai Chen <chenhuacai@loongson.cn>
> > Signed-off-by: Jianmin Lv <lvjianmin@loongson.cn>
> > ---
> >  drivers/acpi/acpica/evevent.c  |  17 ++++--  
> > drivers/acpi/acpica/hwsleep.c  |  12 ++++
> >  drivers/acpi/acpica/utglobal.c |   4 ++
> >  drivers/acpi/tables.c          |  10 ++++
>
> This tables.c change can be submitted as a separate patch when the 
> ACPICA changes get integrated.
Do you mean split the first patch into .h parts and .c parts, then submit the .h parts and the second patch by github PR, then submit the .c parts of the first patch by maillist?

No, that is not necessary.

Huacai
>
> >  include/acpi/actbl2.h          | 125 ++++++++++++++++++++++++++++++++++++++++-
> >  include/acpi/actypes.h         |   3 +-
> >  6 files changed, 163 insertions(+), 8 deletions(-)
> > --
> > 2.27.0
> >
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
