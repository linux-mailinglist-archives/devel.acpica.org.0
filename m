Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAE127E485
	for <lists+devel-acpica@lfdr.de>; Wed, 30 Sep 2020 11:07:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2165E1545C480;
	Wed, 30 Sep 2020 02:07:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190; helo=huawei.com; envelope-from=guohanjun@huawei.com; receiver=<UNKNOWN> 
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B8AD1154B1011
	for <devel@acpica.org>; Wed, 30 Sep 2020 02:07:52 -0700 (PDT)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 7D8F18A9CA45CAADD438;
	Wed, 30 Sep 2020 17:07:49 +0800 (CST)
Received: from [10.174.179.33] (10.174.179.33) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Wed, 30 Sep 2020 17:07:42 +0800
To: Nathan Chancellor <natechancellor@gmail.com>, Robert Moore
	<robert.moore@intel.com>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J.
 Wysocki" <rafael.j.wysocki@intel.com>, Len Brown <lenb@kernel.org>
References: <20200928194554.3423466-1-natechancellor@gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <a39af625-6e2e-3cb2-ece5-ea2b2dbb7c21@huawei.com>
Date: Wed, 30 Sep 2020 17:07:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200928194554.3423466-1-natechancellor@gmail.com>
Content-Language: en-GB
X-Originating-IP: [10.174.179.33]
X-CFilter-Loop: Reflected
Message-ID-Hash: 3JMEFA5UGTVWWOOPO2LZE6UC2VYLZ247
X-Message-ID-Hash: 3JMEFA5UGTVWWOOPO2LZE6UC2VYLZ247
X-MailFrom: guohanjun@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-acpi@vger.kernel.org, devel@acpica.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI / NUMA: Add stub function for pxm_to_node
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3JMEFA5UGTVWWOOPO2LZE6UC2VYLZ247/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMC85LzI5IDM6NDUsIE5hdGhhbiBDaGFuY2VsbG9yIHdyb3RlOg0KPiBBZnRlciBjb21t
aXQgMDFmZWJhNTkwY2Q2ICgiQUNQSTogRG8gbm90IGNyZWF0ZSBuZXcgTlVNQSBkb21haW5zIGZy
b20NCj4gQUNQSSBzdGF0aWMgdGFibGVzIHRoYXQgYXJlIG5vdCBTUkFUIik6DQo+IA0KPiAkIHNj
cmlwdHMvY29uZmlnIC0tZmlsZSBhcmNoL3g4Ni9jb25maWdzL3g4Nl82NF9kZWZjb25maWcgLWQg
TlVNQSAtZSBBQ1BJX05GSVQNCj4gDQo+ICQgbWFrZSAtc2tqIiQobnByb2MpIiBkaXN0Y2xlYW4g
ZGVmY29uZmlnIGRyaXZlcnMvYWNwaS9uZml0Lw0KPiBkcml2ZXJzL2FjcGkvbmZpdC9jb3JlLmM6
IEluIGZ1bmN0aW9uIOKAmGFjcGlfbmZpdF9yZWdpc3Rlcl9yZWdpb27igJk6DQo+IGRyaXZlcnMv
YWNwaS9uZml0L2NvcmUuYzozMDEwOjI3OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YN
Cj4gZnVuY3Rpb24g4oCYcHhtX3RvX25vZGXigJk7IGRpZCB5b3UgbWVhbiDigJh4YV90b19ub2Rl
4oCZPw0KPiBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0NCj4gICAzMDEw
IHwgICBuZHJfZGVzYy0+dGFyZ2V0X25vZGUgPSBweG1fdG9fbm9kZShzcGEtPnByb3hpbWl0eV9k
b21haW4pOw0KPiAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+
DQo+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgeGFfdG9fbm9kZQ0KPiBjYzE6
IHNvbWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMNCj4gLi4uDQo+IA0KPiBBZGQg
YSBzdHViIGZ1bmN0aW9uIGxpa2UgYWNwaV9tYXBfcHhtX3RvX25vZGUgaGFkIHNvIHRoYXQgdGhl
IGJ1aWxkDQo+IGNvbnRpbnVlcyB0byB3b3JrLg0KPiANCj4gRml4ZXM6IDAxZmViYTU5MGNkNiAo
IkFDUEk6IERvIG5vdCBjcmVhdGUgbmV3IE5VTUEgZG9tYWlucyBmcm9tIEFDUEkgc3RhdGljIHRh
YmxlcyB0aGF0IGFyZSBub3QgU1JBVCIpDQo+IFNpZ25lZC1vZmYtYnk6IE5hdGhhbiBDaGFuY2Vs
bG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+DQo+IC0tLQ0KPiANCj4gSSBhbSBub3Qgc3Vy
ZSBpZiB0aGlzIGlzIHRoZSByaWdodCBwbGFjZSBvciB2YWx1ZSBmb3IgdGhpcy4gSXQgbG9va3MN
Cj4gbGlrZSB0aGVyZSBpcyBnb2luZyB0byBiZSBhbm90aGVyIHN0dWIgZnVuY3Rpb24gYWRkZWQg
aGVyZSwgd2hpY2ggaXMNCj4gZ29pbmcgdGhyb3VnaCAtbW06DQo+IA0KPiBodHRwczovL2xrbWwu
a2VybmVsLm9yZy9yLzE1OTY0MzA5NDkyNS40MDYyMzAyLjE0OTc5ODcyOTczMDQzNzcyMzA1LnN0
Z2l0QGR3aWxsaWEyLWRlc2szLmFtci5jb3JwLmludGVsLmNvbQ0KPiANCj4gICBpbmNsdWRlL2Fj
cGkvYWNwaV9udW1hLmggfCA1ICsrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvYWNwaS9hY3BpX251bWEuaCBiL2luY2x1
ZGUvYWNwaS9hY3BpX251bWEuaA0KPiBpbmRleCBmZGViY2ZjNmM4ZGYuLjA5ZWIzYmMyMGZmNSAx
MDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9hY3BpL2FjcGlfbnVtYS5oDQo+ICsrKyBiL2luY2x1ZGUv
YWNwaS9hY3BpX251bWEuaA0KPiBAQCAtMjIsNSArMjIsMTAgQEAgZXh0ZXJuIGludCBhY3BpX251
bWEgX19pbml0ZGF0YTsNCj4gICBleHRlcm4gdm9pZCBiYWRfc3JhdCh2b2lkKTsNCj4gICBleHRl
cm4gaW50IHNyYXRfZGlzYWJsZWQodm9pZCk7DQo+ICAgDQo+ICsjZWxzZQkJCQkvKiBDT05GSUdf
QUNQSV9OVU1BICovDQo+ICtzdGF0aWMgaW5saW5lIGludCBweG1fdG9fbm9kZShpbnQgcHhtKQ0K
PiArew0KPiArCXJldHVybiAwOw0KPiArfQ0KPiAgICNlbmRpZgkJCQkvKiBDT05GSUdfQUNQSV9O
VU1BICovDQo+ICAgI2VuZGlmCQkJCS8qIF9fQUNQX05VTUFfSCAqLw0KDQpMb29rcyBnb29kIHRv
IG1lLA0KDQpSZXZpZXdlZC1ieTogSGFuanVuIEd1byA8Z3VvaGFuanVuQGh1YXdlaS5jb20+Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkRldmVsIG1haWxp
bmcgbGlzdCAtLSBkZXZlbEBhY3BpY2Eub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gZGV2ZWwtbGVhdmVAYWNwaWNhLm9yZwolKHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNnaWV4
dClzLyUoX2ludGVybmFsX25hbWUpcw==
