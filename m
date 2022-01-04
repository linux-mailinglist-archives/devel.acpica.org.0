Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6C1484A9D
	for <lists+devel-acpica@lfdr.de>; Tue,  4 Jan 2022 23:22:46 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5B469100EA2C0;
	Tue,  4 Jan 2022 14:22:44 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AE3C8100EB847
	for <devel@acpica.org>; Tue,  4 Jan 2022 14:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641334962; x=1672870962;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=32eUMcpCovAswt3fWzfOhdKZjMOt62bka6vXXhCuUlw=;
  b=hTVJ3RgmwELgj/e2Yi4mcwz9jjf/uI6o8VLFrK/K7rOE9D57efsl/Gu/
   uxsLz6SaIcXezmrUv6f/DgC/HeM8Mc1Ef03TZuB+Muaw+ZAIuT15Sb3G+
   zNnWCw9JkO+yaiXTwq31TNtm2a5ppc1rQJTMIK8l/i72Y7W6zW1vAhRp/
   WpCB7BwfElTtcUGF1xxJ5XugmjUC2a4d5QE+4UQDx0oDjfIppTgPKpWYZ
   x7kaaDMWBH9NxxsnG3sb/QUPxmtxiVKUw+2PO2sWNaw3HNX4j0n86hlgX
   uy05Nn7q0GVkKsAiGjglaqc8bVNjgS2xAnL1tAFjQ0nuSK/5nJTQx2WeZ
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="222302168"
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600";
   d="scan'208";a="222302168"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2022 14:22:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600";
   d="scan'208";a="617708207"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2022 14:22:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 14:22:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 14:22:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 14:22:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JZbhRzQdRtAKLNheGj+0ROhzlZeujChM/5VrGCUSqr87wMLmdQAobA/5OT/Wrp7io47qsff9ymhD9ENjoYaY6FBz+MSQH8NQ1iGnRJHM5Uuy/ImtMQzofuuyK56Q8ssJSXE8pqhWbUSgpU9S6BE9AtgCR4rlJM4XAU+fIxXS28AJgtivOyInPhveWjkhrG+diqW9ZVzsF57i3xrehGbbaPRKJw1DBUbQkj8qSAOZ/x22ruFHdNjfZedS1X8wGxxKAWuIhqdxglHaMPT7s7kqdMWZfbFx/viUPVGwVABW36tkmd4+orTb40ER/k1wqHo6dtaadIrnFzFCDDayWy5xMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32eUMcpCovAswt3fWzfOhdKZjMOt62bka6vXXhCuUlw=;
 b=jFJXQCy/oxb/0oN20hMK1EpsltD2Jhb10tLWFQS2RI+UtE6fi4kXrfPHTPGaG3cAdq90T6yy9+2sIrRhHPKeiHUpuQccqH8Xot5h2SNdDW6wUaa5qVF7WYQNITqQWVPemfFV+VIzWKPnWAHl6ZDKDJ6mAw6on1rY4JqdbltsGzl06YwRomn3wN14IMd+CM3twS7ucJVaGHokR/jjIWoaznvQ/AJPVBQnZYzG1NR4BT909TktVPPWzVuADXgW6qFP3pkTdZYakT0LjYw+3jTjc4hbVPBNMFTlwkP9FXpgf/RFVvSvTKtAVJL1tsxgrV+Vvik+pZSB9T7x5i5r4gCOQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2838.namprd11.prod.outlook.com (2603:10b6:a02:cc::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Tue, 4 Jan
 2022 22:22:08 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::6d1b:52fc:309a:bff7]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::6d1b:52fc:309a:bff7%5]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 22:22:08 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Thread-Topic: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING
 8d681a5245f0a5cfb20326b4f6578af1adb8676b
Thread-Index: AQHX/H2m2F4SRWODu0u8RazBbhdytaxRfDHQgAAOdwCAAZuYwIAAUzCA
Date: Tue, 4 Jan 2022 22:22:08 +0000
Message-ID: <BYAPR11MB3256CD154ED1981DD70A97AF874A9@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <61cc007a.mWwpG8hntz2tC9i6%lkp@intel.com>
 <BYAPR11MB32566B65A82D815C214720E487499@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAJZ5v0gx70huuZ7tj_iMZR3ViFfzX9F2Zt4BxqcHk_9OdioP1Q@mail.gmail.com>
 <DM6PR11MB325976F1727198D80686D123874A9@DM6PR11MB3259.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB325976F1727198D80686D123874A9@DM6PR11MB3259.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 54ea8f63-1e60-40a9-5bea-08d9cfd0a58e
x-ms-traffictypediagnostic: BYAPR11MB2838:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB283858BD58881EF081060C08874A9@BYAPR11MB2838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EmiVqOvonuPCOy6iHHlelqFKKxkhHR/5wyoDC2rl5NmlFVkupVVDZj0MLwgrsgws2UC/CXunXJXgZU3W0cOA7hemitc8blqy2KoWVQOKTyiLnyTEOmWFztV72/iVOtaJ3pcgwVht28jU3kjo8339vxhmXCJ2EWt88Nipr8YFHd5s+/pTsVUemD23HMjVaJvDNMSMj22xqtA5oYUsYL5AGzNW/FQjbUsNM7duTzWY6n8N5GpjZPvbYHqtvsKDaUnrc+N9ghNdRMsbtKdKvLlkp8T39zvME/XXgVKH89Pn5ogfQPDIJ56SI0Rxbt611HdtBL7JUUPENWufwDDeq0mMIOkUshLDk9Jlqhj88aWremnFe4YQyIzvJgQ8iEUDjszb3utn2esMbs9FMDesNyWqqFZTVeeEBvTg5g5cfIBBSRw3xVfgavqyNx6PSGVxHA1BcaZKRN5IbFQD1lZflNaVU99VChvUNqol6KJXVMS7GxVvShiD80Jcb6Kp3gi0fbFLPQMxinOMAJ6V+gfqt7J5N10a5bYxJz73/k3JrlfJxG4HwEkEdlOyVviADIgXjvot7zG2FQ+eQYIH6U3DaQTXEU1PTWwmZutsiMhjN1b60zks7ZjQ+OhStSx3rL7JjaU8R4FcPuOPA+ij1CpdmOy7hJVEkv3U+Wf+S1ArYtvIFVOa1OW/jZlbM16Q7fvZ6SsNer32GP5YGpYIhOpoUTSw8NkrZz6W4q8RlT50blWFta15/eZxQO4nNw6hrF+o8kwqXbRHFqb+Iyma/qqPwgepWMdd/QLlc3Ph+LrCepAYyE8SKJlgQ2o4VGkrIqMuvBbUV7gL+2HMLP0KGalb7uOgXQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66946007)(7696005)(9686003)(4326008)(52536014)(6506007)(86362001)(66476007)(64756008)(316002)(186003)(83380400001)(76116006)(26005)(6916009)(38070700005)(66556008)(33656002)(53546011)(66446008)(508600001)(966005)(54906003)(2906002)(71200400001)(82960400001)(38100700002)(5660300002)(8936002)(8676002)(55016003)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzlmVGdCTXcxNS9xalhITXFVSGJxaC93VVdjUlFVV1hVUjlKcHJNYzhTdVBP?=
 =?utf-8?B?SVFoazRJMjVaUUtXTWJiajVncVgwdHpESWpTQ05LNkZkQWZFVHpQenlhbHZp?=
 =?utf-8?B?eUdUWGx1NDE4K01sK1FPVXpoZlNVeDkyTnVoVHJXU2xNa1NQNjZIOWo1N1ZV?=
 =?utf-8?B?TmpBSDBwVGtEVmdPenZuZldBaGZ6L3Z6UHpTUmZVWE1rQjNnbGxyOEtyS3hy?=
 =?utf-8?B?VXlRdkJaY0MzUXg2K29La2FYOUdxaGpnZi9wQUZLRmtlejBuSVJYeGd2bHZy?=
 =?utf-8?B?YmY5YXBUTzFZeEYyQUJRL2tmQkdRN3NydTd1NUZRNXM5Q0g0aWhmUGpXem02?=
 =?utf-8?B?M2lGdUVrUlY2dkppMEhtVXNIbUFRQUhXQkhvYlNEbjJkdkRxLzZyY08rZy9T?=
 =?utf-8?B?V0JyNUFoQ3djNTRuZFh4WFUyNHVJY0d4SjJlN2g0Tk5lTHh6ODhSTlgwbXd6?=
 =?utf-8?B?Q2hieWpFNEY3dUxkK3BiSkxZaEtwTDQ3R1IydXZPaWtmd0dhN1ZEN3BKa2tp?=
 =?utf-8?B?VW5naVpQNWhvejBuZlNkTWtPdG1HMTFEMDVzbVZsSmlZZ1BKaVlSWkIrbldY?=
 =?utf-8?B?SEU1OU1mREVhd1EvK0l2YkdSbitFYjc4aGx3dUdrV2dmU01xZGJvYVFaRkxa?=
 =?utf-8?B?c1JETEZBT1FyOHhHc1BuRk1KUzVJdnFuOUl2Z2Q0U2sva0VqaXZkSFV6Kzd6?=
 =?utf-8?B?UXN6VUlRSTdFN25rdlVOUUFta0ZHbjJmc0ZTZEZvOURGdEF3M1NOZnB4bG03?=
 =?utf-8?B?Vzk0bmVRdkltVmc1a2FIOXJYZW1zdXJzNEMxbEVwOTFrUzRMWksyTWtia1FY?=
 =?utf-8?B?cys2bGdlYThDOXJVcTd1MEE0TFNVcjlHbVB2c3c1Z1p4QXJCQ3QyQzNLSFQy?=
 =?utf-8?B?cjUzcVVWOGxQTlY5SnB2YnVFTForVVNvTmhvWWJFRWJvWFg1cjZQbnA2Mng2?=
 =?utf-8?B?aStlYWtRaHlHVnhvSTZkNE1yZmhZeklYTUVxMmtjTXZ6Wm83SGk3NURWS3pR?=
 =?utf-8?B?UDlNc3ZBVlV2SnNLcGt1cThTNTZUSGFhOUJnV0NRbkVYL2hRNm55cjN2anlz?=
 =?utf-8?B?UDJLZG11aVJyUTZBckFjdVgwMDJ2NktPdnNZT2tRQUZlRkQxZ1JyTWRacXBC?=
 =?utf-8?B?cWJVeVBTVFd4OEx0TXlxdEFvOXFocUNHRzNtQ0hDNnpRUHlFU1FvcnpjeVN4?=
 =?utf-8?B?M29QanR4Q0VJRDVDMnpvTWdRaEppVjlEakFML2IrNHFXc2R3bURwUGJ6dVJO?=
 =?utf-8?B?NVZid2U1c0NxR2E2RzNDaWwwL1lXN1RvWHlDTXVOWGtZRzRvUjZ4RzNVanR5?=
 =?utf-8?B?eVF5VVRWc0VteStkOG5tUGZWQTRUb0g0UzJtWHdGa2FSRWhtMjN4WFQ1eGNj?=
 =?utf-8?B?UFlYZlJEb2tqV01kaUN0UFpwN2hIRDRnNDNMRXgzZnAvZzBQd0R6M2NSS0s4?=
 =?utf-8?B?eGlsM2dzK0RleXozeEs5b1JkSlVnRkwyWVRxazNlVkdibUpjV0Z3S2Y2d3dG?=
 =?utf-8?B?MEVoc244dkI1U1Nib0FjR2FPU1k5cUFaZDJYb1loWjY2VjZGTld4UW9FQjVB?=
 =?utf-8?B?cGNjeE5NWjFoVFpidjUrTGlWaEFGUElZcVYvb3doN0xGaVRyOER5dVZYdC9S?=
 =?utf-8?B?RVErRzd6YUQwaEZ2MEorWERqVUx0eXYrTC9FTkc4dHpEdEJMaFpGa3VrSXFt?=
 =?utf-8?B?MGdDVjJtcnJzVjN2Ky82SW12eUhDSmxQRUpnU3dnNGVSYnVNNWY3V1JINkJh?=
 =?utf-8?B?Y0tRdTIrcWhoM3M4NUp5N1d5NlMya3d1T1d5YmM4dVlXUjE4RmpVNGc1QXVm?=
 =?utf-8?B?cFBvaHBDM0g0YllINU5ZaEgwcjRzc3Z2VVNZOXNTY0NhdW5oS3F4YlppbVhv?=
 =?utf-8?B?YWNQZFVuTFR2LzlqWTAwR1ZMSzF2cE1yR2l1ek1KRGcvQ0VJZm9EZDk0OEVP?=
 =?utf-8?B?ak5pQjdLcXJMMmJyRlQ0YmgrRkQ1bVNHS1ZTdnVKTTluT0h0TmRCeFRtTUZq?=
 =?utf-8?B?b1hPdEdwa0xIWXBzOGNTcS92VzJQcUVBQ0pTYmpIbTA2N2pFTlFPZ2NEb2Ny?=
 =?utf-8?B?UHM3WisxT3p6OG5jR0d6QXdvSGNMaVVpTjNnK01SNDBOMFdqdUlLSlpKOXRq?=
 =?utf-8?B?RklteW85ckJTdHNpL29yUkNiZ3gyTkVyYzUyUG5ObUpWMXZjUzFCdmsxRlNF?=
 =?utf-8?Q?UtlFd6m0EAEoOxsOoTE2LPM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54ea8f63-1e60-40a9-5bea-08d9cfd0a58e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 22:22:08.6415
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oHXZheikkm+mmX9JHLn41qJWJL/XPtTJfMII5M36bFkWcUXpMA8U3IZR9jcr5+gN70zlnX7y0+bbltt4zPQgDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2838
X-OriginatorOrg: intel.com
Message-ID-Hash: UCUE3FNNVWALHVWVMJBV72RRYJO2T2SM
X-Message-ID-Hash: UCUE3FNNVWALHVWVMJBV72RRYJO2T2SM
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: lkp <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, Arnd Bergmann <arnd@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UCUE3FNNVWALHVWVMJBV72RRYJO2T2SM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

However, we came up with a slight abstraction for compilers that don't support uintptr_t:

/* Use C99 uintptr_t for pointer casting if available, "void *" otherwise */
  C:\acpica\source\include\actypes.h(414):#ifndef ACPI_UINTPTR_T
  C:\acpica\source\include\actypes.h(415):#define ACPI_UINTPTR_T                  void *

-----Original Message-----
From: Moore, Robert 
Sent: Tuesday, January 04, 2022 9:23 AM
To: Rafael J. Wysocki <rafael@kernel.org>
Cc: lkp <lkp@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; linux-pm@vger.kernel.org; devel@acpica.org; linux-acpi@vger.kernel.org; Arnd Bergmann <arnd@kernel.org>
Subject: RE: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b

Rafael,
Yes, it looks like this patch may work OK.


-----Original Message-----
From: Rafael J. Wysocki <rafael@kernel.org>
Sent: Monday, January 03, 2022 8:49 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: lkp <lkp@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; linux-pm@vger.kernel.org; devel@acpica.org; linux-acpi@vger.kernel.org; Arnd Bergmann <arnd@kernel.org>
Subject: Re: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b

On Mon, Jan 3, 2022 at 4:57 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> Are these new warnings, or legacy warnings?

They are new, but AFAICS they appear because an old macro, ACPI_PTR_DIFF(), has been used for defining a new one, ACPI_PTR_TO_PHYSADDR(), which is now triggering the old warning in a new way.

I guess this could be addressed by applying the Arnd's patch at https://patchwork.kernel.org/project/linux-acpi/patch/20210927121338.938994-1-arnd@kernel.org/
, but that's problematic for the upstream.

However, I'm wondering if we can do something like the attached patch instead.



> -----Original Message-----
> From: kernel test robot <lkp@intel.com>
> Sent: Tuesday, December 28, 2021 10:30 PM
> To: Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: linux-pm@vger.kernel.org; devel@acpica.org; 
> linux-acpi@vger.kernel.org
> Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 
> 8d681a5245f0a5cfb20326b4f6578af1adb8676b
>
> tree/branch: 
> https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> bleeding-edge branch HEAD: 8d681a5245f0a5cfb20326b4f6578af1adb8676b
> Merge branch 'acpi-sysfs' into bleeding-edge
>
> Warning reports:
>
> https://lore.kernel.org/llvm/202112280907.gTYYYuB4-lkp@intel.com
>
> Warning in current branch:
>
> drivers/acpi/acpica/exregion.c:519:17: warning: performing pointer 
> subtraction with a null pointer has undefined behavior 
> [-Wnull-pointer-subtraction]
>
> Warning ids grouped by kconfigs:
>
> clang_recent_errors
> |-- i386-randconfig-a001-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a002-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a003-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a004-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a005-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a006-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a011-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a012-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a013-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a014-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a015-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a016-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a001-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a002-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a003-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a004-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a005-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a006-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a011-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a012-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a013-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a014-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a015-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a016-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-r012-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction
> |-w ith-a-null-pointer-has-undefined-behavior
> `-- x86_64-randconfig-r024-20211228
>     `--
> drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-
> with-a-null-pointer-has-undefined-behavior
>
> elapsed time: 725m
>
> configs tested: 104
> configs skipped: 3
>
> gcc tested configs:
> arm                              allyesconfig
> arm                              allmodconfig
> arm                                 defconfig
> arm64                               defconfig
> arm64                            allyesconfig
> i386                 randconfig-c001-20211228
> arm                           sama7_defconfig
> arc                        nsim_700_defconfig
> arm                            qcom_defconfig
> arm                          pxa3xx_defconfig
> powerpc                   bluestone_defconfig
> mips                      bmips_stb_defconfig
> arm                             ezx_defconfig
> sh                           se7343_defconfig
> powerpc                     skiroot_defconfig
> arm                         lpc18xx_defconfig
> arm                       imx_v6_v7_defconfig
> arm                          pxa910_defconfig
> powerpc                  mpc885_ads_defconfig
> powerpc                     pq2fads_defconfig
> arm                           sama5_defconfig
> arm                        shmobile_defconfig
> arc                    vdk_hs38_smp_defconfig
> csky                             alldefconfig
> riscv             nommu_k210_sdcard_defconfig
> arm                  randconfig-c002-20211229
> ia64                                defconfig
> ia64                             allmodconfig
> ia64                             allyesconfig
> m68k                             allmodconfig
> m68k                                defconfig
> m68k                             allyesconfig
> nds32                             allnoconfig
> nios2                               defconfig
> arc                              allyesconfig
> csky                                defconfig
> alpha                               defconfig
> nds32                               defconfig
> alpha                            allyesconfig
> nios2                            allyesconfig
> arc                                 defconfig
> sh                               allmodconfig
> h8300                            allyesconfig
> xtensa                           allyesconfig
> parisc                              defconfig
> s390                             allmodconfig
> parisc                           allyesconfig
> s390                                defconfig
> s390                             allyesconfig
> i386                             allyesconfig
> sparc                               defconfig
> i386                                defconfig
> i386                   debian-10.3-kselftests
> i386                              debian-10.3
> sparc                            allyesconfig
> mips                             allyesconfig
> mips                             allmodconfig
> powerpc                           allnoconfig
> powerpc                          allmodconfig
> powerpc                          allyesconfig
> arc                  randconfig-r043-20211228
> riscv                    nommu_k210_defconfig
> riscv                            allyesconfig
> riscv                    nommu_virt_defconfig
> riscv                             allnoconfig
> riscv                               defconfig
> riscv                          rv32_defconfig
> riscv                            allmodconfig
> um                           x86_64_defconfig
> um                             i386_defconfig
> x86_64                           allyesconfig
> x86_64                              defconfig
> x86_64                               rhel-8.3
> x86_64                          rhel-8.3-func
> x86_64                                  kexec
> x86_64                    rhel-8.3-kselftests
>
> clang tested configs:
> x86_64               randconfig-a001-20211229
> x86_64               randconfig-a003-20211229
> x86_64               randconfig-a004-20211229
> x86_64               randconfig-a002-20211229
> x86_64               randconfig-a005-20211229
> x86_64               randconfig-a006-20211229
> i386                 randconfig-a002-20211229
> i386                 randconfig-a003-20211229
> i386                 randconfig-a001-20211229
> i386                 randconfig-a005-20211229
> i386                 randconfig-a006-20211229
> i386                 randconfig-a004-20211229
> x86_64               randconfig-a013-20211228
> x86_64               randconfig-a012-20211228
> x86_64               randconfig-a011-20211228
> x86_64               randconfig-a016-20211228
> x86_64               randconfig-a015-20211228
> x86_64               randconfig-a014-20211228
> i386                 randconfig-a012-20211228
> i386                 randconfig-a011-20211228
> i386                 randconfig-a013-20211228
> i386                 randconfig-a016-20211228
> i386                 randconfig-a014-20211228
> i386                 randconfig-a015-20211228
> hexagon              randconfig-r041-20211228
> riscv                randconfig-r042-20211228
> s390                 randconfig-r044-20211228
> hexagon              randconfig-r045-20211228
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation 
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> Devel mailing list -- devel@acpica.org To unsubscribe send an email to 
> devel-leave@acpica.org 
> %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
