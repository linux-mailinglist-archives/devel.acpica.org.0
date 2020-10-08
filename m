Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 019B6287789
	for <lists+devel-acpica@lfdr.de>; Thu,  8 Oct 2020 17:34:35 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5F55515844A3A;
	Thu,  8 Oct 2020 08:34:33 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id ADF4D15844A38
	for <devel@acpica.org>; Thu,  8 Oct 2020 08:34:30 -0700 (PDT)
IronPort-SDR: 6GWfLxjn6asCAb2a0oeD5o+7ktDGlpKaKcnBUS1De+hcUh2o+IT/qh2tkx3B3swOWQi9q72kSK
 ezrwc7egbPmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="182786037"
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400";
   d="scan'208";a="182786037"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2020 08:34:29 -0700
IronPort-SDR: XI7Up5BzfijmxAVdprbHVkOoTucNs2ECHUTaOsRcbYjoIcZNUk8dIkmsu6wuxnLPP+B/gXL+IW
 9bywt390p1Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400";
   d="scan'208";a="349522269"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga002.fm.intel.com with ESMTP; 08 Oct 2020 08:34:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 08:34:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 08:34:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 8 Oct 2020 08:34:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 8 Oct 2020 08:34:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjWdIxgDbfv8yEmJrzBLxGxR4Dw3pkSATHat3BOzeR80VnFSyjgDceVBW4joLd4zN6LEhnKlcvw8FZCFIHBjohmM7Im/EDmGKU6GpCILWrAJcwVt+hHzzLKxqotFiU0h/Ufm1+1SBbAeWuTtYBQ6OmYHVLPq+Xp99VX8jtLhLunJmuD8u0zhyZrGfVzFkhZDlMut9jEn8sjPm6Og9vTAHH8x9p96voS8E7bSndi6KU3OMM9ahvQqpLtyCx5gEua5XiSPM1db88uGcRnqPghBx/5nreGsRsxsj4ItaII4/YO15d7bEzjgmKvN/VHsPsoX64v3mcgkmohX8lcAyGThiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sO58jS1zali36G5ayh/1pg2oXPM+j/TrmPkQxsSnZcc=;
 b=TUO76E/xF49DeZ0GJ65s2slqAD3YBlwbaMtQIqfKNoH6h20n4RRaZ6hWvuqMPfQkLR2BKtHb2g94+6Adg6oiJyeBZKaz+Cicvt0N2qhZMPB365qVrT/6iuj8CTIcdn2NyOoMvUwlbmS2MGDvn7OdgI6p+jAOGxUWfvK7Bz8pGPt58bS+/u4GxRUP/XcWCx9iK9VZSbkJtL3/Et4nucDKfRUYdvdjWjh0j1oq6x31UMZiEodNoQBzLlzDAhHJWyYN2Zv0S44JpVhwIHnthhK/8B4N/B10pL1nPPtbsntambZQJU59kHAjRZjQncu2R37tjwahAHrIazvzVIiIXf95dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sO58jS1zali36G5ayh/1pg2oXPM+j/TrmPkQxsSnZcc=;
 b=p6GjkhM6e06N3nhjigkz4OozxgspJI8BVsUIluRnnJQTN6uIqzQotG2pw1KJZ7vVOBE3nEHC4UeEFc5aaXCSo8dwScJHwfnmWqrSqeZB/1RVggOVyOPi0+5t0uGaIXd5wmzluIj0wY+aQn5rVUPObGFbb9pv70e5YhOGMynSfH0=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4007.namprd11.prod.outlook.com (2603:10b6:a03:189::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.44; Thu, 8 Oct
 2020 15:34:24 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::bce9:aefc:561a:ee66]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::bce9:aefc:561a:ee66%7]) with mapi id 15.20.3455.025; Thu, 8 Oct 2020
 15:34:24 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20200925 released
Thread-Index: AdadiErToxqi3y+MR9W3VKvbOUZkcQ==
Date: Thu, 8 Oct 2020 15:34:24 +0000
Message-ID: <BYAPR11MB325657C5753F6466D6BC48C1870B0@BYAPR11MB3256.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 12f6d9e9-2f12-42c2-a0e8-08d86b9fa26d
x-ms-traffictypediagnostic: BY5PR11MB4007:
x-microsoft-antispam-prvs: <BY5PR11MB4007FF8D0FDBC5E40C55B312870B0@BY5PR11MB4007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sl5uFTly8cUwro8LI4Eetf1/z+gFYGDawKmr5RT+hA4gFwAFnp0IjoUbMktP0PJhDn+Ty6ICDTntsv+P9Hdy6WCUHUwIskpKlZCxFHXlYv1AfoeCXwcql4ZZlzlgquvVolD0+QQA6dfDyx9WOgTH1ipE6lmeDSgalQIlls2wgUW9ankhW7q4+1A4KhbwZHzlkW6UqszONn3vuu4kFBkIGe8RLpUwseWuia1l+2x2g3sFTfdrI6hkbPVFoetXxMThd3zEN9GPZ2HXUzE3ytqt+JkiKmARfNxEb6GjiYehF6ZIMB3EE4TK1hw9bKC9pkntW/4uHdshDfHXBm/IAnpf/g04aESGaTiTBqUjUVwTJIpoC36n9fXoVDWI4aShYRFLMSjDJAR3nLDbp/zwLAu6Sg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(366004)(346002)(136003)(396003)(83380400001)(52536014)(66556008)(64756008)(316002)(66946007)(478600001)(8676002)(66446008)(76116006)(86362001)(966005)(71200400001)(83080400001)(9686003)(5660300002)(186003)(7696005)(33656002)(26005)(66476007)(8936002)(2906002)(7116003)(55016002)(6506007)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: Jbz6BLVrepkQlRQ5rDo78D6m+MqEDXV3jJVw8H00rEcFcay7PR+kAnIGKPQoh+5PqwX5CmaD2X9nmjFKvL4CYBIC6+XnjoSZ/xCBpsgHwjJrlAFbbc5V/bckdn5F5bYSJodR7HNGfDcz+QNobHsO40IfTuZ4nAnYp/raTlOR8ErqDxQ1c4Vmm5hsdVIw1wK43/WNYS3vDJKhv9GTwIgZdq7sfWoQ8HXz9wJpG3LIWpnJBOzAy7lvZd5h/uwOqGrBJEQkDkXZkLCuRLxFy7xZstW4dcFs1IeClDsrJuf5tuhKSaHGuszJ87OJyCrd4K2bZVJ8KzU59Zcf9Lsu4PrLt3TclpFJiuU8PSDwHcdUWQiYez50M2uYejGXJoWbTK0L7d8y1uuept2CPZtqdVS2CC9lbo9OYplk8/2Qn1ObgtvOrfRkDwrbE80byPy+VZhc7F1awG5G5QL0A3qf+gWFLceNr5jpXbMHYaN41g+rllAR/vwlrF9U84v3LcW5Knk7VnAjpzJt+osP7cqOqvuPtewgYd28lqwZzJOnTMtJRXzDIJ1X+BQROj9zRyENjYOrTGLyWR9nhUAGaQ7yR0HAGgP/IziWGevForCEChbymoALqEITTLFAbtC4ao6ZJRpBb4+f2A3lielzDY8nc8VAGA==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12f6d9e9-2f12-42c2-a0e8-08d86b9fa26d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2020 15:34:24.1131
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XvLIR7ParhNadQaFjjKutxZO7qfICBL+vrQYyzLSnyNybxDPmNzsFte6q5Lm7Kt60ll6Vg6USVzo8iWtP5fe4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4007
X-OriginatorOrg: intel.com
Message-ID-Hash: JTW2JORTHXTV7NG5FE2C4WD3OL35NZS2
X-Message-ID-Hash: JTW2JORTHXTV7NG5FE2C4WD3OL35NZS2
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200925 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JTW2JORTHXTV7NG5FE2C4WD3OL35NZS2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

25 September 2020. Summary of changes for version 20200925:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Preserve memory opregion mappings. The ACPICA's strategy with respect to the handling of memory mappings associated with memory operation regions is to avoid mapping the entire region at once which may be problematic at least in principle (for example, it may lead to conflicts with overlapping mappings having different attributes created by drivers).  It may also be wasteful, because memory opregions on some systems take up vastchunks of address space while the fields in those regions actually accessed by AML are sparsely distributed.

For this reason, a one-page "window" is mapped for a given opregion on the first memory access through it and if that "window" does not cover an address range accessed through that opregion subsequently, it is unmapped and a new "window" is mapped to replace it.  Next, if the new "window" is not sufficient to access memory through the opregion in question in the future, it will be replaced with yet another "window" and so on.  That may lead to a suboptimal sequence of memory mapping and unmapping operations, for example if two fields in one opregion separated from each other by a sufficiently wide chunk of unused address space are accessed in an alternating pattern.

Added support for 64 bit risc-v compilation.  Useful for acpica tools and incorporating ACPICA into the Firmware Test Suite. Colin Ian King <colin.king@canonical.com>.

Added support for SMBus predefined names (from SMBus Control Method Interface Specification, Version 1.0, December 10, 1999. New predefined names:
    _SBA
    _SBI
    _SBR
    _SBT
    _SBW

AML Disassembler: Added a new command, "All <NameSeg". This command will evaluate all objects in the current namespace whose NameString contains the input NameSeg as the last element of the NameString. Useful for debugging.


2) iASL Compiler/Disassembler and ACPICA tools: 

iASL: fixed a crash that occurred when predefined objects return packages with lengths that exceed the initializer list.

iASL: added more detail to external resolution error message when compiling multiple definition blocks.

iASL: improve alias analysis by saving object type. If the alias is a method type, the parameter count is also recorded.

AcpiExec: Increase the default loop timeout value. Was 1 second, is now 10 seconds. Prevents unnecessary timeouts when executing control methods from the command line.

AcpiHelp/disassembler: Added a bunch of "known" UUIDs to the internal list. Includes:
    Memory Device
    Generic Buttons Device
    NVDIMM Root Device
    Control Method Battery
    Device Graphs for _DSD method
    Hierarchical Data Extension
....ARM CoreSight Graph
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
