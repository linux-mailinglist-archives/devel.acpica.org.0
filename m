Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C202E27BE
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 15:42:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 93699100EC1CD;
	Thu, 24 Dec 2020 06:42:43 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 65BEB12403BC7
	for <devel@acpica.org>; Tue, 28 Jul 2020 08:10:23 -0700 (PDT)
IronPort-SDR: HKCURDo9aMFwirlc3jUckZLKKziDGnYuWKMkfeI5P0KCqjaWkSkOxF45Li4tj0LWZZHKdF7vXb
 5UPqpvTGzppg==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="212759560"
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800";
   d="scan'208";a="212759560"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jul 2020 08:10:22 -0700
IronPort-SDR: m7CzQVrpr22W+wa6+akVjKGtLSrS7+tOaWIglWT71seIKhC2FUfWs8j8Q8ToZ0kFkoeNh86tTA
 8Xkv6uxXlXow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800";
   d="scan'208";a="489928598"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
  by fmsmga006.fm.intel.com with ESMTP; 28 Jul 2020 08:10:21 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 08:10:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 28 Jul 2020 08:09:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCOMass3HMvLpCwHAtlyTcJ1dQSdAvq9Q0WwsB/6wqRo2bEG+PJo1a514S0KXHmeIi8rB71VIMcWbyCmR0jWXb8EK4E8bBCRSFaE3Np5rQC6wR4gd/6BBpc97laFFUINTUEO8zvRUxsDh5J5E43PKexTX6xRJ7qNu+hRycwBLOoG/tVWDRSNkWrFxgDd/qPyyYr5HvumE/uFVeKaJbrkm7JIBgkpsURlLvRs36knt4lbN3Cf8nUtHx6RMGxdwZNBNPnhsuE0jben3tAvBsVlgtPqHg+4Hx1LUhCuBcRvJ4ubZr7hT198r5r/vStACmp2gs7tBy3/0dFC33fp4s0UDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tysuJJG7lRNWMow1Gl62Oj0i4GsyFSpzKDWOwjMYvCU=;
 b=cEYn74+r8win6Gx6PcwUZf+Ro2lK6mXIcyFcnfnFk9C7pkZgMTsW6CvtmTkZBEoIfYxHGt/CZr50uIpn51bY7zqXtM8d36Jg45+oWkqN40zwNpXzlUorA/mcDb3Z0zbOMkk5b4jtVOyUpA3O3kwHyoaYbwsqlo/T2x8phOtdM2weGMn6BGXwBja9Zy+tW/g5DvJszY/wCtBr24nONMk/XPZTp9npcmTo5SlKhvO+Z3jguQ72TAHNEYwe34D2rXnAl1Ga1hh2Q5tUs5ixiOFCFGzBDgpyh9MSkPpQ3WY8OpGR31gysht5FPJuLAS+GW0jLA3chMwZDxwN22U5iUpJag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tysuJJG7lRNWMow1Gl62Oj0i4GsyFSpzKDWOwjMYvCU=;
 b=WXhET/TwLm4rETND6VSRLdwk3JaXC3gSYnXBivCI8b5lfy3arKF6BtAseOJr56HHOmaPJrJAA2viSJ7ib2lwr8QZnDktOgVmtlFjOaZKYSc1Ii3A+InV2WrDQ/J/sAjAUCFvvjX45uUk43Z3UwoL9m6/XIqm0D3Rw3lmaVOR34I=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2629.namprd11.prod.outlook.com (2603:10b6:a02:c6::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16; Tue, 28 Jul
 2020 15:09:09 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c%4]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 15:09:09 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Joe Perches <joe@perches.com>, "Gustavo A. R. Silva"
	<gustavo@embeddedor.com>, "Rafael J. Wysocki" <rafael@kernel.org>, "Gustavo
 A. R. Silva" <gustavoars@kernel.org>
Thread-Topic: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
Thread-Index: AQHWVJmBbAsk81nWN025VkK0Ud6o36j9hEsAgAA3CfCAHmSJAIAAQsQAgADV6KA=
Date: Tue, 28 Jul 2020 15:09:09 +0000
Message-ID: <BYAPR11MB3256C443C13A51B8B82C6D5E87730@BYAPR11MB3256.namprd11.prod.outlook.com>
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
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: perches.com; dkim=none (message not signed)
 header.d=none;perches.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8eabd1d6-a09a-443b-1147-08d833082dd5
x-ms-traffictypediagnostic: BYAPR11MB2629:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2629345125B31314ED26FC1887730@BYAPR11MB2629.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tdJFkEqkuR1czl9CWKxjiXyens9TL+FCOa/XUMkrzN5+etsaRRvnW1/DjiGW5c2zTG7JR9WSDgJue1y2iSo9GWNnBA22hbQY5zv6F59ZCOt4F0UhrANA1c64H8Nse/7FI9NnJAAAryNdLClK0WH6sFdP1szDsLsQUNT3rUrStvpXcp/fEH0QsvliU3oHk+W088CMM4WX2a2RtrMeAzy6MOoDEUlykISiUFPDG9umpMZ11TAAMCwwu80l5MSDvwuqkqbkah/exJJ7mO/jLaOeNIZKaLJeiI3RBjJ/Wamgy/+OZAojaav94gVzFvDiXbt5tYnUF2DkDuu1iMFfY0/DXg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(52536014)(64756008)(33656002)(66946007)(66556008)(66476007)(66446008)(478600001)(5660300002)(2906002)(86362001)(71200400001)(186003)(4326008)(54906003)(9686003)(8676002)(8936002)(53546011)(55016002)(6506007)(26005)(83380400001)(7696005)(110136005)(316002)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 9BhPNGhwFJ4QPTLrnyyI3aCbw6IUmc7NQAUeEBIJ8C24xKV4QknwmxXmZTvWFskyfpVmUVOMk4a0gRZvXQixPzSFadrOB0rJ67SDX9UB+pzw5R1A+DlYmMxK875N9bKMpIhQTZ/SyG1PdbfqIt/l+a4nCZ0Dbd1me7boNVABBfSAEI3GBNA9j/laAEo/it+9rWSRximsWt60M6RGmhvH/KSap6zksiANMD19cvTZjUJOjhstP09AcIJbwDndU/43uQNRATu4iC8ltwyqgg7ezxICLZS8QvbnoTOSqItXKhPOrb/GyupIpUB8qswulAnZnJ8gLG4mACEyqx2IVH+OUyr+fUkFME5vr3AGQVVN+tcW45XIFokMP1imaEWxzQ3HKkOjIBRyN7Wy1zGLsa6MsRq+wSMrl/dnn5Vqf5tlmPrOolL75rbI55+V0/l6bEENtczCjX/Ta7Doz6Wrcf+tmywagxkZr3fdU4BbBCcIymGKpqKspHQgJxXtzod0HzUjstEkhKcp25CS9eQENdf3s5Epg+fXgkC/LQrCN6M561fDAA8j+B7k8nHRyEZXSi0vphCIfsOgVMhc86eu9c8GvNx+e5YNksFxLtpDdZxIib0OLorrOb/w66BoAcIqHHoVE+xnnwbuazcgSdoRaON3XQ==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eabd1d6-a09a-443b-1147-08d833082dd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 15:09:09.2729
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZvvVmlfOJgPAP1H/v6t494L0q1kqo30v3UMtRL2CbzahvrwgrkEaCdWMJQ1T1b7aU/MA9Knyxm2a5L6AuAXOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2629
X-OriginatorOrg: intel.com
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: UJTQ7ECH3P3WB34ZJKJLJ4D4LFV4XHI5
X-Message-ID-Hash: UJTQ7ECH3P3WB34ZJKJLJ4D4LFV4XHI5
X-Mailman-Approved-At: Thu, 24 Dec 2020 14:42:41 -0800
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "ACPI COMPONENT ARCHITECTURE  <devel@acpica.org>, Linux Kernel Mailing List (ACPICA)" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UJTQ7ECH3P3WB34ZJKJLJ4D4LFV4XHI5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

Yes, but:

include/linux/compiler_attributes.h

This file is linux-specific and cannot be used with ACPICA.
Bob


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
