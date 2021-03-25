Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA1734961F
	for <lists+devel-acpica@lfdr.de>; Thu, 25 Mar 2021 16:55:07 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0643D100F2253;
	Thu, 25 Mar 2021 08:55:06 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.189; helo=szxga03-in.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CDCB1100F2250
	for <devel@acpica.org>; Thu, 25 Mar 2021 08:55:02 -0700 (PDT)
Received: from DGGEML402-HUB.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4F5qP32fMvz5hBt;
	Thu, 25 Mar 2021 23:52:23 +0800 (CST)
Received: from dggpemm500001.china.huawei.com (7.185.36.107) by
 DGGEML402-HUB.china.huawei.com (10.3.17.38) with Microsoft SMTP Server (TLS)
 id 14.3.498.0; Thu, 25 Mar 2021 23:54:55 +0800
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 dggpemm500001.china.huawei.com (7.185.36.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 23:54:54 +0800
Received: from lhreml710-chm.china.huawei.com ([169.254.81.184]) by
 lhreml710-chm.china.huawei.com ([169.254.81.184]) with mapi id
 15.01.2106.013; Thu, 25 Mar 2021 15:54:52 +0000
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Jon Nettleton <jon@solid-run.com>, "erik.kaneda@intel.com"
	<erik.kaneda@intel.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Thread-Topic: [RFC PATCH v2 1/8] ACPICA: IORT: Update for revision E
Thread-Index: AQHWvm1dfTBTih8pMEKAOph+J6BTAKqQitWggAQXOICAAP9lgA==
Date: Thu, 25 Mar 2021 15:54:51 +0000
Message-ID: <acfab98e75434a59910cf56336c54ba2@huawei.com>
References: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
 <20201119121150.3316-2-shameerali.kolothum.thodi@huawei.com>
 <b7a2424941214b33803e34ba3e532440@huawei.com>
 <CABdtJHtZPyWpXN9JZbgdu=HswreTc2o2pRhrwHFzQJqz-kFSBw@mail.gmail.com>
In-Reply-To: <CABdtJHtZPyWpXN9JZbgdu=HswreTc2o2pRhrwHFzQJqz-kFSBw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.26.249]
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Message-ID-Hash: E5AL7UAHNXKJ5IOF7WCJ7MYWPS4X7EON
X-Message-ID-Hash: E5AL7UAHNXKJ5IOF7WCJ7MYWPS4X7EON
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>, "devel@acpica.org" <devel@acpica.org>, Linuxarm <linuxarm@huawei.com>, "steven.price@arm.com" <steven.price@arm.com>, "Sami.Mujawar@arm.com" <Sami.Mujawar@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>, wanghuiqiang <wanghuiqiang@huawei.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC PATCH v2 1/8] ACPICA: IORT: Update for revision E
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/E5AL7UAHNXKJ5IOF7WCJ7MYWPS4X7EON/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSm9uIE5ldHRsZXRvbiBb
bWFpbHRvOmpvbkBzb2xpZC1ydW4uY29tXQ0KPiBTZW50OiAyNSBNYXJjaCAyMDIxIDA4OjQwDQo+
IFRvOiBTaGFtZWVyYWxpIEtvbG90aHVtIFRob2RpIDxzaGFtZWVyYWxpLmtvbG90aHVtLnRob2Rp
QGh1YXdlaS5jb20+DQo+IENjOiBlcmlrLmthbmVkYUBpbnRlbC5jb207IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gbGludXgtYWNwaUB2Z2VyLmtlcm5lbC5vcmc7IGlv
bW11QGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnOw0KPiBkZXZlbEBhY3BpY2Eub3JnOyBMb3Jl
bnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT47DQo+IHJvYmVydC5tb29y
ZUBpbnRlbC5jb207IExpbnV4YXJtIDxsaW51eGFybUBodWF3ZWkuY29tPjsNCj4gc3RldmVuLnBy
aWNlQGFybS5jb207IEd1b2hhbmp1biAoSGFuanVuIEd1bykgPGd1b2hhbmp1bkBodWF3ZWkuY29t
PjsNCj4gU2FtaS5NdWphd2FyQGFybS5jb207IHJvYmluLm11cnBoeUBhcm0uY29tOyB3YW5naHVp
cWlhbmcNCj4gPHdhbmdodWlxaWFuZ0BodWF3ZWkuY29tPg0KPiBTdWJqZWN0OiBSZTogW1JGQyBQ
QVRDSCB2MiAxLzhdIEFDUElDQTogSU9SVDogVXBkYXRlIGZvciByZXZpc2lvbiBFDQoNClsuLi5d
DQoNCj4gV2VsbCBpdCB3YXMgYSByZWxlYXNlZCByZXZpc2lvbiwgYWx0aG91Z2ggaXQgd2FzIGZv
dW5kIHRvIGhhdmUgaXNzdWVzLg0KPiBDdXJyZW50bHkNCj4gSG9uZXlDb21iIFN5c3RlbXMgUmVh
ZHkgY2VydGlmaWVkIGZpcm13YXJlIGRvZXMgaW5jbHVkZSBzdXBwb3J0IGZvciB0aGlzDQo+IHRh
YmxlLA0KPiBhbHRob3VnaCBpbmNvbXBsZXRlLiAgV2l0aG91dCBhZ3JlZW1lbnQgb24gbWFpbmxp
bmUgc3VwcG9ydCBJIGFtIGZpbmUgdG8NCj4gdXBkYXRlDQo+IHRvIHRoZSBsYXRlc3Qgc3BlYyBi
dW1wLg0KDQpPay4gU29ycnkgZGlkbuKAmXQga25vdyB0aGF0IHlvdSBhbHJlYWR5IGhhZCBhIGZp
cm13YXJlIHdpdGggdGhhdCByZXZpc2lvbi4NClRoYW5rcyBmb3IgYWdyZWVpbmcgdG8gdXBkYXRl
IHRvIGxhdGVzdC4NCg0KPiA+DQo+ID4gU28gY291bGQgeW91IHBsZWFzZSByZXZlcnQgdGhlIG1l
cmdlIGFuZCBJIGFtIHBsYW5uaW5nIHRvIHdvcmsgb24gdGhlIEUuYg0KPiBzb29uLg0KPiA+IFBs
ZWFzZSBsZXQgbWUga25vdyBpZiBJIG5lZWQgdG8gZXhwbGljaXRseSBzZW5kIGEgcmV2ZXJ0IHB1
bGwgcmVxdWVzdCBvciBub3QuDQo+IA0KPiBDYW4geW91IHBsZWFzZSBDQy4gbWUgb24geW91ciBu
ZXh0IHJlbGVhc2UuICBJIHdhcyBwbGFubmluZyBvbiBzcGVuZGluZyB0aW1lDQo+IG9uIHRoaXMg
cmVnYXJkbGVzcy4gIEkgYWxyZWFkeSBoYXZlIGEgcGF0Y2hzZXQgZm9yIHRoZSBmc2wtbWMtYnVz
IGRyaXZlciB0aGF0DQo+IG5lZWRzIHRvIGNoYW5nZSBpbiBvcmRlciB0byBmdW5jdGlvbiBwcm9w
ZXJseSB3aXRoIFJNUiBzdXBwb3J0Lg0KDQpTdXJlLiBXaWxsIENDIHlvdS4NCg0KSGkgQWxsLA0K
DQpJIGhhdmUgc2VuZCBwdWxsIHJlcXVlc3RzIHRvIGFjcGljYSBnaXQgZm9yIHJldmVydGluZyBy
ZXYgRSBhbmQgdG8gdXBkYXRlIGl0IHdpdGggRS5iLA0KDQpodHRwczovL2dpdGh1Yi5jb20vYWNw
aWNhL2FjcGljYS9wdWxsLzY4Mg0KDQpQbGVhc2UgdGFrZSBhIGxvb2sgYW5kIGxldCBtZSBrbm93
Lg0KDQpUaGFua3MsDQpTaGFtZWVyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJf
cGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
