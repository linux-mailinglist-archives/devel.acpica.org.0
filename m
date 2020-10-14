Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD12E27BF
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 15:42:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A1136100EC1D1;
	Thu, 24 Dec 2020 06:42:43 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8B1601594D2FE
	for <devel@acpica.org>; Wed, 14 Oct 2020 13:48:20 -0700 (PDT)
IronPort-SDR: pMqZkDpw1ZHxTz0cxG7hWA3/HX400TkNOIUwEpUBskRgtB9LT5P6qPrhD3Ozns1HkiqFmD8JAa
 UZ0tKvfJeWuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="163558989"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400";
   d="scan'208";a="163558989"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 13:48:17 -0700
IronPort-SDR: NC1Ncmhl+AlNaPaEfCmUiWha9tBBAESZrzeX3lqc86PUKCK0M6Y3/7g/fUV1FVaLol0v0U/qaE
 ez3zKPTwMw4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400";
   d="scan'208";a="345810853"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2020 13:48:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 14 Oct 2020 13:48:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 14 Oct 2020 13:48:15 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.58) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 14 Oct 2020 13:48:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATxW3t4HZtTsEbCCdf1rXoBIjuAqOiQpYJj+e+MTwEzQGBMM6V3PIX9eMrZuj+GlsW4xdIoXIyVnqfHcVdkTzsNOb52o2wy6wZ3x4fBNfKZt9bXeTQG9YlU8IZAGiTHWGJo0qeaerQRl7dn4VwAXSPNQc8IvYouXS5Vw4/NZJ45FAGpZLvL960tdCNe2OytA4Jv6PyBqGyZSZuHCaG+7Q6n7HMgeAmr3csAXzvEkxCY8pve+zbOhupCzq0fyLSidnevTLSZf3NjCxFOcOxKvKdU42u0lHW147tfVcqqM7htmIjQ2kgCOQrPL5JyE1lB2Nw+8+iBuZa6DkMiL/q4Z2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Jjd2+E3nIR69a7tc68rLDbP3ugYXLGh4aEWXNNGxtA=;
 b=McqzvKLEPrPiRQoAycZQEgGfzQ+e3CYybOrr4R1m19Phe1Jco5eb0ol52uyvpK1SobAaviw0ZDe/baOX9uex0FFYJGL3DyXjBcH4zKWBesrNUmGBP1RCFF/ILUEgXwB+KiSKj6lA06y/+G7qH7t19OE2vUxnE62mDUk1HfdhdUokaYmc/79i4EkpY8lDxfFl8juXj3Lskz90wPogt22PniWT67r+vWicc06nW4Y+/AwTxwpKKJMQZzb8ZBnkpuhV3nlsiQviUHz0MBv16jgC1OU250ni8usxj3mfgVM2uGAr6RYuGfJatjXY3bFuKC0IGAQW25mdlSsXbtVrw3uDTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Jjd2+E3nIR69a7tc68rLDbP3ugYXLGh4aEWXNNGxtA=;
 b=xYsXSyGdXwyaBuCiJ1vo6thCIKBBFq7sYCtCtDFia671kyarjC3Hc4XHLimalhFtzkmKl6tvXf9VMUcELKzU746Lj3HDhIkKJU416KDiS0e9a6CYHKKsjpQ1FFFZ/8FfGXVa5SRzj0mWSSnoywA6TFZxN2a0iRzcwxwTdp+0sME=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4289.namprd11.prod.outlook.com (2603:10b6:a03:1ce::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Wed, 14 Oct
 2020 20:48:09 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::bce9:aefc:561a:ee66]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::bce9:aefc:561a:ee66%7]) with mapi id 15.20.3477.020; Wed, 14 Oct 2020
 20:48:09 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Joe Perches <joe@perches.com>, "Gustavo A. R. Silva"
	<gustavo@embeddedor.com>, "Rafael J. Wysocki" <rafael@kernel.org>, "Gustavo
 A. R. Silva" <gustavoars@kernel.org>
Thread-Topic: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
Thread-Index: AQHWVJmBbAsk81nWN025VkK0Ud6o36j9hEsAgAA3CfCAHmSJAIAAQsQAgHvJtLA=
Date: Wed, 14 Oct 2020 20:48:09 +0000
Message-ID: <BYAPR11MB325695B550880788DBED54DB87050@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20200707200716.GA4920@embeddedor>
	 <CAJZ5v0iDz_EsrpdMQQDfaVC2orMQkEcubmR6-J6mvtrXmKXbRg@mail.gmail.com>
	 <BYAPR11MB325602EDA2D2ACC2B28EAF4687670@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <b851b2c8-2d7c-939d-507d-b322dd4a0dbf@embeddedor.com>
 <ae54364041b99b89f818812d957d4a4bb4efdc25.camel@perches.com>
In-Reply-To: <ae54364041b99b89f818812d957d4a4bb4efdc25.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: perches.com; dkim=none (message not signed)
 header.d=none;perches.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 966fa133-9d5a-4acf-1fed-08d8708275ea
x-ms-traffictypediagnostic: BY5PR11MB4289:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42890A44B626A5681D2B924087050@BY5PR11MB4289.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ase/WqdXyRFkumHBnKhZpq5p65FpocOMvZdpIrx6rcYboAT2GKhthciXKoh3F6IHhsRQwFa+7lzbRb2PXZct72OdarOvKDWmFUhqLC/JrmfH+e/yYJ+cB14GLR3VFeavlEJoq1lU2w5+1jIrGXFSpu4sKj6Ph+DaTyayV3t8iTd9p8+SGDCF44BzwMd1xkMu+nQO+jBeCO8Lak6c+AjLh2KVq+0C6/rV+NcUZKDt0C4EL1IXwBuwWRkjTXbBWSHO93MgNR3UtPUTugBd+ULDXJM2HJkGvDs2qrufW2mHi8tvveOn4rVVZRfPMQyLySEd
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(66556008)(64756008)(8936002)(66446008)(316002)(52536014)(9686003)(33656002)(8676002)(6506007)(53546011)(478600001)(76116006)(4326008)(71200400001)(66476007)(66946007)(55016002)(7696005)(5660300002)(26005)(110136005)(54906003)(186003)(2906002)(83380400001)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: NcYyjlGJvWJPwAZk0D2CMRBwoEfgrt6+GPo5GCCRO/giyGY8VcyuA0HngiYRiEAny8RRjyScXXozFIPsfbno6MB8+XeETRkO+nisIUIkoDIE+zeBIYbPcWM31mfQtoujPBL9ceTJdME6gBcY1YVVVjfaUzO07DoUWzCbS9bjR79pBGIpL2qKojxgNCyqal+y2xr7VpNoEf/23m01ZAX2ivzZzCdgLCE34tVTNiZnPz5iyEM2QbFKtbGxBVPZospHtVJ3I6j3dp20EeKwc4KG49jn+/I2cpR47rt7APAVw4NwmP3UM9DfY0Us22nFOGT4wSQlpDPS2R9Om1lXPNJKSOIVennlh+dsHqHG1AhMrw116JiFuX+95dg11fDKUDlW8nFOKMMnTjpzJgCmtDBtOO90WrGUeL1T73U8/EO9FkBE3wKQ1PP1BtKjvwBsVx2UiWLh5mV2hqv7hwf9J28dwn6FH5Ax7t3Iht4GcrwqGvxOjc9E4GJLZHY3TfSIm1+3JvNisMxYSIxqQtlf4H5QfHYJWnarvl6htrY/po+KSwIXxUA+B5ugaIGBu0/OrvWINqbP6L2fwrXVJ3LM4uURcq9ExYNUgsSfRkzYA25sd/6dqfNwIUZP23TGdAOgggwPNjh7EFLr5PLA0RerFTWC3w==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 966fa133-9d5a-4acf-1fed-08d8708275ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2020 20:48:09.7923
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QoNQr766Ghj96Q0mPs5KGmpoEFLWEOjrEc6+y3RREgCME9EU8i3N1FrPFlOYbh8DM6sEA0I9L/w4AKkGdAogVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4289
X-OriginatorOrg: intel.com
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: R274ZJFPWT3YHCHXL7N7HF4AYQWV7RUJ
X-Message-ID-Hash: R274ZJFPWT3YHCHXL7N7HF4AYQWV7RUJ
X-Mailman-Approved-At: Thu, 24 Dec 2020 14:42:42 -0800
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "ACPI COMPONENT ARCHITECTURE  <devel@acpica.org>, Linux Kernel Mailing List (ACPICA)" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/R274ZJFPWT3YHCHXL7N7HF4AYQWV7RUJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

I'm afraid that the macro does not compile under MSVC:

warning C4067: unexpected tokens following preprocessor directive - expected a newline (compiling source file ..\..\source\tools\acpiexec\aetests.c)

 It looks like "__has_attribute" is not supported.

-----Original Message-----
From: Joe Perches <joe@perches.com> 
Sent: Monday, July 27, 2020 7:22 PM
To: Gustavo A. R. Silva <gustavo@embeddedor.com>; Moore, Robert <robert.moore@intel.com>; Rafael J. Wysocki <rafael@kernel.org>; Gustavo A. R. Silva <gustavoars@kernel.org>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Len Brown <lenb@kernel.org>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword

On Mon, 2020-07-27 at 17:23 -0500, Gustavo A. R. Silva wrote:
> Hi,
> 
> 
> This is a macro pseudo-keyword, which expands to /* fallthrough */ for 
> compilers that don't support the attribute __fallthrough__. See:

Not really.

It expands to
	do {} while (0)
for compilers that do not support the __fallthrough__ attribute.

The /* fallthrough */ after that is for the human reader and is stripped before compilation.

> include/linux/compiler_attributes.h:213:
> 213 #if __has_attribute(__fallthrough__)
> 214 # define fallthrough                    __attribute__((__fallthrough__))
> 215 #else
> 216 # define fallthrough                    do {} while (0)  /* fallthrough */
> 217 #endif
> 
> So, any compiler (older or new) will be fine with it.

But old compilers should not emit warnings for these uses.

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
