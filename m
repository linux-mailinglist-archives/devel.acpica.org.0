Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5AE523535
	for <lists+devel-acpica@lfdr.de>; Wed, 11 May 2022 16:17:40 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9A474100F393B;
	Wed, 11 May 2022 07:17:38 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 3BBC1100EA2C1
	for <devel@acpica.org>; Wed, 11 May 2022 07:17:35 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F5ADED1;
	Wed, 11 May 2022 07:17:35 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB2473F66F;
	Wed, 11 May 2022 07:17:33 -0700 (PDT)
Date: Wed, 11 May 2022 15:17:31 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Pierre Gondois <pierre.gondois@arm.com>
Message-ID: <20220511141731.rjyjmgvux43lsj3x@bogus>
References: <20220511134559.1466925-1-pierre.gondois@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511134559.1466925-1-pierre.gondois@arm.com>
Message-ID-Hash: CEQN2YW2XVLMNHZZJQ6636GAVNYWGIW7
X-Message-ID-Hash: CEQN2YW2XVLMNHZZJQ6636GAVNYWGIW7
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-kernel@vger.kernel.org, Ionela.Voinescu@arm.com, Dietmar.Eggemann@arm.com, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/5] ACPI: CPPC: Check _OSC for flexible address space
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CEQN2YW2XVLMNHZZJQ6636GAVNYWGIW7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTEsIDIwMjIgYXQgMDM6NDU6NTVQTSArMDIwMCwgUGllcnJlIEdvbmRvaXMg
d3JvdGU6DQo+IEFDUEkgNi4yIFNlY3Rpb24gNi4yLjExLjIgJ1BsYXRmb3JtLVdpZGUgT1NQTSBD
YXBhYmlsaXRpZXMnOg0KPiAgIFN0YXJ0aW5nIHdpdGggQUNQSSBTcGVjaWZpY2F0aW9uIDYuMiwg
YWxsIF9DUEMgcmVnaXN0ZXJzIGNhbiBiZSBpbg0KPiAgIFBDQywgU3lzdGVtIE1lbW9yeSwgU3lz
dGVtIElPLCBvciBGdW5jdGlvbmFsIEZpeGVkIEhhcmR3YXJlIGFkZHJlc3MNCj4gICBzcGFjZXMu
IE9TUE0gc3VwcG9ydCBmb3IgdGhpcyBtb3JlIGZsZXhpYmxlIHJlZ2lzdGVyIHNwYWNlIHNjaGVt
ZSBpcw0KPiAgIGluZGljYXRlZCBieSB0aGUg4oCcRmxleGlibGUgQWRkcmVzcyBTcGFjZSBmb3Ig
Q1BQQyBSZWdpc3RlcnPigJ0gX09TQyBiaXQNCj4gDQo+IE90aGVyd2lzZSAoY2YgQUNQSSA2LjEs
IHM4LjQuNy4xLjEuWCksIF9DUEMgcmVnaXN0ZXJzIG11c3QgYmUgaW46DQo+IC0gUENDIG9yIEZ1
bmN0aW9uYWwgRml4ZWQgSGFyZHdhcmUgYWRkcmVzcyBzcGFjZSBpZiBkZWZpbmVkDQo+IC0gU3lz
dGVtTWVtb3J5IGFkZHJlc3Mgc3BhY2UgKE5VTEwgcmVnaXN0ZXIpIGlmIG5vdCBkZWZpbmVkDQo+
IA0KPiBBZGQgdGhlIGNvcnJlc3BvbmRpbmcgX09TQyBiaXQgYW5kIGNoZWNrIGl0IHdoZW4gcGFy
c2luZyBfQ1BDIG9iamVjdHMuDQo+DQoNCkxvb2tzIGdvb2QsIG90aGVyIHRoYW4gYSBtaW5vciBu
aXQgYmVsb3cuIEZlZWwgZnJlZSB0byBpZ25vcmUgdGhhdCBvcg0KY2hlY2sgd2hhdCBpcyBSYWZh
ZWwncyBwcmVmZXJlbmNlLiBPdGhlcndpc2UsDQoNClJldmlld2VkLWJ5OiBTdWRlZXAgSG9sbGEg
PHN1ZGVlcC5ob2xsYUBhcm0uY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFBpZXJyZSBHb25kb2lz
IDxwaWVycmUuZ29uZG9pc0Bhcm0uY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvYWNwaS9idXMuYyAg
ICAgICB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9hY3BpL2NwcGNfYWNwaS5j
IHwgIDkgKysrKysrKysrDQo+ICBpbmNsdWRlL2xpbnV4L2FjcGkuaCAgICAgfCAgMiArKw0KPiAg
MyBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspDQo+DQpbLi4uXQ0KDQo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2FjcGkuaCBiL2luY2x1ZGUvbGludXgvYWNwaS5oDQo+IGluZGV4
IGQ3MTM2ZDEzYWE0NC4uOTc3ZDc0ZDA0NjViIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L2FjcGkuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2FjcGkuaA0KPiBAQCAtNTc0LDYgKzU3NCw3
IEBAIGFjcGlfc3RhdHVzIGFjcGlfcnVuX29zYyhhY3BpX2hhbmRsZSBoYW5kbGUsIHN0cnVjdCBh
Y3BpX29zY19jb250ZXh0ICpjb250ZXh0KTsNCj4gICNkZWZpbmUgT1NDX1NCX09TTFBJX1NVUFBP
UlQJCQkweDAwMDAwMTAwDQo+ICAjZGVmaW5lIE9TQ19TQl9DUENfRElWRVJTRV9ISUdIX1NVUFBP
UlQJCTB4MDAwMDEwMDANCj4gICNkZWZpbmUgT1NDX1NCX0dFTkVSSUNfSU5JVElBVE9SX1NVUFBP
UlQJMHgwMDAwMjAwMA0KPiArI2RlZmluZSBPU0NfU0JfQ1BDX0ZMRVhJQkxFX0FEUl9TUAkJMHgw
MDAwNDAwMA0KDQpJIHdvdWxkIHByZWZlciBBRFJfU1BBQ0UgaW5zdGVhZCBvZiBBRFJfU1AuDQoN
Ci0tIA0KUmVnYXJkcywNClN1ZGVlcApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJf
cGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
