Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD4935208B
	for <lists+devel-acpica@lfdr.de>; Thu,  1 Apr 2021 22:25:28 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1DCBA100EBB7D;
	Thu,  1 Apr 2021 13:25:25 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 037CD100EBBBD
	for <devel@acpica.org>; Thu,  1 Apr 2021 13:25:23 -0700 (PDT)
IronPort-SDR: CL/mW4HP+G1aVLGjULpZM8dryWUnp1xxsN+MSLFSvqbGvjgkMtEadB+TmtCdsGcFiWmIvrN6jR
 WOZTeziqD3EA==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="192429201"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400";
   d="scan'208";a="192429201"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2021 13:25:23 -0700
IronPort-SDR: oak1saS3sX4A3UHmIKI2CDjgUvq+NNB5SoBX5TETWeMNDEZIpvPGpMDvZmT8wOcYkoKlVl6qwh
 21wXnsoSkKYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400";
   d="scan'208";a="412859731"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga008.fm.intel.com with ESMTP; 01 Apr 2021 13:25:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 13:25:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 13:25:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 1 Apr 2021 13:25:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 1 Apr 2021 13:25:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChED46RZNh5qIwHVSQPulfzWwiiCpQa2kaN+3vLJ/dqwvkO5U/RlNjBpM/qpF9MseM8nkCF/vhHgXlH6Ywz+YMSEha6aRys/1JgJmVuLDZxqFXaUZiktnfm5zEkF5EC6yoF9AJIRiHR9OoBIbOpzva6SARULm1nfdeAoz2aqQYQJe6YtPnZuZpP+Lmlj0kEgZxe1SFhjwZfK3QWwSGn/EH4zp1uxotYYbWC5DWpx863vkdGnUh894PRv+f2pDOnZ/Z6o3cNzzEh9AKNhCOkV/9YPQ8gpeWpMVhAJCq6Q6dQIuvAabq2o4kmoRngvuGyOiq/Vi4E563enulKhSBstNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eBAd/qgAu1CxHCu0zMb5z15stSbrYN1KWdtOfsg1vO4=;
 b=Yt76HxGAiqpejGa+VtCxenzOMiUAH06imqhsayCQH1/tYHm9Er/6jbDDN3jmFLzeEa3wsJKUboKF2DtB7USoORmNTnsH9kI2nDSyI89QM7wScbUZ20isWCwC+/+rKG8IgYrtp9JX1fvM/TR4X59Y+OdIdzbmRUbMkqCKAhYxLhnI5U/tZJ6ixLHKDh8iPPMlqRj1KpzHSoDH2gZhYlZiE7c+sYsweuUUHiE47TiwSaRPSHfbrv4ti8DZpxrcRUoFRVgiFeWpkXOJuuSr4XNfY53j854Gv5aDCKai85Iw/zIqTAgVWj3JDuKqMkNUlLUXQrRnS3zIIHzlZkP9THsXww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eBAd/qgAu1CxHCu0zMb5z15stSbrYN1KWdtOfsg1vO4=;
 b=YynUEYwI0/4/u0+iuuS+ivRuiVhf5f2hxxjw62UYBvBjzztNP2f9OI4fbc6fezfoxrbXg20sbpLz3bxOt3f8RLxXPB3nW67ZkN14C3cFildfBRq/IzYCHBykFt6fdeX9tVXlT4qvUGQuleZBSBKNvMC41CBoGeKqBif75RKBjAU=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB3032.namprd11.prod.outlook.com (2603:10b6:a03:8f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Thu, 1 Apr
 2021 20:25:16 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::41e6:b61:67ef:2712]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::41e6:b61:67ef:2712%5]) with mapi id 15.20.3977.033; Thu, 1 Apr 2021
 20:25:15 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20210331 released
Thread-Index: AdcnNQiz7LgNJMoWRZK/8skpJ8/veQ==
Date: Thu, 1 Apr 2021 20:25:15 +0000
Message-ID: <BYAPR11MB3256674E208EC828B488AD3D877B9@BYAPR11MB3256.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: f304eb8f-d585-4f93-f1ff-08d8f54c42bc
x-ms-traffictypediagnostic: BYAPR11MB3032:
x-microsoft-antispam-prvs: <BYAPR11MB303204D5AD8DB1BA7917578B877B9@BYAPR11MB3032.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6OVxXUqeK8Q4Z9d3aqKQZpai9rWkEjuoyAb7j8+E6Cg1XP51YspbNKGytRlUZf4j6FOLHoG7bw4qSnrzfVLxSiBwHlF0SM3PDcV9HJluVVhdBUpR5fA15oxzOiKzTyMbkldv3x93kNodMYblueRPQZjSk36oIUKzWDacF1AQ/RJ32Anv+sj8sMEruM1Ag1fPgtdZZwGgAmw2Iq8yZ4n6yse7Zjf2CVL7tikGNaC5xgcoDCWEA/1mVFtKfA0SJdX3g40EMcC1/y5j8SJS37skfQwZA4diox0aobgy+yrgJDhZmsLZBcQnU8yODjx40eZAr4zv45NVPDPAaGIcu8d83icu1RIj2TfzRwIUgGE94KYfCawJiR4mKOxvWh0JiJAtQbRvn40R2Abfn+nlVyiJTKruOzr6SKTkEwBLdB/ooJy/+CnaXBzWuB1cCS/riwPbkG/6qqsY4khYb56oGP1g5JKIWEeB4uCb89Pf8v3wDRFjugiPZR05YRp1M6t2gfUVOsaBvfGs63fsyqT7sAP+fvGTHlpG+CeffAdAcK36gE7SxKQnpYqP4IcCm4I9AVti+Vc70Uuke9rHJeXdIN/pzp9Hdg2N88jZJFZvM5T/isCfR66mw9KS8Jquu9DmuW++IvGokjpZ8wojtAR0jQTAoBp9WFUoKsd4x4PrZw7b+oTa8/U/Tsn6r9z5k2GIbAOWRprOD+ukPDoUUOdgTHZdhT3rMKICQOKWR/lhEHa1nQQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(366004)(39860400002)(376002)(396003)(38100700001)(8676002)(55016002)(7116003)(9686003)(71200400001)(8936002)(478600001)(6916009)(7696005)(966005)(26005)(186003)(2906002)(5660300002)(76116006)(316002)(66556008)(66946007)(66446008)(52536014)(66476007)(64756008)(6506007)(83380400001)(33656002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?s1bsfW5oQ8dNZrA2XjcGXouxoiadHZaGbs7HZoNKyzcjDqvTYKu5GOu8kmOl?=
 =?us-ascii?Q?8OG7P0lltaWZ+rOHS9fPNgkg1Z5MP7cQQXJ111NuabZ5/9ojYuaWB0N6BD5e?=
 =?us-ascii?Q?EwgDHZHepzBxPN8fIa19vtYZv/ic0Cw4Oi5KaRYvPwlVf5fTIAtvKpfyuz4M?=
 =?us-ascii?Q?9Vtdh5x/TDASLe6QPpgC15z9dAyG+MhEjGb8u3+tGIOv4KrfggcTFbdZX/8P?=
 =?us-ascii?Q?wQvIwuRihzqFZkiOEYLGpGeJ7wNo4noxYXdixAn6A5ce3CzZskC8x7lNXNx+?=
 =?us-ascii?Q?GKCVQQOkyocbxAlYDy/3nknyTI1xdbvzqeTzmGSldGSSRGCs+73UTRnZoPC1?=
 =?us-ascii?Q?yxmNUzgqru0ztfXgBkYU8EaBOA1urK3x/aNmPnyxs3ke0BoyoE2YHNrA0W+O?=
 =?us-ascii?Q?8TK6XYDt2FGGOypdDRc8YxXRh4oaWfuoHrmlWcWkz+LFyaVDzI5BEtXS6+6h?=
 =?us-ascii?Q?7qVDq4pXuWAxzbN/QWDM5BH72XT4zYhgS40RWF0E6kXedOZDVZz4Pw+IDoLq?=
 =?us-ascii?Q?CglAUpUlwH3zoumNDfWcgU0iYTFBu0eRxGPlw3YIQC36RLysLttF/U7sILzT?=
 =?us-ascii?Q?PLnwUvNy7dFyb6i3zgUv1IMjE9b3qd6Jm/F9Af/fPpNrtws7UjUUTM1rTJdi?=
 =?us-ascii?Q?sWeMEhDoEPEF7JgMhjXgDvxHGAyof9q5c+5sfjf+WfigfYJP6ac/n+0ugQqI?=
 =?us-ascii?Q?UdVu6PPUGV/3pv8WGa87RY0QbWpxF9vdOAQx98FnxhAnRyzHZ/aUFspwZMwI?=
 =?us-ascii?Q?ZjWJXkXgnfXqHAUShgfRGp3iHYO2NUJ6snE+tk6dbPsxT30we1S7cltM1MkI?=
 =?us-ascii?Q?1Sd9jk/2TMMqBDHR7azWM0RkqRaE67TOhSHspIGdarUKJVlMzZ8gE7ZJsYMp?=
 =?us-ascii?Q?rZVrJnnwkpdYBz3NCSqSL44qZouzmc0gD5PfDfGLCFHvjzH/3XQtjhwETTPt?=
 =?us-ascii?Q?Gfb61Ur8uHkz0DsdO5/cbmF8YgT2ZNQDp7tlicji/2GttA/OVZSGB/CBhpUW?=
 =?us-ascii?Q?SbM/TMY7vOwmuS0UE67mMuVFMeWonKcqjuGjm6GcW1oPXn2d+PHWgIxbMDtR?=
 =?us-ascii?Q?QhRDxt+hxySOghpjhvn6AvZiJ1wsmzpJNqzRvxVm+BjhIZ5QhTWe6W+4eExN?=
 =?us-ascii?Q?lFalPR+FFqX6SE8haIdiVwC3j2cg8+dPqrfhSnd/saDpakmkXw1qFZmMsMx0?=
 =?us-ascii?Q?CkFtfG5sV+Db+BsYBiyg5lh97l+1qvCvn6Bgav+dsiQ6rXCxnQG5TvdIws5E?=
 =?us-ascii?Q?00lA6OQ4+yjOUIFRI+5t/7YFCWFm2raEJoQdSb/5JifXtSd33HCnr70w7kTW?=
 =?us-ascii?Q?LUkhTrRqnjKlkunCBAe024VC?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f304eb8f-d585-4f93-f1ff-08d8f54c42bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 20:25:15.7984
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N8VIaA9soseblVznD7AHpFCw2FClTtSXYRiHY8r1dkAZ7WSrUEWWnJ6AC/SlzukeuwEjkX3gXlmatmWAEmtR9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3032
X-OriginatorOrg: intel.com
Message-ID-Hash: JIJRABDX3TW4BDBVXRT5IG2GPBJXWQEI
X-Message-ID-Hash: JIJRABDX3TW4BDBVXRT5IG2GPBJXWQEI
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20210331 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JIJRABDX3TW4BDBVXRT5IG2GPBJXWQEI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

31 March 2021. Summary of changes for version 20210331:

This release is available at https://acpica.org/downloads, and includes all ACPI 6.4 support

1) ACPICA kernel-resident subsystem:
ACPI 6.4: iASL: deprecate DDBHandleObj keyword
Always create namespace nodes using AcpiNsCreateNode(). ACPICA is allocating an object using kmalloc(), but then frees it
using kmem_cache_free(<"Acpi-Namespace" kmem_cache>). This is wrong.
Fixed a race condition in generic serial bus operation region handler. Fixed by Hans de Goede.

2) iASL Compiler/Disassembler and ACPICA tools:

ACPI 6.4: NFIT: add Location Cookie field
ACPI 6.4: HMAT: add new fields/flags
ACPI 6.4: Add new flags in SRAT
ACPI 6.4: add SDEV secure access components
ACPI 6.4: add Csi2Bus resource template
ACPI 6.4: add support for PHAT table
ACPI 6.4: add support for PMTT table
Add disassembly support for the IVRS table. Compilation of the table is not yet complete.
Fixed a potential infinite loop due to type mismatch. The for-loop is using a UINT8 counter and comparing the upper
limit against a UINT32 AslGbl_ExpectedMessagesIndex maximum. In
the case where AslGbl_ExpectedMessagesIndex is > 255 the counter i
will wrap around to zero and the loop will never exit. I suspect
the AslGbl_ExpectedMessagesIndex is never that high, but fixing
this does future proof the code and cleans up static analysis
warnings.Colin King.
iASL/TableCompiler: update it with IORT table E.b revision changes.
iASL/TableCompiler: Add compilation support for the VIOT table. Signed-off-by: Jean-Philippe Brucker.
iASL/TableCompiler: Add compilation support for CEDT table. Also, update the CEDT template.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
