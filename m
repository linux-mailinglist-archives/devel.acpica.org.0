Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E46741B89C
	for <lists+devel-acpica@lfdr.de>; Tue, 28 Sep 2021 22:48:32 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A6E48100EA2A4;
	Tue, 28 Sep 2021 13:48:30 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 852ED100EA93E
	for <devel@acpica.org>; Tue, 28 Sep 2021 13:48:28 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="212054751"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200";
   d="scan'208,217";a="212054751"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 13:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200";
   d="scan'208,217";a="437369643"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga006.jf.intel.com with ESMTP; 28 Sep 2021 13:48:27 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 13:48:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 28 Sep 2021 13:48:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 28 Sep 2021 13:48:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IvDH+xYCEAig1woIPs6b3oM/6JamcowbHM7Upu0sY7Or7c2fzugc1/M3x7ml9BaIJCwd9toyfBJKVMu9C7qvQGt4CTinSYM/2Jq+IKy7lhX+sTNGnWGpQrkwXbiBKaYMfqRV42BcPJ/FpfUCqoSAhKImxTJtB9HimCd6kpW1lRX4T9Q3iT6XrOr5qhOLfdtbtMI2yyNogwjWFgveeqy6Gt5LZ+9N7qriJB7RnfEJZstvlpxR0b6DzTL4+pi47zmj6uEjeOYM7D80IgbtdtWnHCXBhWh9JauNd1xtCAPytVBUb2TPtJgtpsN0xMWv0lKsYIN3sPJSlOJK1Yvr9OXi2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=igbp2SZ96AoAQIs970dqv8EklVFrpZQq37pQELzVi7I=;
 b=cNXJ0XSGFva6XRsQ8cPBhBzSRj/4ZUAg2uCTCB3gwVJMT5BhT6WYSfMhq2QexeZJLh5UNpbxfncdW7mfnM6wx2VQPn5xJOPMo23lTY/wGRsBXfpoYyLM3Eoz4s28nUwJNCNUNSQg7u6h72cphiO+G2ZAjai2klsYuTBvDbqeSTNS9VvO0WEWflCHCRffnW4VRRYmnrBLcPeRXwK5cSOritHRLLmsm/lWLiQehajwANVx2ERR/BWXCqUyRwUVSPD0hNNWFgWxSp7GEov6RJNI8R7rdjgcN+aDAZqTUt4kDEyW6hMVw7UJxpk6XdBYMAnzUrmwe7WSg8oowjk40VfoGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=igbp2SZ96AoAQIs970dqv8EklVFrpZQq37pQELzVi7I=;
 b=jes20VNEkFGcuwYHaTKSOOsN63c3fG69nWNyu0FqgrXNdXRadt1kui7S8fm+Qgc4OV7yEQD3bEuOlXEOd7nJ9AEGp2uynykO0njyCeHoRqWLZqYSDcXbUgqjIjZKlU+eNJdPyJ/TtjuAayvVtfEj6jlw47by6VWHNxFI2yiJbmE=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2838.namprd11.prod.outlook.com (2603:10b6:a02:cc::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Tue, 28 Sep
 2021 20:48:26 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::754c:cbde:1a6f:4980]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::754c:cbde:1a6f:4980%6]) with mapi id 15.20.4544.021; Tue, 28 Sep 2021
 20:48:26 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Devin Steffler <devinsteffler@gmail.com>, "devel@acpica.org"
	<devel@acpica.org>
Thread-Topic: [Devel] Question about ACPICA, QNX and making beeps
Thread-Index: AQHXtJu/BwZ/LfJzC0OE4ELoS2yHA6u56w6w
Date: Tue, 28 Sep 2021 20:48:26 +0000
Message-ID: <BYAPR11MB32568D74570708E7DCADBD2587A89@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
In-Reply-To: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15c72cc3-d454-494b-af66-08d982c15212
x-ms-traffictypediagnostic: BYAPR11MB2838:
x-microsoft-antispam-prvs: <BYAPR11MB283878CF457C6F06DA5D50D987A89@BYAPR11MB2838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ti5xyPKOjAt8ofWID0+T8xz0/ubpL7geiAoYgO4KT7GApK5FDM9UcHciqIfrrxCDpgKBfaZLEZ/qZLRmnqf/6GssxSH4AD9X73visnfZryG/sywRk9jlLwza8EsyqO4ynJRu5tGTuKUsKIdnkodKtSuaArySguIdh4UHJDjWVyz5aDDAZBmEHX1JQmHwkGlsui+MfINtunzpQIYhFnMIEqtvp6/VA2LpZI/fSZwQiPskq8zuruGsGvb8NEPTRFYsY3D9zl4Witg+TJEeyF9JJcWc6EeuKlA7iMzuuwalPZqqUiobLvXZEbbHEl0zi/p8oWfVn4TE4+/cLBN2+FoxKRqSAnMSfzJr6/GJK2ZCFbSdNavcnle7P5nySjAc4+EXSJtANu9MqY2v+CNVKS/Cv/D1fNsvtTxFO+eVKr9ed0uYS2VVPo5vlcS0sN3MMNZ01YRPTUD++OP7TgXAvwde2S4YAXgcEtbnmRAvwRiTai3EJf/2AG9Lg32Skyw4jl1aMcfiv/LvJFbKhx0VLt3PuJgQz8d5ZdNijV2jCoTd+I36IHdaK4v3dR+nOem29d2xV1vP1SJ/qwj3FBxFVSkgb72gSnnZluhD2n+DqVqHttUUx+ZJ9w8YL6bGtqUH7caVot/79UWcVKts6HuJJiR9GdhdGOrk7XP7e5vDcqIduuMP2581sAs/NZyIaZPTeGAWgKkILvexzLe8gBOjIi1cMQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(5660300002)(2906002)(110136005)(186003)(26005)(55016002)(52536014)(9686003)(8676002)(7696005)(53546011)(86362001)(6506007)(316002)(33656002)(8936002)(76116006)(71200400001)(122000001)(66476007)(508600001)(83380400001)(38100700002)(66556008)(38070700005)(64756008)(66446008)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzRKVnVjNWZCNm5yclpOUDN5OEl2ZnRCaXk4YTI0MHdNYlhqQ3VGbkFMOFhR?=
 =?utf-8?B?b210ZFQvQXdPN3Z5RUxLd0NzcDVDaWlxdjdrUC9jNVFnK3VDOU96bm5Ba0Vq?=
 =?utf-8?B?UnZEc3VnaDhIL1hlSGJneHRXVzJ3V1pHTGZDaWJzdWtSNjBjalY2OFE1ZXh3?=
 =?utf-8?B?Q1lDRG96b2ttSVJQME1WVlR4bFZjNkpZUVh3ZUNaSEZTT29VRVZpeWxyb3li?=
 =?utf-8?B?YjhqVVFGYzZ5UTY1NjBoNkkyRUl4V0R5ZUhFVkVKRVVXTGp6dVNqWStqQnJS?=
 =?utf-8?B?aE1rbVVGV29JK0k4U0h2UkdGKzV0S3c3QmRCM2dCd3FNRTdGMjFDYjhCUkhw?=
 =?utf-8?B?U3Vhc1lQKzN3aHhjNElROCtiYzBwUkhDemNIR3Q5ZzRHM3NnRHpnTE9leUNF?=
 =?utf-8?B?VlVyZlAycVNscSszRml5UWlmL2hRaTRZNmNSOXRVaXVxYlVWa0VRb0tDWkFv?=
 =?utf-8?B?TXZmTG9nZ3MrOE9PNmhmNEdjTThReC9HS1pmRjhTaldXTUZIdHFURWY2QmZr?=
 =?utf-8?B?cStBRzQzSVVpaVpUU1IrR2Y4T0JSakNweG1BMFNzcGp2MHhzZTFEV1hFOUV1?=
 =?utf-8?B?blpUcHRkZk1OOEV1em82NUtZN0FtQ051UjNUY296aEI2TEM1Nm8wUHZ2RDZO?=
 =?utf-8?B?ZTBrcTZZUjRvWVJobW53QmlONVB3SUsxeFVGdDMvSXpTYmk3U3FmTk5ieDR4?=
 =?utf-8?B?Zmt6eEwxcFFQUGRJMGh0YVhmTUpCSWVReEhYRkpQWnFCZTFEOGYyT0FncUlj?=
 =?utf-8?B?cEN5aTFDYXBRVW5vSWhjaE44d2hDSStVbXF1Tzh6dXdlOUdYdXA3U2QyUk9J?=
 =?utf-8?B?eW1yTittdDRrbHdEc3hCOHEyeHFlSUQ3RmtRS2EzOEpYUUJYL2xQNlNXMUtS?=
 =?utf-8?B?ZlROa1Z5SlJJQUs4Zmo1YnJqWFh5U3RuZUNMUHU1ZVVRTUJRaXBMUXZUb3Nv?=
 =?utf-8?B?YnM1UnpwVFRubEN5TDAwZnZudm1vV1B0TVYwaDRiVmx0V3l1N3k3Ni84MGJQ?=
 =?utf-8?B?OGZ4eEtWLzdUU21YelNIaTFKeUQzdGhCOWE3RWU1dEgzMXdRdndhSDhycXgv?=
 =?utf-8?B?bitqV3crVW5WN1hpOFh0WTM0UDZlaldUaUtYZmRud3F2RlZkaERrVTY3UXhM?=
 =?utf-8?B?MGkvWkVwTzEwOUx1WTRadnFpZUF5blkvOC95cVp0TlVlL09mSThnMDdGcXhi?=
 =?utf-8?B?VlJFM3dmaXdJeHVLT25UL0x6bTIveWJRc3phQll3V2RGcGJPUzhuS1lFb3pT?=
 =?utf-8?B?L1Bpb2RsSXROKzhpUXgwUUlZckNtbko0Zk9yeTBTMnBPNGdqYnRaQmo2OTU1?=
 =?utf-8?B?Y2tHRUN3eXk4di9XcTNYMndVb2ZGWXg3OU0zTmgwVnZlRHBsTXJtZGNNOU1Q?=
 =?utf-8?B?VkhRTUpxeHBZaHBkUFZCMFNPclJaM3VRbWEvRktERlJDdisrNHFTdk4vM01z?=
 =?utf-8?B?TVBuWW5OTndsbmRZcG5ldUdxd3FYdG1ldGQ1dDUzcVpTK3VPRVRiM0h2K0Zk?=
 =?utf-8?B?Uk80aW9OM3pWcEJpdU5pMkJpTmZxZGJQWGhKNjVPYXRTNmxsOU0rNkQ5VUFy?=
 =?utf-8?B?SVVUdWd0UmR1aGpFdFdXR3F3OHZoY0lnSk12M3ZUYktlZ21remk5cTh3VE9z?=
 =?utf-8?B?d0hJRnFqMEpjTUd5WklhSkFZWHB6THhkLy8vbDFsaGtjWk1ya0w2ajZHYkVK?=
 =?utf-8?B?WElEdENodURMNm9wRlJFQ0pCR1pkZG41dVZLM3NpbUZTTUluaUx5LzRVL2Vl?=
 =?utf-8?Q?7MdWKIf9REFrBNodsoAUU+7L6RfqO71vcIigdGP?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15c72cc3-d454-494b-af66-08d982c15212
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2021 20:48:26.5781
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EpSrTEx85wKMBflm54oqJ4CJCms/3ql940j0JKe7tOs/CMuGAhOF2V32G2Y1GfFhwEH6GinTiN17AteV++f/pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2838
X-OriginatorOrg: intel.com
Message-ID-Hash: PKJ4T5V7P3Y4C6376BFFRKGL5YWROHVN
X-Message-ID-Hash: PKJ4T5V7P3Y4C6376BFFRKGL5YWROHVN
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PKJ4T5V7P3Y4C6376BFFRKGL5YWROHVN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============6294007536541398472=="

--===============6294007536541398472==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB32568D74570708E7DCADBD2587A89BYAPR11MB3256namp_"

--_000_BYAPR11MB32568D74570708E7DCADBD2587A89BYAPR11MB3256namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnksIEkgaGF2ZSBubyBpZGVhIHdoeSB0aGlzIHdvdWxkIHN0b3Agd29ya2luZy4NCkJvYg0K
DQoNCkZyb206IERldmluIFN0ZWZmbGVyIDxkZXZpbnN0ZWZmbGVyQGdtYWlsLmNvbT4NClNlbnQ6
IFR1ZXNkYXksIFNlcHRlbWJlciAyOCwgMjAyMSAxMjowNCBQTQ0KVG86IGRldmVsQGFjcGljYS5v
cmcNClN1YmplY3Q6IFtEZXZlbF0gUXVlc3Rpb24gYWJvdXQgQUNQSUNBLCBRTlggYW5kIG1ha2lu
ZyBiZWVwcw0KDQpIZWxsbywNCg0KSSBhbSB1c2luZyBBQ1BJQ0EgdG8gcmVhZCBiYXR0ZXJ5IGlu
Zm9ybWF0aW9uIGluIFFOWC4gVGhhdCBwYXJ0IGlzIHdvcmtpbmcgZ3JlYXQgc28gZmFyLiBIb3dl
dmVyLCBub3cgc29tZSBjb2RlIHRoYXQgaXMgYmVpbmcgdXNlZCB0byBtYWtlIGJlZXBzIHZpYSB0
aGUgUEMgc3BlYWtlciBzdG9wcGVkIHdvcmtpbmcuDQoNClN0cmFuZ2VseSwgdGhpcyBjb2RlIHN0
b3BzIHdvcmtpbmcgb24gYSBmZXcgZGV2aWNlcyBvbmx5IGFmdGVyIEFDUElDQSBydW5zLiBJdCB3
b3JrcyBmaW5lIGlmIEkgZG9uJ3Qgc3RhcnQgQUNQSUNBLiBUaGUgY29kZSBpcyB1c2luZyBJL08g
cG9ydHMgMHg0MywgMHg0MiwgYW5kIDB4NjEgdG8gZ2VuZXJhdGUgYmVlcHMuIFRoaXMgc2VlbXMg
dG8gYmUgYW4gaW5kdXN0cnkgc3RhbmRhcmQgd2F5IHRvIG1ha2UgYmVlcHMgb24geDg2IGJhc2Vk
IFBDcyB1c2luZyBhIFByb2dyYW1tYWJsZSBJbnRlcnZhbCBUaW1lciAoUElUKS4NCg0KV2hhdCBj
b3VsZCBteSBBQ1BJQ0EgYmUgZG9pbmcgKG9yIGZhaWxpbmcgdG8gZG8pIHRoYXQgY291bGQgY2F1
c2UgdGhlIGJlZXBzIHRvIHN0b3Agd29ya2luZyB3aXRoIHRoZSBjb2RlIGJlbG93PyBJcyB0aGUg
UElUIGJlaW5nIGRpc2FibGVkIHNvbWVob3c/IEkgZ3Vlc3MgSSdsbCBuZWVkIHRvIGxlYXJuIG1v
cmUgYWJvdXQgdGhlIFBJVCBhbmQgaG93IHRvIGNoZWNrIGl0cyBzdGF0dXMgdG8gc2VlIGlmIGl0
J3MgYmVpbmcgZGlzYWJsZWQgYWZ0ZXIgQUNQSUNBIHJ1bnMuDQoNCkhlcmUncyBleGFtcGxlIGNv
ZGUgZm9yIFFOWCB0byBnZW5lcmF0ZSBhIGJlZXAgdXNpbmcgdGhlIFBDIHNwZWFrZXI6DQovLyAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KI2luY2x1ZGUg
PHN5cy9uZXV0cmluby5oPg0KI2luY2x1ZGUgPGh3L2lub3V0Lmg+DQojaW5jbHVkZSA8dW5pc3Rk
Lmg+DQoNCmludCBtYWluKHZvaWQpIHsNCiAgICBUaHJlYWRDdGwoIF9OVE9fVENUTF9JTywgMCAp
OyAvLyBnZXQgSS9PIHBlcm1pc3Npb25zDQoNCiAgICAvLyBzdGFydCBhIGJlZXANCiAgICBpbnQg
ZnJlcSA9IDEwMDA7DQogICAgaW50IHNjYWxlID0gMTE5MzA0NiAvIGZyZXE7DQogICAgb3V0OCgw
eDQzLCAweGI2KTsNCiAgICBvdXQ4KDB4NDIsIHNjYWxlICYgMHhmZik7DQogICAgb3V0OCgweDQy
LCBzY2FsZSA+PiA4KTsNCiAgICBvdXQ4KDB4NjEsIGluOCgweDYxKSB8IDMpOw0KDQogICAgLy8g
bGV0IHRoZSBiZWVwIHBsYXkgZm9yIGEgc2Vjb25kDQogICAgZGVsYXkoMTAwMCk7DQoNCiAgICAv
LyBzdG9wIHRoZSBiZWVwDQogICAgb3V0OCgweDYxLCBpbjgoMHg2MSkgJiB+Myk7DQoNCiAgICBy
ZXR1cm4gMDsNCn0NCi8vIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQoNClRoYW5rcywNCkRldmluDQo=

--_000_BYAPR11MB32568D74570708E7DCADBD2587A89BYAPR11MB3256namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNl
cmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5
cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBh
Z2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBp
biAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30N
Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6
ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBn
dGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2
OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0t
LT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1
NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Tb3JyeSwgSSBoYXZlIG5vIGlkZWEgd2h5IHRo
aXMgd291bGQgc3RvcCB3b3JraW5nLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+Qm9iPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRp
diBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRp
bmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+RnJvbTo8L2I+
IERldmluIFN0ZWZmbGVyICZsdDtkZXZpbnN0ZWZmbGVyQGdtYWlsLmNvbSZndDsgPGJyPg0KPGI+
U2VudDo8L2I+IFR1ZXNkYXksIFNlcHRlbWJlciAyOCwgMjAyMSAxMjowNCBQTTxicj4NCjxiPlRv
OjwvYj4gZGV2ZWxAYWNwaWNhLm9yZzxicj4NCjxiPlN1YmplY3Q6PC9iPiBbRGV2ZWxdIFF1ZXN0
aW9uIGFib3V0IEFDUElDQSwgUU5YIGFuZCBtYWtpbmcgYmVlcHM8bzpwPjwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0K
PGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhlbGxvLDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+
DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgYW0gdXNpbmcgQUNQSUNBIHRvIHJlYWQgYmF0dGVy
eSBpbmZvcm1hdGlvbiBpbiBRTlguIFRoYXQgcGFydCBpcyB3b3JraW5nIGdyZWF0IHNvIGZhci4g
SG93ZXZlciwgbm93IHNvbWUgY29kZSB0aGF0IGlzIGJlaW5nIHVzZWQgdG8gbWFrZSBiZWVwcyB2
aWEgdGhlIFBDIHNwZWFrZXIgc3RvcHBlZCB3b3JraW5nLjxvOnA+PC9vOnA+PC9wPg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+U3RyYW5nZWx5LCB0aGlzIGNvZGUgc3RvcHMgd29ya2lu
ZyBvbiBhIGZldyBkZXZpY2VzIG9ubHkgYWZ0ZXIgQUNQSUNBIHJ1bnMuIEl0IHdvcmtzIGZpbmUg
aWYgSSBkb24ndCBzdGFydCBBQ1BJQ0EuIFRoZSBjb2RlIGlzIHVzaW5nIEkvTyBwb3J0cyAweDQz
LCAweDQyLCBhbmQgMHg2MSB0byBnZW5lcmF0ZSBiZWVwcy4gVGhpcyBzZWVtcyB0byBiZSBhbiBp
bmR1c3RyeSBzdGFuZGFyZCB3YXkgdG8gbWFrZSBiZWVwcw0KIG9uIHg4NiBiYXNlZCBQQ3MgdXNp
bmcgYSBQcm9ncmFtbWFibGUgSW50ZXJ2YWwgVGltZXIgKFBJVCkuPG86cD48L286cD48L3A+DQo8
L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4N
CjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPldoYXQgY291bGQgbXkgQUNQSUNB
IGJlIGRvaW5nIChvciBmYWlsaW5nIHRvIGRvKSB0aGF0IGNvdWxkIGNhdXNlIHRoZSBiZWVwcyB0
byBzdG9wIHdvcmtpbmcgd2l0aCB0aGUgY29kZSBiZWxvdz8gSXMgdGhlIFBJVCBiZWluZyBkaXNh
YmxlZCBzb21laG93PyBJIGd1ZXNzIEknbGwgbmVlZCB0byBsZWFybiBtb3JlIGFib3V0IHRoZSBQ
SVQgYW5kIGhvdyB0byBjaGVjayBpdHMgc3RhdHVzIHRvIHNlZSBpZiBpdCdzDQogYmVpbmcgZGlz
YWJsZWQgYWZ0ZXIgQUNQSUNBIHJ1bnMuPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhlcmUncyBleGFtcGxlIGNvZGUgZm9yIFFOWCB0byBnZW5l
cmF0ZSBhIGJlZXAgdXNpbmcgdGhlIFBDIHNwZWFrZXI6PG86cD48L286cD48L3A+DQo8L2Rpdj4N
CjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4vLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+I2luY2x1ZGUgJmx0O3N5cy9uZXV0cmluby5oJmd0Ozxicj4NCiNp
bmNsdWRlICZsdDtody9pbm91dC5oJmd0Ozxicj4NCiNpbmNsdWRlICZsdDt1bmlzdGQuaCZndDs8
YnI+DQo8YnI+DQppbnQgbWFpbih2b2lkKSB7PGJyPg0KJm5ic3A7Jm5ic3A7Jm5ic3A7IFRocmVh
ZEN0bCggX05UT19UQ1RMX0lPLCAwICk7IC8vIGdldCBJL08gcGVybWlzc2lvbnM8bzpwPjwvbzpw
PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Jm5ic3A7Jm5ic3A7
Jm5ic3A7IC8vIHN0YXJ0IGEgYmVlcDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+Jm5ic3A7ICZuYnNwOyBpbnQgZnJlcSA9IDEwMDA7PGJyPg0KJm5i
c3A7ICZuYnNwOyBpbnQgc2NhbGUgPSAxMTkzMDQ2IC8gZnJlcTs8YnI+DQombmJzcDsgJm5ic3A7
IG91dDgoMHg0MywgMHhiNik7PGJyPg0KJm5ic3A7ICZuYnNwOyBvdXQ4KDB4NDIsIHNjYWxlICZh
bXA7IDB4ZmYpOzxicj4NCiZuYnNwOyAmbmJzcDsgb3V0OCgweDQyLCBzY2FsZSAmZ3Q7Jmd0OyA4
KTs8YnI+DQombmJzcDsgJm5ic3A7IG91dDgoMHg2MSwgaW44KDB4NjEpIHwgMyk7PG86cD48L286
cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mbmJzcDsmbmJzcDsm
bmJzcDsgPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij4mbmJzcDsmbmJzcDsmbmJzcDsgLy8gbGV0IHRoZSBiZWVwIHBsYXkgZm9yIGEgc2Vjb25kPG86
cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mbmJzcDsm
bmJzcDsmbmJzcDsgZGVsYXkoMTAwMCk7PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPiZuYnNwOyZuYnNwOyZuYnNwOyAvLyBzdG9wIHRoZSBiZWVw
PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mbmJz
cDsgJm5ic3A7IG91dDgoMHg2MSwgaW44KDB4NjEpICZhbXA7IH4zKTs8YnI+DQo8YnI+DQombmJz
cDsmbmJzcDsmbmJzcDsgcmV0dXJuIDA7PGJyPg0KfTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Ly8gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0gPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rcyw8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPkRldmluPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2
Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_BYAPR11MB32568D74570708E7DCADBD2587A89BYAPR11MB3256namp_--

--===============6294007536541398472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============6294007536541398472==--
