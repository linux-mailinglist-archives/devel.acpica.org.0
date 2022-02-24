Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE00E4C3116
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Feb 2022 17:16:10 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7FF8B100E5D30;
	Thu, 24 Feb 2022 08:16:08 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 711AE100EA139
	for <devel@acpica.org>; Thu, 24 Feb 2022 08:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645719366; x=1677255366;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=dTI31Rt/jnZC1kDafW65pQ02MS8HA8Uc0JQTXKfkBqk=;
  b=IHeVDK3/uFa2zdaSEoYJbbx/bpbOAW1dYW838hca1/8TKXuPl7ssS2zn
   B4QNorYKWHcSsMww7o+6RphYXJoa2MuvzYhxOL3PW9CrafeDuupEeV/PJ
   RJtJKc+O0ZfmpxmSn8TymKDqnD7Qpp9KYHdyJPmb/19pdRlUZ/QaAVL2z
   PQSVHLvV8x/iJhm3it6mpTB2o2U4AaRngXw28DvmCL4TKa/PF1oqj1yTe
   qJy1kRt5IJb9PQnauwAePXLuuNtMluZpnx3AGVcfUVVA0Ngh6zGWJRjmU
   e/P6qXFJWJtquF37V+WE9buPRGdh1x0Q1L4frswTjut6D6XNA/gfF6NjG
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="235779634"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="235779634"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2022 08:16:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="508922545"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga006.jf.intel.com with ESMTP; 24 Feb 2022 08:16:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 08:16:04 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 08:16:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 24 Feb 2022 08:16:04 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 08:16:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCKkXWWBC7Fum7JP3E5FcR+UcycFRpDKzbWS02LNbbehL7Dtq4lgdAFTXbRjy71E+nZ5UMz55n1lQ0tZweEGu6CxP85N5Tn0Z42bDHlytgV9sQrmYDpE+bCnvzPNRGLn6CH9aDHHXidoZzNGV76okznoQqZA694zScZb9oVl0a8Hg5mWsdGFn9nb2vdNfG1QSZEDxbFTiisaFyahdVq7L4dXQdc424xbG5cD0Vylzu+sVc1AED+1ULkFrSc0953mDOcOJxkcD1A7xlUf5kyg9ru3P7brEgrQsxO59aDHyAr2bLcSkgVK+Mmiojo3F1PrSycOb3mxlmozDg4hIf4ucw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTI31Rt/jnZC1kDafW65pQ02MS8HA8Uc0JQTXKfkBqk=;
 b=i4GubI2tnHOHFvITdqpn9oU6Fb6Oeml1jurgrufnB+6BEdOK2xywLgHyd/xdGfKdPJw8mFdfMsLQZbnT79wqw4nSZONeKLufB8KAv1yhF0cgnQrrNzA6bfiNZZVF+eYBAdmexLuFlVzV3F/t+KPnnAsonQcJ0QsUfkeHrc8211OMITMifDG9jkRVX87mIvWDgFFW0uGkWWoOXFiX1wpYRskM5bsDdQAgx0g1yNV9vCf6/cqYy+XF3yG1XCrQprTuQKqlU7SNkHu7mXvgA1VMFUhP7wP88dlrW1TC7hzxdLM3SDt2NrefK+MWBTJB0TkdunG97eSoeVxTegbroBO4iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BL1PR11MB5525.namprd11.prod.outlook.com (2603:10b6:208:31f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Thu, 24 Feb
 2022 16:16:02 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::910a:a800:65c2:c366]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::910a:a800:65c2:c366%5]) with mapi id 15.20.4995.027; Thu, 24 Feb 2022
 16:16:02 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "bwicaksono@nvidia.com" <bwicaksono@nvidia.com>, "devel@acpica.org"
	<devel@acpica.org>
Thread-Topic: [Devel] Contribution copyright question
Thread-Index: AQHYKC6kiQMfHMsK5UKBP/g1qZzSbayi4xdg
Date: Thu, 24 Feb 2022 16:16:02 +0000
Message-ID: <BYAPR11MB32569275AA5F6836B1B3DD0B873D9@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20220222205605.3802.2803@ml01.vlan13.01.org>
In-Reply-To: <20220222205605.3802.2803@ml01.vlan13.01.org>
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
x-ms-office365-filtering-correlation-id: 56de51eb-6f8c-4cea-6a4b-08d9f7b0f3ab
x-ms-traffictypediagnostic: BL1PR11MB5525:EE_
x-microsoft-antispam-prvs: <BL1PR11MB5525EE84E5725C6A9E70B3E3873D9@BL1PR11MB5525.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GA878s6guXfO6F24/lYQEQlGglvnvW6zE7Gr4JlMTCXCn0edvhulLpFmveoIoIxiDNibc2MFYGKheHd0j/oQf8JcenAWsJPDOwPT6w8Gg/JXdZIqJBhTrk2huXdzhCr49KbH+k9LasGnqSo3dU5/5TAYwz9d30jsr9azcF99ditKiA4S04tpao0Gx6vStaglKthGvmyS97B/2IVsBfaY0XytgMYOw0isorHTGSSvvf/6x7cC7gB8CZ9Za3ZgfLmTMuUqLOpaEl+nj6DhwAi7YM9hbdkpXQaBqWy5vj5lxQWl+jwifXG4ZiuUwaHKXrUnszQ7h4sq+jC+ZAZfZVSLLdyQoa8ifE+bDDYZcqdGugNWJkEFu5UfgbsHZBJPQBYumIZcsaLPdFrcQ9YcNMRKhlPBG2pe8neanJ42VBV+XKUBCXqQnf5tSTIUwwYdnS8f6i5ryYymr3zByAA6k1fdz+RvpCzKX3LB73UdqbLl1a1O2hQ7ErJe9BELyRi8cvy+uzYPlrU0xXZJBd/XIWG11ZswdXdYmtD+xMdFCXIjHVwiM+TNkAHWjW4qAknCXa39nBDg7EiowWrfYxnbeVWrA8frLJtmlGhByJ6bScHUMXXIGgF9t7R0Nu8sABUnKNSl8yi26eXBL2NDAbs9o9G0HiSZmFGjETI/9+CS97Y31a4RRcH6va3OQbV0TrMTtpUkfFLtw9TEgktxBMZNHoW9tg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(33656002)(66446008)(66946007)(64756008)(66476007)(8676002)(66556008)(110136005)(76116006)(26005)(71200400001)(38070700005)(7696005)(6506007)(186003)(83380400001)(55016003)(2906002)(9686003)(53546011)(82960400001)(52536014)(38100700002)(5660300002)(508600001)(86362001)(8936002)(4744005)(316002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1doQmNWNlhIMnRjTkJqVGFhS2luaDhuWHRHK0JOZ1ZKYzFwTU9lak0vMXNX?=
 =?utf-8?B?em81Mi85WnNMdzlQYkFlUk5Qd1hEVU9oYk91b2dQRFpkdEZHYVBnNEJld1J2?=
 =?utf-8?B?SlZyQm1zdUFreGxhdjUvS0Y0emVaR29CMUM1WmRDb2JRc0gxbTZHZWVpOTha?=
 =?utf-8?B?THU2TlNrMGswNHBZeHRBTmtmcWNoaStwZ1QvYkkrQ2Y0Mnc5QWl6d3VVM1VJ?=
 =?utf-8?B?azhPZWdXaTBZMEkwdGZwWEROaGF3ZFF5bkc1d3NRUkx1ajVtZGRTc0sxaEJj?=
 =?utf-8?B?SWR6aXoxYmx5Z2trcCsyRHN0OVJJR0VLYUZCZklPbVl4dW4zNjNoSmllVlkr?=
 =?utf-8?B?LzlFc2h5bFVGdHB5bk1FeERmSHpJRndhZVlxTEtXVTkzWjk5M0FhaC8wTVAw?=
 =?utf-8?B?MVpFbnpYbFJuSUZyMzdmWjdxbktva2NmdUgrenhGcEw2ZGxCaVBxQmYyaVFZ?=
 =?utf-8?B?aXJaTVVDSTBIS2RlRzdpMWhXTDA1a2N4cmRnWjJxRHNlYituQ1RiY1Y0L09X?=
 =?utf-8?B?S2NNL3F6Q1d1V080L0x1WjZ2R1hGQ204MDZzLzBObTFNZkxEM1AyT1V6eGI3?=
 =?utf-8?B?UUxjY096Nk5IK2dFYjc4WHdyUEFKWFJacmQ0MWJHcHBoRGxaUmtCSmFKc1pR?=
 =?utf-8?B?dk1XbTJtSkVyMzREYTVBZHIycUYwVzQ4TkZVTTByVWF0QVpGak5oQ01aM0cw?=
 =?utf-8?B?L1h5QXZxVUNCK2RkRmU1bVdUcHU3ZTg0ak1EcUwrUzRlRE9RcUJYM0dVYmxh?=
 =?utf-8?B?YkIwRjI2VDhzNEtlNzJaQlYwbmdnTlhTV1I4eVY4NnZJdENuUExQYTA2Q0JU?=
 =?utf-8?B?VkpBZE9aNjZIYVdyQkUrNGNkdkFjb2tmL1BUVnlwcmRselZiTytaRDhkZWZB?=
 =?utf-8?B?NUExOGloRk9DZlozemtyaUZOdTVmdzExbXppSHNXbWRsVDF3cFBZRzZjekJM?=
 =?utf-8?B?TG9yQmFoeGkwdWtaVFRrYXQ2Z2l5K0J2V3UxeExhYmJDS3BFWDdVZzFVVmlK?=
 =?utf-8?B?U2ZoeEZlVnNkS0RWKzI3SkF5emJVZEVoYWtVSTNoN1VaeE1WKzFWN2tocWNT?=
 =?utf-8?B?b1ZRem1qN1VBRFkzTUxReFV1bzY3UHJJeC9hRzBYZ3lweE90akdBYXF0Y2dJ?=
 =?utf-8?B?K0c3SVdsTjdReGZMUlpXV1hUTFR4ZzRmR25JTWxkc3lpTHhtL21vNjFDZHpK?=
 =?utf-8?B?Rm5NR2FPMExsYWZ4WXhCa2VvY0lwKytwblpMNmNWZ205Q29rbzk3aXQzWENk?=
 =?utf-8?B?aFRXN3poZTVnSEdXRGRDWUUrT09xcnlPQ3NPZVc3WnFPQ3BrY3F4aTdEdXpG?=
 =?utf-8?B?SHMvMXJBcTVFblhhNFRiMEt6bDk1WDNKd2lXVk5sdHU0K2cvN2FmNDd5RHV0?=
 =?utf-8?B?cnl2MjNqK291eHVERmo5NVVmOElNZzBLNTV4eSttQ2xDKzZOdllHbytkR3E5?=
 =?utf-8?B?Q0tGdlhhcGF2aHhmVVFZU1c5Yy93Y3llVW9IQXRPaTZ0K0xSR3Vvc05CelpN?=
 =?utf-8?B?OWJ0OUdSYlN2TjJlNHpHUysvUjNxRXczRmIwZ0w0a3hPeFZNbkw4bkJjYkFl?=
 =?utf-8?B?ZW9hV2wwQUNVcDNjKzJLNDlGN0RxT01HQXFrRFUycmZmQ2IyYzU4VjFqek9p?=
 =?utf-8?B?cTg4ajNaR0ZSMS9WMi91cFZFZlRyb3JvMVJDd1l2V28zUXZEbXJCUk96ZEIx?=
 =?utf-8?B?cjRQMDF1ZHdlWGFLdTRnbXBBOCt4MzVYYVl4YXp1dnRDRVZMYzFFZjl1NHd2?=
 =?utf-8?B?V0RpTnBMSlRZNFpka2Jrb0RGUnlhVWdtWFJFTEhjcUhQeERaaHI5czNNRTFv?=
 =?utf-8?B?ZEpjZDdrTDV5eGJvMllYcVZPQUxxNzJrTi85NmhYSEQ0cWdWOHA3QzNVYkxh?=
 =?utf-8?B?V2xFamtzeDQrZU9QSlU5VThYN1lVWHdZRFlTL1FRT3FpV3U3SW1MQVI3Tjk5?=
 =?utf-8?B?UjMvTDlMQjdNejJnTTBKT0taUmdqdGlXbUU1cmVaWE53aW9Sa2VwK1BBMGFE?=
 =?utf-8?B?WGlRNFlyS3Q3clJyejI0aHQ4VE5xVmsvaVZBMTJFdHIvUjhocDVkWTAyTXhE?=
 =?utf-8?B?TWJ6aDhQanpRVUZVcEFRN0pGM2RWSzU5VG5oRDdueGk5OVlzR3l3SVNPVmVo?=
 =?utf-8?B?L0dKdDFLTldIS2dteHh0Y3psdHhWNUZjSHhGb2sraEdqdjlKQmVGTGgrVk9i?=
 =?utf-8?Q?GNtgDxFZ5uDhvA3xMVEC4Os=3D?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56de51eb-6f8c-4cea-6a4b-08d9f7b0f3ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2022 16:16:02.3256
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2peobK1A49rpsbWF/JuPwHo0FNVZr+xu5YqcncmwKj8ndeE3Y7rr1EVXF7Dgc80FBRaEgYlodzFnqRP2kGQhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5525
X-OriginatorOrg: intel.com
Message-ID-Hash: MCGWWIPH7CUTALFSJDUXPZXU6WJSQTGG
X-Message-ID-Hash: MCGWWIPH7CUTALFSJDUXPZXU6WJSQTGG
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Contribution copyright question
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MCGWWIPH7CUTALFSJDUXPZXU6WJSQTGG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: base64

SSBhc3N1bWUgeW91IGFyZSB0YWxraW5nIGFib3V0IEFDUElDQS4NCg0KWWVzLCBJIGRvbid0IGJl
bGlldmUgeW91IGFyZSBhbGxvd2VkIHRvIGFkZCBhIGNvcHlyaWdodC4NCkJvYg0KDQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBid2ljYWtzb25vQG52aWRpYS5jb20gPGJ3aWNh
a3Nvbm9AbnZpZGlhLmNvbT4gDQpTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAyMiwgMjAyMiAxMjo1
NiBQTQ0KVG86IGRldmVsQGFjcGljYS5vcmcNClN1YmplY3Q6IFtEZXZlbF0gQ29udHJpYnV0aW9u
IGNvcHlyaWdodCBxdWVzdGlvbg0KDQpUbyB3aG9tIGl0IG1heSBjb25jZXJuLA0KDQpXaGF0IGlz
IHRoZSBhY2NlcHRhYmxlIG1ldGhvZCB0byBtYXJrIGNvZGUgY29udHJpYnV0aW9uIGJ5IG9yZ2Fu
aXphdGlvbiBvdXRzaWRlIEludGVsID8NCldpbGwgaXQgYmUgZmluZSB0byBhZGQgYSBuZXcgY29w
eXJpZ2h0IGxpbmUgdW5kZXIgIkNvcHlyaWdodCAoYykgMjAwMCDigJMgMjAxNyBJbnRlbCBDb3Jw
LiIgPw0KSSBjb3VsZCBub3QgZmluZCBzdWNoIGNhc2UgZnJvbSBwcmV2aW91cyBjb21taXRzLiBT
byBJIGFzc3VtZWQgdGhpcyBpcyBwcm9oaWJpdGVkLCBidXQgd2FudCB0byBnZXQgY29uZmlybWF0
aW9uLg0KDQpSZWdhcmRzLA0KQmVzYXINCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZw0K
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnICUo
d2ViX3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0KXMvJShfaW50ZXJuYWxfbmFtZSlzDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5n
IGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQp
cy8lKF9pbnRlcm5hbF9uYW1lKXM=
