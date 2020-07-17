Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DFE224555
	for <lists+devel-acpica@lfdr.de>; Fri, 17 Jul 2020 22:48:31 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B2E041159136E;
	Fri, 17 Jul 2020 13:48:29 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 352211159136C
	for <devel@acpica.org>; Fri, 17 Jul 2020 13:48:13 -0700 (PDT)
IronPort-SDR: B+Amcq01FwPrKVHZSIPnw0vHSwtsveaD6iUrntVBPt/7anzdlo+YFJ6CRgjXHnULGv7D9544Yc
 Ro1WOHpg9qIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="147649692"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800";
   d="scan'208";a="147649692"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jul 2020 13:48:13 -0700
IronPort-SDR: hSEhgplrORxuZ2P4SR1cK/DPcyI9sk/aic/OMuNoPfzUOEziqIB3jZZfhG7Ign5KEn5bu2qmWb
 7KRB5zC/HwtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800";
   d="scan'208";a="309148366"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga004.fm.intel.com with ESMTP; 17 Jul 2020 13:48:13 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jul 2020 13:48:13 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX111.amr.corp.intel.com (10.22.240.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jul 2020 13:48:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 17 Jul 2020 13:48:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRbILPJb6TYdOKpAc09TAiy67CA0KPUs9xrgAx/58GJHDBL9Jw01bElWLobiAUpTP8PY5ldQK/kztPLXgIfICK0c5357NwXPJ0qFSB4LAx0jOUPSExg7uxQWIxnwZAwuhFS0KugRoPDD2NXp8GJiegNt43fSFXYzku9V/UC7Vr7EgyWY1z0QoHCwf2qf71udlNoaeJUdWImUKZxZBH2nP3y/yJ04smAwqWSRKTTB0RucMeQcTEZydZkk2w7XTICCTzKUVTa2+8MulZoUKziqCbrHc+YCfLYcrwHXUd6KxENwRfjMDej2baqAs2WeDcSRHwpIof8JI94rEZc1LQ2baQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSr4Q9i1xFWsI8xSq8fPNWLuKhzLdDrqdSHNtzwBzPE=;
 b=IgbaUcildxN8DHfNLTVybfEMfO/mdGt4+CYiiqxdK/U753MI7gJLSUHX7EnT5Yc8YjNifyoS/lbqxJTFVig1chwpPPa/7R023vgh81AoSM99x3USOMS00Nv1siIX3QL2KsEoAk7J7UINLKeU8dlRGvagO/FGTFzAgixzEYDwxqwXEyAsTj2Rt1skSI8HZeXVp+sGCUQ67cRGqx22O6YgbZ+f29WgD7jYSmsNiTuoIMxefdi9krFcV6EWDZNYtIgQjeiDVTgjQT2zhmI7Habyb/c3RkQl/WeL6foKLg1BHsK95vN6QzQ46FxBYpouP2XITOl9GL8uNuaeT/da+V92Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSr4Q9i1xFWsI8xSq8fPNWLuKhzLdDrqdSHNtzwBzPE=;
 b=H6dFEWPtvwPDekuQWUz48xFjfEZF/RrMlWeT5zGh8djP11Z3K/og/Oyggp25cfvYztex3NARI27Dcu/lbNkZRGDlP6CxL/lYlm55c4dY2Ts0j4Fkv5v5fZq/AtOCP4Y48BxzUFSHrXCDyWkcIdQnTDBYKIgoTlQyvp4J3QGlNNA=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 17 Jul
 2020 20:48:07 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c%4]) with mapi id 15.20.3195.022; Fri, 17 Jul 2020
 20:48:07 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20200717 released
Thread-Index: AdZcez2XLnu03zNAQym6iLr39FsyOQ==
Date: Fri, 17 Jul 2020 20:48:07 +0000
Message-ID: <BYAPR11MB325601E850986788A8D59E12877C0@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: acpica.org; dkim=none (message not signed)
 header.d=none;acpica.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19e623e5-1483-4128-ec38-08d82a92b576
x-ms-traffictypediagnostic: BYAPR11MB2598:
x-microsoft-antispam-prvs: <BYAPR11MB25980735C0063F33C33E98B0877C0@BYAPR11MB2598.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SArHC0xeF2oIXI7Rx2idkTKrGxlNPDbW9juQ7ucfe+hY1VdcbdPLbqz3rDpfGwCw9wqIDScn+QnX3AE7rIfSHuaVZuCS8RTZjfx8AIjr5bv+4X9iJ87BpXxwX0UyZ9tmBIEB6Y32FsAH4gdOA3EBpBV1uCuzME8Eaq9gFnxHqeC5s+nns1xsY0Obas5bY3jbe0qO6pL1WHIeXYyibhcnQDw/biBSZxjUYMv2ZBtkW2apiTESxSxDg7yNfpkpzcf6Ficmec9khXDcqn0RhBKYLA7HAILVJRd7p6FuiT9gyqo/bls8Kjz6upH2owf+QpGax1bbS0YpKbfePQfOhESREk+oZg+HrtJqW45YAzN2FEPuhfDM3fs7AG4ESF4NjyEiY/mv+SxLYNLwG6nDx53/zA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(52536014)(33656002)(26005)(64756008)(66946007)(2906002)(86362001)(5660300002)(66476007)(66446008)(6916009)(6506007)(83380400001)(66556008)(7696005)(966005)(186003)(76116006)(55016002)(316002)(7116003)(9686003)(71200400001)(8676002)(478600001)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: CGlwi+9w1s+DRT2RPcnwPfMxnWMyy9QdpcY1kKpBQMg9Plnhr0jBxSyA4lUmCHcOEhElJ8dzLRUIXHU0jjzrzbpuciSTfhCjQ9CfzSykjwWYIWGTrWbtJ95x/A8alrxiPPwa8wLDEV3BMj6a47JinVKBff9861ujNUDJSzJELFK6Hikcd8jsZMKuivkv2EzClik5a/MpzlKghFd3UVSJaqAjcg78yllMnOcMQjX1Boo/okXl+oFOHzkC+xGbT2MpngWH5i7AT+TbWRQcFMVqodkg1qv5nx6I9UaF1Lph6288P58zqvdUmm/IbwzGir+8ie2BBIEGAIpYrZ9PymZeX8QWt6Hp0GHcutIShO61T6sxGbEmCHCWAIQrFUAOP0kgNmA7f2sP2NlEaiVuJsT6K1R38tG5Wkk9TCbyp4lZnclnRrjiIImvQaPTUrUkRipats2VK4n1Y06+dzN9ecOzhE3f981lqsH4xGuvIfQywLBh/N6noVCxBLw/mrQlrdB+
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19e623e5-1483-4128-ec38-08d82a92b576
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2020 20:48:07.0167
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjMTVeKqD5ARWLRPQAcKrgWBr8PWNAGJIZwJdM0AlHqBJHgHmV5ZvzhP6qry+BNYJDUnM4kuwxnLn8gGO5ix0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2598
X-OriginatorOrg: intel.com
Message-ID-Hash: CXHTTCYQS6APX5VI4ZS6GC7WD7E5FD3B
X-Message-ID-Hash: CXHTTCYQS6APX5VI4ZS6GC7WD7E5FD3B
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200717 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CXHTTCYQS6APX5VI4ZS6GC7WD7E5FD3B/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

17 July 2020. Summary of changes for version 20200717:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Do not increment OperationRegion reference counts for field units. Recent server firmware has revealed that this reference count can overflow on large servers that declare many field units (thousands) under the same OperationRegion. This occurs because each field unit declaration will add a reference count to the source OperationRegion. This release solves the reference count overflow for OperationRegion objects by preventing fieldUnits from incrementing their parent OperationRegion's reference count.

Replaced one-element arrays with flexible-arrays, which were introduced in C99.

Restored the readme file containing the directions for generation of ACPICA from source on MSVC 2017. Updated the file for MSVC 2017. File is located at: generate/msvc2017/readme.txt

2) iASL Compiler/Disassembler and ACPICA tools: 

iASL: Fixed a regression found in version 20200214. Prevent iASL from emitting an extra byte of garbage data when control methods declared a single parameter type without using braces. This extra byte is known to cause a blue screen on the Windows AML interpreter.

iASL: Made a change to allow external declarations to specify the type of a named object even when some name segments are not defined.
This change allows the following ASL code to compile (When DEV0 is not defined or not defined yet):

    External (\_SB.DEV0.OBJ1, IntObj)
    External (\_SB.DEV0, DeviceObj)

iASL: Fixed a problem where method names in "Alias ()" statement could be misinterpreted. They are now interpreted correctly as method invocations.

iASL: capture a method parameter count (Within the Method info segment, as well as the argument node) when using parameter type lists.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
