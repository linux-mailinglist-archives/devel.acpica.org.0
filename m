Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D64E4793B2
	for <lists+devel-acpica@lfdr.de>; Fri, 17 Dec 2021 19:17:16 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 31470100EAAF3;
	Fri, 17 Dec 2021 10:17:14 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 04400100EBB92
	for <devel@acpica.org>; Fri, 17 Dec 2021 10:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639765033; x=1671301033;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=eLln/1JWrvbkuWAK28KzRxVQtlOuR9KlKa4aM+eO5vU=;
  b=YWxP2oTafEeGSxXZW40jh5SWVHBkpe3OV2SlyfrQIwaXAOjxzodqCpCE
   rKicuIMaQgeKtbGAEG663IaEwzhZVoVWmSHlu5Gu5DCip7etsC+kGa+xx
   ws6MzIl3XEq5yQNf+GYl+D9IZNlZ0lgOV9SnbjJkJvsBvs1A+IPjojbky
   uOsRfAfvkzlJt9OllYjcbb1EOhBRNLEiY/3Xma+PjVBJ6b+4cOwPlqf1w
   I6+hZS4IG40bmsAkq2x/2Y1L/8UIzdCh1JN99Y6renDqqc0h7Fl/z0e5B
   H4lUScemxeiEUtiKgYO3pk6sbBLOBW022ZgVyNMI3uiQLKFPvzamPHbit
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="300580933"
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600";
   d="scan'208";a="300580933"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Dec 2021 10:17:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600";
   d="scan'208";a="520718869"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga007.fm.intel.com with ESMTP; 17 Dec 2021 10:17:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 10:17:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 10:17:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 10:17:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uajdrm4KdzotzMQ0NopxQUlOWkLAKSzG1kpO0iRfC0Mz6N+LgpaZJ0y7JKQ1wCYzEA82ZkvIEsG/au9ZjR7a4a6rcLUn/kGulUNWC1rEfe8K4xZI9rjdQSzr2HBofTKouKac5ui9DWbVaAuWPoTV3YSpurCydyKnyjVRhbyhO99tmjh2+bBZEZoA34ESnIqnaU/WzrnlbaJiZWuzG7j+nqVeNW98QzqJt7MAmTGuqilR7lhuI6LL5AbNBYtWc8i9Brav2bJFRS7GbfwIFshb0kbCMUwK4r13TVZGXSMDpJHXomoNnlofjDZMdKVu90Lyo5wVF7eRT5w0b8dy5gJh0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLln/1JWrvbkuWAK28KzRxVQtlOuR9KlKa4aM+eO5vU=;
 b=IUgVjPIU+qTaqWQwwdZ/nlAbE88croRc4xeLresAm/mRbp+5D5Bv1Zj3AI89l62gDFHhj6K7cBHRxgyDIKJm7+3Nd2UKAwTttF24gX6/NUVSVgdyg8TXkmDeIWUjTlh03fE/U/yxnhJgxnTzp0ZcMd6ukGoZmRKKaBv2vHJosPdD9nl6Ym1Ths7mbEL0Lea3gGDe+ANRxBHO5MyALD8qtD55Y+ixDOPVlfxTnwHUA8FEmC3EEG1JzggcYy6KG3alvCgv9DmTLruTowsYtzS5DiH2A9U0wrU61Ol3uOVBeorBjBN+DQ5/sTzPtCWREywwfo+SdVpjBw1sCAR9efIhsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2918.namprd11.prod.outlook.com (2603:10b6:a03:92::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.15; Fri, 17 Dec
 2021 18:17:09 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::6d1b:52fc:309a:bff7]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::6d1b:52fc:309a:bff7%5]) with mapi id 15.20.4801.014; Fri, 17 Dec 2021
 18:17:09 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20211217 released
Thread-Index: AdfxzqINJThhPmueTOu8GVXSNM8sfg==
Date: Fri, 17 Dec 2021 18:17:09 +0000
Message-ID: <BYAPR11MB32561FA78CC3B7E5353BB43387789@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d613277-46ec-45f8-1df2-08d9c18970d5
x-ms-traffictypediagnostic: BYAPR11MB2918:EE_
x-microsoft-antispam-prvs: <BYAPR11MB291894F462C80F101006226287789@BYAPR11MB2918.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GC3usdfCMH9YkpdWxgFq5Wwstiwxg/TF31u/2aucGnas7NSxKWqepC+BXr0QKk2P32Kamv15q55Hy07xcbYk3Go1cygTe8dXhkqoh9Gj1Pj8fha0YVRpGFSj30vv3RqXEEBKsIqKvqS0B/ADbeeebluQdNaYr7xTaOjL+/606wHUrmR2iVLMbDunFg1Ucc8CD77Fhd5/VdAi3LsdopPtZXgrmhz3FvpUxlBs1hfswFdaXXNdEwRlurQ8cYT+abkQgPt/CQ+GEXPETtrsGQyVB0gVY4qAASHIzDjwA9grkV5S1zdm0cc9gF/gEXAgko5p/t5x449iR+gZuSdmG3qPg8snzYmUh5L8nbWeCGKiVpswGdQshnkkACZ811b8rx+mxY3gES9MUARQdPp7yATDGpNWczwq/MKVXyaEC5xdnCiAhEd3pHfifcHlmggLXgUKh15RWZ658MUmQMZZLabvui5+j290eo2OoMuIhXYVn1MgvaCLh0ceHKL50P/9HnuMJd1NofZWX6YblPie7IjVMESlmRrM/z4nDFpkWJH+QKv0fCGCmfxBygxeZWSUe4SoaUEly82gIJE5DMVwawKeRSi3pshtj1mUxUNjSfAAcuDB5LUjErTDpwRMoje7lmoCgVVeIlWf9MyrbBkPcN034aIHStXCLJJ+PigehsrEN2yCJ6tAYdH9rZC4902I3lyFMoDj6p0uICYKxBDHXWQ/vdyXqXpIYbnq2HHlDjAbphY3dc0El1zSMcseSjKk1TbL3Bwd+gs5y27rO0La5Jsi8ZzIoZ1AY3UtJgrjClBG4fw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(52536014)(86362001)(26005)(38070700005)(8936002)(122000001)(9686003)(316002)(82960400001)(33656002)(186003)(8676002)(2906002)(66556008)(66946007)(508600001)(66476007)(7696005)(966005)(55016003)(76116006)(5660300002)(83380400001)(66446008)(6916009)(7116003)(64756008)(71200400001)(38100700002)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ygm201I0gFO9jcf380+DZ7D71XaQUG1X/tmIsTGTvKL4Fmg4eWZ12Sxz9CLy?=
 =?us-ascii?Q?O4M6i1EIJa5Tm6s2jpe26QDg1cKRCn1GeObV0HWFsX5Hc+gFBo6JUH30Sm7Z?=
 =?us-ascii?Q?3mhvg1T3g4ynMpOD7wNwHhok1IvnNMbWY4PHyOp+pYBoi2YhDTFGbGumSCYJ?=
 =?us-ascii?Q?AJgbenjg/+t8KtiRLRPUwzaBFUKv+JNG923y2r6pigD0ZxsRmBP0Mm5QfY1J?=
 =?us-ascii?Q?HqmrBozFPRMF5fYKTILz+FRguCpU8+JGktb+NpPdGsZT5RH+XOZ92ManlSI2?=
 =?us-ascii?Q?E7XRCL39S9QloiG4VOd9q5zt1nBBPjVl5qrrev+Vgq+CQd0goz9m1ja0C80Y?=
 =?us-ascii?Q?2hPGNSqXVpv2zbo75edieqRhp4ThcIha8Yt7B33cUGhnBRYw7TsCxYf9wJDa?=
 =?us-ascii?Q?9uv7xxKziBqL/rO71PBtYdvWAMoqou7lLcJmg9QW+od/K0CHNVfsuonmiQZT?=
 =?us-ascii?Q?Cv8Dnu17GZpjEM6lzSnJei6uyiIO/bNd/S/jI+y3rp56VzByjuFbpyx9w6ez?=
 =?us-ascii?Q?q6XcSHz259Nw5CNe65h8GfhD4Mdk+0BM48BjXiTKDf3rAIU6dPgN7NydpP44?=
 =?us-ascii?Q?juME0ICXnp2ZsNfEPIki5oK2oGi5VLbko4VaPPXX6qwcETci2nVF4axZBKrB?=
 =?us-ascii?Q?KrSQd9/kX4zeNGazojm2cddNnr8WDcSAZRvWj9D0gr0O3HL2bpc4rmeGmks7?=
 =?us-ascii?Q?meDKwuN4vd956hqqGwiyiPWdMGtc6E7ILeI+E0uiQTCmMJ+NH/WSxyGSFSmy?=
 =?us-ascii?Q?0qM59bsLK/sh6VBSQHAy3Jt/qTQ72zEGqE0I8H0KEEmnFXVvOXz1yQUl0LP/?=
 =?us-ascii?Q?QGfVAZzbKC47yjWERkCqiqSg090RU/lit/5KSQSvfepWUdiTCsnp9PFsJAJO?=
 =?us-ascii?Q?kCNLGXdRrlI5J3i6v7FKVP0OQm94+hV5eF+JgwiSn8KqCbHF6F+SRpwU9j9+?=
 =?us-ascii?Q?7nEOp4FnJ4vNotSGMvmPe0FCseNdpSbU1rbYq2BD242Vll5errgIQEXndstP?=
 =?us-ascii?Q?I8IzVwg2wqmhiw/9lcG3AwbrImZ0Vi9/KpBG9SEpyyIICCRZQGmrk7JdzMZp?=
 =?us-ascii?Q?vxyUjZcZbS/95Gx8xNP2Uwm32ppkPvtO87xOtEoTjTOefFIGTVkpsyRa/G4r?=
 =?us-ascii?Q?EU1hQTrLczrmOervcPSc0JDyA4a7+T49xUzhJ9ko2iMi6M0XHx39G1th4xcg?=
 =?us-ascii?Q?v0uLfUwFkim5hOKD0fCyz5unyyZyeOMuZX92G0mWHwJYAEYcFsrwuy7In/fX?=
 =?us-ascii?Q?lmq2pPkxblS+ofBn7JljN18Z85UZph3dQe1pucHlknNDd+im3o3yBFfGTQLe?=
 =?us-ascii?Q?dxIOK2IfDW/yF13JPx/IiFq8xti0n5qPjlZdQBw+h26LQfGvj9NIRh/URDYR?=
 =?us-ascii?Q?FXEinQRGk2VhSUNxqwNBInCM+9PWkmY3rXLRUO93gagH81bGqlcgZhGtWkiy?=
 =?us-ascii?Q?t2ZLYrf9UvzOynMO5tP7cmS97s53yz9+AtGNw7qcXpbQWJe6hvt1Rzilq8dV?=
 =?us-ascii?Q?vZy1hvJj/6JxbOFUYk3ChR1xDf067V0E718/sJum3jBdjQFtktOrnuigxZ0Z?=
 =?us-ascii?Q?CtqPBihPW8vMtc3fqU2u4M+SHxhJuvGAAsw5JTn8eSTNRxbG8OGXR/Iy+7Ch?=
 =?us-ascii?Q?F2eR0zP1jPZhKM1Jq8IJTvM=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d613277-46ec-45f8-1df2-08d9c18970d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 18:17:09.6706
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gqa5rN78DioDfV+IaiFSGsuS62vxOGhxs4qJpuMnKbda0YveOOFbMWwhK4EwMx/sIDx8g1ofLNzZByMwIP30UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2918
X-OriginatorOrg: intel.com
Message-ID-Hash: XA2YNYE3AZ67XXHUXVRPITIWCVQD5XHV
X-Message-ID-Hash: XA2YNYE3AZ67XXHUXVRPITIWCVQD5XHV
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20211217 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XA2YNYE3AZ67XXHUXVRPITIWCVQD5XHV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

17 December 2021. Summary of changes for version 20211217:

This release is available at https://acpica.org/downloads

1) ACPICA kernel-resident subsystem:

Hardware: Do not flush CPU cache when entering S4 and S5. According to ACPI 6.4, Section 16.2, the CPU cache flushing is required on entering to S1, S2, and S3, but the ACPICA code flushes the CPU cache regardless of the sleep state. Blind cache flush on entering S5 causes problems for TDX.

Avoid subobject buffer overflow when validating RSDP signature. Since the Signature member is accessed through an ACPI_TABLE_HEADER, the pointer to it is only to a 4-char array, and so trying to read past the 4th character, as will be done when it is an RSDP, reads beyond the bounds of the accessed member. Contributed by jrtc27.

Add support for PCC Opregion special context data. PCC Opregion added in ACPIC 6.3 requires special context data similar to GPIO and Generic Serial Bus as it needs to know the internal PCC buffer and its length as well as the PCC channel index when the opregion handler is being executed by the OSPM. Adds support for the special context data needed by PCC Opregion. Submitted by Sudeep Holla <sudeep.holla@arm.com>

2) iASL Compiler/Disassembler and ACPICA tools:

iASL: Completed compiler support for the NHLT ACPI table.

iASL/NHLT table: Fixed a reported problem where a fault would occur during disassembly of a "Linux-Specific" section if the "Specific Data" part was not present.

iASL: Added full support (compiler and disassembler) for the AGDI ACPI table. Contributed by: Ilkka Koskinen <ilkka@os.amperecomputing.com>.

iASL: Added full support for the TDEL ACPI table.

iASL table compiler: FADT support updates:
1) Allow the 32-bit DSDT address to be zero.
2) Issue error if both the 32-bit and 64-bit DSDT addresses are zero.

iASL: Fix unaligned accesses to local cache allocations. Contributed by jrtc27.

iASL: Open binary input files in binary mode, not text mode Affects binary input AML files, as well as binary data table files, for disassembly.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
