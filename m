Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE5F39C075
	for <lists+devel-acpica@lfdr.de>; Fri,  4 Jun 2021 21:33:12 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3FA5D100ED4A4;
	Fri,  4 Jun 2021 12:33:10 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D0AD2100EF265
	for <devel@acpica.org>; Fri,  4 Jun 2021 12:33:07 -0700 (PDT)
IronPort-SDR: oHAqa960T0AlBRcr4AtELWpSTMlm0HcCU8HLkMZebVT8uzK3E64K6mBcp33HuHHtbS6vjZGyEQ
 i7VVaPfWNE3g==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289985866"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800";
   d="scan'208";a="289985866"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2021 12:33:07 -0700
IronPort-SDR: lp35BAsgprhPE9gfgKVZGth7pHkSNrjdxDf9OSxH0Ieg2BvJWHrvRD+4YZwUBoc5laGvNLJm+O
 AR01sfv2C+CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800";
   d="scan'208";a="417854560"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga002.jf.intel.com with ESMTP; 04 Jun 2021 12:33:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 12:33:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 12:33:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 12:33:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 12:33:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/W1ZZ1w6bgi5E5PPvch9CUqcCdobvKtefufCLRY2DacigHifc2ApheQPMAozKwf9DRzoTRa3apqyE7Xj94xmg8rg3Ce0M7b2xoE2YyH6nnpCrxGGeLDtNEUI1t9A1MJvB8QCaTpJmnm9l9RszEuLRsNB3cq5MRlLlLx3cA4vIsKqp8GXpRCWK9GQOiaLNwzorNK5fMJx0zmBrri3wgqz+ZfkwCjK7tpiaktYzYw5B4qCzc+R4eBM1s1+XLmWoJx8hmy0HHPVNCrSb2YwW4dpJ2/8Nbf/gbIHO1g9J2slrOB5gMg4OkT4H7+yqNMif7hYpx9VljrqcpppAFFV9Vudw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxG2xLeRocSIWDaInUSeeXIV69a2pOL6fNC6IsNvrD4=;
 b=iYXqCRpCMXfpXns60a8ddvc0wGOmvj1I4uKyrB0s2ClwvM6Ij4NEFqVTndS878e4QGgmrk2aYMn03He6mOZtLvbZj6uaSvY7wDz6XN3BNHTmQnl/Fq6OXWeuVPIrzICbS2KLoOG3P0jmqNBYZBH7zMWXGk1Y3ghgdndciZ2GKUmGoDdRosodtvXymhtx8vkxAEc3cTqmSuWVXQO3rxk2hN1xHrBJpsZDL//MWZkYlOSlgFm+u8FaSMgIToyQDaS/6wtgLku5/4m1LwDoUUbj3zzrOSm09lBpR3+7AOmR2ipx0CRA9crJaBf9Vc9KDT4ZeOLkTU835sHW9B46Ws6cgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxG2xLeRocSIWDaInUSeeXIV69a2pOL6fNC6IsNvrD4=;
 b=NJcS3a2EYr81vejgOTLte4hIypzVUto1sNj7OrPeNs73r6AQb2Gmu0/oY7ysIocvCyAhqChMt5B54gK/ALRZjk9AXTrG/tzJwsE7IuzYgoFPRNw4D0FC5uSLR60S42d7RQVUCdPsjfcIQ4A882c1J0fWEb8K45VcHk3Ws/I/2kY=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Fri, 4 Jun
 2021 19:33:05 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4837:76cf:ebf6:ff2e]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4837:76cf:ebf6:ff2e%7]) with mapi id 15.20.4173.030; Fri, 4 Jun 2021
 19:33:05 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20210604 released
Thread-Index: AddZeBJeRxp/qJ9oSsysT+IPE8UFWg==
Date: Fri, 4 Jun 2021 19:33:05 +0000
Message-ID: <BYAPR11MB3256F9C9067344F0AEBE40F4873B9@BYAPR11MB3256.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: ff86688c-0a47-4d30-fc7d-08d9278f9342
x-ms-traffictypediagnostic: SJ0PR11MB5088:
x-microsoft-antispam-prvs: <SJ0PR11MB50888EDC84137AF87A62EB9C873B9@SJ0PR11MB5088.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 73cRnSmG/+4hkon7b26n4K2VSIpFp+BTtwZfpMyuVouklPwsBco1HLmqSlDId3ifa07+H5vNUxQ1lI5brzbgjmecU78qOkfLSHdQuu3s/ifwKgQUUEE/0fcJWiqbpdkc/AoT1TnG/BDt2FgkLW5tk/v0AYwU1+mQvMhhXAlNNFsioCX8IoKpicnSKs/Df7qLDHeVtr//N7zUoJy9f8Bqd8KtJpNEQmwUExl8tcczd3Y7A35xReMeW+7E6q3nwRCvh0b53DeFOWKph6/9PL9JLu8elYrRQvgPWFBvmn5qW/K+YWeVRJrkwOl4mUtcPR5fWXOj78NADQIvZBJXt9l4Ol199P2eBvg7a/WIpWWvrSEWQ4xwmFGfMkoEJHslr66ThIFKzDcBk1sjGzkc7pkfYV4We41MOB9YsJvUy+vCXZSSQqquOTcevFRzu1lHcFLcEnYpITB0tW4L29QUoSzSkcVM17KKrGJXmi4m+zJxkKrmZ8C+GsCot11XBVNP9No0Ps2DP99YXdEJ2wJpSMY0BpqI7TQz63Hl6DCHuhVvtUg7IWgsih8eA6RAt90OrCPWe1/InWcLRHYbje6AsyRKoakcSlrEgnbSdwjtfeTfUQXTIFhKdLyPqHwsW33vUvmEALThVG8pwydnhkonGSz3fb8t8Vgz0pXU4Z9Z1Dxa9sZ1sBhLwiO0+9yh2DX9pnaRrWo0WvrtGXGwF73NWRIg+mSsTob/+xYCE3fsVxIvwYc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(376002)(396003)(39860400002)(366004)(186003)(83380400001)(7696005)(2906002)(26005)(316002)(86362001)(6506007)(8676002)(8936002)(5660300002)(52536014)(7116003)(76116006)(66946007)(966005)(478600001)(64756008)(66556008)(66446008)(71200400001)(66476007)(122000001)(38100700002)(33656002)(55016002)(6916009)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ddCzqtzMNCNfKO176t9GgOAVao3d2qfXVRj6+EMZ6+8VaN622Ck/EtPKH+Mv?=
 =?us-ascii?Q?FqLAZPt2VY5g2SRnScpb/68kXTDKig/zhVv6YbgWiKz2978R9mIj8kUDMG09?=
 =?us-ascii?Q?Hprrupf9qf+d0Y/7n/tdnExjVaAbHFnAf3smqcMcl3xo/6CGnfkqxVHLbMkz?=
 =?us-ascii?Q?YIUZQlpxjHPEniWJfjvMXlieKM4PX4s2zuHkCD+m1CZyvKsngqEWRrdvUThr?=
 =?us-ascii?Q?77ABIkQdy+3r303namVDSAM20A1Q79Vudh8IAXYftsxDV5lAUQ3u2mIVjhOa?=
 =?us-ascii?Q?gqPdV1GzN/Gsg8ro8qyZojA8VCttowYk4GtXd6lv+A5GP/2Fgw+gPUT3qERD?=
 =?us-ascii?Q?o7LoztQ/gEnkCXr9BQB9oByD9HI5FqPpvFddwK22z5jVF2MNi7GdFV6CYsog?=
 =?us-ascii?Q?24g6Xh9h5hPTGL+8pgvovis79ZTpYh39eWOC0qF1orY2XXTGX9zidxyhoCwz?=
 =?us-ascii?Q?Rp1hhk3r/bRDFXO/gwravEtCdzGAFcu5e6AlONKVjs0KFIS3HowXC6BVjkuA?=
 =?us-ascii?Q?2s+z6avouadYezAvkaSOxR9rG4QZmCfuhEgbMYUQ711iT9NiR6AKtQtZPYKu?=
 =?us-ascii?Q?+YcXFLfo3qdPxZ4N3eWTdEgfp+aQ5y4uaS4Mf3yVC5T3q65+sQYY2l47enSE?=
 =?us-ascii?Q?nmK+6Gyb6YVF/96FJjKdUjT0c/4BdYOK1MOYjrpJRVw9YkcQ2nYUmokL5P7y?=
 =?us-ascii?Q?TAICAwPoYLrRm6bBHpw4QfRLTDPxThozsVGaPYBdjgs79NR2MBDXPeqO4A72?=
 =?us-ascii?Q?/SA63NzJPIUZ/bKaC6tFqVxvcL2IX4Q176tbmsQ+9X2lXcw2VYD04MWteh3A?=
 =?us-ascii?Q?5UVt7pUY5rOQE84MqtXxqBlNG/BIEooCDso+iPjk2IYzhgoWqA8F4qHvB45S?=
 =?us-ascii?Q?yixtxTmFDYpQg+avgago0srwKXu0brKsyPGLC8ICnuSJczsvsdJGhSQAyU7Y?=
 =?us-ascii?Q?iMJn8qsjzScHj2kMHYouezEZlkrFRqaIecolBCtI7Q9IDBnfT2y5YKXR0qlu?=
 =?us-ascii?Q?MPTu2RrWm1h1k/e8jgSEuXi7Zq9ro1JZdY2N51m54Raa9kD3ajfUtNEzHJYv?=
 =?us-ascii?Q?9ZhBrj/EaylRdj2DnNrqisdNdWaOgordXdrUvX35Gyi4TzvZK3/GTasTkd+P?=
 =?us-ascii?Q?G51F2uGgd02h4CHXIztbsfEH4HavylSjU4/nflbQ52dNUUywsYQWGyzD3K+2?=
 =?us-ascii?Q?cCxp1S67X6VLYbK1l5upky5LIR8vbSo3vgrQGmPCThsmeXXyduOamFibGZzB?=
 =?us-ascii?Q?UW8V/5yej1OX8tqv5Ac86Q5hOSEat91bz+IudxwT55zmwzIYuelz2BjZi2tj?=
 =?us-ascii?Q?NbREzQZ2V1MOMp1Ze0sXTOFX?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff86688c-0a47-4d30-fc7d-08d9278f9342
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2021 19:33:05.2803
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mSdTbVLV0Aq2G/qgFtFrBdJC150AtMPCr7lCWCTvf1lYeXdl7HfuS3kalVUUQAozUtZ+e/s0qlbtxDq+nr37Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
X-OriginatorOrg: intel.com
Message-ID-Hash: AMZT7XOO2HPVPMACSBAU5ELTVFEHDKAR
X-Message-ID-Hash: AMZT7XOO2HPVPMACSBAU5ELTVFEHDKAR
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20210604 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AMZT7XOO2HPVPMACSBAU5ELTVFEHDKAR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

04 June 2021. Summary of changes for version 20210604:

This release is available at https://acpica.org/downloads

1) ACPICA kernel-resident subsystem:

Cleaned up (delete) the context mutex during local address handler object deletion.

Fixed a memory leak caused by the _CID repair function.

Added support for PlatformRtMechanism OperationRegion handler. Adds a new utility function, AcpiUtConvertUuidToString. Writing a buffer to a PlatformRtMechanism fieldunit invokes a bidirectional transaction. The input buffer contains 26 bytes containing 9 bytes of status, a command byte and a 16-byte UUID. This change will simply pass this incoming buffer to a handler registered by the OS.

2) iASL Compiler/Disassembler and ACPICA tools:

Added full support for the PRMT ACPI table (Platform Runtime Mechanism Table). Includes support in the iASL compiler, the disassembler, and the template generator.

Added full support for the BDAT (BIOS Data ACPI Table) ACPI table.

Added full support for the RGRT (Regulatory Graphics Resource Table) ACPI table.

Added full support for the SVKL (Storage Volume Key Location Table) ACPI table. Header file support from Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>.

Completed full support for the IVRS (I/O Virtualization Reporting Structure) ACPI table. Added compiler support for IVRS, updated disassembler support. Adds a new utility, UtIsIdInteger, to determine if a HID/CID is an integer or a string.

Headers: Added more structs to the CEDT table: CXL fixed memory window structure.

ACPI 6.4: MADT: added Multiprocessor Wakeup Mailbox Structure.

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
