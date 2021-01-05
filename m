Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA9E2EB425
	for <lists+devel-acpica@lfdr.de>; Tue,  5 Jan 2021 21:27:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AECF5100EBB76;
	Tue,  5 Jan 2021 12:27:43 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6A2DA100EBB74
	for <devel@acpica.org>; Tue,  5 Jan 2021 12:27:41 -0800 (PST)
IronPort-SDR: zkitgbymAozkkY8uZR2Di0OavWJeJHPGcN1KSMZ2uCJXOSdG2Eqha2cObNyO3lGobhAF+quWJh
 0jkIcy3ePi8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="164245918"
X-IronPort-AV: E=Sophos;i="5.78,477,1599548400";
   d="scan'208";a="164245918"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2021 12:27:40 -0800
IronPort-SDR: Vh1sQOPe94E4kRmIXjhKgLCuhSGuj1ZxtWwiwlybwNeT9JxxSAJZMHQFJDUbTsr9joL8haQd69
 NIblASvocvSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,477,1599548400";
   d="scan'208";a="567202510"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga006.fm.intel.com with ESMTP; 05 Jan 2021 12:27:40 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Jan 2021 12:27:40 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Jan 2021 12:27:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 5 Jan 2021 12:27:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 5 Jan 2021 12:27:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UX24vXdAp5gmo0i2v3Vd9frId0u4Kr3V8CUdTgMwqxFkZS2LX9Xy4vMXpb+3zIql776wd3MGbnDmavos5WpoJKn9NJCIts7fLiQsu4c3xl9Q52JsyiBfsY2ZKCZ3srIj2P+WkqV5KkntEM2fdm34ao6ou/mPNAD4+POZPRrL2Gk2Nc5Nt3ui5K/MdjfUWpHpqJwk3ZhbGMtX2jTout8JYqvql7/R1PbjrFKcEkC5EY1PYjMbmuzYzXb+KJs5A+qGWb2vH69A4L+x36uhLcPrusIVKpaBeQOOxLMyPm/jiQoRfAHCE5KzZ+QbVuDH9p8RZnrdYr3WSb4QdaJxZ95S0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JwiBsKcFqbezaesLKpPsEyKOI2joaAHeGUSZjWW+jxY=;
 b=SufAYCbl92rnqc7SiM9Ps0l461+mezS0+PzrhJ9gvsNoh5Q8zsbsm3dYzeO1yJkNjdjpt8Yiavxyypc+TcnxzksulB1n8u4+uVXlsbierYO/wgb+Y6upfJM7k10D4BfwVUOwLewfhH5MmGAKowt1+vv7BpIMQZHAeG33RqoCZrV2qPmpFDMcQnRvIFLSxANYQxBKO9DAtzA4IeaJ48RYq8U2alYIqW1ET0zjmXa0U1PBY62phS88oattg+XD8Y7+Z/y4zAyjvwLfwXBJD77RjVdAJTtVbKUFHZEVstSsdZS6LMFHTVLHoqq3KRmuVaSG+4uhhGgd3EzmzfIE0XTXIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JwiBsKcFqbezaesLKpPsEyKOI2joaAHeGUSZjWW+jxY=;
 b=LIy/SaOSXG13GQ9iYsuzv0pSjHajzQjm+VLEuIkGD+iKLbf1LX+XC/KFetlyNydOiwYq2qtyv/PeR1gP8pKPJ/i5Ll+UOLb+PL9ATzGWhvYDdicSYFnj74ijqRk66PrrvkWdEexLT0fR6Vwg15K1pERg5voRfjQcgNwFKZ7JWYU=
Received: from DM6PR11MB3259.namprd11.prod.outlook.com (2603:10b6:5:5d::20) by
 DM5PR11MB2026.namprd11.prod.outlook.com (2603:10b6:3:10::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3721.20; Tue, 5 Jan 2021 20:27:38 +0000
Received: from DM6PR11MB3259.namprd11.prod.outlook.com
 ([fe80::490f:36f2:eff9:9636]) by DM6PR11MB3259.namprd11.prod.outlook.com
 ([fe80::490f:36f2:eff9:9636%5]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 20:27:38 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20210105 released
Thread-Index: AdbjoNfOWiAX9v4ORv+gU3LfXn/p1Q==
Date: Tue, 5 Jan 2021 20:27:38 +0000
Message-ID: <DM6PR11MB3259706E42C4AD923413C61C87D10@DM6PR11MB3259.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: acpica.org; dkim=none (message not signed)
 header.d=none;acpica.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4362f7c-8165-4aa1-30e4-08d8b1b85846
x-ms-traffictypediagnostic: DM5PR11MB2026:
x-microsoft-antispam-prvs: <DM5PR11MB2026327362022E7BF751F7AC87D10@DM5PR11MB2026.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w1cnHlVsZxR3R8qOD5gDSw6QXhvr33gd9xZQJfGxcQ+Ygxo+1sU7bP0yXDA5ZOV09LKHABkzS4z4j7W+UsBg2YmifdQ9ruTlL+RVIBtLd9cJveNC6EGVJwajzJBCH2CWXKiK3VR6Wjrn/YArRrn4xynKIbl8p3pU5jU48x7BjsDB/TswGhHY1YeAVHOKgB9Wxle2kLOoYKLD7E1wWHLAPjIUcRfY/Dxe8kZK3+UauuSKxiqKPtFbzTIF7y9L4robOJX1BHruxz0s3z02hMfLCjlfB6vb/fiGeV4Opm3UX0xM62chv6OY9VNuMpIWZ58NsfkcnY96HeKPzcH+Cn3rZCvxEQ5sUqao+VE2r8G9ZsvGf8hby27/v90o/T+0SqslXdxlexx2LwLOtHTjyjRn97+tHbdraedwb7k+eTOcxpKDMmbjB2qj9EzFTaGLKXiYtXb9sVaePvUg0NqP2gfgWw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3259.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(8936002)(316002)(71200400001)(478600001)(4744005)(55016002)(6916009)(9686003)(6506007)(966005)(26005)(33656002)(66556008)(86362001)(66476007)(7696005)(66446008)(7116003)(2906002)(66946007)(5660300002)(83380400001)(64756008)(76116006)(52536014)(8676002)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?kKGAGumLMRjZAgrQVScg10R1lhe3HFgcuz4QfET7eh0JaF6tEU2GIr+AAZwv?=
 =?us-ascii?Q?jV0Y3F9IqoSkUOCKqjX4r8a3kIkyacuYKDOpoP+xQ8F00AKgfgooRkNhFekA?=
 =?us-ascii?Q?rOubVYpTmwlEWRZ+BSZlxyhiiON6cxUz7OJUbLl/sXf956ho02DG+8atOfWS?=
 =?us-ascii?Q?OumOcZUBQTJS3p7Tzx9F/ygd592tqHI2j+E637uW4IObEPQAXafNZwTY/lGH?=
 =?us-ascii?Q?aqB0vwGjwlKVbOkpnW3V9HO5lbVAic2UI6xVJfUUr3v1opLsImrlTIpyeNe2?=
 =?us-ascii?Q?o9gcs+ndpStZV8kkgzYPaZ0EpM7R5E1Y3QDO67voTndlB2VpMD49XQdqa6Cu?=
 =?us-ascii?Q?ejAPqcBWVfYbDbJHNSLasfIOU4meMMazJDNVhArj6bTY1zOEk9JOL0q7o6Sp?=
 =?us-ascii?Q?tc9Y9ELKReLbDd4KLynjyWpsfeHtFNv5etiTv4R2+/VcW5AN4GubYO8qu5WQ?=
 =?us-ascii?Q?DkDeVS+bLzJ3zue+lAoOoxR2GHSPxCSwH02p3IZ44ee7nCyQAKjd1Dpq9nbz?=
 =?us-ascii?Q?WW3G7dVQuHhIGvtKUtfi5OV6OPTnXXzc4s32u3izL1URncryoZplyI+Gc7Qk?=
 =?us-ascii?Q?dRzqDcRyszH5GWBTIZZLoYhJFU4Aw78fK444m1pb3PEdW10vF9nF/NyO5Rzu?=
 =?us-ascii?Q?CPotLuYnYdl3Zuz0oPAe/mc35JcAOrtwgXXHMqZRkuiyJTN2VtXMF3GdVZSo?=
 =?us-ascii?Q?xl9YRVLgoyT7qdkIqW6lVKPa+1ChUybxfUX9PSD+BlgrNxj5C0A+NAOgi5hN?=
 =?us-ascii?Q?v3aAygF9/nqV+InG0PNSdm1D3AGcguuMJrITd0qCxRg0tZBdj6izf50FBV9x?=
 =?us-ascii?Q?XLv9Nzl2/5cItlX8EvYGpcQVC11SFfyZZvccFleDuVF7cOaka3r3orWC09XO?=
 =?us-ascii?Q?X3aNt3T//7XXizh7RgNoaBn9Yeabd0OvnX3kIHJvhBaAcwsPqXseQixFjbcW?=
 =?us-ascii?Q?m3ENwuP66Ykqn1z7ryuWDjOskNsB2iHFUwCFOi4ifsY=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3259.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4362f7c-8165-4aa1-30e4-08d8b1b85846
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2021 20:27:38.4859
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GNFqqY0dsIQ5/ZIzgpTO02Ler02OFgVzWf1+gnJPUN4r0BIhrP2ITRqZiUX7vLzp8fFCTg/cGH30gq/B5+7nBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2026
X-OriginatorOrg: intel.com
Message-ID-Hash: DMGHQ5MI4MFNW6YSXAW43FO6IVXL6VBY
X-Message-ID-Hash: DMGHQ5MI4MFNW6YSXAW43FO6IVXL6VBY
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20210105 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DMGHQ5MI4MFNW6YSXAW43FO6IVXL6VBY/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

05 January 2021. Summary of changes for version 20210105:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Updated all copyrights to 2021. This affects all ACPICA source code modules.

2) iASL Compiler/Disassembler and ACPICA tools:

ASL test suite (ASLTS): Updated all copyrights to 2021.

Tools and utilities: Updated all signon copyrights to 2021.

iASL Table Compiler: Removed support for obsolete ACPI tables: VRTC, MTMR. Al Stone.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
