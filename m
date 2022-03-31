Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CAB4EDF90
	for <lists+devel-acpica@lfdr.de>; Thu, 31 Mar 2022 19:21:45 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 35DEE100F4855;
	Thu, 31 Mar 2022 10:21:43 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AE8CF100F4853
	for <devel@acpica.org>; Thu, 31 Mar 2022 10:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648747300; x=1680283300;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=HEyI+h7rP93CDrTGR7NU3dge76T7WeQUZuXCNxcg+bk=;
  b=IBh4GwjnxAxa7AYz4UiI1FklENCRiDlEdx9MgB3iqqtJaFnZjHPl/2TQ
   6WbUUgteqy79HnV1DtSsTPv1nSMoPTlPxcik8odablEDYuRp29VQI2mNm
   6nlf1Aynd5mXIyXzFVvw4JSICF6nDI43BsqtXfe+OOtX/rZYMOtf8q8u5
   37vaSVLA43DxifAuukm4GanX/PJcJp4czP52H4anoeoWqQhRMnU3Nc/uM
   8pPs5msjLOOqDf+R4F4fO1xKTdqUAbDtiD8H0JQTbk1ZPJHxNe1wF2SAh
   96aIFYcCZoxvS/2qCA2jBoX/UMVon8Y+2kJq6xoE3D2ChYHIbW/Gsi5Ih
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="239826896"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400";
   d="scan'208";a="239826896"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 10:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400";
   d="scan'208";a="566665246"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga008.jf.intel.com with ESMTP; 31 Mar 2022 10:21:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 10:21:27 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 10:21:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 31 Mar 2022 10:21:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 31 Mar 2022 10:21:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gjlx8oFUffGRw1+VKUM+m/wrkvMDYz1RNWQIB0c5miT2FSGuhxgUlpq4hrtTZvIozARErPsKO7oSmjZG1LWq7k5zbo8AP3RcXUE3srGWr954sglQG0Og24L2wUoQ0s/Rdj65VDbVeRmR4KFYZbl4hjWx6d4BaU1dVRs7uYqdwrgobu43XkidVyVpMLT60cBp4U7Nubmww4Dbi1DazGZSpfVmfOrOSiuQ+9dpMpjLDt66vqijGGSFAuEGjukRIYtP8mF7OmhNyTgSoa3hQ2dzxtzJVpRACgXaaZo/gs62CG5rs0QC3QuRfuf2Q/u6JQ2hihpSjIn4ujarwtQyXUvb0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HEyI+h7rP93CDrTGR7NU3dge76T7WeQUZuXCNxcg+bk=;
 b=e3WT2+UyZnfkKkjBfV42uARqlQU/GMYDFWaZNRYMPTQVNi9fntNggWZPiirnW+ncMzeje43IjnaPNuIJSoW/Eyud+dPErQrRSRnIsRtttVp23FV0N7hIVyw9Ilez46vXj+/xth/l0DXimoMH+/zN+MZvSXRMLLDmqf5iTFt3NtFdWmRxsjJVl4pj5+Vag+aj+P7dMlYXQQh/6Dr6Z1UkYChKdBjGporT2sj1vD4lA2jQiH0yGc4Wy0yu5ripYMCtSEHQQzfXCjEGEOBQorY7iljwo34l0GyPrpfkgNO4jgp7rlLe93EvtLcpProUu6fBOrtHqTdeKI8xAO4eQuZs9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BN6PR1101MB2195.namprd11.prod.outlook.com (2603:10b6:405:5a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.23; Thu, 31 Mar
 2022 17:21:24 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::a833:61cb:3c40:6df]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::a833:61cb:3c40:6df%7]) with mapi id 15.20.5123.021; Thu, 31 Mar 2022
 17:21:24 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20220331 released
Thread-Index: AdhFIxLLIjkz3IKlSOGP9ZkRBbZq2A==
Date: Thu, 31 Mar 2022 17:21:24 +0000
Message-ID: <BYAPR11MB3256AA36C4639664A881831687E19@BYAPR11MB3256.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 9746f565-54dd-45a2-7c94-08da133ae1da
x-ms-traffictypediagnostic: BN6PR1101MB2195:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB21955B8ED4AA99326BE46B4787E19@BN6PR1101MB2195.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4p3NxabQgnw/9eRGGxBA2uvqCAO2UfHjLxTnl1ES2Ps1LYnafRYUUKDlgPv2lkqMBrp9fHZn2gwvlVmnTLwhcW3V9DKLSXe9/V+A0RwrymJLjCKh+IAB8Ey7zVeYyNUvvhDVu5tdzoapf/iWHBjrHXQCkrFKX12NQLwdUdLS1YvKbTUfa+wtjDFVqznnKslU5ZPXST21VqM5ZvtX1HWy3c/YNDedOr4hwKFRoKGVJqnpjvjeNBc3HZWP7So+usKgBUGg5qnb/FbLTmueBj/2noSsJTr94dFUgvucclrMCWgCNW9244I9EvRy8eaJXl7GlDWostg+pM3qMY0lWvROddd5tMdGTzp21TvdXWtWwYHAN28k/g2ym2y5IoKRfuHm2DpR3PQ9DzVS0nw830d1xuLI2PBPiZxB6hLha6iqjwNh7wch2/S7531X2FPp8WtVS5SHAVz76tqVbZloo5D6yerhyQOx23My5yqfpKWpJ3bngtYbd8FjGIUgtySWC5BhbEESXp14Ebvj3pjYSGs1jlLBU1AYVX04c7XxGsoaAXm3uS1tdyUKhLjOoJ5KO32AGzaPym5vxdV83HD3F70jcTHVNbJlp/NDkOkxDzJdajrOk7nBHRLosIqFQjrS5kN/ib4uk0n0/Al+94DEp+FOkzAy0ydsMM8nH4nH//tyrk+xJx0Kci4EYe+VozQ4q6lJC9hhGlgK9om5oRqH2JNnocxbNYxjxcRgvxRLmvezOYgHif8L1wqDUFjIT5kN1J1+rMFJsgc/zBDpfbrTdHNVn/Fx2gyZVU9uED/07QlJAYs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6506007)(7696005)(33656002)(9686003)(186003)(26005)(83380400001)(82960400001)(5660300002)(122000001)(2906002)(8936002)(38070700005)(52536014)(38100700002)(86362001)(55016003)(6916009)(316002)(508600001)(71200400001)(8676002)(76116006)(966005)(66556008)(64756008)(66446008)(66946007)(66476007)(7116003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KWwdVAzfouLlvCioV6GWaTQAe85zkX2VMjqucBQrmJIk66/G8fNUz5WxWiSY?=
 =?us-ascii?Q?k/IWEQ/9gUkQHA0PebCMIR0lrLYJLtczppQnpO1Jn40/AVRlienXaIUY/cRD?=
 =?us-ascii?Q?hJPqaocuNX1BATY5hKXkkRoJqp3QrydxO4LPFqdIyicNoSL5mzM9OW+UY8nI?=
 =?us-ascii?Q?W4xE+FMTd9R/GOFr5/oP+pAS0t7eHPGX2PDl5M68mLVpGzH8/f2GDH/8dRZ3?=
 =?us-ascii?Q?EORSByeeVPGcydxhq2BKTH1rXc8JXpbjjIzCY876bR85tNn47ShEoKTqR8ud?=
 =?us-ascii?Q?aSSl+2EnnGKnzMABkNwL/mxSOC5bG5o3HdVt4UO4V11E9buQ9iFuaY6ml9YP?=
 =?us-ascii?Q?hvDujIgt4gHBvRv4SSYdCCwjy2UcWMxkkHiFKQnxBWEW8RBL4shRF1alrzN8?=
 =?us-ascii?Q?YrIL5FBY/5WT8xycAu6TbN1Bn1HoAvAKQclRSyXgbN9a7kauF9zX0Q44Gmli?=
 =?us-ascii?Q?O+E1tSiQnn+Md87DPkfP3+Se4k38QV81XnW4zki1r4RcqggKZ83dmN7afvhU?=
 =?us-ascii?Q?aXqErb4weOeejhZXn49ccWdNvqGN3VxTjHtzPCSTJ5bm5hSr2Ahl9RzrC6vq?=
 =?us-ascii?Q?UW8py9R8lr12t5ALFKK7uHBEKIf+9lTEELAgtC6M5KpQGVvpGc4mHXABqvR4?=
 =?us-ascii?Q?XQylyINP36U3trkMsh/gAHY8sWQDXkqhCT5tOOj7c+5g1jLB2aUjLZquayv0?=
 =?us-ascii?Q?XxHRIr4IUHNMGuQOzHJbb5q/mBQPfnpaFuisvnAtRT/iAb01ty/CnY+duLCo?=
 =?us-ascii?Q?LgdcLTkVn8XvU+xZ59B4fmjMAem0EjyauB7b9wisw4Pk6cUFxTz7teyDB1g6?=
 =?us-ascii?Q?p8BW51HjBGDZ0DTO1wPQzTM92lsqt8jlCQW10Vh2Q7pOOOYP1QsODzPHDgNX?=
 =?us-ascii?Q?guC0JR+zx5N2BkNnplJX4Ek/rLY4VaRPdXvzg01EOuyzETtV+gA6WnB5Thhu?=
 =?us-ascii?Q?dZz6ATSYZvDTflvNsjdBUL1nv7wvOloaPEHKA5vasowW+ELMW1UFT7298bQg?=
 =?us-ascii?Q?RQLiCoQ9JOQyKmkkgBUXKrPsp8Ix/hUkhWzzgHCoqYXBiab3+xiLT/lGN1NY?=
 =?us-ascii?Q?HEUMLkQtTEI9pHwSpaXFjBcSz7hzYB3KE9Nn4RkgZYz+pH9AuISoPWKU2r7J?=
 =?us-ascii?Q?M5qkuJPSpAeWyi2KrAzUbWLBOvLFqw0KeUPcE6tNy4oD3WwLffkTWiwZ8kW6?=
 =?us-ascii?Q?wMHLhyslsLV5F7k52OxftltpiNvLJQNsqtmXKAXkkfO2PsMP0VYyNtCsYqfa?=
 =?us-ascii?Q?J148rmRgbsZendqrJDI+2rUtUqk6y4hGSNctCuyEPZRKk3Q9iq8Q9boRMOR6?=
 =?us-ascii?Q?Z5MaOTL5Vma0xiA9wwwGjqNosZv3qpqrqtdsrsS/2VSvvFuPC0vizL1TRldi?=
 =?us-ascii?Q?TfwBmj9+f1eusxNL+2L6AmcR+LTwiPFluTX4UXOumaAP6N3AWTgwH4jqbtu5?=
 =?us-ascii?Q?XVQBCB+KYXagQy2EGvVHqRFJ6vEOntpuvgkA+yH7l1eUSd/7dXwFXOeVUyMN?=
 =?us-ascii?Q?zIAI5pqsUvPDGyMtQEsUbKgfnRH8PpwdFCWrRVIHPHO6MPQ7YK9EhkRtNiVn?=
 =?us-ascii?Q?FJ030ut9XjUfEPoFMEobdgTRzSC1uNdxo33Z+85ikPlA6tiIPHvA9w2C1/FF?=
 =?us-ascii?Q?fNS3YFDAggnLaVwrL41qK4zIklWYYVS4gsz/fos/D/RYAs7iNTXR+AngB7zi?=
 =?us-ascii?Q?508B0WKKu2gXlwFZxGkJgeL7xflLqw5Rph/qj0uX66YrzPShp1SaEfwgRzSe?=
 =?us-ascii?Q?NfMx/eV5vQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9746f565-54dd-45a2-7c94-08da133ae1da
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 17:21:24.3788
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HjSfYMmWaz+QO9xAB0ZAx29xt8lpAbcFANvFiJ1Vf8Rmaman253wBNY3CSXyoDj2lhSs0+iZ3XSD9m+iSM0kIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2195
X-OriginatorOrg: intel.com
Message-ID-Hash: HKEZTSFVZ4ILH7QRKATIQOHIJXIZOYCJ
X-Message-ID-Hash: HKEZTSFVZ4ILH7QRKATIQOHIJXIZOYCJ
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20220331 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HKEZTSFVZ4ILH7QRKATIQOHIJXIZOYCJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

31 March 2022. Summary of changes for version 20220331:

This release is available at https://acpica.org/downloads

0) Global changes:

Update all copyright notices to the year 2022. This effects all source modules, as well as utility signons.


1) ACPICA kernel-resident subsystem:

For the ASL Sleep() operator, issue a warning if the sleep value is greater than 10 Milliseconds. Quick boottime is important, so warn about sleeps greater than 10 ms. Distribution Linux kernels reach initrd in 350 ms, so excessive delays should be called out. 10 ms is chosen randomly, but three of such delays would already make up ten percent of the boottime.

Namespace: Avoid attempting to walk the Namespace if the Namespace does not exist.

AML interpreter/iASL compiler: Add new Acpi 6.4 semantics for the LoadTable and Load operators. DDB_HANDLE is gone, now loadtable returns a pass/fail integer. Now load returns a pass/fail integer, as well as storing the return value in an optional 2nd argument.

Headers: Use uintptr_t and offsetof() in Linux kernel builds. To avoid "performing pointer subtraction with a null pointer has undefined behavior" compiler warnings, use uintptr_t and offsetof() that are always available during Linux kernel builds to define ACPI_UINTPTR_T and the ACPI_TO_INTEGER() and ACPI_OFFSET() macros when building the ACPICA code in the Linux kernel.

Added support for the Windows 11 _OSI string ("Windows 2021"). Submitted by superm1.

executer/exsystem: Inform users about ACPI spec violation for the Stall() operator. Values greater than 100 microseconds violate the ACPI specification, so warn users about it. From the ACPI Specification version 6.2 Errata A, 19.6.128 *Stall (Stall for a Short Time)*:
> The implementation of Stall is OS-specific, but must not relinquish
> control of the processor. Because of this, delays longer than 100
> microseconds must use Sleep instead of Stall.


2) iASL Compiler/Disassembler and ACPICA tools:

Data Table Compiler/Disassembler: Add support for the APMT table - ARM Performance Monitoring Unit table. Submitted by @bwicaksononv.

Data Table Compiler/Disassembler: For MADT, add support for the OEM-defined subtables (Types 0x80-0x7F).

Data Table Compiler: Fixed a problem with support for the SDEV table, where a subtable Length was not computed correctly.

Data Table Compiler/Disassembler: Add/fix the CFMWS subtable to the CEDT Acpi table support.

Data Table Compiler/Disassembler: Fix a compile issue with the CEDT and add template. Submitted by MasterDrogo.

Data Table Compiler/Disassembler: NHLT Changes provided by Piotr Maziarz:
iASL/NHLT: Rename linux specific structures to DeviceInfo to improve readability of the code.
iASL/NHLT: Fix parsing undocumented bytes at the end of Endpoint. Undocumented bytes at the end of Endpoint Descriptor can be present independently of Linux-specific structures. Their size can also vary.
iASL/NHLT: Treat TableTerminator as SpecificConfig. SpecificConfig has 4 bytes of size and then an amount of bytes specified by size. All of the terminators that I've seen had a size equal to 4, but theoretically it can vary.

iASL/AcpiExec: Use _exit instead of exit in signal handers (ctrl-C).

iASL: Remove a remark due to excessive output. Removed a remark for duplicate Offset() operators, due to a user complaint.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
