Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0202C4A7927
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C8225100E5D2B;
	Wed,  2 Feb 2022 11:59:23 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 92799100EB85C
	for <devel@acpica.org>; Sat, 27 Nov 2021 03:36:14 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6200,9189,10180"; a="222625962"
X-IronPort-AV: E=Sophos;i="5.87,269,1631602800";
   d="scan'208";a="222625962"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Nov 2021 03:36:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,269,1631602800";
   d="scan'208";a="572541212"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP; 27 Nov 2021 03:36:13 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 27 Nov 2021 03:36:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sat, 27 Nov 2021 03:36:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sat, 27 Nov 2021 03:36:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G0zlqPm/TULHV+/hafQe8Mnki3zQSZ82okien7KkZyc3vCAiXLiKGVPKyA786n9diTGH3reBEkeLwGCkq7+9QUbi/edKAgveT+X103NDh2uEUSyQXCsypAATVJBKCIYVTTzSUHA+jbeOkgDthTR1YLCM5MTC9Bu6S/FwxaKOND+n8zMidN4JJ2qghZsbESYokQbEnxmlAXwXkjnmLYxoOmSFZWLUqgmDD1/PMyYomAxx8HVvzcY/7fom9sOsuzJrcCFh/NQL8rq8Dx5u3z0v+dX7LO4EosrA16H2c8iQof76mg/YFCRbKS/NHp8Y2z6LtB+vlVBeddYB0hJVcAZ9WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZSHi99E8scR/gC/eDXb2hbk9HpAaBbvs+K+jeagHi0=;
 b=VO043LCvYNRgKVZ42FZQZjN+r7xb+wyNT/7zdKUEbzdnm7F9UPix2hz5OvXVI5Rgb+X6W0QQ2daBZ9CAlcZnCgBpEG0hDNkiG3CugqxDiz5YKoQkJKbxBLjUvSbVieZmNm6CFBpnFH4NPa2/gEdxK7uQ1dB5ZplaAuXKhkY4nk11LlB6GKpkyMWdmUR6C4y5bXZZlHLABrGzcR+JFM0QWrVPfSHlxNWhGIzr9LSrM3atmkoF/L+M5k4raCxEdYqori5Y+sXYVOdPJWvqoSVMCRvCK94gJ3T95tf2R/RdpKaZZWI/Ot079a5E+RXTj01bCAkxl9ckAaUoAXWaYOOg/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZSHi99E8scR/gC/eDXb2hbk9HpAaBbvs+K+jeagHi0=;
 b=KAHujLIOsJgQikaWVjAzodBgRyF8RHNgp/0Ov+R4fOzIsKPQPRMSV62yFUL4xEacbgwVMDF0/RSvgfO0WWHTaF0R5qRdKO/MXtKvYDvNJ6CExJqoHPmyqL90FddmhXN7qOxKmGElOKpA5PMtWgp+imxmcebnGXry/hgPMagSFZU=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB4784.namprd11.prod.outlook.com (2603:10b6:a03:2da::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Sat, 27 Nov
 2021 11:36:11 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::61d4:ab77:cc62:fabf]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::61d4:ab77:cc62:fabf%6]) with mapi id 15.20.4690.027; Sat, 27 Nov 2021
 11:36:11 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Guo Zhengkui <guozhengkui@vivo.com>, "Rafael J. Wysocki"
	<rafael@kernel.org>
Thread-Topic: [PATCH] ACPICA: fix swap.cocci warning
Thread-Index: AQHX1XBydH3TKz8UmkyKZ8Yotmxz3qwKc18KgAzmwqA=
Date: Sat, 27 Nov 2021 11:36:11 +0000
Message-ID: <BYAPR11MB325677C8CDA89C5B5C5267A487649@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20211109134728.1710-1-guozhengkui@vivo.com>
 <AIwACwDlE6oYbcAnsFaroKpJ.9.1637246783998.Hmail.guozhengkui@vivo.com.@PENBSlo1djBpeHR2ek5pQXd3THRYWGdHLThGZHZ0V1l5N1JVaDBwRno2NXNqY215dU5kUUBtYWlsLmdtYWlsLmNvbT4=>
 <db9c50a4-dab7-4aba-1ebb-e38fda08cfe1@vivo.com>
In-Reply-To: <db9c50a4-dab7-4aba-1ebb-e38fda08cfe1@vivo.com>
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
x-ms-office365-filtering-correlation-id: 97c69310-9b06-4899-c5d3-08d9b19a1ce6
x-ms-traffictypediagnostic: SJ0PR11MB4784:
x-microsoft-antispam-prvs: <SJ0PR11MB4784FDDCF8A6D6EA8514C70387649@SJ0PR11MB4784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 59/Arwa2gafN+r8Ssr2e/QBxV3Wy0+iCluJnmGvEPLPjFbpk0iVnDsiPQxhU/b937di/068EE9EtRPl0qG3Jo5Tect5iPOICy2W2W4ZKgp0XJV/TH4URJ/brvJ/K5XPsJ4FIJGaUASgFeJDu0nIT68Xp0HkeSgyn2KzlR2HRsP5oondWPxIrP++fCiGtPSz3yv7YTKLl1hHaUiZkqAodPvSL34u2EGsu2nHvjSW5bkTgZ/h4LktHttEU48PXdkm46NkOrS1zsHX6ARFgcHxhTNhaFIz5v4FN57sMekQ3lWk+sOT/ZpRLG4Vz0JP4k9prYhmyA4rF3dlYCpFIHrqHnabtyNHSNA79uzJvs79BuLo808Ul2O81vCirWVJkKh2yOMkZnrIkC4VgV6tSd3YEpODDDghXuF+EgMqUaMadVVCRIBY/+jki1q1BVwrPMVOAokW3Zyoij3kaWap5ZQrFoVwyw7Ykrxp4yugaKlTNLK4vQMlaN+pE8YVVcyRhDeMRqNeRbjvhF20JwW4jVQjqPCkkJFQTQC9g6BTJA3bR+eg+S29FU0NakdVujdMkEy2iUyiW3xvYy2HvjA0Dfq1J4WKfQQCIOaSzWXAKMFTbjLfoarTzP/3mG2I7uK+nmAqB+DmndNF8MUlcldY5m1YAIfdO7wJOWiU6HiBBS+B2D2mmEXHy1ZBwZ3JN1f5CEGMxSDZm+QOAB4kVgtfoBCpOtp+iFuPvuHSVy/AvrDBcmUf5RxFcErib2SBc9OBfF9DmkYGAnKlUzlrLampASpZoohYVm6/ktoKGj+xp+qccQgo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(508600001)(54906003)(110136005)(86362001)(5660300002)(8936002)(38100700002)(2906002)(52536014)(83380400001)(26005)(53546011)(71200400001)(8676002)(4326008)(9686003)(316002)(7696005)(33656002)(38070700005)(66476007)(76116006)(64756008)(66946007)(66556008)(66446008)(82960400001)(186003)(6506007)(966005)(55016003)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlNCOXZUeXozcTZPeW5vSndwSWpKLzBlZlVhMTdWVm9WZlg2Y20wV2l0eDdi?=
 =?utf-8?B?Y2ZYblhTMjF5Wm5CWVdERHNwV2srZmp0ekpCL2pSRk4zNmJodFk0eWJKTllP?=
 =?utf-8?B?UEdtR2gyOTh6aWZCMlA5MnRtOUFtVW4xandlQTZXdFFzOHlXcWY1TUdBQ0RG?=
 =?utf-8?B?V2tySE9qUUQvZUdnNHJOY0VuSmp3ajBOMFN0NEVBUUg3K1pVaURQZFowSldE?=
 =?utf-8?B?STUrRUVGemJ2eHRxRjd3dWwySldMVHZ3TEhhbk0vR3VOMmI4Vzg1OGY2bHlF?=
 =?utf-8?B?L2VoZzFkZzJ3ZEtJSGlNRkpNaE9LQnVNdTNDNEUxeno0aGVoT3hhM3duT1di?=
 =?utf-8?B?M2NYekp2NTladVFuTDJtWVB1WCtBUlZOMDkwanl6NndzSGdTRXV0N0UzSVd5?=
 =?utf-8?B?RzJyUGFxK0s4Tml3RXBjV01nRGRUQ051VG9NdWI0Y0VvVVBYMDB3L284MEhn?=
 =?utf-8?B?cmdVbVlYbE1YYU1FbEFrL2MyT0VvMGNMcXdEcCtVRGkvWUQ5VzB2UEswaE4r?=
 =?utf-8?B?T2hKMGhxTFhJU2IrMlRnUVJ2bGJpbjlUS29OMG5uQWNEWFhoaVZkTmFtc2Y4?=
 =?utf-8?B?SHBlREU5YTNTbmFBL3ZjZW1Bdk9NNWZyZ2ZaaU40T05RbXdIc2I4YVdBbWNm?=
 =?utf-8?B?ZUxwYys2S2NCMEhrTjZKRGJYbkZYRGlsWDNHb0FnejdvUldNNkhEeU1yL3oy?=
 =?utf-8?B?UGJlOXF3ekl6OFRIcFdqbTVNZS95dVpuNnlQVDdtclYxTmluWW9DdWNrb3ZT?=
 =?utf-8?B?QnJpVUZBczRHWUVBS1cwN3ZXYnMzN2FvQXBBSVpQQkVNVnRvaEVhTFlWTnR1?=
 =?utf-8?B?QUpzMHJ3UU5XUjJ1TFpqb3puTTNkckxCdWJDcmxMYTNUdVhGWFE0Y2M2dEdi?=
 =?utf-8?B?cm5VdG1zeXYrSUhBSmVRdkw4aXZwVEpzSnMzUnpUc0JpMkZUSUg2b1VmYW56?=
 =?utf-8?B?ZGNBS1FjNmkvN1FIR3R6UDVWN2dFNmhvNFRDNG1wdU4rd0J2VGx5ZDJrWEYy?=
 =?utf-8?B?QmdwRmtlMWxiTmNzVlMzTW1vMW0ybHRNUXp3aFlHbzJmd0JnZU4yQ1NPZHZF?=
 =?utf-8?B?WVpOVDBXOVZLdDRBQVNYcVdkYWYvaDFUcmw1NWxjb3dsWDZnVHlwOEpuNzdB?=
 =?utf-8?B?dktRZ3J2RlRJSU1XRTIwOXpIbFhoeDJVYnpoVjlpTFdwc0tWblVkc0FWTGVw?=
 =?utf-8?B?YnNnQ2tUM1poRklSQkY5RFpRVkNnUHlXR3Z6eWlDVjRYRVpLNXpLYXdYRHB1?=
 =?utf-8?B?ZEdLTnJqUzdDY1cvRmc4cWJGQVJnRTVFZEMwMTdhQlNwV1dRWnZzajlPOXBV?=
 =?utf-8?B?UC9LWUJDU0JFL2tZMW56VXN5ZzhHYUtId2oyT1FSQS8zaGpMRnNpVzV1NEFi?=
 =?utf-8?B?UnlDVisyUmV3NTVZUkhVM2xSMGxzUlM3Z1RKb0ZUc3RiV0xlVVAxVko1bDFa?=
 =?utf-8?B?MHpvUnd5SHNvc2RzY2t4a1J3VElWNU5vRGNUYjdDSGd1K3Q5SmdvdHJHaUFP?=
 =?utf-8?B?SXg4ZHJjYlIvek5rTENQR29SdngwYTlhNWY0dENTZ0c3b2E2RkZvUUd1eHlC?=
 =?utf-8?B?dFAyOVpEK3VFTXFHV3dpdGtOcUczY3dIbjZoRDVlYTlFMXhXWEVCVlI0ejJJ?=
 =?utf-8?B?N3hYcjB6ZTRVQ0pFbkhpM2NEczdJaXA2aGlNMFVGS2VXOU1tTVMyRFM4cXVK?=
 =?utf-8?B?ZWdwTklMVGRSNVBjVkZuamEwK2c1aDZwcUgwbm4xeWV4eG5yZlRVOHE5NEhJ?=
 =?utf-8?B?RWlHQTZzc0E3MHRseW1LZjAyMTlXcWIxQi9ER1Z2NS9lSk93NUk1VjI1dWE2?=
 =?utf-8?B?cUtOd21iUmFLVW94QWdDMGdtSUxDWVZCR0ttV0hsUTRlcmZIMTNjTFpTQStw?=
 =?utf-8?B?c2pQb2hNMmxOc0VpRVJXNUlOWklFbVA2UjdRcjZkL3JXTDFDLzVHWVRLaVJH?=
 =?utf-8?B?bTdDNm52ZVJ2OUQwTFRDODJJTG9ZbGNNU1Q4VWM5d0pKUWwyMno1L3JUT3E5?=
 =?utf-8?B?QmZJNHlJU1V2SkUzeUQyTk02L3hKbnNUSkUwczVmRkI2akNBcDRBME1jeTJq?=
 =?utf-8?B?ZXZrTW0rbkpLeStkelVIQXRaa2xoZnU4N0J6OWk3TFJXRnVWUkZFZVpEenk5?=
 =?utf-8?B?MkJUMFc4d0tPaGVaWDIrTkVmaDNGSDVIaUl5OHJ2bEovTVhCTUJGQTdWL0dK?=
 =?utf-8?Q?Cf4c7ZCoUqRF97orZmfFWFo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97c69310-9b06-4899-c5d3-08d9b19a1ce6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2021 11:36:11.6412
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ohaaqfof/u7uBIHBE9Mj79d70a0t1+NBk5LwcuKYaV+HyVFT6swK6OsAzk9sUO8g8OhnwshzPBSv+d/AGBvFWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4784
X-OriginatorOrg: intel.com
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: E6V5BM2OWDPYRDCMNXEBQXQLLLIDYRLO
X-Message-ID-Hash: E6V5BM2OWDPYRDCMNXEBQXQLLLIDYRLO
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:54 -0800
CC: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
	ACPICA <ACPI@ml01.01.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix swap.cocci warning
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/E6V5BM2OWDPYRDCMNXEBQXQLLLIDYRLO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Guo Zhengkui <guozhengkui@vivo.com> 
Sent: Thursday, November 18, 2021 10:31 PM
To: Rafael J. Wysocki <rafael@kernel.org>
Cc: Moore, Robert <robert.moore@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Len Brown <lenb@kernel.org>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; kernel <kernel@vivo.com>
Subject: Re: [PATCH] ACPICA: fix swap.cocci warning

On 2021/11/18 22:46, Rafael J. Wysocki wrote:
> On Tue, Nov 9, 2021 at 2:47 PM Guo Zhengkui <guozhengkui@vivo.com> wrote:
>>
>> Fix following swap.cocci warning:
>> ./drivers/acpi/acpica/nsrepair2.c:896:33-34: WARNING opportunity for 
>> swap()
>>
>> Signed-off-by: Guo Zhengkui <guozhengkui@vivo.com>
> 
> This change needs to be submitted to the upstream ACPICA project via 
> https://github.com/acpica/acpica/
> 
> Thanks!

So it means I need to submit this patch to upstream ACPICA project, not linux-next?


The answer is yes.
Bob


> 
>> ---
>>   drivers/acpi/acpica/nsrepair2.c | 6 ++----
>>   1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/acpi/acpica/nsrepair2.c 
>> b/drivers/acpi/acpica/nsrepair2.c index 14b71b41e845..02a904ca4caf 
>> 100644
>> --- a/drivers/acpi/acpica/nsrepair2.c
>> +++ b/drivers/acpi/acpica/nsrepair2.c
>> @@ -8,6 +8,7 @@
>>    *
>>    
>> *********************************************************************
>> ********/
>>
>> +#include <linux/minmax.h>
>>   #include <acpi/acpi.h>
>>   #include "accommon.h"
>>   #include "acnamesp.h"
>> @@ -875,7 +876,6 @@ acpi_ns_sort_list(union acpi_operand_object **elements,
>>   {
>>          union acpi_operand_object *obj_desc1;
>>          union acpi_operand_object *obj_desc2;
>> -       union acpi_operand_object *temp_obj;
>>          u32 i;
>>          u32 j;
>>
>> @@ -892,9 +892,7 @@ acpi_ns_sort_list(union acpi_operand_object **elements,
>>                              || ((sort_direction == ACPI_SORT_DESCENDING)
>>                                  && (obj_desc1->integer.value <
>>                                      obj_desc2->integer.value))) {
>> -                               temp_obj = elements[j - 1];
>> -                               elements[j - 1] = elements[j];
>> -                               elements[j] = temp_obj;
>> +                               swap(elements[j - 1], elements[j]);
>>                          }
>>                  }
>>          }
>> --
>> 2.20.1
>>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
