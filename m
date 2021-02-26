Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16512326487
	for <lists+devel-acpica@lfdr.de>; Fri, 26 Feb 2021 16:13:07 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AE6B6100EBBA0;
	Fri, 26 Feb 2021 07:13:05 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 253F6100EC1C6
	for <devel@acpica.org>; Fri, 26 Feb 2021 07:13:03 -0800 (PST)
IronPort-SDR: fbcrEDfyTqMqlA2f6FVT76Bedd0/uYl8Z5uRV+rY2iiBu1k7LzRdQ6evmJC02j1/wC8+v8v8LR
 ILAD4OdHBZUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="185955115"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400";
   d="scan'208";a="185955115"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 07:13:00 -0800
IronPort-SDR: KB88wrEPck2WUE5u0vbltJ84DFJsWQO8GwwtXX38608asNXwzOirunLdjbSAhUbS/ocI0Lda5/
 7ZM+09pm/k6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400";
   d="scan'208";a="443099516"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga001.jf.intel.com with ESMTP; 26 Feb 2021 07:13:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 07:13:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 07:12:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 26 Feb 2021 07:12:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 26 Feb 2021 07:12:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NrB95fF9F7ucKOn+ZZdwJncZyOmroUygQWODAUBSNYzONDjr2u7WSceJ4kFmpWthum3kj26Jg1luvVubEj47VyZdbQpOfoO0ditUIhySJs+PhczqmRfpj2uvHo0wGaawHR6GtlG3NP7HSVpUGuXLNiB17c2dQ5R5n/u2gWqcm+O4ZIHPo5VM+MS3a6mXliOXK70FHxmtwTBJdc2Mz9/hJ08ScnpeWQYAGi4QVJraXcCP5u/HWRUlfEISy/wTecRZX0V84hl22o4vPzp3VmiuSC+20TN7un9xihiJyMkfyagl1a4wQI0tHMOCLLE/tWfdPpUOb4bWOJ7VdaF5u8k14A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zC6IvwfWwPDzYphErKNpfF0zqS37GOXmSRtnbkAMBY=;
 b=dZZfYohrW1qYh5ldco+DhvJwTaNcY6d2LtCPTn12xnytPWzkuuWecyMgke2MHLpPZWnrlNYu/RKxlpuQ2OFFR4NszyJhMHi+5H0RpW+NsN5ubUgDl3ZDCIIq2dMTm0hibYOL5v7HMtpnh/tBZTjWnK19QCSGaOKd2n3yORWDVCZ0aBgcbkvjOffDA1tZnQ6UAouVoaKhCSUHkkHXJgdwRZe5z4UfZazcGLZDUv8eJ1AqfF2NKfx/vbBvL1EkdRuVGDs3dolyhrEQ9PoMcy7A9OcYiKKypBq/Us7e45oJWOEnQuDMQoNCeTznQ4AWqvp52U6HHuuicgWsUuTK0ZTiFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zC6IvwfWwPDzYphErKNpfF0zqS37GOXmSRtnbkAMBY=;
 b=Br88wDVCM04uSMoPAdDO4+CsNG3FtpeQivXFclZSTj2bahHUuBWP12MhPcmPsHnmi7/Ku07tjYoCz0hILuDU2hluepMUDbTaT/NJ6Fo2uGzPxSgP90JQetJb/vD+Nf9eQ7XwxiLApIIRkrQFDnCmY57gnNuCoJq7f+cxgYJCe6M=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB4816.namprd11.prod.outlook.com (2603:10b6:a03:2ad::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.30; Fri, 26 Feb
 2021 15:12:57 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac1e:2d22:3f90:4dc]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac1e:2d22:3f90:4dc%7]) with mapi id 15.20.3890.023; Fri, 26 Feb 2021
 15:12:57 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Zenghui Yu <yuzenghui@huawei.com>, "devel@acpica.org" <devel@acpica.org>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>
Thread-Topic: [PATCH] [ACPICA] IORT: Fix HTTU Override mask for the SMMUv3
 subtable
Thread-Index: AQHXC2kwib+gFmscGEib3bZcV79rGKppV0XAgABX4QCAAN1xsA==
Date: Fri, 26 Feb 2021 15:12:57 +0000
Message-ID: <BYAPR11MB32566AB506BAD2C77356FE07879D9@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20210225112620.1827-1-yuzenghui@huawei.com>
 <BYAPR11MB3256E28FD567C5FEB0EDCA94879E9@BYAPR11MB3256.namprd11.prod.outlook.com>
 <3b009c89-c3cc-8fd2-4ef6-5b8d27a88119@huawei.com>
In-Reply-To: <3b009c89-c3cc-8fd2-4ef6-5b8d27a88119@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c200068-b21f-46f3-a1c3-08d8da68ffd7
x-ms-traffictypediagnostic: SJ0PR11MB4816:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB4816F7F4CEAD7A8FC3329E68879D9@SJ0PR11MB4816.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d7Rf7u7bvjprLLMfB7QRqj30QiejVsaApXoKVTjQLj3MJej2L7vcfMX4+C7yU9XvHTq5KQl6Pj3+S7KXknzy5JR4Iwv5wbURfHYDs/cJPRzyjQfcLgb5J9FWeP1swVkVXk46FdBJS2w3cuGoLPa/sMiiJrQGhtglYistc1C07q4lGVulWohTmBt2HDQgqRXRuH9rNgXasqnjGGDlvtUFSRmmFenr5690DyT/M7vWZh2Nf3rrfO3dPfbDYx97vLIpkfyhS+Ej6YgTzhY0CEjFo3W/Aa9/pzr9mFSq3JqSkqRaBnuPYnlg6VPASg5uRTnhJoFzn8G8+L4bB0cS/Pu+QqQZD5ruBWL5Q5KgHS6bI/gPN4IfhHCgC8DKbVR2kLcQsUGsqP3vh3NDSoqJUjKLXopuNrtd5gprO7ix4QA/8DoisNawSnmwPVwvGXZxdwfb7wT1OgGVXP4fySl7sX8WTbFHegCTs3y4c2Cy1Ql1H/Sn9qoTVXNJZWK/9H8UVPRo8/NrUOQdQqQsE11ipVBPmA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(366004)(376002)(346002)(39860400002)(396003)(478600001)(5660300002)(316002)(26005)(186003)(9686003)(86362001)(66556008)(71200400001)(33656002)(66446008)(52536014)(55016002)(4326008)(53546011)(83380400001)(2906002)(8676002)(7696005)(110136005)(6506007)(54906003)(76116006)(64756008)(66946007)(66476007)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?WXZKSGpMcGVOK2VvYld4Q0toRHBHSGpzMmdlNUNZYlVHVnltb0xiRFBkazUx?=
 =?utf-8?B?cTVwUDlGQXZsVE1hSXVoSjRISnFHdU52UVR5MzQ5N1JYdVBqRmFjS1J2NXYr?=
 =?utf-8?B?R1lsNzk1WS9mOTlsbGhuTXdZR1Q1bEZqRFZlaHBRdjNWOFVHWEpxSEdpMUlB?=
 =?utf-8?B?bmNmWFBOV0RaSVoxamsvdSs1T1RteGluTGRNTURJbm9ybXAva01PLzdhS1B1?=
 =?utf-8?B?YkJBYUx3SUhObkc0TlFvcEJtb1JiZ3J4ZHkrb2NOM2xjQ2dyMGdpOHpSVXor?=
 =?utf-8?B?Vkc0OUlTZTB1S3dpZ2k0SGxQQU5pc0tqakVXWmtsVXJNd2tOeG9xMnlNMVhR?=
 =?utf-8?B?RVpkM0FrM0pUTFlmRFhWUjBKb0tBNmxXQmRTUktpa3pubXIyMGZ3ckEyWnZQ?=
 =?utf-8?B?eFFROWZ1ZnlpZmV0Rzd6aHRQUGp6TlNiUHBHR1lNU0Z5aGNkM1BpR0FIa3RW?=
 =?utf-8?B?QnF1cXJuNmdHMGxJT1pSTkdDQ0JHOS9mRndTSzZGeVV4a3RrU0Jtc1pDc2oy?=
 =?utf-8?B?UEMrVUlBVjZqTENBOUYxNUJKaitWYW9KRWpVQ1BiRnZVTTd6c2h0V3RUTFlp?=
 =?utf-8?B?VFNzQStRcVJpa3NMRDdHOG90aTkwclQ1OHJuaWJUTEpCSkZWbkhZWHptWEpu?=
 =?utf-8?B?SlZNbXpwdEl6VHE0a3FPTnJjMnN0UEI5ODdXNGJ1bnRyWThGUU9JYy9weE9v?=
 =?utf-8?B?UmJjMmxHQ0d1MEt0Wi9Tbk1VNWI1V1ZmdloxSUg1Q29qTzNkMEt3VzI4QktK?=
 =?utf-8?B?R1FSVkhZeXpHaTNEU3FJT3ZVdWdWL09uMTFlVjduZVVmeDhTWURQdE9kMVIw?=
 =?utf-8?B?TjZDdGkrYlhxcjQzQ2dweFRoN3NYWFZUWW9FUGJJK0cyU3B2SWwyUVoySzdo?=
 =?utf-8?B?b0ZwVmJqQkRXck5uOE1RU0RlV2pMdUtsNU1oTEpWbXYvR28zRTlKMGFwL1pS?=
 =?utf-8?B?ZGtLbENra240SUQreG1DemdRR0ZVWHlnRFZ5YWN5WDVyekdTNW5ZejBva1Uv?=
 =?utf-8?B?NWVDZFZOWkFhc0Q3NFZQMGZPdU1ucWVDWEVlZ0piY24wclRzTXVlRGdGMTV0?=
 =?utf-8?B?bk9RY2lwdnNoZlFpZkpMUHc0YlFrVFJFVmVtRmd5eXVSUCswMU5VTC94MEgz?=
 =?utf-8?B?ditCQlEzUVJKNHpRbWRTcUVWN3N0SVhFMzFUL2g2MlNVWDJtL1pMMlZuMzZp?=
 =?utf-8?B?OXE1bmIzcUV6YWttUmdPRXVlUUN5VGwzejVSeVBvcnRMbXVZS2hLVWNWQ3Ux?=
 =?utf-8?B?M0xZM2pNbCswaGNaMklqRFpCZjRSVktiMGliZWpXUnhza3gwQkVsR2x6M3RT?=
 =?utf-8?B?YVY1ZUEvYklhSFlMTE9MUXBnUTVjTUxVNGlXNVV4QjhwRXg4UFVpYThFSENm?=
 =?utf-8?B?Z0Ryd1B0UUovRVRmT21jQW5WZmpmdThDN05tMFVLVEFLck9ucDBFMTlNSkhS?=
 =?utf-8?B?RU92Vm9UZHU4NTVxaTVHY0RzYjhZbWphdjdUWUM1VjI4L2NYMVdzTDkzdmhX?=
 =?utf-8?B?Z2NpMEsxNG5lK2pxZ3prSHJhRHZVWHJuVnhtTFAzakxNUURrbWs2YXkwOVNP?=
 =?utf-8?B?UHB1WWE4RmxjVjYyeW1KR3lOYmdHQmhPYlJQS1R0UFZFTmFvdnI5WVMyVm9p?=
 =?utf-8?B?eFdiRHNnYmhsYUpBR2k4MUlWYzRLa1MrVXB6enNQMlc4YlcydXBVNDJaM0hn?=
 =?utf-8?B?eW9VYWVjVXljK0R6OTQwME8wV296ZUxMcE5qc3kzOEJsUzJsaE9PVTFNU1Jy?=
 =?utf-8?Q?lOo3pdFdoqLeW78jzvPWkOdG8zgCT4siL2SZPwU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c200068-b21f-46f3-a1c3-08d8da68ffd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2021 15:12:57.5951
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6qOrQI/P74F2q33i4Xw7HnksPUmiL3tp9bs9g7noRE2zlgfLOyYp6kWJjOEZawxYwxbp1l7MCQG9asttCMFXkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4816
X-OriginatorOrg: intel.com
Message-ID-Hash: 7QNJDLJECPMVPINCELCYBCBUU5HLC724
X-Message-ID-Hash: 7QNJDLJECPMVPINCELCYBCBUU5HLC724
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "wanghaibin.wang@huawei.com" <wanghaibin.wang@huawei.com>, Kunkun Jiang <jiangkunkun@huawei.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] [ACPICA] IORT: Fix HTTU Override mask for the SMMUv3 subtable
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7QNJDLJECPMVPINCELCYBCBUU5HLC724/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes, you are correct. ACPI_DMT_FLAGS1 Will pick up two bits at bit [2:1]
Sorry for the noise,
Bob


-----Original Message-----
From: Zenghui Yu <yuzenghui@huawei.com> 
Sent: Thursday, February 25, 2021 5:59 PM
To: Moore, Robert <robert.moore@intel.com>; devel@acpica.org; linux-acpi@vger.kernel.org
Cc: Kaneda, Erik <erik.kaneda@intel.com>; robin.murphy@arm.com; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; guohanjun@huawei.com; wanghaibin.wang@huawei.com; Kunkun Jiang <jiangkunkun@huawei.com>
Subject: Re: [PATCH] [ACPICA] IORT: Fix HTTU Override mask for the SMMUv3 subtable

On 2021/2/26 4:45, Moore, Robert wrote:
> If the field is two bits, I think the ACPI_DMT_* symbol should be ACPI_DMT_FLAGS2, not ACPI_DMT_FLAGS1

The SMMUv3 flags is decoded as:

- bit[0]	"COHACC Override"
- bit[2:1]	"HTTU Override"
- bit[3]	"Proximity Domain Valid"
- bit[31:4]	"Reserved"

whilst ACPI_DMT_FLAGS2 will extract bit[3:2] for us, right?

> -----Original Message-----
> From: Zenghui Yu <yuzenghui@huawei.com>
> Sent: Thursday, February 25, 2021 3:26 AM
> To: devel@acpica.org; linux-acpi@vger.kernel.org
> Cc: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; robin.murphy@arm.com; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; guohanjun@huawei.com; wanghaibin.wang@huawei.com; Zenghui Yu <yuzenghui@huawei.com>; Kunkun Jiang <jiangkunkun@huawei.com>
> Subject: [PATCH] [ACPICA] IORT: Fix HTTU Override mask for the SMMUv3 subtable
> 
> As per the IORT spec, this field overrides the value in SMMU_IRD0.HTTU which should always have been 2 bits.
> 
> Fixes: 9f7c3e148f44 ("IORT: Add in support for the SMMUv3 subtable")
> Reported-by: Kunkun Jiang <jiangkunkun@huawei.com>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>   source/common/dmtbinfo2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/source/common/dmtbinfo2.c b/source/common/dmtbinfo2.c index 17a80ba21..321f106fa 100644
> --- a/source/common/dmtbinfo2.c
> +++ b/source/common/dmtbinfo2.c
> @@ -343,7 +343,7 @@ ACPI_DMTABLE_INFO           AcpiDmTableInfoIort4[] =
>       {ACPI_DMT_UINT64,   ACPI_IORT4_OFFSET (BaseAddress),            "Base Address", 0},
>       {ACPI_DMT_UINT32,   ACPI_IORT4_OFFSET (Flags),                  "Flags (decoded below)", 0},
>       {ACPI_DMT_FLAG0,    ACPI_IORT4_FLAG_OFFSET (Flags, 0),          "COHACC Override", 0},
> -    {ACPI_DMT_FLAG1,    ACPI_IORT4_FLAG_OFFSET (Flags, 0),          "HTTU Override", 0},
> +    {ACPI_DMT_FLAGS1,   ACPI_IORT4_FLAG_OFFSET (Flags, 0),          "HTTU Override", 0},
>       {ACPI_DMT_FLAG3,    ACPI_IORT4_FLAG_OFFSET (Flags, 0),          "Proximity Domain Valid", 0},
>       {ACPI_DMT_UINT32,   ACPI_IORT4_OFFSET (Reserved),               "Reserved", 0},
>       {ACPI_DMT_UINT64,   ACPI_IORT4_OFFSET (VatosAddress),           "VATOS Address", 0},
> --
> 2.19.1
> 
> .
> 
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
