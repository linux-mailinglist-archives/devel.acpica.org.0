Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF308610270
	for <lists+devel-acpica@lfdr.de>; Thu, 27 Oct 2022 22:12:16 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4794B100EA932;
	Thu, 27 Oct 2022 13:12:14 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4CDC8100EAAE5
	for <devel@acpica.org>; Thu, 27 Oct 2022 13:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666901532; x=1698437532;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=0TESHJPFjd7+Mct/x54gdg/qQzw7QMzKk7qqxrtBmkY=;
  b=iTdZ0kDt8tBa5ScZsmxMGhxnqoS5UIFsYxaGv+2opjYqQIrp0UsydPCi
   +4/N1+Sb0BBmKMceESLGMCASmhLuDae8gL3ZLmrZ+VXl6OD6y7hOGHWsf
   2Gak762ZLJGPhfKPEfsAnB1YLzUzavoY5JDEz9j9Wve6/IVHqqGlmbk6D
   J77gHXMsRbLEdkT6aG9tv8qFHpcCmtmQ49Fs+i1QqYlF8KL+GOxlqn75R
   TXNtZm7gqv4G1iwWX/9Fgpdv675xwKAjVFEGLmrFD7y7CQ8s1s0SysEGL
   L4ha7hPoTTh0yzdhlZz4bDV3pXT+J5sm5UH+j+mZqPVZ38kiaFQCUgOo9
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="394646108"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800";
   d="scan'208";a="394646108"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2022 13:12:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="737831552"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800";
   d="scan'208";a="737831552"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga002.fm.intel.com with ESMTP; 27 Oct 2022 13:12:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 13:12:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 13:12:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 13:12:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 13:12:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2b35BaZ5hrfpC0zZN4JDH36Sw/BvDUBHzMvwX7AbgQLjH8MjaBbRT0vY/FIdJr/lxIzwbjmABJu1ufAX3KkHN1595GFyy1U0zrXKvSgLpMLdeWl8d1wiPnaeFTnhffuYarmPnEN7528ORWIR3OnFlT6qSlz3k7V1AdpGUXELeijzTySs87QAvW3knVdQzRwS7Lm4/so7bFZNbBOH19FczVwRRrl/hgaHdoWXNwnniT0uuUqQeQyQnyHmkkdn/yKlbvQQQhrA3owSyi7PuSGP0/6/2lVd9IUIcQDU+a+lSxHCrN3P88dUb28a3AMztILEvzmm9lS3xkAQYWnUfbpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdl0iSdiNOrol2VH/lUiBWmS+qZAzG483lmf49dmpSw=;
 b=J4jxaktkhHbNg5Hi1SlvouG3/hZ6RpldoA4QXjGS9OSwUSlEm5/AjGCtMX3wvzlSarjGM9hVTbEVOvKQggGVIwsv2q58bCcOQECCdazTjYM9Yr/TrTjKNref6ozvPinl4KmW4mhg+vSEPQ+My+i4tKb6fnTgqzA6zvUvovgeodSwPQKAHmD6o0YFlfYC3iq30trfc1Y/8ChzcQ213EX+dGP9dzwEgFDaC0Y4lQXYMwhD2hokrZGwR1BQJ4940PBDK6sy//tRk5LQHs54cEiciTm1RVGyhpjV1QYAfANL25U2gowHCfUfjBhV7PEwwXlYCc3Axp68hB+nSKN1Zwg5OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by MW4PR11MB7103.namprd11.prod.outlook.com (2603:10b6:303:219::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Thu, 27 Oct
 2022 20:12:07 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::a8a1:55aa:a6df:f35b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::a8a1:55aa:a6df:f35b%6]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 20:12:07 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20221020 released
Thread-Index: AdjqP58Rum4ACy4CQeun9IpjdNXTcA==
Date: Thu, 27 Oct 2022 20:12:07 +0000
Message-ID: <BYAPR11MB3256B1200C8362C7413AF0E387339@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3256:EE_|MW4PR11MB7103:EE_
x-ms-office365-filtering-correlation-id: d8ed4bc4-17b9-4837-d4b8-08dab85785d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: etMO/Z9bsInLpv01NAhXDYYUCHRWW/7Srx3jqQEObSwLZ4F1m4u9OlzCQ8UYh7+6EzK1x/UaZkiO6p/Kz2B8kl78cIaokQ7E0v1XJO5srdDymHidDgh8dDIJIu9V+9zLnQM0Hd3J5ztFMb7+f2DQR6zBEEOePVuH9gC0LtXjKiVO86a1iiJOETAD+l/f+T51cICt5Fi5JU2Us9np9C7oHjP88NwPZaf2eFCCSUmJqxdFzagZ33fGjHEnawHQORijZt9g7K9ghc4yKtrtFPT8RxuadEYPDQw++Lya4RzAtPyWFM0+1gNxXVgZPku0dmXT9IPX3CZ9/uhKPU6n4Bduh0tJS7f6olH8QmMiBj33CB4f73AtIHnuh2l/Ek7FTHzZIklxoRfV7vvwAo3ACHO+fHvYeKVXyhajRVPDN2bRJt6OgrEaHcWj1HXCzd5Y+y0h0BNkXNzblWs+5iYvCrXX4S+TACKWoFISStailDlYpbKMEK3q+sjQ/d7dEyM2gmEgQvq9R/cAfPKr4a/YXWS1O2djP/tJ4jDOo7vo2YO5XHEi5Vx0MuQJYebFz9iSd9MQcaU9X5n9kw5cJ4dcAyiwDXGiXobUmHDsOTEgw6RiVcQDU88BwyDEex4mdl8rXcQivaTzqSajY3b17NJEBzEtEniKdhQBcv7yQaiOheDc3iuT2hyXet1IJkqS0rvszXPRwn1WfN3DSLb7i7yorYa5XchZeTjdL0OoMHFsJ3vLPPS2IUfqKp7197FSCeD8DZlZvv8dmDFQStfPNvVzbbWm3J4gUuBC/HOBrKiD2+x6CVk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(39860400002)(136003)(376002)(346002)(396003)(451199015)(26005)(76116006)(5660300002)(41300700001)(6916009)(6506007)(52536014)(64756008)(66946007)(66446008)(9686003)(7696005)(66556008)(8936002)(66476007)(8676002)(38070700005)(82960400001)(316002)(33656002)(122000001)(2906002)(55016003)(186003)(7116003)(83380400001)(86362001)(38100700002)(478600001)(966005)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jjbFFC7j31bJZz5VEfvrj/X1RC7IouHBNwBpqm2r/flISt7895Ld9O018tQS?=
 =?us-ascii?Q?fTTP6tsxYC2V3FzxC9uj1MVF1Mg+PaTl92FYwcXnAyLc4ZVldWgmODx54HI1?=
 =?us-ascii?Q?ON776vrAA/XiihxMvezBaIMik9YjYiJbZa+UrR9UKNoA9hwBz/8iotaOGbYx?=
 =?us-ascii?Q?P9EpJMa3hlMCJewSEGjbdsOGm112ldQFG7bXlijO04XQGXVqPLJEVPAebIj+?=
 =?us-ascii?Q?q+J7kLH42Ld7JE1V/UwC8Iz3SquunOCbcNj90axtcPbyF0/8gp26Etfbg1Hu?=
 =?us-ascii?Q?tEh6Bnbz5wEKfclLxVcW0jFwsou+pZN6cMd76ULL6opG6O73gSwBGc0WuQXv?=
 =?us-ascii?Q?AXBpRG6mtMLDFtiheZ7N1QbR/9bR1ksu9JJC9RgtFt9bmcNPPC//uZVvwMVX?=
 =?us-ascii?Q?H2TWd94bWptC+b+PgEpZAhKRQ+fR7+MZsRmpGoka1GHr2IgQ4p/elqic/+Kx?=
 =?us-ascii?Q?zNB5Ov/rjf/mezwzoWbGSqPjPdPSO+sJ10PtJJ+AZLs1PqkdNH6wyQFMWEAr?=
 =?us-ascii?Q?gjeymZtpuV5/w7ahYSvuVlV8JSWybQN7qL3F5UnUSv9FSqlUyfpzTNTBFeMJ?=
 =?us-ascii?Q?ZiLHyjNz/zqLS+cU9Lo/F8jec5sRvouLwsW5nNeDXhST4RighE/sH8d+iYCl?=
 =?us-ascii?Q?W/6a+jykZoDmnqzsdqJn39Lonp1hlgksv1npoL42htIoxzpZT/1J+28sqxi0?=
 =?us-ascii?Q?QjW6rbQqyzwDH02cFAEZ1Ze2CZHSodfoIymNG/SwXY/P4ZF3LHWtjM+FmTRD?=
 =?us-ascii?Q?ITcYXJsG1d14gwF8119EdlfvuGX7KPQIhxnBST1DRqS9JgWNj3XroZ7qx0TR?=
 =?us-ascii?Q?x8h4uGr5gL+dRjBmKw9G49o8hTh7wRrpnFjGHczu4KapNAcCQjWbwWOpXRdY?=
 =?us-ascii?Q?XLw3wbZNdQrO/vVdC66CYQ4LUOiDxYG9U6VaRBjviM/mRt6dIMbzMEe3NLeA?=
 =?us-ascii?Q?vK9g1HBY8Be7ZhkNCsAaxlS/wZQGuRUS6Wz8kqJvv5cQZ6IHS7I0H8pNbjPj?=
 =?us-ascii?Q?2G3rtfx3DA6QyyaNnB7Ucr9NvAMmeotTCOD073BAOtoh+ws90mwkV7TsQkqP?=
 =?us-ascii?Q?SpR3jFVzHhq54Uo4BjHujzgojJpAjmo9xjGgMZmBvu4qosvr7BFc4+xKkR/4?=
 =?us-ascii?Q?4SS20CiX7TLyZgAy/lDtl6hhmeiuNgJgZupCxwYkXnSBc5ibx79+FcYT+TCB?=
 =?us-ascii?Q?dLmp/HfBMRflTWJEpnFXO7DHMP7mv14WAPnZEht0uAE/qH475nt0mxoYuzi/?=
 =?us-ascii?Q?biCf+39mer1pskXMZj7aAllN0vvTeP6r+Ml66+iuoO1+o9kH6bFRvwCMUbne?=
 =?us-ascii?Q?pgQE9Sp3orY1Qr+gDx8jB4wixcEc0jaeD7vDSF5bi7ruyu7Wcg7U7rYVuPE6?=
 =?us-ascii?Q?PKmX3Lw01LE98KIeIG79wkdMm63IJxPI3j2cHawtCCErBXAtbPNMfKy4+bi7?=
 =?us-ascii?Q?4SCbAlwcpSjx0/WnRWrnBl4D+xrCm5sXVzrUlEzPZauiCRGtG7JpcudWx0pK?=
 =?us-ascii?Q?3Lx/gaJl+KgMbc/xB/OJYYOxKbQcVVkIOnJUA112QC+E222akK/Ym3GJ3zZq?=
 =?us-ascii?Q?XSZrKiUfFQ8KBtUtqbTxW7kkoyatZndDTGAgwX2U?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ed4bc4-17b9-4837-d4b8-08dab85785d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 20:12:07.3213
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MhoWdYRLbNGcHO+7NZ8Xr2KcT1HHd7MdlQ3ZiZAvqcSaNy8ysO0Rb0kSI419y81KSCbfsXtYW3sDqkWLkOak2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7103
X-OriginatorOrg: intel.com
Message-ID-Hash: VML4JVUFNSTCWLRIYANBZSU7DBEARNFM
X-Message-ID-Hash: VML4JVUFNSTCWLRIYANBZSU7DBEARNFM
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20221020 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VML4JVUFNSTCWLRIYANBZSU7DBEARNFM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

20 October 2022. Summary of changes for version 20221020:

This release is available at https://acpica.org/downloads

0) Global changes:

Allow disabling of -Werror. For distro maintainers having `-Werror` can 
delay update of GCC. Since every GCC release might add new warnings that 
were not yet captured, it might break the build of packages. With this 
change, distros can now build with `NOWERROR=TRUE` instead of patching 
either the errors or the makefiles. The default behavior keeps on using 
`-Werror`.

1) ACPICA kernel-resident subsystem:

Added support for FFH Operation Region special context data. FFH(Fixed 
Function Hardware) Opregion is approved to be added in ACPI 6.5 via code 
first approach[1]. It requires special context data similar to GPIO and 
Generic Serial Bus as it needs to know platform specific offset and 
length.

Reverted this commit "executer/exsystem: Warn about sleeps greater than 
10 ms." Due to user complaints about valid sleeps greater than 10ms seen 
in some existing machines -- generating lots of warnings.

Do not touch VGA memory when EBDA < 1KiB. The ACPICA code assumes that 
EBDA region must be at least 1KiB in size. Because this is not 
guaranteed, it might happen that while scanning the memory for RSDP 
pointer, the kernel touches memory above 640KiB. This is unwanted as the 
VGA memory range may not be decoded or even present when running under 
virtualization.

Check that EBDA pointer is in valid memory. If the memory at 0x40e is 
uninitialized, the retrieved physical memory address of EBDA may be 
beyond the low memory (i.e. above 640K). If so, the kernel may 
unintentionally access the VGA memory, that might not be decoded or even 
present in case of virtualization.

2) iASL Compiler/Disassembler and ACPICA tools:

Completed the existing partial support for the CDAT "table". Although 
this isn't technically an ACPI table (It doesn't go into the XSDT), it is 
possible to support this table in the Data Table compiler. Created one 
new file, "utilities/utcksum.c", used to centralize checksum 
generation/validation into one location. Includes changes to makefiles 
and MSVC project files.

Updated support for the IORT table - update to version E.e

Added CXL 3.0 structures (CXIMS & RDPAS) to the CEDT table 

iASL: Added CCEL table to both compiler/disassembler.

iASL: NHLT table: Fixed compilation of optional undocumented fields

iASL: Fix iASL compile error due to ACPI_TDEL_OFFSET. Commit # 10e4763 
("iASL: Add CCEL table to both compiler/disassembler") introduced the 
iASL build issue. The issue is due to using ACPI_TDEL_OFFSET for CCEL 
table member reference. To fix it,  change ACPI_TDEL_OFFSET with 
ACPI_CCEL_OFFSET.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
