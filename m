Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FDC44C4B0
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Nov 2021 16:52:50 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6A1A2100F3951;
	Wed, 10 Nov 2021 07:52:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F0590100F3950
	for <devel@acpica.org>; Wed, 10 Nov 2021 07:52:15 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="219899750"
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800";
   d="scan'208";a="219899750"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2021 07:52:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800";
   d="scan'208";a="452363035"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga006.jf.intel.com with ESMTP; 10 Nov 2021 07:52:14 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 10 Nov 2021 07:52:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 10 Nov 2021 07:52:14 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 10 Nov 2021 07:52:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fN3Ps7xmiQtdG8dfe1nIj1a7SQH5ry1AxYVJHIwJCz49Gszrbh8TEQVkjeklAAOtg5jqCA5kUhm9YZ7GvuYbXCGabe9Yn4dYrhXw+isyR6A18C4HhoprjPrgGlgnWydPB+cVlJm18UkW14PKjxzOwB3cdw5B1wi2TrMd6uhBhEEj0mCDvr8HFmL1tu8YBh7FvsPnCui4zeeW69sar4tpN34IIagqAxMYx0TvWpAFx0fynIFZr+79/Mj634RKnjyhsQ4QzkXcZe9KnrMMPysPU07UvhR5CDo9tM8LaKMyWeFPQ0ppX7KtPbpa1MuCoT8WTv4aG/narpud/g5eFFU30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/HcW9xp8PKZ2lQFDHZzNpOwUIYWqQsJij5cSgB45w0=;
 b=CZ6Ik4QV0x8ETyI5E+MM6mYtclleADTt9jMmO01CQdEJsHhWmcGrkgB3WNPff21cJyGGckQfhHwLQvKtAeuoMKaZf6ZsnBmJiCyURi16FBq6A9M+M84L340AOWubuJDgHT3SpWrQZ8dVBG72Bh3Lkare78e50T3mACd6oEKMouVi0myGk8huzVSjmquHtyH7KrXJb+Vm1kOq0A1RrtCf1CIddHAYKwTQvd1QZwPxaCggK/TaGMGznYt+Wzm9vsaNqyXaqD5c4RkrVUOhjV0Cnmf9xMvJqrW6GVoFmegDgR//2EVPUGgOjilO4beePkGg5oBk9mjZnZzk7iJz6+hogQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K/HcW9xp8PKZ2lQFDHZzNpOwUIYWqQsJij5cSgB45w0=;
 b=JpvrEj3TQ54U7mLr6eU/jM//JlkyoF0t5SzcFKoE5qjvavG4Oh04EXkbn4HDYlkcEZ+iWzUYRJX9nrZ+YmODI5w+c2YBxa10NCHH1wDWdSY1OEWwZESG2GNcszg+UnqccyWACv4Cx9Srcbm33sLQgJjd9mKwS6XxxIfrAcffx/Q=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4226.namprd11.prod.outlook.com (2603:10b6:a03:1bf::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.18; Wed, 10 Nov
 2021 15:52:12 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::61d4:ab77:cc62:fabf]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::61d4:ab77:cc62:fabf%6]) with mapi id 15.20.4669.016; Wed, 10 Nov 2021
 15:52:12 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Thread-Topic: [PATCH AUTOSEL 4.4 15/30] ACPICA: Avoid evaluating methods too
 early during system resume
Thread-Index: AQHX1QZ+Ms7KajTmukyGgWbWHmy0Yqv83/CwgAACeoCAAAlUIA==
Date: Wed, 10 Nov 2021 15:52:11 +0000
Message-ID: <BYAPR11MB3256EB5BE1E34DD226861F8387939@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20211109010918.1192063-1-sashal@kernel.org>
 <20211109010918.1192063-15-sashal@kernel.org>
 <BYAPR11MB3256001FA32D50DE6F56425087939@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAJZ5v0gwW=5CNObEi3SpXLhaA8oeP4VYfkWoQv9iDjwQLxE_yA@mail.gmail.com>
In-Reply-To: <CAJZ5v0gwW=5CNObEi3SpXLhaA8oeP4VYfkWoQv9iDjwQLxE_yA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 128eabee-1201-45c9-8308-08d9a4620f60
x-ms-traffictypediagnostic: BY5PR11MB4226:
x-microsoft-antispam-prvs: <BY5PR11MB422603DABBA4371A83D1035987939@BY5PR11MB4226.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fDwCxeL1quDhFwhBFyW0II+0sJV5GORi3kut7DotN3CRk2pDpyxjheH3F4lLaLRM4J3ZmpjqK5msbt1Jk8pg80QtiT1kt+0CErYB6HoGQ7+OJOjVwaLuQzm4uyDzMJv4OxkomdKrDVOZkJjGTBbeYlPO/dXQusWmeMuu9mVCo5doABqpTjK1DCmjb7VO3JOYJFjRIyGuPcOUswp4HYQmttsU5+x6+mVZdRyWb7uLu6dPfkthK7c1ksLujDVyRwO2vNrVaOv2wHnFKVufX/IF3DIV8mN/9Ysw3EsVGfPP2/BbHX3lVrrJ1tLZBq+A+fSx13KqZhYDNmfflxs5YadKEwD3xQAo4HyiTr++2lFQbIM0GHYNGXPgNoLFjv44vRNqxbhtZZ6tSDAhlrblBv7CspriWOIRsZfmCMZsBrv8w1CVJoYMVoCoruQVbLCX7gRYDzYHKkWti670oc/HLnWMg4pCz0YYsswNOx3+iL1zE+OX7FlIPcC0lH+bkztcZoxtAh2Q9L279VuoQMcd2Hp3Do8zWrLgKGi/87cssGc1j23XKdT8rBl53x1VPQBkH0ClcWKojRXrvvFo5kM7LEdNy/d14sSmPflBv2ndLoWUPX6AiWUxHX9LWphkM6p2zF+fNsJlDSWw+u4TiFYD/bnwfFfsoaQtydcjsYZ97WcY+aQUK+qXwfQaDyLBkze60SK94Z7WuYVdCb+ulBFUZDezUxqOgZxF4zBH9k8Z2139Hj3xlEX9/MAGdIGbi0NcMZKHKnBQMo7eRQuSiP5aJwb+Y+lmeiMfGq1SSFK7rEYeXpo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(55016002)(38070700005)(2906002)(7696005)(53546011)(82960400001)(5660300002)(8936002)(52536014)(966005)(9686003)(4326008)(33656002)(508600001)(54906003)(316002)(186003)(26005)(6916009)(86362001)(38100700002)(66476007)(83380400001)(66556008)(64756008)(122000001)(66946007)(6506007)(66446008)(76116006)(71200400001)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEE5MjM0UHdKZ2xQcEU0Y0Z6L2RzcnpnWjlqNGF2NUcyV28xUitmczFoNXdy?=
 =?utf-8?B?d3pNQTFoSjdJTysrTjltVVd4NG1ZcjZXNE5nZ2RkMGU2UHBHeTB0ZFJoNE85?=
 =?utf-8?B?cEhBK2tVUXg2Q1NQdm5WV0lSeTNHMHlLMlpraXhDQXd3eU1Ld3NLMFRWemJa?=
 =?utf-8?B?TVN5WmJ0UVNPTEZiZFJCYWl1N0NEVFJNQklpTTVlWWJWTDg3Ri9uUmpKVmZo?=
 =?utf-8?B?SkUxQThmd3pGQ3Q4elZCaGdLZXREb2NQejd6TVo4YW1nVzlkQ3FEQmtPdDgw?=
 =?utf-8?B?R0dKTm9xZHJSSFV6NXh4NTF1NGl4VXAzbFdxYmxNaU5RaHp0NEVNbnc3dDZP?=
 =?utf-8?B?NUFuQmJTY0RFaVRQQ2IrdEJEaGpPTkg2N2o1cUJNcEZ4TC9yT0tJeEk1S0Rl?=
 =?utf-8?B?YytVUHNydmdzbTlscUdCNU9OMmFOaEdaYmszYm10MHJkYXVISUJreXdyY2xh?=
 =?utf-8?B?dm1LVENQY09wdDA2cjZyTncrNktSOVloVnU0QzBjTTQrVC80STZqeG9CRzJl?=
 =?utf-8?B?VzVmVmM0NVVZSTBnbzFXTE9aOCtIbnoyWkFuWFZMUlVBekRIRytQZWZ4eUFV?=
 =?utf-8?B?cnBZSlJwSHFscUFQZWlvRlJlcExpV2x5UUdlM3o1cVNvdnFEalBib0pWRnJ0?=
 =?utf-8?B?aW5sOWVsNVViejJDekRpUmhib1R0cm5nYVBGSGRrbnlSUmlvNm5rOHdMd2Fr?=
 =?utf-8?B?aHZUOS9uK3dNclJVaGV3THVkMkNta3dvS05zL1VGRmN1eEFVT3UvOWdMaGFa?=
 =?utf-8?B?MmFPY0E0QzBkWXBnSHpGS3dJcmpYWTczTHdHUFROTnpJZ0xKNGhvOTVHK3lm?=
 =?utf-8?B?Z3YxaExSVVpnZ0ZVR0dEdU1yRDRnSGZzblZjYnVaN0lMWGhXQ3Z2S0lkZ0JQ?=
 =?utf-8?B?NmMzNHNsY1lDVzhxK1c4RDNlMHp6T0I3aXNZWlVUUGpkMGx4R212ZjVYV09u?=
 =?utf-8?B?VjcyQjlXcE9oRFArRDZhWG9pZHpCbzZsTU5UY1NNcmxRUTFhRHZWMGl2VGVB?=
 =?utf-8?B?eTJzZWZhd3Z2T2JmYmhybEdtZytUTWJ4T2toYlZGdDM2cVYxNlFFN3pObE1r?=
 =?utf-8?B?NTR2RUVkZWZtOUF5QWVqbHJHV1N4M1hOaXJ1SFBNUWNTRU90THQ3a0lPQzNs?=
 =?utf-8?B?UDBvR0MwZlpaRWNvRVBXb1pNa09EVFIxRTAzYU55YXNIRlRqYVd1a3JMamJM?=
 =?utf-8?B?WVdEY2Y4SDV0TEsvT3MwMDR4TzUzZUVDNEQ4Zm1jV3RsTnJTUTlzOGplbVRZ?=
 =?utf-8?B?YkZ4ekJpcTA4YVBZOStrVGdHdjlaNTFHV1RQRnRnOVl6ekVRN1l2N3U0Q1Y5?=
 =?utf-8?B?UEVnVFk3eGJvbkFDVStwb3BrK0oyZ3dncUdQdWwyVDEycGV1c281WENwa2Zx?=
 =?utf-8?B?ekM3ZVcrMXBEVEtSOUlyTlhsRmNxMkVZK3hYbjl6UVIycXk1b2FHV1J5MXZO?=
 =?utf-8?B?NmZEZk5IQzRjbi9DZnBKOG1HSG9LcXY0Z2FnclRtQWlGSktuOFZHVHY1TGVD?=
 =?utf-8?B?dVdYS2lMR0padUJqaG9NRGhXUzdITUhMeW1OREVSTDkxdnVUcEJ4SlExU2pC?=
 =?utf-8?B?NU9uZVZwN1BhMXJqWDlvYmZ2TXRSemNTZ2RsYzlNbjFOR1JKc0k2TlVGbFdu?=
 =?utf-8?B?YUphOEFvYTB6dStGTk5VQ3ptRmNnRSs4T1dCaXN1SS9mUkdpQ2lyR0t1d1VU?=
 =?utf-8?B?cUkvTHIyU1Rmb0pjN1plb0cyTlNwRGV6SVpiTW5kSHR2TkR3K2w0YXhZNjAx?=
 =?utf-8?B?ZGNRWlc1S3lVTjZPcUxqZG1uWHRLbjYwVTZJOW4xVEUrZlRvQzRBQUJWNzR4?=
 =?utf-8?B?K202Z3puNkMrVVN6MzFLRjZ5WnpRUzh1b0JDTVljck9NQUcvdjVvSjlOSzVl?=
 =?utf-8?B?dHo2QU5kLzMwVEVQZXZNelB3L1lvbFlGZnRBNEhQZ0M0Y2ZqNE5NM1FBc3VO?=
 =?utf-8?B?a002WEtaNERkc2JGZ1MyVEdYenRFVWQ5bWphSWRQdEg3c3c3RkpoVFRPRW8v?=
 =?utf-8?B?L3AybzBZdkFrSS84dGxIQjAvSXBSYmNPQ0I0TDhPaXBGMW5lSCtSMzRhbk1y?=
 =?utf-8?B?N3dXREd2MjZQVm9LM0tjdTU0dlFzNEVTWFFXTk93c3JtK0oyWHN4cm5tb0Ro?=
 =?utf-8?B?c3UvR1poVEhhb3lIWmEwZU1iUkpJZlRkbFRNVmFrbFI0WTZEMFFtS2twWjZo?=
 =?utf-8?Q?0hReeTLRIV83TYyBW8pYU9Y=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 128eabee-1201-45c9-8308-08d9a4620f60
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2021 15:52:12.0200
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5iUVC76EDnALYXmTjX0WrUKh3ChxTnEq5yLGtwzUnJUUlVeRstYoc9Pser6gc1Adm55VyFDJcsB4+5SaMyvYzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4226
X-OriginatorOrg: intel.com
Message-ID-Hash: F6YU6IOMF3WE2DMGELCMQNZOHK224ORU
X-Message-ID-Hash: F6YU6IOMF3WE2DMGELCMQNZOHK224ORU
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Sasha Levin <sashal@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, Reik Keutterling <spielkind@gmail.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH AUTOSEL 4.4 15/30] ACPICA: Avoid evaluating methods too early during system resume
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/F6YU6IOMF3WE2DMGELCMQNZOHK224ORU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

OK, thanks.
Bob


-----Original Message-----
From: Rafael J. Wysocki <rafael@kernel.org> 
Sent: Wednesday, November 10, 2021 7:19 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Sasha Levin <sashal@kernel.org>; linux-kernel@vger.kernel.org; stable@vger.kernel.org; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Reik Keutterling <spielkind@gmail.com>; linux-acpi@vger.kernel.org; devel@acpica.org
Subject: Re: [PATCH AUTOSEL 4.4 15/30] ACPICA: Avoid evaluating methods too early during system resume

Hi Bob,

This is the Linux version of ACPICA commit 0762982923f95eb652cf7ded27356b247c9774de and now it has been automatically selected for backporting into the "stable" kernel versions.

On Wed, Nov 10, 2021 at 4:10 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> Sasha,
> Can you re-do this patch in native ACPICA format, then add a pull request to our github?
>
> Thanks,
> Bob
>
>
> -----Original Message-----
> From: Sasha Levin <sashal@kernel.org>
> Sent: Monday, November 08, 2021 5:09 PM
> To: linux-kernel@vger.kernel.org; stable@vger.kernel.org
> Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Reik Keutterling 
> <spielkind@gmail.com>; Sasha Levin <sashal@kernel.org>; Moore, Robert 
> <robert.moore@intel.com>; linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: [PATCH AUTOSEL 4.4 15/30] ACPICA: Avoid evaluating methods 
> too early during system resume
>
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> [ Upstream commit d3c4b6f64ad356c0d9ddbcf73fa471e6a841cc5c ]
>
> ACPICA commit 0762982923f95eb652cf7ded27356b247c9774de
>
> During wakeup from system-wide sleep states, acpi_get_sleep_type_data() is called and it tries to get memory from the slab allocator in order to evaluate a control method, but if KFENCE is enabled in the kernel, the memory allocation attempt causes an IRQ work to be queued and a self-IPI to be sent to the CPU running the code which requires the memory controller to be ready, so if that happens too early in the wakeup path, it doesn't work.
>
> Prevent that from taking place by calling acpi_get_sleep_type_data() for S0 upfront, when preparing to enter a given sleep state, and saving the data obtained by it for later use during system wakeup.
>
> BugLink: https://bugzilla.kernel.org/show_bug.cgi?id=214271
> Reported-by: Reik Keutterling <spielkind@gmail.com>
> Tested-by: Reik Keutterling <spielkind@gmail.com>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/acpi/acpica/acglobal.h  |  2 ++  drivers/acpi/acpica/hwesleep.c  |  8 ++------
>  drivers/acpi/acpica/hwsleep.c   | 11 ++++-------
>  drivers/acpi/acpica/hwxfsleep.c |  7 +++++++
>  4 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/acpi/acpica/acglobal.h 
> b/drivers/acpi/acpica/acglobal.h index faa97604d878e..f178d11597c09 
> 100644
> --- a/drivers/acpi/acpica/acglobal.h
> +++ b/drivers/acpi/acpica/acglobal.h
> @@ -256,6 +256,8 @@ extern struct acpi_bit_register_info
>
>  ACPI_GLOBAL(u8, acpi_gbl_sleep_type_a);  ACPI_GLOBAL(u8, 
> acpi_gbl_sleep_type_b);
> +ACPI_GLOBAL(u8, acpi_gbl_sleep_type_a_s0); ACPI_GLOBAL(u8, 
> +acpi_gbl_sleep_type_b_s0);
>
>  /*****************************************************************************
>   *
> diff --git a/drivers/acpi/acpica/hwesleep.c 
> b/drivers/acpi/acpica/hwesleep.c index e5599f6108083..e4998cc0ce283 
> 100644
> --- a/drivers/acpi/acpica/hwesleep.c
> +++ b/drivers/acpi/acpica/hwesleep.c
> @@ -184,17 +184,13 @@ acpi_status acpi_hw_extended_sleep(u8 
> sleep_state)
>
>  acpi_status acpi_hw_extended_wake_prep(u8 sleep_state)  {
> -       acpi_status status;
>         u8 sleep_type_value;
>
>         ACPI_FUNCTION_TRACE(hw_extended_wake_prep);
>
> -       status = acpi_get_sleep_type_data(ACPI_STATE_S0,
> -                                         &acpi_gbl_sleep_type_a,
> -                                         &acpi_gbl_sleep_type_b);
> -       if (ACPI_SUCCESS(status)) {
> +       if (acpi_gbl_sleep_type_a_s0 != ACPI_SLEEP_TYPE_INVALID) {
>                 sleep_type_value =
> -                   ((acpi_gbl_sleep_type_a << ACPI_X_SLEEP_TYPE_POSITION) &
> +                   ((acpi_gbl_sleep_type_a_s0 << 
> + ACPI_X_SLEEP_TYPE_POSITION) &
>                      ACPI_X_SLEEP_TYPE_MASK);
>
>                 (void)acpi_write((u64)(sleep_type_value | 
> ACPI_X_SLEEP_ENABLE), diff --git a/drivers/acpi/acpica/hwsleep.c 
> b/drivers/acpi/acpica/hwsleep.c index 7d21cae6d6028..7e44ba8c6a1ab 
> 100644
> --- a/drivers/acpi/acpica/hwsleep.c
> +++ b/drivers/acpi/acpica/hwsleep.c
> @@ -217,7 +217,7 @@ acpi_status acpi_hw_legacy_sleep(u8 sleep_state)
>
>  acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)  {
> -       acpi_status status;
> +       acpi_status status = AE_OK;
>         struct acpi_bit_register_info *sleep_type_reg_info;
>         struct acpi_bit_register_info *sleep_enable_reg_info;
>         u32 pm1a_control;
> @@ -230,10 +230,7 @@ acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)
>          * This is unclear from the ACPI Spec, but it is required
>          * by some machines.
>          */
> -       status = acpi_get_sleep_type_data(ACPI_STATE_S0,
> -                                         &acpi_gbl_sleep_type_a,
> -                                         &acpi_gbl_sleep_type_b);
> -       if (ACPI_SUCCESS(status)) {
> +       if (acpi_gbl_sleep_type_a_s0 != ACPI_SLEEP_TYPE_INVALID) {
>                 sleep_type_reg_info =
>                     acpi_hw_get_bit_register_info(ACPI_BITREG_SLEEP_TYPE);
>                 sleep_enable_reg_info = @@ -254,9 +251,9 @@ 
> acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)
>
>                         /* Insert the SLP_TYP bits */
>
> -                       pm1a_control |= (acpi_gbl_sleep_type_a <<
> +                       pm1a_control |= (acpi_gbl_sleep_type_a_s0 <<
>                                          sleep_type_reg_info->bit_position);
> -                       pm1b_control |= (acpi_gbl_sleep_type_b <<
> +                       pm1b_control |= (acpi_gbl_sleep_type_b_s0 <<
>                                          
> sleep_type_reg_info->bit_position);
>
>                         /* Write the control registers and ignore any 
> errors */ diff --git a/drivers/acpi/acpica/hwxfsleep.c 
> b/drivers/acpi/acpica/hwxfsleep.c index d62a61612b3f1..b04e2b0f62246 
> 100644
> --- a/drivers/acpi/acpica/hwxfsleep.c
> +++ b/drivers/acpi/acpica/hwxfsleep.c
> @@ -372,6 +372,13 @@ acpi_status acpi_enter_sleep_state_prep(u8 sleep_state)
>                 return_ACPI_STATUS(status);
>         }
>
> +       status = acpi_get_sleep_type_data(ACPI_STATE_S0,
> +                                         &acpi_gbl_sleep_type_a_s0,
> +                                         &acpi_gbl_sleep_type_b_s0);
> +       if (ACPI_FAILURE(status)) {
> +               acpi_gbl_sleep_type_a_s0 = ACPI_SLEEP_TYPE_INVALID;
> +       }
> +
>         /* Execute the _PTS method (Prepare To Sleep) */
>
>         arg_list.count = 1;
> --
> 2.33.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
