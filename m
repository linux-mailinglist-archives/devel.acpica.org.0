Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D29A82A914D
	for <lists+devel-acpica@lfdr.de>; Fri,  6 Nov 2020 09:30:19 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7DC6616736360;
	Fri,  6 Nov 2020 00:30:18 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.176.79.56; helo=frasgout.his.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8ADA01673635E
	for <devel@acpica.org>; Fri,  6 Nov 2020 00:30:14 -0800 (PST)
Received: from fraeml712-chm.china.huawei.com (unknown [172.18.147.206])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4CSD7S5d1Jz67J9L;
	Fri,  6 Nov 2020 16:28:52 +0800 (CST)
Received: from lhreml721-chm.china.huawei.com (10.201.108.72) by
 fraeml712-chm.china.huawei.com (10.206.15.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Fri, 6 Nov 2020 09:30:08 +0100
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml721-chm.china.huawei.com (10.201.108.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Fri, 6 Nov 2020 08:30:07 +0000
Received: from lhreml710-chm.china.huawei.com ([169.254.81.184]) by
 lhreml710-chm.china.huawei.com ([169.254.81.184]) with mapi id
 15.01.1913.007; Fri, 6 Nov 2020 08:30:07 +0000
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Robin Murphy <robin.murphy@arm.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "iommu@lists.linux-foundation.org"
	<iommu@lists.linux-foundation.org>, "devel@acpica.org" <devel@acpica.org>
Thread-Topic: [RFC PATCH 3/4] ACPI/IORT: Add RMR memory regions reservation
 helper
Thread-Index: AQHWrFRUv2Y1mvStkkOY+RTCtTFo26m542gAgADmoJA=
Date: Fri, 6 Nov 2020 08:30:07 +0000
Message-ID: <66c52ba92d274adb818d03d2e6813f0a@huawei.com>
References: <20201027112646.44680-1-shameerali.kolothum.thodi@huawei.com>
 <20201027112646.44680-4-shameerali.kolothum.thodi@huawei.com>
 <327e6475-eb48-33a1-ef38-fae9df3bf0cb@arm.com>
In-Reply-To: <327e6475-eb48-33a1-ef38-fae9df3bf0cb@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.83.181]
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Message-ID-Hash: HMNCSUOTJLC7W5SERYWQWGEWSCJ5KQW7
X-Message-ID-Hash: HMNCSUOTJLC7W5SERYWQWGEWSCJ5KQW7
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Linuxarm <linuxarm@huawei.com>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "joro@8bytes.org" <joro@8bytes.org>, wanghuiqiang <wanghuiqiang@huawei.com>, Jonathan Cameron <jonathan.cameron@huawei.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC PATCH 3/4] ACPI/IORT: Add RMR memory regions reservation helper
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HMNCSUOTJLC7W5SERYWQWGEWSCJ5KQW7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9iaW4gTXVycGh5IFtt
YWlsdG86cm9iaW4ubXVycGh5QGFybS5jb21dDQo+IFNlbnQ6IDA1IE5vdmVtYmVyIDIwMjAgMTg6
MDQNCj4gVG86IFNoYW1lZXJhbGkgS29sb3RodW0gVGhvZGkgPHNoYW1lZXJhbGkua29sb3RodW0u
dGhvZGlAaHVhd2VpLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgbGludXgtYWNwaUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGlvbW11QGxpc3RzLmxpbnV4LWZvdW5k
YXRpb24ub3JnOyBkZXZlbEBhY3BpY2Eub3JnDQo+IENjOiBMaW51eGFybSA8bGludXhhcm1AaHVh
d2VpLmNvbT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207DQo+IGpvcm9AOGJ5dGVzLm9yZzsg
d2FuZ2h1aXFpYW5nIDx3YW5naHVpcWlhbmdAaHVhd2VpLmNvbT47IEd1b2hhbmp1bg0KPiAoSGFu
anVuIEd1bykgPGd1b2hhbmp1bkBodWF3ZWkuY29tPjsgSm9uYXRoYW4gQ2FtZXJvbg0KPiA8am9u
YXRoYW4uY2FtZXJvbkBodWF3ZWkuY29tPg0KPiBTdWJqZWN0OiBSZTogW1JGQyBQQVRDSCAzLzRd
IEFDUEkvSU9SVDogQWRkIFJNUiBtZW1vcnkgcmVnaW9ucyByZXNlcnZhdGlvbg0KPiBoZWxwZXIN
Cj4gDQo+IE9uIDIwMjAtMTAtMjcgMTE6MjYsIFNoYW1lZXIgS29sb3RodW0gd3JvdGU6DQo+ID4g
QWRkIGEgaGVscGVyIGZ1bmN0aW9uIHRoYXQgcmV0cmlldmVzIFJNUiBtZW1vcnkgZGVzY3JpcHRv
cnMNCj4gPiBhc3NvY2lhdGVkIHdpdGggYSBnaXZlbiBlbmRwb2ludCBkZXYuIFRoZXNlIG1lbW9y
eSByZWdpb25zDQo+ID4gc2hvdWxkIGhhdmUgYSB1bml0ecKgbWFwcGluZyBpbiB0aGUgU01NVS4g
U28gcmVzZXJ2ZSB0aGVtIGFzDQo+ID4gSU9NTVVfUkVTVl9ESVJFQ1QuDQo+IA0KPiBBcyBhIGdl
bmVyYWwgb2JzZXJ2YXRpb24sIHdlIGFsc28gbmVlZCBhIHdheSBpbnRvIHRoaXMgdGhhdCBpc24n
dCBmcm9tDQo+IHRoZSBwZXJzcGVjdGl2ZSBvZiBlbmRwb2ludCBkZXZpY2VzLiBXaXRoIFNNTVV2
MyB3ZSBuZWVkIHRvIGtub3cgYWxsIHRoZQ0KPiBhY3RpdmUgc3RyZWFtIElEcyByZWxldmFudCB0
byBhIGdpdmVuIFNNTVUgaW5zdGFuY2UgYXQgcHJvYmUgdGltZSwgc28NCj4gdGhhdCB3ZSBjYW4g
c2V0IHVwIHNvbWUga2luZCBvZiB2YWxpZCBzdHJlYW0gdGFibGUgZW50cmllcyAqYmVmb3JlKg0K
PiBlbmFibGluZyB0aGUgU01NVSBpbiB0aGUgcmVzZXQgcm91dGluZS4NCg0KU28gSSBndWVzcywg
dGhlIGlkZWEgaXMgdG8gcHJvdmlkZSBhbiBpbnRlcmZhY2UgaGVyZSB0byByZXRyaWV2ZSB0aG9z
ZSBhY3RpdmUNCnN0cmVhbSBJZHM/IFRoZSBwcm9ibGVtIGlzLCBhdCBwcmVzZW50KEFGQUlDUyks
IFJNUiBkb2VzbuKAmXQgaGF2ZSBhbnkNCm1lYW5zIHRvIHNwZWNpZnkgc3VjaCBkZXZpY2VzLiAN
Cg0KIE90aGVyd2lzZSB3ZSdyZSBqdXN0IGdvaW5nIHRvDQo+IGtpbGwgb25nb2luZyB0cmFmZmlj
IChlLmcuIEVGSSBHT1ApIHdpdGggQ19CQURfU1RFIGxvbmcgYmVmb3JlIHdlIGV2ZXINCj4gc3Rh
cnQgYWRkaW5nIGRldmljZXMgYW5kIHdvcnJ5aW5nIGFib3V0IHJlc2VydmVkIHJlZ2lvbnMgZm9y
IHRoZW0uDQo+IFNpbWlsYXJseSBmb3IgdGhlIGluaXRpYWwgU01SL1MyQ1Igc3RhdGUgb24gU01N
VXYyIHdpdGggZGlzYWJsZV9ieXBhc3MuDQoNCk9rLiBJIHNlZSB0aGUgZGlzY3Vzc2lvbiBoZXJl
LA0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvNDg0YjllOTAtNzM5NS02MTYx
LTU3N2MtNGQzZjM3MTY5OTdlQGFybS5jb20vDQoNCkZyb20gd2hhdCBJIGdhdGhlciwgdGhlIHBs
YW4gaXMgdG8gc2V0dXAgYSBkZWZhdWx0IElERU5USVRZX0RPTUFJTiBmb3INCmRldmljZXMgdGhh
dCBoYXZlIGxpdmUgc3RyZWFtIGdvaW5nIG9uIGR1cmluZyBib290L1NNTVUgcHJvYmUgdGltZS4g
DQoNClRoYW5rcywNClNoYW1lZXINCg0KPiBSb2Jpbi4NCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
U2hhbWVlciBLb2xvdGh1bSA8c2hhbWVlcmFsaS5rb2xvdGh1bS50aG9kaUBodWF3ZWkuY29tPg0K
PiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYyB8IDU2DQo+ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAgaW5jbHVkZS9saW51eC9hY3Bp
X2lvcnQuaCB8ICA0ICsrKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCsp
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYyBiL2RyaXZl
cnMvYWNwaS9hcm02NC9pb3J0LmMNCj4gPiBpbmRleCBiMzJjZDUzY2NhMDguLmMwNzAwMTQ5ZTYw
YiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jDQo+ID4gKysrIGIv
ZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYw0KPiA+IEBAIC04NDIsNiArODQyLDYwIEBAIHN0YXRp
YyBpbmxpbmUgaW50IGlvcnRfYWRkX2RldmljZV9yZXBsYXkoc3RydWN0DQo+IGRldmljZSAqZGV2
KQ0KPiA+ICAgCXJldHVybiBlcnI7DQo+ID4gICB9DQo+ID4NCj4gPiArc3RhdGljIGJvb2wgaW9y
dF9kZXZfaGFzX3JtcihzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBpb3J0X3Jtcl9lbnRyeSAq
ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGlvbW11X2Z3c3BlYyAqZndzcGVjID0gZGV2X2lvbW11
X2Z3c3BlY19nZXQoZGV2KTsNCj4gPiArCXN0cnVjdCBhY3BpX2lvcnRfbm9kZSAqaW9tbXU7DQo+
ID4gKwlzdHJ1Y3QgaW9ydF9ybXJfaWQgKnJtcl9pZHMgPSBlLT5ybXJfaWRzOw0KPiA+ICsJaW50
IGksIGo7DQo+ID4gKw0KPiA+ICsJaW9tbXUgPSBpb3J0X2dldF9pb3J0X25vZGUoZndzcGVjLT5p
b21tdV9md25vZGUpOw0KPiA+ICsNCj4gPiArCWZvciAoaSA9IDA7IGkgPCBlLT5ybXJfaWRzX251
bTsgaSsrLCBybXJfaWRzKyspIHsNCj4gPiArCQlmb3IgKGogPSAwOyBqIDwgZndzcGVjLT5udW1f
aWRzOyBqKyspIHsNCj4gPiArCQkJaWYgKHJtcl9pZHMtPnNpZCA9PSBmd3NwZWMtPmlkc1tqXSAm
Jg0KPiA+ICsJCQkgICAgcm1yX2lkcy0+c21tdSA9PSBpb21tdSkNCj4gPiArCQkJCXJldHVybiB0
cnVlOw0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiArDQo+ID4gKwlyZXR1cm4gZmFsc2U7DQo+ID4g
K30NCj4gPiArDQo+ID4gKy8qKg0KPiA+ICsgKiBpb3J0X2Rldl9ybXJfZ2V0X3Jlc3ZfcmVnaW9u
cyAtIFJNUiBSZXNlcnZlZCByZWdpb24gZHJpdmVyIGhlbHBlcg0KPiA+ICsgKiBAZGV2OiBEZXZp
Y2UgZnJvbSBpb21tdV9nZXRfcmVzdl9yZWdpb25zKCkNCj4gPiArICogQGhlYWQ6IFJlc2VydmVk
IHJlZ2lvbiBsaXN0IGZyb20gaW9tbXVfZ2V0X3Jlc3ZfcmVnaW9ucygpDQo+ID4gKyAqDQo+ID4g
KyAqIFJldHVybnM6IDAgb24gc3VjY2VzcywgPDAgZmFpbHVyZQ0KPiA+ICsgKi8NCj4gPiAraW50
IGlvcnRfZGV2X3Jtcl9nZXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IGxpc3RfaGVhZA0KPiAqaGVhZCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGlvcnRfcm1yX2VudHJ5
ICplOw0KPiA+ICsNCj4gPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoZSwgJmlvcnRfcm1yX2xpc3Qs
IGxpc3QpIHsNCj4gPiArCQlzdHJ1Y3QgaW9tbXVfcmVzdl9yZWdpb24gKnJlZ2lvbjsNCj4gPiAr
CQlzdHJ1Y3QgYWNwaV9pb3J0X3Jtcl9kZXNjICpybXI7DQo+ID4gKwkJaW50IHByb3QgPSBJT01N
VV9SRUFEIHwgSU9NTVVfV1JJVEUgfA0KPiA+ICsJCQkgICBJT01NVV9OT0VYRUMgfCBJT01NVV9N
TUlPOw0KPiA+ICsNCj4gPiArCQlpZiAoIWlvcnRfZGV2X2hhc19ybXIoZGV2LCBlKSkNCj4gPiAr
CQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCXJtciA9IGUtPnJtcl9kZXNjOw0KPiA+ICsJCXJl
Z2lvbiA9IGlvbW11X2FsbG9jX3Jlc3ZfcmVnaW9uKHJtci0+YmFzZV9hZGRyZXNzLA0KPiA+ICsJ
CQkJCQkgcm1yLT5sZW5ndGgsIHByb3QsDQo+ID4gKwkJCQkJCSBJT01NVV9SRVNWX0RJUkVDVCk7
DQo+ID4gKwkJaWYgKCFyZWdpb24pIHsNCj4gPiArCQkJZGV2X2VycihkZXYsICJPdXQgb2YgbWVt
b3J5IGFsbG9jYXRpbmcgUk1SIHJlZ2lvbnNcbiIpOw0KPiA+ICsJCQlyZXR1cm4gLUVOT01FTTsN
Cj4gPiArCQl9DQo+ID4gKwkJbGlzdF9hZGRfdGFpbCgmcmVnaW9uLT5saXN0LCBoZWFkKTsNCj4g
PiArCX0NCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgIC8qKg0K
PiA+ICAgICogaW9ydF9pb21tdV9tc2lfZ2V0X3Jlc3ZfcmVnaW9ucyAtIFJlc2VydmVkIHJlZ2lv
biBkcml2ZXIgaGVscGVyDQo+ID4gICAgKiBAZGV2OiBEZXZpY2UgZnJvbSBpb21tdV9nZXRfcmVz
dl9yZWdpb25zKCkNCj4gPiBAQCAtMTExMiw2ICsxMTY2LDggQEAgaW50IGlvcnRfaW9tbXVfbXNp
X2dldF9yZXN2X3JlZ2lvbnMoc3RydWN0DQo+IGRldmljZSAqZGV2LCBzdHJ1Y3QgbGlzdF9oZWFk
ICpoZWFkKQ0KPiA+ICAgY29uc3Qgc3RydWN0IGlvbW11X29wcyAqaW9ydF9pb21tdV9jb25maWd1
cmVfaWQoc3RydWN0IGRldmljZSAqZGV2LA0KPiA+ICAgCQkJCQkJY29uc3QgdTMyICppbnB1dF9p
ZCkNCj4gPiAgIHsgcmV0dXJuIE5VTEw7IH0NCj4gPiAraW50IGlvcnRfZGV2X3Jtcl9nZXRfcmVz
dl9yZWdpb25zKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGxpc3RfaGVhZA0KPiAqaGVhZCkN
Cj4gPiAreyByZXR1cm4gMDsgfQ0KPiA+ICAgI2VuZGlmDQo+ID4NCj4gPiAgIHN0YXRpYyBpbnQg
bmNfZG1hX2dldF9yYW5nZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHU2NCAqc2l6ZSkNCj4gPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hY3BpX2lvcnQuaCBiL2luY2x1ZGUvbGludXgvYWNwaV9p
b3J0LmgNCj4gPiBpbmRleCAyMGEzMjEyMGJiODguLjZkZDg5ZmFmMzQwYyAxMDA2NDQNCj4gPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2FjcGlfaW9ydC5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9h
Y3BpX2lvcnQuaA0KPiA+IEBAIC0zOCw2ICszOCw3IEBAIHZvaWQgaW9ydF9kbWFfc2V0dXAoc3Ry
dWN0IGRldmljZSAqZGV2LCB1NjQNCj4gKmRtYV9hZGRyLCB1NjQgKnNpemUpOw0KPiA+ICAgY29u
c3Qgc3RydWN0IGlvbW11X29wcyAqaW9ydF9pb21tdV9jb25maWd1cmVfaWQoc3RydWN0IGRldmlj
ZSAqZGV2LA0KPiA+ICAgCQkJCQkJY29uc3QgdTMyICppZF9pbik7DQo+ID4gICBpbnQgaW9ydF9p
b21tdV9tc2lfZ2V0X3Jlc3ZfcmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBsaXN0
X2hlYWQNCj4gKmhlYWQpOw0KPiA+ICtpbnQgaW9ydF9kZXZfcm1yX2dldF9yZXN2X3JlZ2lvbnMo
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgbGlzdF9oZWFkDQo+ICpoZWFkKTsNCj4gPiAgICNl
bHNlDQo+ID4gICBzdGF0aWMgaW5saW5lIHZvaWQgYWNwaV9pb3J0X2luaXQodm9pZCkgeyB9DQo+
ID4gICBzdGF0aWMgaW5saW5lIHUzMiBpb3J0X21zaV9tYXBfaWQoc3RydWN0IGRldmljZSAqZGV2
LCB1MzIgaWQpDQo+ID4gQEAgLTU1LDYgKzU2LDkgQEAgc3RhdGljIGlubGluZSBjb25zdCBzdHJ1
Y3QgaW9tbXVfb3BzDQo+ICppb3J0X2lvbW11X2NvbmZpZ3VyZV9pZCgNCj4gPiAgIHN0YXRpYyBp
bmxpbmUNCj4gPiAgIGludCBpb3J0X2lvbW11X21zaV9nZXRfcmVzdl9yZWdpb25zKHN0cnVjdCBk
ZXZpY2UgKmRldiwgc3RydWN0IGxpc3RfaGVhZA0KPiAqaGVhZCkNCj4gPiAgIHsgcmV0dXJuIDA7
IH0NCj4gPiArc3RhdGljIGlubGluZQ0KPiA+ICtpbnQgaW9ydF9kZXZfcm1yX2dldF9yZXN2X3Jl
Z2lvbnMoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgbGlzdF9oZWFkDQo+ICpoZWFkKQ0KPiA+
ICt7IHJldHVybiAwOyB9DQo+ID4gICAjZW5kaWYNCj4gPg0KPiA+ICAgI2VuZGlmIC8qIF9fQUNQ
SV9JT1JUX0hfXyAqLw0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFn
ZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
