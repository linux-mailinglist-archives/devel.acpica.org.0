Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5353DBCB4
	for <lists+devel-acpica@lfdr.de>; Fri, 30 Jul 2021 17:57:55 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3A79F100EB328;
	Fri, 30 Jul 2021 08:57:54 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 471BF100EB855
	for <devel@acpica.org>; Fri, 30 Jul 2021 08:57:52 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="212846833"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400";
   d="scan'208";a="212846833"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2021 08:57:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400";
   d="scan'208";a="518995375"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2021 08:57:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 08:57:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 30 Jul 2021 08:57:51 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 30 Jul 2021 08:57:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fz6c/LzKMC1Lw93Zxbsad2ovp02yiqTbPf82EkC12tlf9UbqMEbU/pC/fgjg+U4pFIdxAHE1p50UZYZCrb/t7jsnnpUNSDx3SeWgzJFBCzQGcK45sFLoMXoIoJmqI0HKqFzRc/jurOK6ZbX1yl4n2ymAqwMum9sPD5LmWqDYgxi6Y1981NTe7QmAoKxBE1ORS2on3ubHOzQvAMNmQWhiyutkqqKVyPvv9H3VUeGzi3u8Zly6LDh3fQqHL8HySUBGZ587gU9YnZx//KNsB8j9Mr7oZd9+m7AQYYHL8AvVVv2fS9P2F8TgGWETFfwQjKJCsWjtYPaivtCA7Yd/ZRbBcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRnn+iKHSbUkG9/y5BeFx61GZNJBs2LkrQzvVPp+2LA=;
 b=TDxmLuihCxkZK1x9V+9Y/jEq1Ue+HP42+/LCOJBItkOT188f2Dw0dhMU76T50xU8KazMSIl1iD2nScFZrOw95ZRjrvzEoT53jYCnl/ArvuKYSacVruBwmLMpAGA9UcRqhbgEWSBm535Iv3GULiAnuS0ywxGgE/zrxsmXKkfL6xgaJFaSIBzE0pDCI9yCzCr0Q9TTAmW9q/gTYiAqTc9gT6zB1/ofstRO30xr7O1JLGIctprFpksHMTyIdnP3QIy5n9TC03yFp4mU8SNILwkK+xO1Bc3Omlj/UffMtmvldAsIVu72l8ie//yyr+O/EuarD7X84OW27D3tdFXIecw9Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRnn+iKHSbUkG9/y5BeFx61GZNJBs2LkrQzvVPp+2LA=;
 b=DHNRxd+CQ2mR2xSDKLjlRtZkDjGfvGiposK2KrOPwDRXFfIOsHxoUr1NluhdZylSdhqftcI+He2soJDT5iZtDkP3zWuhrqrQwapQLxfjb0s03nWIKVw+WfXGSeUs9mZNorSDqu9wcB3KZZyM+XigZnPgKDNCCwRViQtuN69Hf6A=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2903.namprd11.prod.outlook.com (2603:10b6:a03:89::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Fri, 30 Jul
 2021 15:57:50 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::f1f3:ba46:dd24:f466]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::f1f3:ba46:dd24:f466%7]) with mapi id 15.20.4373.022; Fri, 30 Jul 2021
 15:57:50 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20210730 released
Thread-Index: AdeFWzysDrPwoJ2PR1KcNTSc07mGvw==
Date: Fri, 30 Jul 2021 15:57:50 +0000
Message-ID: <BYAPR11MB3256B88F2E195AFC3B57837387EC9@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: acpica.org; dkim=none (message not signed)
 header.d=none;acpica.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de955db9-8d05-4864-97a1-08d95372c84d
x-ms-traffictypediagnostic: BYAPR11MB2903:
x-microsoft-antispam-prvs: <BYAPR11MB2903DADFB2D3D82DED5885D087EC9@BYAPR11MB2903.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zim9Dgdh+VRT7bbpoCLxb9Yb+nXXqilwadIbfymEwBJEW1N7n0rAvz2VY+G562rxtFM3BSAprR0gg9et87KzD9vxePC05NX4YXUnQXGkuUq6dCTzwFLcm9+QdjPodwrJ/1QP2c6OPp4Bo/B+t0jI6B3YH0igv6NeEIzlE5UexVLm6LaXivdAaUgxQ6eL8aKnl1W5BUbv3j7H1DCVZ/9cL1EnWwJ1qkWa0sbyY23vxvHkIIOr0PhtsWSWBV6m/1Jlty0KE739d7HEfL4cDApWiJVmHAVBQKn6TSjt0ElHsN3YnivP+ePcFMGgwN8il9uTlnv7rWtgbszpT+E1duedhdtYMRqM/TFCmWJxw1RiObd6TimtqyDv54xH5OUbcmAwAw1aTYihgLeZH5hbXW6drI/2MUbj1yvvj8zn+87/WUtNNOwfVF+NnutBbMXLqnMzvcx5syE8GN81mfHq5MPGsOPaYZD2a4jX2a5gtLJe2UWHGgX96QegCFvfC6mrfFXupJU31pXz44e5us/iqkf1JQV2KXMhBuYBXvtCisNWCB62mSE/FN2g4OwgslHXc9AAFe5GzLcwvuNcyz87/OcnJfo6Ti1Q30PiiKKM8y3KrwTpxhOZ9fk/lcw+47dmrGpjlRnxcYIf7v7jsJLm7ELL3XCIK3I70i13rY2DKfxKHt+pnlJkECc3QztTezT3Wb7RVtbKx3jw6cJckSPvilMuAd5ImF6S3cjyWr49yw0W6UK5qdv1b8oYBzWlD9Jg+zEfI28Mthu8UbrlWb5lD8oLfrHBHch7RomJARTm6DevOtw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(86362001)(26005)(66946007)(66476007)(71200400001)(122000001)(66556008)(66446008)(6916009)(9686003)(2906002)(8936002)(52536014)(7696005)(45080400002)(966005)(186003)(76116006)(38100700002)(64756008)(6506007)(55016002)(316002)(5660300002)(478600001)(8676002)(33656002)(38070700005)(7116003)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jBiDkNIXV8OYR6UZai6XrWYQpdvY6d+3zg7S4J3Nk2b/P8/VkRVAQMvFbHxz?=
 =?us-ascii?Q?xCEXIN6/Tp5kX0zg9o72YjpIUgSSCzu+0Sf2NQasiiR/X18Wro99mV3Faskn?=
 =?us-ascii?Q?UcEGQDbXj3/Hr3PDINvoGpO3qGrYcWrob1ssHlRWROcSM7wY5XAyOobGxQDr?=
 =?us-ascii?Q?3ZXzwsgOPeeqGmN/G0kG3ptFylzm+0PIpbulGFyHAvbEOVibnxU/nS8NLwzZ?=
 =?us-ascii?Q?BX9uAdlqIhfHKijfK9ZIzPkBpn6qP9vhuqwZXMwpkroCXh4n90qSZeMDr1rf?=
 =?us-ascii?Q?p8TozpctTBaIVcGr6TGoVsjdSh7Y3tSfB+Scfn7a2/HMD8KRWhkBiBF0wbxB?=
 =?us-ascii?Q?H6fNIeNH45cDybF2rAsY3gGC7MCmeqI8fpDab+uasGbxvMpCu9Jber6e1d3C?=
 =?us-ascii?Q?V8w7ebq3BlD6prTNaQszgIHokcYyIQxyBzMdX+2VLR0aXEE5Ws2XfQeSusbU?=
 =?us-ascii?Q?azPBK3EZVAyfnlX1+UCQIc6H3LTu0vKNxzoxnHhd0+c3EqUKsnFSS8lJq60W?=
 =?us-ascii?Q?IcuzaEpE8jC8ir3wyye7loukgnc5iu03Vo5fMjDm0mTKncYK3VcRsBiEj7wz?=
 =?us-ascii?Q?Wt9pcFGxM1NEoOtfJ+vU+7BPhORD18ZNd4pGkSXgiHCXSi5uITqb1csjnLTs?=
 =?us-ascii?Q?YuSilMcwGu6+Vroo4Pu7OXtg3ws4TJRs4MYMoxgGSVfo0KfbCswYjPHSdkcX?=
 =?us-ascii?Q?zOPLnoPBaMJa58y0efMULA8TUaLLv3rnw6WSyKMzXChm5c4NyD2evUor+AKI?=
 =?us-ascii?Q?hrFTSg1l04sBnVEmTaVQpLbVqBkc/T/EEkVuH14UdOVS8+kkczBponiivH1T?=
 =?us-ascii?Q?mf+qr+L5rOSE3TqzvkBFQQ0Sn3grziCYXI8I6uE4IclQBIsjp18EJKTKfJOQ?=
 =?us-ascii?Q?EvSqge2ugM688OzsPs+v9CHkIgSkdA6XT42jqJbvyljTZNKhzcBnfRNcMUvu?=
 =?us-ascii?Q?Iis6sYlmq0eROCbcAbe5RHOqFbuKtpH0GQNN8VyuqKIQjmTjh5cMs1nbDmz7?=
 =?us-ascii?Q?b0XlT35ba0BNSo/xiJ36wspKJr5MJZPnqTJWfZC9s7BPDGY45KzXXmomy3bz?=
 =?us-ascii?Q?KPwNcL+bf7yikkYF/dQrcEGWyOgTAZfIYxfWHoOF1QRxJMeApY520K7JVq8A?=
 =?us-ascii?Q?zgUxYT8NUg6ojQ+B1o++bA1cKdpqaRtuTTNiw7RwxGAhUQ7DdbzCLMduhTWe?=
 =?us-ascii?Q?PX8aSzSVTdtTin7FZ8cE87M8aXXS8WAEzxwGrxzMG1HF3FcenBbtkdPpxOAF?=
 =?us-ascii?Q?nWTH8Aa65QuVivJ27TRInoiLWAKkaPCACFUrt8igT/4HjaIqa7fyGmazpb3R?=
 =?us-ascii?Q?f1WEI9qYVctINpRg6+w+QJXy?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de955db9-8d05-4864-97a1-08d95372c84d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2021 15:57:50.0751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jo2TIZ/65pdZHgnn4ZQk0PTorPWLz5vDUhJP/Z1YMkw/1NWsCzUerP9r/DD09w59xnPogCo7aVKNd1dGUQPRag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2903
X-OriginatorOrg: intel.com
Message-ID-Hash: Q3CD3QGSIHEHGK7E5NXYE3E2L6JCZXVE
X-Message-ID-Hash: Q3CD3QGSIHEHGK7E5NXYE3E2L6JCZXVE
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20210730 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Q3CD3QGSIHEHGK7E5NXYE3E2L6JCZXVE/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

30 July 2021. Summary of changes for version 20210730:

This release is available at https://acpica.org/downloads

1) ACPICA kernel-resident subsystem:

2) iASL Compiler/Disassembler and ACPICA tools:

iasl: Check usage of _CRS, _DIS, _PRS, and _SRS objects (July 2021).
  Under the Device Object:
  1) If _DIS is present, must have a _CRS and _SRS
  2) If _PRS is present, must have a _CRS, _DIS, and _SRS
  3) If _SRS is present, must have a _CRS and _DIS
A warning will be issued for each of these cases.
Note: For existing ASL/projects, these warnings may be disabled by specifying this on the command line:
"-vw 3141"

iASL Table Disassembler/Table compiler: Fix for WPBT table with no
command-line arguments. Handle the case where the Command-line
Arguments table field does not exist (zero).

Headers: Add new DBG2 Serial Port Subtypes
The Microsoft Debug Port Table 2 (DBG2) specification revision
September 21, 2020 comprises additional Serial Port Subtypes [1].
Reflect that in the actbl1.h header file. Submitted by:
semihalf-wojtas-marcin

iASL: Add full support for the AEST table (data compiler)
Includes support in the table compiler and the disassembler.

Add PRMT module header to facilitate parsing.
This structure is used in to parse PRMT in other Operating Systems
that relies on using subtable headers in order to parse ACPI tables.
Although the PRMT doesn't have "subtables" it has a list of module
information structures that act as subtables.

iASL: Table disassembler: Add missing strings to decode subtable types.
Includes the MADT and CEDT tables.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
