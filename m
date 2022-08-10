Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A84A58EE59
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Aug 2022 16:31:00 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 71A30100EA2A1;
	Wed, 10 Aug 2022 07:30:58 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 011F5100EA93F
	for <devel@acpica.org>; Wed, 10 Aug 2022 07:30:56 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 201DF23A;
	Wed, 10 Aug 2022 07:30:57 -0700 (PDT)
Received: from [192.168.122.164] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0C813F67D;
	Wed, 10 Aug 2022 07:30:55 -0700 (PDT)
Message-ID: <4da7cd19-4b98-9360-922f-d625c4ec55e0@arm.com>
Date: Wed, 10 Aug 2022 09:30:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Lukasz Luba <lukasz.luba@arm.com>
References: <20220728221043.4161903-1-jeremy.linton@arm.com>
 <20220728221043.4161903-2-jeremy.linton@arm.com>
 <3a5e7abd-9361-11ba-978d-8e8bae00ea31@arm.com>
From: Jeremy Linton <jeremy.linton@arm.com>
In-Reply-To: <3a5e7abd-9361-11ba-978d-8e8bae00ea31@arm.com>
Message-ID-Hash: ZMOO7UINFE2FM2ISUPDFNI46UCF7LLV4
X-Message-ID-Hash: ZMOO7UINFE2FM2ISUPDFNI46UCF7LLV4
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: rafael@kernel.org, viresh.kumar@linaro.org, devel@acpica.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, vschneid@redhat.com, Ionela Voinescu <ionela.voinescu@arm.com>, Dietmar Eggemann <dietmar.eggemann@arm.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZMOO7UINFE2FM2ISUPDFNI46UCF7LLV4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDgvMTAvMjIgMDc6MjksIEx1a2FzeiBMdWJhIHdyb3RlOg0KPiBIaSBKZXJlbXks
DQo+IA0KPiArQ0MgVmFsZW50aW4gc2luY2UgaGUgbWlnaHQgYmUgaW50ZXJlc3RlZCBpbiB0aGlz
IGZpbmRpbmcNCj4gK0NDIElvbmVsYSwgRGlldG1hcg0KPiANCj4gSSBoYXZlIGEgZmV3IGNvbW1l
bnRzIGZvciB0aGlzIHBhdGNoLg0KPiANCj4gDQo+IE9uIDcvMjgvMjIgMjM6MTAsIEplcmVteSBM
aW50b24gd3JvdGU6DQo+PiBQQ0MgcmVnaW9ucyB1dGlsaXplIGEgbWFpbGJveCB0byBzZXQvcmV0
cmlldmUgcmVnaXN0ZXIgdmFsdWVzIHVzZWQgYnkNCj4+IHRoZSBDUFBDIGNvZGUuIFRoaXMgaXMg
ZmluZSBhcyBsb25nIGFzIHRoZSBvcGVyYXRpb25zIGFyZQ0KPj4gaW5mcmVxdWVudC4gV2l0aCB0
aGUgRklFIGNvZGUgZW5hYmxlZCB0aG91Z2ggdGhlIG92ZXJoZWFkIGNhbiByYW5nZQ0KPj4gZnJv
bSAyLTExJSBvZiBzeXN0ZW0gQ1BVIG92ZXJoZWFkIChleDogYXMgbWVhc3VyZWQgYnkgdG9wKSBv
biBBcm0NCj4+IGJhc2VkIG1hY2hpbmVzLg0KPj4NCj4+IFNvLCBiZWZvcmUgZW5hYmxpbmcgRklF
IGFzc3VyZSBub25lIG9mIHRoZSByZWdpc3RlcnMgdXNlZCBieQ0KPj4gY3BwY19nZXRfcGVyZl9j
dHJzKCkgYXJlIGluIHRoZSBQQ0MgcmVnaW9uLiBGdXJ0aGVybW9yZSBsZXRzIGFsc28NCj4+IGVu
YWJsZSBhIG1vZHVsZSBwYXJhbWV0ZXIgd2hpY2ggY2FuIGFsc28gZGlzYWJsZSBpdCBhdCBib290
IG9yIG1vZHVsZQ0KPj4gcmVsb2FkLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEplcmVteSBMaW50
b24gPGplcmVteS5saW50b25AYXJtLmNvbT4NCj4+IC0tLQ0KPj4gwqAgZHJpdmVycy9hY3BpL2Nw
cGNfYWNwaS5jwqDCoMKgwqDCoMKgIHwgNDEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKw0KPj4gwqAgZHJpdmVycy9jcHVmcmVxL2NwcGNfY3B1ZnJlcS5jIHwgMTkgKysrKysrKysr
KysrLS0tLQ0KPj4gwqAgaW5jbHVkZS9hY3BpL2NwcGNfYWNwaS5owqDCoMKgwqDCoMKgIHzCoCA1
ICsrKysrDQo+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+IA0KPiANCj4gMS4gWW91IGFzc3VtZSB0aGF0IGFsbCBwbGF0Zm9ybXMgd291bGQg
aGF2ZSB0aGlzIGJpZyBvdmVyaGVhZCB3aGVuDQo+ICDCoMKgIHRoZXkgaGF2ZSB0aGUgUENDIHJl
Z2lvbnMgZm9yIHRoaXMgcHVycG9zZS4NCj4gIMKgwqAgRG8gd2Uga25vdyB3aGljaCB2ZXJzaW9u
IG9mIEhXIG1haWxib3ggaGF2ZSBiZWVuIGltcGxlbWVudGVkDQo+ICDCoMKgIGFuZCB1c2VkIHRo
YXQgaGF2ZSB0aGlzIDItMTElIG92ZXJoZWFkIGluIGEgcGxhdGZvcm0/DQo+ICDCoMKgIERvIGFs
c28gbW9yZSByZWNlbnQgTUhVIGhhdmUgc3VjaCBpc3N1ZXMsIHNvIHdlIGNvdWxkIGJsb2NrDQo+
ICDCoMKgIHRoZW0gYnkgZGVmYXVsdCAobGlrZSBpbiB5b3VyIGNvZGUpPw0KDQpJIHBvc3RlZCB0
aGF0IG90aGVyIGVtYWlsIGJlZm9yZSBiZWluZyBhd2FrZSBhbmQgY29uZmxhdGVkIE1IVSB3aXRo
IEFNVSANCih3aGljaCBjb3VsZCBwb3RlbnRpYWxseSBleHBvc2UgdGhlIHZhbHVlcyBkaXJlY3Rs
eSkuIEJ1dCB0aGUgQ1BQQyBjb2RlIA0KaXNuJ3QgYXdhcmUgb2Ygd2hldGhlciBhIE1IVSBvciBz
b21lIG90aGVyIG1haWxib3ggaXMgaW4gdXNlLiBFaXRoZXIgDQp3YXksIGl0cyBoYXJkIHRvIGlt
YWdpbmUgYSBnZW5lcmFsIG1haWxib3ggd2l0aCBhIGRvb3JiZWxsL3dhaXQgZm9yIA0KY29tcGxl
dGlvbiBoYW5kc2hha2Ugd2lsbCBldmVyIGJlIGZhc3QgZW5vdWdoIHRvIGNvbnNpZGVyIHJ1bm5p
bmcgYXQgdGhlIA0KZ3JhbnVsYXJpdHkgdGhpcyBjb2RlIGlzIHJ1bm5pbmcgYXQuIElmIHRoZXJl
IHdlcmUgYSBjYXNlIGxpa2UgdGhhdCwgdGhlIA0Ka2VybmVsIHdvdWxkIGhhdmUgdG8gYmVuY2ht
YXJrIGl0IGF0IHJ1bnRpbWUgdG8gZGlmZmVyZW50aWF0ZSBpdCBmcm9tIA0Kc29tZXRoaW5nIHRo
YXQgaXMgdGFsa2luZyBvdmVyIGEgc2xvdyBsaW5rIHRvIGEgc2xvd2x5IHJlc3BvbmRpbmcgbWdt
dCANCnByb2Nlc3Nvci4NCg0KDQo+IA0KPiAyLiBJIHdvdWxkIHByZWZlciB0byBzaW1wbHkgY2hh
bmdlIHRoZSBkZWZhdWx0IEtjb25maWcgdmFsdWUgdG8gJ24nIGZvcg0KPiAgwqDCoCB0aGUgQUNQ
SV9DUFBDX0NQVUZSRVFfRklFLCBpbnN0ZWFkIG9mIGNyZWF0aW5nIGEgcnVudGltZQ0KPiAgwqDC
oCBjaGVjayBjb2RlIHdoaWNoIGRpc2FibGVzIGl0Lg0KPiAgwqDCoCBXZSBoYXZlIHByb2JhYmx5
IGludHJvZHVjZSB0aGlzIG92ZXJoZWFkIGZvciBvbGRlciBwbGF0Zm9ybXMgd2l0aA0KPiAgwqDC
oCB0aGlzIGNvbW1pdDoNCj4gDQo+IGNvbW1pdCA0YzM4ZjJkZjcxYzhlMzNjMGI2NDg2NTk5MmQ2
OTNmNTAyMmVlYWFkDQo+IEF1dGhvcjogVmlyZXNoIEt1bWFyIDx2aXJlc2gua3VtYXJAbGluYXJv
Lm9yZz4NCj4gRGF0ZTrCoMKgIFR1ZSBKdW4gMjMgMTU6NDk6NDAgMjAyMCArMDUzMA0KPiANCj4g
IMKgwqDCoCBjcHVmcmVxOiBDUFBDOiBBZGQgc3VwcG9ydCBmb3IgZnJlcXVlbmN5IGludmFyaWFu
Y2UNCj4gDQo+IA0KPiANCj4gSWYgdGhlIHRlc3Qgc2VydmVyIHdpdGggdGhpcyBjb25maWcgZW5h
YmxlZCBwZXJmb3JtcyB3ZWxsDQo+IGluIHRoZSBzdHJlc3MtdGVzdHMsIHRoZW4gb24gcHJvZHVj
dGlvbiBzZXJ2ZXIgdGhlIGNvbmZpZyBtYXkgYmUNCj4gc2V0IHRvICd5JyAob3IgJ20nIGFuZCBs
b2FkZWQpLg0KPiANCj4gSSB3b3VsZCB2b3RlIHRvIG5vdCBhZGQgZXh0cmEgY29kZSwgd2hpY2gg
dGhlbiBhZnRlciBhIHdoaWxlIG1pZ2h0IGJlDQo+IGRlY2lkZWQgdG8gYncgZXh0ZW5kZWQgYmVj
YXVzZSBhY3R1YWxseSBzb21lIEhXIGlzIGFjdHVhbGx5IGNhcGFibGUgKHNvDQo+IHdlIGNvdWxk
IGNoZWNrIGluIHJ1bnRpbWUgYW5kIGVuYWJsZSBpdCkuIElNTyB0aGlzIGNyZWF0ZSBhbiBhZGRp
dGlvbmFsDQo+IGNvbXBsZXhpdHkgaW4gb3VyIGRpdmVyc2UgY29uZmlndXJhdGlvbi90dW5uYWJs
ZSBzcGFjZSBpbiBvdXIgY29kZS4NCj4gDQo+IFdoZW4gd2UgZG9uJ3QgY29tcGlsZS1pbiB0aGlz
LCB3ZSBzaG91bGQgZmFsbGJhY2sgdG8gb2xkLXN0eWxlDQo+IEZJRSwgd2hpY2ggaGFzIGJlZW4g
dXNlZCBvbiB0aGVzZSBvbGQgcGxhdGZvcm1zLg0KPiANCj4gQlRXIChJIGhhdmUgdG8gbGVhdmUg
aXQgaGVyZSkgdGhlIGZpcnN0LWNsYXNzIHNvbHV0aW9uIGZvciB0aG9zZSBzZXJ2ZXJzDQo+IGlz
IHRvIGltcGxlbWVudCBBTVUgY291bnRlcnMsIHNvIHRoZSBvdmVyaGVhZCB0byByZXRyaWV2ZSB0
aGlzIGluZm8gaXMNCj4gcmVhbGx5IGxvdy4NCj4gDQo+IFJlZ2FyZHMsDQo+IEx1a2Fzeg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KRGV2ZWwgbWFpbGlu
ZyBsaXN0IC0tIGRldmVsQGFjcGljYS5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnCiUod2ViX3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0
KXMvJShfaW50ZXJuYWxfbmFtZSlz
