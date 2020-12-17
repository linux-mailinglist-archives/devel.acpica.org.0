Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D42DDAD2
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Dec 2020 22:28:51 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B1E05100EB851;
	Thu, 17 Dec 2020 13:28:49 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F22CA100EB84E
	for <devel@acpica.org>; Thu, 17 Dec 2020 13:28:47 -0800 (PST)
IronPort-SDR: 9CsoqJVngGc9H50RZkyfhbe/NJ/yL8t1G9AXidNug4sBms7W/aQXTNYUxtSkEuM18CZfIa+Oxj
 kkGR89ttTcSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="163070196"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400";
   d="scan'208";a="163070196"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Dec 2020 13:28:47 -0800
IronPort-SDR: nva2L79VdQhDtPNkIv5KArr2kq++kMDj7rAbGVHMlMMbInHnqh4MFu7wTclokLBxeVfaHvF1TP
 8q4TLsRALa1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400";
   d="scan'208";a="558195258"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga005.jf.intel.com with ESMTP; 17 Dec 2020 13:28:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Dec 2020 13:28:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 17 Dec 2020 13:28:46 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 17 Dec 2020 13:28:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SRAKDrgrJnDvYxaRlkn928kCIN/+o6KlWfjWrUdLk75Xw5yxg4VaBD54mj0XluiahjNqlkSPIoWkan/yxuUeuf8UHQUqAn32MuFt9o5MKZpTa34zX/ikcBMpqdj0KDyX8OCfvoLnlRYWgS7hMotVF68BdLu3VGKc9efTj4IhvKzcOs5CGlhfYaVlI1GwG3XPJ8aZi9Cd0llsnqbSeiS3DcQ+WaqEfJln1/Daw3JBbHtlKhxK7pEr9RW4ai3WZuVtikAGBVmC/6KXyixtwFyVrzYNDMDRmn2DIxql1j1etPnjuMrC0KcpV0+ySV1g98yrCfsxK5fvia9YpxJ93HnGqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgKAcKLssmUhdEoi1I+AMYdXS5amAo99MQKjnFfn1K8=;
 b=gG4sLjLpW1G0RP67RVToBeoSvCEpGXA9FcXdSq4nDGrWlnIQf74tPRIdJxF8qtSCpxD0XhE5Hwl0epSD8gkGkJu53pSjmenw76xBayFbcxkhdawP3z0OlDgmDWxceCjWp5yO/KLfM7iMjjgT0yNpOQ7soSO5YOHp4Qc11pFtPL1tsSP38gBg0g1D0z8rCsvg2WT8PGGJda6BSlirzfAhWds3twewY2GUow17WeNZQFBYGgsCYbXn6yZJuGKlbmgzsxagXqgmveX/dqp8Xe4+gPkhUuUpeLH/tOQwvecgqGcadRQeNYMcXUMwp0JPF/k99zOrs2QNPsaJ2w6BK25lQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgKAcKLssmUhdEoi1I+AMYdXS5amAo99MQKjnFfn1K8=;
 b=Xu079xj5fze6tk4UCYRgwt/JsOCntXVpp+ZycooV4wrEC23wvOO+Wqa+HWPOs02NfNMjbdv/afJsrcT40Ur+vJNDt+6M6D6g5CB6T8g6x6vcLTcKLwdmQxJz3L3rcViB+J6SJvfO7zIoS2cAgeaqqBovISkfOBI5P9lUgGcAEmU=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB3608.namprd11.prod.outlook.com (2603:10b6:a03:b1::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Thu, 17 Dec
 2020 21:28:27 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac88:24d1:1225:553d]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac88:24d1:1225:553d%3]) with mapi id 15.20.3654.024; Thu, 17 Dec 2020
 21:28:27 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20201217 released
Thread-Index: AdbUuzgV+qapT9RqSLGP/PT2g5fWYA==
Date: Thu, 17 Dec 2020 21:28:27 +0000
Message-ID: <BYAPR11MB3256FAD9C20A842C02C1CD3887C40@BYAPR11MB3256.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: b68a0e9e-a34b-4523-6ba8-08d8a2d2b187
x-ms-traffictypediagnostic: BYAPR11MB3608:
x-microsoft-antispam-prvs: <BYAPR11MB3608FE50268BBC863174D8D587C40@BYAPR11MB3608.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y+8vCGXPl2mm9K3PegxQ23kGnQ5mmVfottTjScnQ32lnUxZkcIfxxIQmJoLvw1+VI0QAJaaCbrtOUHazqYrUWXwpf1I3v+YY/eyb3PNQO62PWKSJ1JchVVSeGwlCIbqU1W3XPj/+sG1RhmQH15RRoN4x587d2t0fk5ASbtx4nR67a+eo0BYjTJxORlwxFBxpGDHB0/A0tSNYvhCes1k/Bf+kDPep2k4WBDUYe/vmoi3Sj7ZIoIdP9UfOC/Urt51QLOePgG3KO7VCm75IeiObZFs2Ru30yCUejPD6wGOLWy1oFRp1M/MjmRcdBNgHS+3m7vUD1XTsAEuDLZbjEhBIzjpslWRYjfNp+Mdu3lozJ3vhx8aBoEyXTLzVVDPyWwdJ3e98cM1I6PHLnueeHFfI/w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(83380400001)(186003)(6916009)(66446008)(316002)(2906002)(33656002)(86362001)(66946007)(66476007)(64756008)(7696005)(55016002)(71200400001)(8936002)(9686003)(52536014)(478600001)(26005)(8676002)(66556008)(76116006)(5660300002)(7116003)(966005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?inPOmu2bHSVFNjcMkUHLON8bxSlbwBNB2Fl2iGh/0tt2uFXI8hPZEDfNDZTo?=
 =?us-ascii?Q?ABgVx7HsjzqOY9DL1lUmbsZFlXUg2i7cYgCPj9uRSgoy+SXFzoK8HjEizkre?=
 =?us-ascii?Q?Skasp89hGNvZFXGtZ+kM4oaMpZ/zK4Yj9Lr9o1mr0/P+IQBbRAi8LRoxeJBh?=
 =?us-ascii?Q?3F1rePMeVztHsOE91e5n1mPbHOIhKBFLBvm2o/e5s397CsWUY7n3Ey0BeyQr?=
 =?us-ascii?Q?1cwBEh6e6rEqLK909JfDRzp7DzpV+BETuAdAGwdp4hQe5pKioj8B2a4DCYnJ?=
 =?us-ascii?Q?hJ5sXEUMJ/cn5hVzBbs6VWjg8UulwQue4Cb09/viRwgCNsyB8ge5nZYvF15u?=
 =?us-ascii?Q?xK1C/QTlSYEMggmJqE51+TA507lQeNPz69vUR5P6YLCHkRJmo5kDly9MW0Qs?=
 =?us-ascii?Q?9QlDAE7g1foiMI0KvTrZz/l8+9edGCvZRBvrzlV/KoWQKgsb0ibEMCNjxL8J?=
 =?us-ascii?Q?YjAwzG7W0s5pGnByAzUXbEefS7DSis358qDVFJWKmLoU035CJVEUr/bKKcCF?=
 =?us-ascii?Q?rJpucn2uDL1EVaobbzowM/ngSGOG9HdvwlW1U3rJJ6FWFeMEHMeZ5gqVNR5l?=
 =?us-ascii?Q?W/cxcI6LWHEm7aCfD3hw32RMwPwrFiiiUZj0RECRqPOgdpgstEf/QwMbb4H8?=
 =?us-ascii?Q?BsSqbLDC9xj/QcymyHdThUquAfLNPGM7eyPlVQolKB5sb5t+IzzlbQJwBzlO?=
 =?us-ascii?Q?YI5yR3e4wcHupo5S0TGRMotTXxwx8HoNOEz6NeffujVwkAkwMid2MFsVF+bY?=
 =?us-ascii?Q?brq/BirzKxzhDTKTjdt8a9QlZhsW4tZvE1433awv40a3mhnylRthc13/VvQe?=
 =?us-ascii?Q?urj8DNXKHqbSyWVa3xVwK4ghJPk8xT1TlDXmGhzB24NsqJ/uv8Znk5UWNfsF?=
 =?us-ascii?Q?+Nf+bYjJlqlRwy3G3Yytv2rL2eqBJrs6R7s+fi2tK2/E19VEflgABuKWJUPT?=
 =?us-ascii?Q?hfE5S64sqAVpYV48c9Z324dOe+533S9cKLHnihuEl6M=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b68a0e9e-a34b-4523-6ba8-08d8a2d2b187
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2020 21:28:27.6630
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B4XXgFRAQ0BGNdXIhyhdks0y8rH7nkC9yazDV8pX3iVu5SesNmilTK+z3u70sMIK0LC3LUJoClY5/CFanpCYWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3608
X-OriginatorOrg: intel.com
Message-ID-Hash: 2SUPJKO3ALTV5U4UW2IUKOTG66NJ32RG
X-Message-ID-Hash: 2SUPJKO3ALTV5U4UW2IUKOTG66NJ32RG
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20201217 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2SUPJKO3ALTV5U4UW2IUKOTG66NJ32RG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

17 December 2020. Summary of changes for version 20201217:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Note: The implementation of ACPI 6.4 is underway, and is expected to be mostly finished next month, when ACPI 6.4 is released.

From qzed:- fixed-ae-class-macros. Fix exception code class checks. Added several new macros, such as ACPI_CNTL_EXCEPTION(Status) in order to enable this.

AcpiExec/iASL/AcpiHelp: Added a few changes for support of GCC 10.2.0. These included a few casts, as well as a null pointer check.

Fix -Wfallthrough: GCC 7.1 gained -Wimplicit-fallthrough to warn on implicit fallthrough, as well as __attribute__((__fallthrough__)) and comments to explicitly denote that cases of fallthrough were intentional. Clang also supports this warning and statement attribute, but not the comment form. Added a new macro, ACPI_FALLTHROUGH to support this feature of GCC. With assistance from @nickdesaulniers. 

2) iASL Compiler/Disassembler and ACPICA tools: 

Added improvement to method call analysis by saving the return type and relaxing certain cases of type checking.

iASL Table Compiler: Improved info messages. Added a message to the -T option for when the default template (DSDT) is used.
Also added a note for when multiple SSDTs are created with a DSDT that the SSDTs are created in the same file as the DSDT.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
