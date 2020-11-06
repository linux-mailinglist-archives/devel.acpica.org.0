Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE7C2A9A6E
	for <lists+devel-acpica@lfdr.de>; Fri,  6 Nov 2020 18:09:28 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0E14F166765CA;
	Fri,  6 Nov 2020 09:09:27 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=robin.murphy@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id E078B166765C6
	for <devel@acpica.org>; Fri,  6 Nov 2020 09:09:24 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 090FC1474;
	Fri,  6 Nov 2020 09:09:24 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76B013F66E;
	Fri,  6 Nov 2020 09:09:21 -0800 (PST)
To: Steven Price <steven.price@arm.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "devel@acpica.org" <devel@acpica.org>
References: <20201027112646.44680-1-shameerali.kolothum.thodi@huawei.com>
 <f389e864-3d7a-3c96-8f51-c04f92759df1@arm.com>
 <36e3a0e58e334e6aa3c051000d742543@huawei.com>
 <ca4a8e2d-40d9-b08d-7ec9-6a50d37f9126@arm.com>
 <ad2f8ea7821f4b728ab32b61e4a6121e@huawei.com>
 <5ce01d8d-c2dc-8c13-0f48-b3b35254c810@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fa51fe8a-9c69-6800-7ccc-9b7f6ef52790@arm.com>
Date: Fri, 6 Nov 2020 17:09:19 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <5ce01d8d-c2dc-8c13-0f48-b3b35254c810@arm.com>
Content-Language: en-GB
Message-ID-Hash: WK6WRP7Y47I4UF55AYMY7I22E46AMBCW
X-Message-ID-Hash: WK6WRP7Y47I4UF55AYMY7I22E46AMBCW
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "joro@8bytes.org" <joro@8bytes.org>, Jonathan Cameron <jonathan.cameron@huawei.com>, Linuxarm <linuxarm@huawei.com>, Sami Mujawar <Sami.Mujawar@arm.com>, wanghuiqiang <wanghuiqiang@huawei.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC PATCH 0/4] ACPI/IORT: Support for IORT RMR node
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WK6WRP7Y47I4UF55AYMY7I22E46AMBCW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMC0xMS0wNiAxNjoyNiwgU3RldmVuIFByaWNlIHdyb3RlOg0KPiBPbiAwNi8xMS8yMDIw
IDE2OjE3LCBTaGFtZWVyYWxpIEtvbG90aHVtIFRob2RpIHdyb3RlOg0KPj4NCj4+DQo+Pj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+PiBGcm9tOiBTdGV2ZW4gUHJpY2UgW21haWx0bzpz
dGV2ZW4ucHJpY2VAYXJtLmNvbV0NCj4+PiBTZW50OiAwNiBOb3ZlbWJlciAyMDIwIDE1OjIyDQo+
Pj4gVG86IFNoYW1lZXJhbGkgS29sb3RodW0gVGhvZGkgPHNoYW1lZXJhbGkua29sb3RodW0udGhv
ZGlAaHVhd2VpLmNvbT47DQo+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
OyBsaW51eC1hY3BpQHZnZXIua2VybmVsLm9yZzsNCj4+PiBpb21tdUBsaXN0cy5saW51eC1mb3Vu
ZGF0aW9uLm9yZzsgZGV2ZWxAYWNwaWNhLm9yZw0KPj4+IENjOiBsb3JlbnpvLnBpZXJhbGlzaUBh
cm0uY29tOyBqb3JvQDhieXRlcy5vcmc7IEpvbmF0aGFuIENhbWVyb24NCj4+PiA8am9uYXRoYW4u
Y2FtZXJvbkBodWF3ZWkuY29tPjsgTGludXhhcm0gPGxpbnV4YXJtQGh1YXdlaS5jb20+Ow0KPj4+
IEd1b2hhbmp1biAoSGFuanVuIEd1bykgPGd1b2hhbmp1bkBodWF3ZWkuY29tPjsgU2FtaSBNdWph
d2FyDQo+Pj4gPFNhbWkuTXVqYXdhckBhcm0uY29tPjsgcm9iaW4ubXVycGh5QGFybS5jb207IHdh
bmdodWlxaWFuZw0KPj4+IDx3YW5naHVpcWlhbmdAaHVhd2VpLmNvbT4NCj4+PiBTdWJqZWN0OiBS
ZTogW1JGQyBQQVRDSCAwLzRdIEFDUEkvSU9SVDogU3VwcG9ydCBmb3IgSU9SVCBSTVIgbm9kZQ0K
Pj4+DQo+Pj4gT24gMjgvMTAvMjAyMCAxODoyNCwgU2hhbWVlcmFsaSBLb2xvdGh1bSBUaG9kaSB3
cm90ZToNCj4+Pj4gSGkgU3RldmUsDQo+Pj4+DQo+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPj4+Pj4gRnJvbTogU3RldmVuIFByaWNlIFttYWlsdG86c3RldmVuLnByaWNlQGFybS5j
b21dDQo+Pj4+PiBTZW50OiAyOCBPY3RvYmVyIDIwMjAgMTY6NDQNCj4+Pj4+IFRvOiBTaGFtZWVy
YWxpIEtvbG90aHVtIFRob2RpIDxzaGFtZWVyYWxpLmtvbG90aHVtLnRob2RpQGh1YXdlaS5jb20+
Ow0KPj4+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1hY3Bp
QHZnZXIua2VybmVsLm9yZzsNCj4+Pj4+IGlvbW11QGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3Jn
OyBkZXZlbEBhY3BpY2Eub3JnDQo+Pj4+PiBDYzogbG9yZW56by5waWVyYWxpc2lAYXJtLmNvbTsg
am9yb0A4Ynl0ZXMub3JnOyBKb25hdGhhbiBDYW1lcm9uDQo+Pj4+PiA8am9uYXRoYW4uY2FtZXJv
bkBodWF3ZWkuY29tPjsgTGludXhhcm0gPGxpbnV4YXJtQGh1YXdlaS5jb20+Ow0KPj4+Pj4gR3Vv
aGFuanVuIChIYW5qdW4gR3VvKSA8Z3VvaGFuanVuQGh1YXdlaS5jb20+Ow0KPj4+IHJvYmluLm11
cnBoeUBhcm0uY29tOw0KPj4+Pj4gd2FuZ2h1aXFpYW5nIDx3YW5naHVpcWlhbmdAaHVhd2VpLmNv
bT47IFNhbWkgTXVqYXdhcg0KPj4+Pj4gPFNhbWkuTXVqYXdhckBhcm0uY29tPg0KPj4+Pj4gU3Vi
amVjdDogUmU6IFtSRkMgUEFUQ0ggMC80XSBBQ1BJL0lPUlQ6IFN1cHBvcnQgZm9yIElPUlQgUk1S
IG5vZGUNCj4+Pj4+DQo+Pj4+PiBPbiAyNy8xMC8yMDIwIDExOjI2LCBTaGFtZWVyIEtvbG90aHVt
IHdyb3RlOg0KPj4+Pj4+IFRoZSBzZXJpZXMgYWRkcyBzdXBwb3J0IHRvIElPUlQgUk1SIG5vZGVz
IHNwZWNpZmllZCBpbiBJT1JUDQo+Pj4+Pj4gUmV2aXNpb24gRSAtQVJNIERFTiAwMDQ5RVswXS4g
Uk1SIG5vZGVzIGFyZcKgdXNlZCB0b8KgZGVzY3JpYmUgbWVtb3J5DQo+Pj4+Pj4gcmFuZ2VzIHRo
YXQgYXJlIHVzZWQgYnkgZW5kcG9pbnRzIGFuZCByZXF1aXJlIGEgdW5pdHkgbWFwcGluZw0KPj4+
Pj4+IGluIFNNTVUuDQo+Pj4+Pg0KPj4+Pj4gSGkgU2hhbWVlciwNCj4+Pj4+DQo+Pj4+PiBJJ3Zl
IGFsc28gYmVlbiB0YWtpbmcgYSBsb29rIGF0IFJNUiwgYW5kIFNhbWkgaXMgaGVscGluZyBtZSBn
ZXQgc2V0IHVwDQo+Pj4+PiBzbyB0aGF0IEkgY2FuIGRvIHNvbWUgdGVzdGluZy4gV2UncmUgaG9w
aW5nIHRvIGJlIGFibGUgdG8gdGVzdCBhbiBFRkkNCj4+Pj4+IGZyYW1lYnVmZmVyIG9yIHNwbGFz
aCBzY3JlZW4gLSB3aGljaCBoYXMgdGhlIGFkZGVkIGNvbXBsaWNhdGlvbiBvZiB0aGUNCj4+Pj4+
IHVuaXR5IG1hcHBpbmcgYmVjb21pbmcgcmVkdW5kYW50IGlmIGEgbmF0aXZlIGRpc3BsYXkgZHJp
dmVyIHRha2VzIG92ZXINCj4+Pj4+IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIuDQo+Pj4+Pg0KPj4+
Pj4gSSd2ZSBsb29rZWQgdGhyb3VnaCB5b3VyIHNlcmllcyBhbmQgdGhlIGNvZGUgbG9va3MgY29y
cmVjdCB0byBtZS4NCj4+Pj4NCj4+Pj4gVGhhbmtzIGZvciB0YWtpbmcgYSBsb29rIGFuZCB0aGUg
ZGV0YWlscy4NCj4+Pj4NCj4+Pj4+IEhvcGVmdWxseSBJJ2xsIGJlIGFibGUgdG8gZ2l2ZSBpdCBz
b21lIHRlc3Rpbmcgc29vbi4NCj4+Pj4NCj4+Pj4gQ29vbC4gUGxlYXNlIHVwZGF0ZSBvbmNlIHlv
dSBnZXQgYSBjaGFuY2UgcnVuIHRoZSB0ZXN0cy4NCj4+Pg0KPj4+IEhpIFNoYW1lZXIsDQo+Pg0K
Pj4gSGkgU3RldmUsDQo+Pg0KPj4+IEp1c3QgdG8gdXBkYXRlIG9uIHRoaXMsIGZvciB0aGUgRUZJ
IGZyYW1lYnVmZmVyIHVzZSBjYXNlIEkgaGl0IGV4YWN0bHkNCj4+PiB0aGUgaXNzdWUgdGhhdCBS
b2JpbiBoYXMgbWVudGlvbmVkIGluIGFub3RoZXIgdGhyZWFkIC0gdGhlIFJNUiBpcw0KPj4+IGVm
ZmVjdGl2ZWx5IGlnbm9yZWQgYmVjYXVzZSB0aGUgZGlzcGxheSBjb250cm9sbGVyIGlzbid0IGJl
aW5nIGhhbmRsZWQNCj4+PiBieSBMaW51eCAoc28gdGhlcmUncyBubyBkZXZpY2UgdG8gbGluayBp
dCB0bykuDQo+Pg0KPj4gVGhhbmtzIGZvciB0aGUgdXBkYXRlLiBIZXJlLCBieSAiaWdub3JlZCAi
eW91IG1lYW50IGdldF9yZXN2X3JlZ2lvbnMoKQ0KPj4gaXMgbm90IGNhbGxlZCBvciBub3Q/DQo+
IA0KPiBnZXRfcmVzdl9yZWdpb25zKCkgaXNuJ3QgY2FsbGVkLg0KDQpSaWdodCwgQUlVSSB0aGUg
RUZJIGZyYW1lYnVmZmVyICJkZXZpY2UiIHByZXR0eSBtdWNoIGp1c3QgcmVwcmVzZW50cyBhIA0K
bWFnaWMgcmVnaW9uIG9mIFJBTSwgd2hvc2UgZXhpc3RlbmNlIGlzIGJhc2VkIG9uIEVGSSBzZXJ2
aWNlcyAtIHNlZSANCnJlZ2lzdGVyX2dvcF9kZXZpY2UoKSAtIHJlZ2FyZGxlc3Mgb2Ygd2hldGhl
ciB0aGUgdW5kZXJseWluZyBwaHlzaWNhbCANCmhhcmR3YXJlIGlzIGRlc2NyaWJlZCBpbiBEU0RU
IGFuZCBJT1JUIHN1Y2ggdGhhdCBhIHRhbmdlbnRpYWwgDQppb21tdV9wcm9iZV9kZXZpY2UoKSBj
YWxsIG1pZ2h0IGhhcHBlbiBhdCBhbGwuDQoNClJvYmluLg0KDQo+PiDCoCBUaGUgc3BsYXNoIHNj
cmVlbiBtaWdodA0KPj4+IHNpbWlsYXJseSBmbGlja2VyIGFzIHRoZSBTTU1VIHJlc2V0IHdpbGwg
aW5pdGlhbGx5IGJsb2NrIHRoZSB0cmFmZmljDQo+Pj4gYmVmb3JlIHRoZSBSTVIgcmVnaW9uIGlz
IGVuYWJsZWQuDQo+Pg0KPj4gRG9lcyB0aGF0IG1lYW4geW91IHNvbWVob3cgbWFuYWdlZCB0byBt
YWtlIHRoZSB1bml0eQ0KPj4gbWFwcGluZyBidXQgdGhlcmUgd2FzIGZsaWNrZXIgZHVyaW5nIHRo
ZSBTTU1VIHJlc2V0IHRvDQo+PiB1bml0eSBtYXBwaW5nIHNldHVwIHBlcmlvZC4gU29ycnkgSSBh
bSB0cnlpbmcgdG8gdW5kZXJzdGFuZA0KPj4gdGhlIGV4YWN0IGJlaGF2aW9yIG9ic2VydmVkIGlu
IHRoaXMgY2FzZS4NCj4gDQo+IEkgaGF2ZW4ndCB5ZXQgZ290IHRoaXMgY29tcGxldGVseSB3b3Jr
aW5nIChvbiB0aGUgYm9hcmQgd2hpY2ggSSdtIA0KPiB0ZXN0aW5nIHRoZSBkaXNwbGF5IGNvbnRy
b2xsZXIgZG9lc24ndCBoYXZlIGFueSBleGlzdGluZyBBQ1BJIGJpbmRpbmdzKS4gDQo+IEhvd2V2
ZXIgZnJvbSB3aGF0IEkgdW5kZXJzdGFuZCB0aGUgU01NVSByZXNldCB3b3VsZCBibG9jayBhbGwg
bWVtb3J5IA0KPiBhY2Nlc3MgZm9yIHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgYmVmb3JlIHRoZSBS
TVIgcmVnaW9uIHdvdWxkIGJlIHNldHVwLiANCj4gSSdtIGdvaW5nIHRvIHRyeSB0byBnZXQgdGhl
IGRpc3BsYXkgY29udHJvbGxlciB3b3JraW5nIHdpdGggQUNQSSBzbyBJIA0KPiBjYW4gdGVzdCB0
aGlzIHByb3Blcmx5Lg0KPiANCj4gU3RldmUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KRGV2ZWwgbWFpbGluZyBsaXN0IC0tIGRldmVsQGFjcGljYS5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnCiUo
d2ViX3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0KXMvJShfaW50ZXJuYWxfbmFtZSlz
