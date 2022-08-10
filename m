Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 662A658EDED
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Aug 2022 16:08:26 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9C367100EA93D;
	Wed, 10 Aug 2022 07:08:22 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 6E6B9100EA93B
	for <devel@acpica.org>; Wed, 10 Aug 2022 07:08:20 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 977861FB;
	Wed, 10 Aug 2022 07:08:20 -0700 (PDT)
Received: from [192.168.122.164] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D2B13F67D;
	Wed, 10 Aug 2022 07:08:19 -0700 (PDT)
Message-ID: <6f565c2d-e7cb-f5a2-0b38-995c9cd2deec@arm.com>
Date: Wed, 10 Aug 2022 09:08:14 -0500
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
Message-ID-Hash: Y2BMDJB35VQDR2PHQ56HZLJCC57XCMYH
X-Message-ID-Hash: Y2BMDJB35VQDR2PHQ56HZLJCC57XCMYH
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: rafael@kernel.org, viresh.kumar@linaro.org, devel@acpica.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, vschneid@redhat.com, Ionela Voinescu <ionela.voinescu@arm.com>, Dietmar Eggemann <dietmar.eggemann@arm.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Y2BMDJB35VQDR2PHQ56HZLJCC57XCMYH/>
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
ICDCoMKgIHRoZW0gYnkgZGVmYXVsdCAobGlrZSBpbiB5b3VyIGNvZGUpPw0KDQpXZWxsLCB0aGUg
bWFpbGJveCBuYXR1cmUgb2YgUENDIHByZXR0eSBtdWNoIGFzc3VyZXMgaXRzICJzbG93IiwgcmVs
YXRpdmUgDQp0aGUgYWx0ZXJuYXRpdmUgb2YgcHJvdmlkaW5nIGFuIGFjdHVhbCByZWdpc3Rlci4g
IElmIGEgcGxhdGZvcm0gcHJvdmlkZXMgDQpkaXJlY3QgYWNjZXNzIHRvIHNheSBNSFUgcmVnaXN0
ZXJzLCB0aGVuIG9mIGNvdXJzZSB0aGV5IHdvbid0IGFjdHVhbGx5IA0KYmUgaW4gYSBQQ0MgcmVn
aW9uIGFuZCB0aGUgRklFIHdpbGwgcmVtYWluIG9uLg0KDQoNCj4gDQo+IDIuIEkgd291bGQgcHJl
ZmVyIHRvIHNpbXBseSBjaGFuZ2UgdGhlIGRlZmF1bHQgS2NvbmZpZyB2YWx1ZSB0byAnbicgZm9y
DQo+ICDCoMKgIHRoZSBBQ1BJX0NQUENfQ1BVRlJFUV9GSUUsIGluc3RlYWQgb2YgY3JlYXRpbmcg
YSBydW50aW1lDQo+ICDCoMKgIGNoZWNrIGNvZGUgd2hpY2ggZGlzYWJsZXMgaXQuDQo+ICDCoMKg
IFdlIGhhdmUgcHJvYmFibHkgaW50cm9kdWNlIHRoaXMgb3ZlcmhlYWQgZm9yIG9sZGVyIHBsYXRm
b3JtcyB3aXRoDQo+ICDCoMKgIHRoaXMgY29tbWl0Og0KDQpUaGUgcHJvYmxlbSBoZXJlIGlzIHRo
YXQgdGhlc2UgQUNQSSBrZXJuZWxzIGFyZSBiZWluZyBzaGlwcGVkIGFzIHNpbmdsZSANCmltYWdl
cyBpbiBkaXN0cm8ncyB3aGljaCBleHBlY3QgdGhlbSB0byBydW4gb24gYSB3aWRlIHJhbmdlIG9m
IHBsYXRmb3JtcyANCihpbmNsdWRpbmcgeDg2L2FtZCBpbiB0aGlzIGNhc2UpLCBhbmQgcHJlZm9y
bSBvcHRpbWFsbHkgb24gYWxsIG9mIHRoZW0uDQoNClNvIHRoZSAnbicgb3B0aW9uIGJhc2ljYWxs
eSBpcyBzYXlpbmcgdGhhdCB0aGUgbGF0ZXN0IEZJRSBjb2RlIGRvZXNuJ3QgDQpwcm92aWRlIGEg
YmVmaXQgYW55d2hlcmU/DQoNCg0KPiANCj4gY29tbWl0IDRjMzhmMmRmNzFjOGUzM2MwYjY0ODY1
OTkyZDY5M2Y1MDIyZWVhYWQNCj4gQXV0aG9yOiBWaXJlc2ggS3VtYXIgPHZpcmVzaC5rdW1hckBs
aW5hcm8ub3JnPg0KPiBEYXRlOsKgwqAgVHVlIEp1biAyMyAxNTo0OTo0MCAyMDIwICswNTMwDQo+
IA0KPiAgwqDCoMKgIGNwdWZyZXE6IENQUEM6IEFkZCBzdXBwb3J0IGZvciBmcmVxdWVuY3kgaW52
YXJpYW5jZQ0KPiANCj4gDQo+IA0KPiBJZiB0aGUgdGVzdCBzZXJ2ZXIgd2l0aCB0aGlzIGNvbmZp
ZyBlbmFibGVkIHBlcmZvcm1zIHdlbGwNCj4gaW4gdGhlIHN0cmVzcy10ZXN0cywgdGhlbiBvbiBw
cm9kdWN0aW9uIHNlcnZlciB0aGUgY29uZmlnIG1heSBiZQ0KPiBzZXQgdG8gJ3knIChvciAnbScg
YW5kIGxvYWRlZCkuDQo+IA0KPiBJIHdvdWxkIHZvdGUgdG8gbm90IGFkZCBleHRyYSBjb2RlLCB3
aGljaCB0aGVuIGFmdGVyIGEgd2hpbGUgbWlnaHQgYmUNCj4gZGVjaWRlZCB0byBidyBleHRlbmRl
ZCBiZWNhdXNlIGFjdHVhbGx5IHNvbWUgSFcgaXMgYWN0dWFsbHkgY2FwYWJsZSAoc28NCj4gd2Ug
Y291bGQgY2hlY2sgaW4gcnVudGltZSBhbmQgZW5hYmxlIGl0KS4gSU1PIHRoaXMgY3JlYXRlIGFu
IGFkZGl0aW9uYWwNCj4gY29tcGxleGl0eSBpbiBvdXIgZGl2ZXJzZSBjb25maWd1cmF0aW9uL3R1
bm5hYmxlIHNwYWNlIGluIG91ciBjb2RlLg0KPiANCj4gV2hlbiB3ZSBkb24ndCBjb21waWxlLWlu
IHRoaXMsIHdlIHNob3VsZCBmYWxsYmFjayB0byBvbGQtc3R5bGUNCj4gRklFLCB3aGljaCBoYXMg
YmVlbiB1c2VkIG9uIHRoZXNlIG9sZCBwbGF0Zm9ybXMuDQo+IA0KPiBCVFcgKEkgaGF2ZSB0byBs
ZWF2ZSBpdCBoZXJlKSB0aGUgZmlyc3QtY2xhc3Mgc29sdXRpb24gZm9yIHRob3NlIHNlcnZlcnMN
Cj4gaXMgdG8gaW1wbGVtZW50IEFNVSBjb3VudGVycywgc28gdGhlIG92ZXJoZWFkIHRvIHJldHJp
ZXZlIHRoaXMgaW5mbyBpcw0KPiByZWFsbHkgbG93Lg0KPiANCj4gUmVnYXJkcywNCj4gTHVrYXN6
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBt
YWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShj
Z2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
