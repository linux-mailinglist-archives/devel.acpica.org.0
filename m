Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 205364846EB
	for <lists+devel-acpica@lfdr.de>; Tue,  4 Jan 2022 18:22:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 84ED9100EB339;
	Tue,  4 Jan 2022 09:22:53 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 48254100EB338
	for <devel@acpica.org>; Tue,  4 Jan 2022 09:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641316970; x=1672852970;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=uj3AiVlnHXUZUG0EPBa0lVuwzJtLq9M9MViIZ9BbD4o=;
  b=Y/SEvmhDMVFNLtdCbf7+U30hvXvnkh+JFaUEcIR/JHwuSetTB1MN13EP
   wQ1LfkKuY++1o8IDx+0+x1m1jOdRuabVr4T1ILkmZyGtLfg9ArYdi2oSo
   lmclK6gKuvKCGQW0ZQYN4BIdkvyT/exDWdFe/fsqkKygeSygG2Hd3E6LB
   Ic53wNzHoObbC/gpNTtp+ixrldcZI9aW8jI6K0ModPIgS5Ysll67AEemE
   vz5uAYp1md8ms4DqhVMg5gytvqNhJiimd3BBFfhg/KREPuXN6ziV/waRm
   ZPHDT1kuHV3FfJnnt6PloixNB87P1kT8z5pwgVt7f3gHwQimoPcNJjeYc
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="241081997"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600";
   d="scan'208";a="241081997"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2022 09:22:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600";
   d="scan'208";a="611157410"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by FMSMGA003.fm.intel.com with ESMTP; 04 Jan 2022 09:22:45 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 09:22:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 09:22:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 09:22:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MioxOZcLPPkzcD1/7XGm205hnmkcHsCdx9M/6Yu4P3Y0L6R9e4LWmQv/5h0gaQUlj/hY9ue5XzdtwZmRDs9hESGCE3HldK1lv07H0t+Gs8V/4Pp+ZM2vaDqHHWU1E1H+0sgl+X7kSmRxG5N8gIdohFjkbbC46EhfgS/MLyfszQhoyzAUHX2llW+6DNsY6ozXKT2X0SB3eDOHJdAnh4t+Z+ynUXGcDRN+LkvIcmY04OKpbTH8yiPZTS53FMTGGLWwCILyzFb+QgsLGCr/jyFSRdlVJ/t7ZFod+hYVLhG0SuCoPHbhgwYYDZpAy0QYjOh69kdFaz9Ki6yXf9yo06pjrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uj3AiVlnHXUZUG0EPBa0lVuwzJtLq9M9MViIZ9BbD4o=;
 b=UBU8TFBc2YGIxwbyKGeI+2Hv98Xmr/rzTIkjMhi9hWh4reqp6I/SG+m4V6aa2ImDPs6tfVG8Bj/ct10Tn5x3ggasm1cut4ymB/e2m0KNAUeYugpcocjjvMU5JZRU1ernWVISagxw8SD69DmV8HBUa7RjBJHegtIsOrupnpFrZSmNJQSZm3UZ+KIKN2ZN4VZBO3rhz6b0OjpxT/0XdnX0bd2naAoMGjaVsBfkQOa0t7qZGDwSxoGRE/grb6ZZ8lwAWz1nDPq+G4MemaUm6GhkPHqBROUES1qOvlydmacODt6mbOs/JknRcUtUPjqHwWmZm0QG+dDFAefff2n9IRRgfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3259.namprd11.prod.outlook.com (2603:10b6:5:5d::20) by
 DM5PR1101MB2217.namprd11.prod.outlook.com (2603:10b6:4:52::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4844.15; Tue, 4 Jan 2022 17:22:38 +0000
Received: from DM6PR11MB3259.namprd11.prod.outlook.com
 ([fe80::4d08:ee7f:a128:6123]) by DM6PR11MB3259.namprd11.prod.outlook.com
 ([fe80::4d08:ee7f:a128:6123%2]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 17:22:38 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Thread-Topic: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING
 8d681a5245f0a5cfb20326b4f6578af1adb8676b
Thread-Index: AQHX/H2m2F4SRWODu0u8RazBbhdytaxRfDHQgAAOdwCAAZuYwA==
Date: Tue, 4 Jan 2022 17:22:38 +0000
Message-ID: <DM6PR11MB325976F1727198D80686D123874A9@DM6PR11MB3259.namprd11.prod.outlook.com>
References: <61cc007a.mWwpG8hntz2tC9i6%lkp@intel.com>
 <BYAPR11MB32566B65A82D815C214720E487499@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAJZ5v0gx70huuZ7tj_iMZR3ViFfzX9F2Zt4BxqcHk_9OdioP1Q@mail.gmail.com>
In-Reply-To: <CAJZ5v0gx70huuZ7tj_iMZR3ViFfzX9F2Zt4BxqcHk_9OdioP1Q@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 077f4875-18a9-4478-198e-08d9cfa6ce7c
x-ms-traffictypediagnostic: DM5PR1101MB2217:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR1101MB2217BC5080813E89D1ABAE25874A9@DM5PR1101MB2217.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8nkpC1qlzXysL790nPaZKCiFYtH8ckARIHH/dK5E1daieDigGDKTU1CGH4rQR/3B7+fWPPQnlNEI1XHR945S9hTufBehzZvmbu2pERl/fFrhuiaxGjX3/g6E2nn5heyl0eMohSpxF6WPbRT3MoPRDxB/NuFqngw1HYNEIeV+RSci5k/xQpDX523SGlta+GX7K7JWyr03OyKwMg8buAHGZAj2CXG5rWbXHSBFomAZUENpb3e6qI1H7jGXc2Zr5qHPMKvCCEdSYmTRvJ1/dunq+Hr300p5xQW0cdzZ02CuCgKmr+48aMBZkv4uRp7Buir5uTUvuBmg7xLJwRXYlsOWq6lr4y6KCnSOTitrx7GOF/cnPf/+y3W/A10sNHnNYmDDuC0BAd/2rVFhOyPs7ZHwS2lPM8FcfelRMm0Ai9fO4koXA+SiEnryiPD+jmijeSxxLEPHR96QZkNO32Jrzx7GRJrnyT9aagIBi3vBPKGLmasagnbYn1kftNLFWoUTFxWm3dEkAWa/m7rTH6ywLu6nKjjSByWGwSN8Gokdo/e3+fKghRFefDyyQAuAnbROQ5WOT8fiRFoX1/fPhvKDzF3ZiFYXzDMvr+pgjUUJRh68tD2nezy2JdyoKleCUkNbzY/AxGC9hAkZBtacLpukCYmUiMtzkPDSvmRsgcij2vzNRj7Nb5gyZuqnuYOLXJHXdY8u+LhgWp7yBWLqvFJitpj/rQW+e5op9g7qH0yp4wgKPh0cxIkch5M0vFPW+EiquF2zncbX1NKUSDRlj3JORWh4a27b4QIX5QG3RzVIgdjr/Pjq63KYeudnDJXz4ntcZb1sAe0WOkcjM+oDMixAotZCzA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3259.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(86362001)(66476007)(76116006)(5660300002)(64756008)(52536014)(2906002)(26005)(53546011)(6916009)(6506007)(54906003)(66556008)(8676002)(8936002)(66446008)(7696005)(966005)(33656002)(38070700005)(82960400001)(66946007)(9686003)(55016003)(316002)(508600001)(83380400001)(4326008)(71200400001)(186003)(38100700002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UGp0K0hjVnRiRVlOQzBtbDlONG5Ud29hZmcycDZTU1FDdnJJWVBEWkU3enpZ?=
 =?utf-8?B?THZVR0R2SmVPbUlKbFhwT21TNEFPaVI1YXNEUFYrRHpqMTJCbEZWT2xmK0N6?=
 =?utf-8?B?MnArbWx6cXAraXV2Z0JxTVZyZWhVZW1XVENiUHZubHQ1RmUrRHNlRjVMWU5a?=
 =?utf-8?B?TWpiQmk3Uko5emMvYW9kNUJKbG5iWE1TU0Q2alN6eDJISkJhZDY1OGZIZjZt?=
 =?utf-8?B?cytodDFTdlpxSTA4RTJkVHN5dFVNTURSODZvYkNGS1pPZzRoNWZQWWFXS1gr?=
 =?utf-8?B?MEtnOW9ycnMxNG1oY2ZIMXU2RmFpcjB6dHJ5a2VQZ043SVE0Z1ZzbWtBbThs?=
 =?utf-8?B?d0FYbG5QazJ6NzZNV21UenI2ZWV0U1BYdnd4S0RrSjFscmFrVzRraHZSTzhS?=
 =?utf-8?B?NHk5S2pRNjdHK0tFc1duUWszc2dYZlN3OEtWQU13c2g1WjNib1dmeTJEVGFC?=
 =?utf-8?B?SUlLcTc5REh3WElDRm40TGI2azdsZm45blRrK0FmQlF0TldsSzNXWkRWcFVI?=
 =?utf-8?B?RlB2a0lnV3BRc1EvQllmSlBDTm9TcFhkK0R1V3VRVUNlbmUzbnA3aGtWaHUz?=
 =?utf-8?B?T0sxY1JaVTd6UTlDRnRuK0tZZ0wxRFJ6VkdudVBZRGtlOWdTZENiSmhidDk1?=
 =?utf-8?B?MVlEbk15QzJXbWZpcGY4TUpuWEd1eXhUUGoxQUV2L0YzQks4MFFQUFY5SHhX?=
 =?utf-8?B?bkdZNUlVcjJwc1FaWVFZdTVpcmVYeDhzNVdzVC90azVVUkxObWVaWmd4YTZ2?=
 =?utf-8?B?Rjl4U0RLdnVZMDE1VVdzUE1wSnppSE9rVEZqRnZjclBxWUJ3bjBFYjI4b0ps?=
 =?utf-8?B?TFpJSlBwSWVLUFBFaGp0VmV2Z0Z1RkhFemtwRGhnVVFBSElxRVNDWGwzTE5Q?=
 =?utf-8?B?aDFaNW1OTUtjd2ZUa1JWN2J3Q0RLOTFReWVXOUQzN2hWa1diWU9KMzFPaGJo?=
 =?utf-8?B?blVxdnRWeWJWdHRKQUtON2pBc0pYOTg0Um5QenhrYnlpbHpZTGUvU0VKY29x?=
 =?utf-8?B?U3lvVFpJWTA1bTNhcnVJZmtUT0ZJM05IaGVqWFh0K29yUHZBWnhNSW9PZ2xq?=
 =?utf-8?B?ZCtaV1p6VjlYYTd4bVozRVZYWUZZU1ZZdFIyL21wTGxPTzgzRnpwa3BWNUpa?=
 =?utf-8?B?VGNZN3BqMjcvZXZVY0hWL2ZMeDJVL1lKcGhCU2s5TUo0YUkwcU4vVlJFTDda?=
 =?utf-8?B?Q210VW5hdGlBV3l3VExaZE1KN04zS1d3dThQSFU0ak5WUkxuUlkvdm9RTkY4?=
 =?utf-8?B?Qm1TN0NnS3RZVG1MM0JockhFOXh0dm1UZHNCdUZhaUVGakFUTWc1N2hDcHhG?=
 =?utf-8?B?ZFZjc3ZjcWhWcTZ0aENTWldGSlc1STRPSmNwdXdOTFZjVGMwK0xtU0Zta3Zl?=
 =?utf-8?B?NTIzVTFlRDdqZzZaYTgwUVBUUGYycU1aYUwyZWRKVlJFdEFBYTBjZ0lhVmJC?=
 =?utf-8?B?YUtqalljd1I1VXhVRHozcmZmVFVCZXVyKzFCeGh4NzdCdEFzaXNyemg5RlBj?=
 =?utf-8?B?aFpWK0RkaW85SDVVVFJ5T25FWW1PS1hXSmJuV3NJZUpmNkdLTnBZT1QwMGdN?=
 =?utf-8?B?d0Y1bURFV3MwZ2FJUGh3V21kQXR4SjFJdEcwS0N6SEE3UUViUlRWUFdna1Nl?=
 =?utf-8?B?MEZ2ajZmZUlzTjEvTEJMdEN4Yjd0MmE0ZUdvTHljTG1SR1FrTmVQV01IVnRM?=
 =?utf-8?B?empxc1hhY2NuRUpQUXlRRXdYSTBJT1psWDMrU0cydnd0Zm9mcy82VFE2RmJQ?=
 =?utf-8?B?VHVPdWxGNkNXWVJXUW85SGFTNldCSDk4SCtGSmIvS0VrL2NWbDJ6T1FGOXgv?=
 =?utf-8?B?a05HR0NHd3RwekZwL0JCdTAwMllUTFV3enAvbm5Sa2Y5UVFVa2d5eEdZc09o?=
 =?utf-8?B?aEF1VWI0QXkxcXRIWkFzaHBxdHpLeGFSek5hSElKYXJValRSVlZ5VzR2VVFV?=
 =?utf-8?B?V3BBYnpvTjFaRktzY1hib2Q3NEIvOWt6dDFoblNpWi9QYnJtT2psaVdDRjRo?=
 =?utf-8?B?emN0ZEZqSGZiM0NLYTE1MXJiQkhNWmhzMyt4dHh6WFI2dUJiWlZMaTNQUjd6?=
 =?utf-8?B?Mk5BQ1krMWJBK01vTDdneG8vU1dSQkxvcVV3Uk5LbXcxTWErSmtISWJScGJH?=
 =?utf-8?B?VzBxM0FlSm44NkxtTG1JakdKaE1lejVGTnFhWEZzNUFDWWh2bmh1dXFOQnhk?=
 =?utf-8?Q?09Uom7FxsRe+Qz+lOCdWG3c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3259.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 077f4875-18a9-4478-198e-08d9cfa6ce7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 17:22:38.4146
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u/bQoxAefVTOBKsDd3DHOuVuIgNeL7lxRFPVOprMn889P/fYgyisLoT0lAZSVZ/um3c5ezflDtuiGXx6aX0PuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2217
X-OriginatorOrg: intel.com
Message-ID-Hash: 7AFXENT6OUOTSSHGFDIZVW3S6LMOLNTU
X-Message-ID-Hash: 7AFXENT6OUOTSSHGFDIZVW3S6LMOLNTU
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: lkp <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, Arnd Bergmann <arnd@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7AFXENT6OUOTSSHGFDIZVW3S6LMOLNTU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

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
