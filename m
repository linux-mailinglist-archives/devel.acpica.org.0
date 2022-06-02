Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 584DA53BBAD
	for <lists+devel-acpica@lfdr.de>; Thu,  2 Jun 2022 17:39:58 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 691E3100F2275;
	Thu,  2 Jun 2022 08:39:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C3ABA100EBB98
	for <devel@acpica.org>; Thu,  2 Jun 2022 08:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1654184392; x=1685720392;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=7HCHbzBs7TB3twmSoBa9y38oP6tusXZApfhtcMHeKac=;
  b=c9XHXRfNb2IY2wQIaLmgNwKs+XR8ncSKSu4LKzGpOuNqudBh+tBthb3M
   IOdpWj/26m+5wvSArGftgxVcemRTCWiQCkDC2xddN92Oszp8VeP9j4H+E
   LJj/h1eDlf+rrfF2wr82OF2ciVWH2pZ9yk7lFUmeSDwH/tugkkC6AihY6
   YBzwE5zoRGfo178q5zlWkiO6S9LWJncKda5yrQAJWj7stJK+RypkUNK3p
   OcMtTDid1zSRXLjaZI/lngYlySuH3U06QMg0JRVjcRCDqwu+ok8J6F3V/
   c7fW1Y07Y16czFTXCo5je9pzZ4Blq78gG2LHipoZEJkZR3BXTPGlM+UQ1
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="274789580"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600";
   d="scan'208";a="274789580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2022 08:39:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600";
   d="scan'208";a="606901527"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga008.jf.intel.com with ESMTP; 02 Jun 2022 08:39:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 2 Jun 2022 08:39:38 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 2 Jun 2022 08:39:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 2 Jun 2022 08:39:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 2 Jun 2022 08:39:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N73S94sPThtbLPqb348DdvSPchp/+n2yPHoymUlVj1fgQWzk5BtTJzlt01O/WnBc3JdVDfPzMgGMbhi3U5Ih60dOIDzaaS4s8P2XYcq9dRvF0hY/rawzenKjpbYj0DAB9CjHI2gYwnbGckvGYgljo7wWhMWtA8728Hp4lC6A6D5r9KHxZdwI9/5jNUSjflddsYVlraAA5cioWhXTj7NtVIuNyOGolBlUQmLnhGxGAU3sLwd16EUdPxYHoJOszQTcB7aG3eJw4iyX4Jwu4iszGcvEi5eXhUA1vt9TwTGPGXx6KTqpbjq4bYc3jD+bvkICsPkTStfAUtxKZEneXli2PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7HCHbzBs7TB3twmSoBa9y38oP6tusXZApfhtcMHeKac=;
 b=Ti0NMIr5uXTEf/WKt6jJlNpR8FoWcw1moQLAIucjTWUWfEHEuL9ZR+dLWf3c/F11dMxugk5WRTTlmwpp0gTEG5A6uT5qglRVckJKCldShjokggYcOngqWdKFQ8HH+/DhL0kpeBweyEZ+Z9f/HF1WL660kf5fcjsW9nLi3+re8V+PITJdkDN4W6R2rdFn63yz5Gjs9TAC33HZ3hr7SSHjDpqUk/QJ0LnfdlpYTcQq/h9lJogmiCPqgZsblZJndn2+PsuignQADevxvzwDiBFdoM5ctbwrljUAhdMMJnIRd4X9qLC4RtfGabzTxiOMqdvH+yfWRjYHClLKOKhjvndppQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB3464.namprd11.prod.outlook.com (2603:10b6:a03:7d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Thu, 2 Jun
 2022 15:39:36 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::b8b4:b21a:578b:2c9a]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::b8b4:b21a:578b:2c9a%7]) with mapi id 15.20.5293.019; Thu, 2 Jun 2022
 15:39:36 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: joeyli <jlee@suse.com>, "devel@acpica.org" <devel@acpica.org>
Thread-Topic: [Devel] Why the patch against CVE-2017-13693 not be merged?
Thread-Index: AQHYdL0fRO7hEvOOrEW/duLZ1QSuoq08RFCg
Date: Thu, 2 Jun 2022 15:39:36 +0000
Message-ID: <BYAPR11MB3256E4BF34A7BF67607FA51687DE9@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20220531070714.GA20481@linux-l9pv.suse>
In-Reply-To: <20220531070714.GA20481@linux-l9pv.suse>
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
x-ms-office365-filtering-correlation-id: 898b18ec-233b-477b-48ba-08da44ae190b
x-ms-traffictypediagnostic: BYAPR11MB3464:EE_
x-microsoft-antispam-prvs: <BYAPR11MB346456A05C9EF149FC03C86987DE9@BYAPR11MB3464.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8gFlNrO6nxUjD3+ONdabHwqk9i9ZAjFuht+vs+WzjEHZFRMa6pQoWLQb9Brbcx15LWns851IKDafyUFeprQHBAswGHKUDGdHLSleMOkhruNHvGPE7Uixx4NJkBYBaLQBZn3Z1bib6s9B4EFdnAvXnDSats9Om5yr8rLyUXvs3fM8govZBUqm3ZlQspJXWhLPK0albfP4nTG1BBbdcJOhm+NINSyHg4l4WUABSBxkASDkmu/KiKTEfxX4I5UfV3Ck/hkmLNukwPMWUjZtOZphpRF33cc8Qy2HBuLR09zCu16xQ47MlAqNlM2I79e+CwrzO4qgWOhN9wwS/SbdJ4zHCEuX6T/eS7QzNRSeoZJJRTtuMCIYa7GtbbF5VqQ5slXyRbVbyFQtMEAePUXXZsU4tILFa2FMLkY//n0xGgdeSigoSvsyQzAFY8bzNsKKHwLOVuszp7H7SdZa1YgEesshQM6Th82Toe/1RZbvE/UnAn+On/xsxxNJtJpM3lADjrgIy8Yxs/t6+f0LkXcx8o0POEVXnhNIzpIAtmGBuUmEm4Mz+tJR6C8aGIjDL6UtQHhLFAqtI/2BVYFQJecFnNSNN7AiznARzn6OecWe8t6jWZwkcDpzom20i5UkPHOPQefNuGPdw3z1i8l7biZO/qy+TyxZQXJGhFsO4ZJmZLu+7aRMalYug8iA08gfvSBQAvR2pPP4J9qmgN9ao5TGWBmoD2+sX77/k1nLcNYCc06WkMyM7yoayLZSJ9Q54Lp1sC0gtU9R8yQK5ed/7Fk1Vw2R0bMeXqMyd2CrKGiQQi5KFww=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(83380400001)(26005)(71200400001)(508600001)(52536014)(64756008)(6506007)(7696005)(5660300002)(53546011)(9686003)(966005)(33656002)(2906002)(186003)(86362001)(4744005)(38100700002)(66946007)(38070700005)(66476007)(8676002)(66446008)(76116006)(8936002)(122000001)(55016003)(66556008)(82960400001)(316002)(110136005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uhw4IsTTlglO8p35wfcRuLFAsVsx8u9hfGaV1jzLSbDnPm0K8WzEA2k4txmE?=
 =?us-ascii?Q?Oe1EjkwHkCIwvzS8TSME0e4Pf5odw1fSwItrLtf32cLEIdr0PERkLGjeSxe+?=
 =?us-ascii?Q?1igBUdyPHtMRqDOMZixDiNpB7n9DOAQaIHB6mvZQRUelJGoZGUFrfdrbu09o?=
 =?us-ascii?Q?pzPL39jkYyVLRRbyH3vTCmb07OsV6X2HpO1gkyZfz0d26P96r/e+N51guxO9?=
 =?us-ascii?Q?+vxieDhhtHxhqF6AprsAOekOOw6OzhCOsWrpP97wKu704VzIoQuuwjPBKBVf?=
 =?us-ascii?Q?uLrHgbLCUqCU1o7fzoc/xXX2fQ/0OrcrBj37sjMgZZtecUMBAXAuOF5b3npA?=
 =?us-ascii?Q?ijx49pX8ONmRNeo4v0jn224s3SSXtZmYuQTVycnZK5RAj2tl5wpHRLkpHSXg?=
 =?us-ascii?Q?hhW/zssVpKjNZCQbCfx2YeAZzrmtZNDPXnx2mKZEic6O3f8sVCW8gHRzkbon?=
 =?us-ascii?Q?CPgZMxROdRXFnnTEUh2KJ0WS/EjwQRzR1zDVMoFVYvBK5YH0hUghkCO3vpwN?=
 =?us-ascii?Q?RXCfCimUVR8wEK5F7zXjv8KFkb9LZH+xt8Yl9JNyXDpMLKkL8zAXttABCvjO?=
 =?us-ascii?Q?VDZgD39pDBU2r9R42+4qlfOnzQJ1vaTZ/k7Rxfi3w6zmC3/KqlARNJzcMxTT?=
 =?us-ascii?Q?1u+ws4n0voyU62OQz2KhtTED2DjvjIQcoVHhEQ7xNVWw+wW3Tw+LnT7awH9k?=
 =?us-ascii?Q?gKxRVnERMX6EwTiTNw8PbF3Y0M2FOiLy0aCqGomP786wyGqT92B4VyM/1Wgu?=
 =?us-ascii?Q?2w4wA4H4VXVAI1nRAJk9ck14e1fKXuy+aBWBVU/7LL2Tdi/Ee7QcwnXjJ6PH?=
 =?us-ascii?Q?3JU7OyGfqvKtztS75PgEw15rJg7x4uO7ojqmMu+7XMsHN+XVj2JfRsIzSb7j?=
 =?us-ascii?Q?4BRFbfZxMSUVQTQv23FTFKLvuB3LceML+tQcT3SZ72ImppBO1qRJWbXfg4Ps?=
 =?us-ascii?Q?qYT6k48pOOScDdrgrDPvr7B7DHvsfpqPCQ9UXgQ8vVMN6Kt4Ruo8Q4OOVEwh?=
 =?us-ascii?Q?3Qmgb7mVSHEkSh4psA0PPaF4UH8XsN+78Q7mWLwu3TSnAS+U8hxWcbNm8gjT?=
 =?us-ascii?Q?YCxSUgxQtLvpAOrg32lxfJRrVr3QqWMqC3mSkf2zSh6G2t3ynophMKxpEin5?=
 =?us-ascii?Q?MjAzj9IGFUeows91Qe/S9rkj/sjJYcu6rCfrlu8qrahv1GvxKjRhoCVLWzLq?=
 =?us-ascii?Q?IJWHzO/jhWo23lp1QlQImVJIUYZnxFS2S7JITm+MCTAOyrr4hW2Rn5ZF66wf?=
 =?us-ascii?Q?f2HKcOiVXCjNUFHwEM1zwn39l7NyvoOHiEEDpZMj1r63UusjNW1bzzQbHiK2?=
 =?us-ascii?Q?HqHr0gf84Hbp0XBCTpdZ+z67yA76wQjgbpBRhDV+imOnRStFPU19d2jbmBhF?=
 =?us-ascii?Q?0byUUQurWENriZ3YHu3ae2lriUhS6UbeNvCTEWxNAPe+94BX7s/KPgTLlsPi?=
 =?us-ascii?Q?0e4d97YOSqQhR2xQ1x+cAsJniTbXDVEZmOJ1AgPx2g4NdWnLx9HJYD8bJMZ9?=
 =?us-ascii?Q?dtwvg2wxN6in/Hk47d63U43spcRv0TWOZJN5k+O4GSDZYHQ19qzLqphlKeJt?=
 =?us-ascii?Q?Bueq3w6Jf4LgERnVeSp2fg2bSBfw0YDki1GvKyxduWRgFrrp8rL3yM8rPR+o?=
 =?us-ascii?Q?e8mP5MHmneoZ1hQToBUCO5/3xLTapV4MSFiP0zmLlH5ek3VIy7lyAZPNvQ39?=
 =?us-ascii?Q?n0FpLvI3ZjNA1G7SYy6lcMqdvIxHC3QQl2/1MrUEoRGipPcGDO6ADQ/Z3EQ3?=
 =?us-ascii?Q?zcxVUojsuw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 898b18ec-233b-477b-48ba-08da44ae190b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2022 15:39:36.1202
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z9ahcs56DpSPWs/5EEkS8jfRY3b46zeO4MGeImYD7hOp+V4xf1d+bKRpbehU/dRY9DvLX5yaV7U6Yu/83T9/EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3464
X-OriginatorOrg: intel.com
Message-ID-Hash: YNFADXGHOULARZCPP6TMX6XLZVYPSWQD
X-Message-ID-Hash: YNFADXGHOULARZCPP6TMX6XLZVYPSWQD
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Why the patch against CVE-2017-13693 not be merged?
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YNFADXGHOULARZCPP6TMX6XLZVYPSWQD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

We need to look closely at this patch, and have not had the time to do this.


-----Original Message-----
From: joeyli <jlee@suse.com> 
Sent: Tuesday, May 31, 2022 12:07 AM
To: devel@acpica.org
Subject: [Devel] Why the patch against CVE-2017-13693 not be merged?

Hi all,

There have a old patch against CVE-2017-13693 which is subumitted by kkamagui:

acpi: acpica: fix acpi operand cache leak in dsutils.c
https://github.com/acpica/acpica/pull/295

Why this patch not be merged? Does there have any conern?

Thanks a lot!
Joey Lee
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
