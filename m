Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7CF241BF5
	for <lists+devel-acpica@lfdr.de>; Tue, 11 Aug 2020 16:02:35 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 98D0112B59A3D;
	Tue, 11 Aug 2020 07:02:33 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.68; helo=mail-oo1-f68.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f68.google.com (mail-oo1-f68.google.com [209.85.161.68])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4FF6512B59A3B
	for <devel@acpica.org>; Tue, 11 Aug 2020 07:02:31 -0700 (PDT)
Received: by mail-oo1-f68.google.com with SMTP id j19so2645950oor.2
        for <devel@acpica.org>; Tue, 11 Aug 2020 07:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Y+ycr+kq0hSs2c5hcaMKETjdqn/n4h2V3uomxbdvvZA=;
        b=PhBuquayZtfGK1KezB0RCedGWC8ycX9mnn/TIrYKz6gfqyjC9UHQRW8cBRh5V3qQxS
         1M8Unp7ywWhLIjDkTAa0O4mPd/IUJYjt7vPwdtjkZYSCQl1/9l2mfc1kjI5Z5MT1kZOP
         tJulEy/8NuET1Id7tvkOTM2tUPKVRWGO+e9baB0tgBCg+YskuYuMKAWtY8sHEYTVrOXl
         CnZmjvgoqvExlvAW1y6EQKP5xxuqBBXoxOkT2uIy7/YMP7ExIo9VYGjJ/4oRIGbwvAbN
         4HbS4S5/ekV1m3XKpHo6+Jd787C4uwlqu+FMHrfh9DQL5i2BACR2RUHIlB/CBx6S8A3p
         EiMw==
X-Gm-Message-State: AOAM5317h0j8pmxZTFtrWcQsuhv07cX9RJ9czIIooY0/y9ZYmaDJVoTu
	kEwtt8ggKZQWPcxGCt2Xvyf7ggpSCfXyFZdN5Ks=
X-Google-Smtp-Source: ABdhPJyG3Gw6UJPnsjgckP3sTYgVzg/18zvw0XuvsEFAtYrMGDXsZUbJkq+wkVXDoCRauLRkDGMK4oK5xBK/IJPUT/U=
X-Received: by 2002:a4a:4201:: with SMTP id h1mr5242148ooj.1.1597154549897;
 Tue, 11 Aug 2020 07:02:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200616155501.psduxnisltitodme@linutronix.de>
 <871rmesqkk.fsf@gmx.net> <20200617142734.mxwfoblufmo6li5e@linutronix.de>
 <87ftatqu07.fsf@gmx.net> <20200624201156.xu6hel3drnhno6c3@linutronix.de>
 <87ftak2kxr.fsf@rub.de> <20200714134410.3odqfvjq6rndjjf6@linutronix.de>
 <CAJZ5v0hZSUkEMCszDADGWk-v0xNEiDE45B3CHLi05BX6rPfm6g@mail.gmail.com>
 <20200714141135.47adndrsdgpiqfy4@linutronix.de> <CAJZ5v0iogereapmhcFi=iXHsjnzmC26mewUSTY3+5O3ei5kfDQ@mail.gmail.com>
 <20200811102735.yifejbx62ewzpfcs@linutronix.de>
In-Reply-To: <20200811102735.yifejbx62ewzpfcs@linutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 11 Aug 2020 16:02:17 +0200
Message-ID: <CAJZ5v0jy08XwTRUwHwjQ-UgHhi=j80q9SW2_ze1J0RiArTRKsw@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID-Hash: XB4FDFCPC66CQAQU7XB2WSNLYLTWKFKS
X-Message-ID-Hash: XB4FDFCPC66CQAQU7XB2WSNLYLTWKFKS
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Stephen Berman <stephen.berman@gmx.net>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XB4FDFCPC66CQAQU7XB2WSNLYLTWKFKS/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBdWcgMTEsIDIwMjAgYXQgMTI6MjcgUE0gU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lv
cg0KPGJpZ2Vhc3lAbGludXRyb25peC5kZT4gd3JvdGU6DQo+DQo+IE9uIDIwMjAtMDctMTQgMTc6
NTM6MTUgWyswMjAwXSwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6DQo+ID4gYWNwaV9ldmFsdWF0
ZV9pbnRlZ2VyKCkgZG9lc24ndCBzaG93IHVwIGluIHRoZSB0cmFjZSwgdGhvdWdoLCBBRkFJQ1Mu
DQo+ID4NCj4gPiA+IEkgYXNzdW1lZCBhY3BpX2V4X29wY29kZV8yQV8wVF8wUigpIHNpbmNlIHRo
ZSBvdGhlcg0KPiA+ID4gY2FuZGlkYXRlIHdhcyBhY3BpX2V2X2FzeW5jaF9leGVjdXRlX2dwZV9t
ZXRob2QoKS4NCj4gPg0KPiA+IFdoaWNoIHByb2JhYmx5IGlzIHRoZSBjYXNlLiAgU3BlY2lmaWNh
bGx5DQo+ID4NCj4gPiBhY3BpX2V2X2FzeW5jaF9leGVjdXRlX2dwZV9tZXRob2Q6IEV2YWx1YXRl
IF9MNjYNCj4gPg0KPiA+IGlzIGxpa2VseSB0byBjYXVzZSB0aGUgTm90aWZ5KCkgdG8gYmUgZGlz
cGF0Y2hlZC4NCj4g4oCmDQo+ID4gPiBSYWZhZWwsIGFyZSB5b3UgYWxzbyBpbnRlcmVzdGVkIGlu
IGFuIEFDUEkgZHVtcD8NCj4gPg0KPiA+IFRoYXQgbWlnaHQgaGVscCBhIGJpdC4NCj4gPg0KPiA+
IFNvIHdoYXQgcHJvYmFibHkgaGFwcGVucyBpcyB0aGF0IHBva2luZyBhdCB0aGUgVFogY2F1c2Vz
IGEgR1BFIHRvDQo+ID4gdHJpZ2dlciBhbmQgYSBOb3RpZnkoKSB0byBiZSBkaXNwYXRjaGVkIHdo
aWNoIHRoZW4gZ29lcyBpbnRvIHRoZQ0KPiA+IHdvcmtxdWV1ZSBmb3IgZXhlY3V0aW9uLg0KPiA+
DQo+ID4gTm93LCBJJ20gbm90IHN1cmUgd2hhdCBoYXBwZW5zIHRvIHRob3NlIE5vdGlmeSgpIGl0
ZW1zLCB0aG91Z2guICBUaGV5DQo+ID4gZWFjaCBzaG91bGQgY2F1c2UgYSBoYW5kbGVyIChpbiB0
aGUgdGhlcm1hbCBkcml2ZXIpIHRvIGJlIGV4ZWN1dGVkLA0KPiA+IGJ1dCBkb2VzIHRoYXQgaGFw
cGVuPw0KPg0KPiBTdGVwaGVuJ3MgdHJhY2UgY29udGFpbnMgYSBmZXcgYmFja3RyYWNlcywgYWxs
IG9mIHRoZW0gbG9vayBsaWtlIHRoaXM6DQo+DQo+IHwgQ2FsbCBUcmFjZToNCj4gfCAgYWNwaV9l
eF9vcGNvZGVfMkFfMFRfMFIrMHg5My8weGRmDQo+IHwgIGFjcGlfZHNfZXhlY19lbmRfb3ArMHgx
MGQvMHg3MDENCj4gfCAgYWNwaV9wc19wYXJzZV9sb29wKzB4N2YyLzB4OGMzDQo+IHwgIGFjcGlf
cHNfcGFyc2VfYW1sKzB4MWE1LzB4NTQwDQo+IHwgIGFjcGlfcHNfZXhlY3V0ZV9tZXRob2QrMHgx
ZmUvMHgyYmENCj4gfCAgYWNwaV9uc19ldmFsdWF0ZSsweDM0NS8weDRlMg0KPiB8ICBhY3BpX2V2
YWx1YXRlX29iamVjdCsweDE3Ny8weDM5Zg0KPiB8ICBhY3BpX2V2YWx1YXRlX2ludGVnZXIrMHg0
Zi8weDExMA0KPiB8ICBhY3BpX3RoZXJtYWxfZ2V0X3RlbXBlcmF0dXJlLnBhcnQuMCsweDQ1LzB4
YzQNCj4gfCAgdGhlcm1hbF9nZXRfdGVtcC5jb2xkKzB4Yy8weDJlDQo+IHwgIHRoZXJtYWxfem9u
ZV9nZXRfdGVtcCsweDRjLzB4NzANCj4gfCAgdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUucGFy
dC4wKzB4MmEvMHgxMTANCj4gfCAgYWNwaV90aGVybWFsX25vdGlmeSsweGNmLzB4MTQwDQo+IHwg
IGFjcGlfZXZfbm90aWZ5X2Rpc3BhdGNoKzB4NDUvMHg1YQ0KPiB8ICBhY3BpX29zX2V4ZWN1dGVf
ZGVmZXJyZWRfbm90aWZ5KzB4MzQvMHg2MA0KDQpUaGlzIGlzIE5vdGlmeSAoKSBwcm9jZXNzaW5n
Lg0KDQpUaGUgaGFuZGxlciBpcyBhY3BpX3RoZXJtYWxfbm90aWZ5KCkgd2hpY2ggY2FsbHMgYWNw
aV90aGVybWFsX2NoZWNrKCkNCndoaWNoIGlzIGp1c3QgYSB3cmFwcGVyIGFyb3VuZCB0aGVybWFs
X3pvbmVfZGV2aWNlX3VwZGF0ZSgpIGRvaW5nDQp1cGRhdGVfdGVtcGVyYXR1cmUoKSBhbmQgdGhh
dCBjYWxscyB0aGVybWFsX3pvbmVfZ2V0X3RlbXAoKSAoYW1vbmcNCm90aGVyIHRoaW5ncykgd2hp
Y2ggaW52b2tlcyB0aGUgLT5nZXRfdGVtcCgpIGNhbGxiYWNrIGZvciB0aGUgdGFyZ2V0DQp0aGVy
bWFsIHpvbmUuDQoNCkluIHRoZSBBQ1BJIHRoZXJtYWwgZHJpdmVyIHRoZSAtPmdldF90ZW1wIGNh
bGxiYWNrIGlzDQp0aGVybWFsX2dldF90ZW1wKCkgd2hpY2ggYmFzaWNhbGx5IGNhbGxzDQphY3Bp
X3RoZXJtYWxfZ2V0X3RlbXBlcmF0dXJlKCkgYW5kIHRoYXQgZXZhbHVhdGVzIF9UTVAgKGZvciB0
aGUgdGFyZ2V0DQp0aGVybWFsIHpvbmUpLg0KDQpJdCBsb29rcyBsaWtlIG9uIHRoZSBtYWNoaW5l
IGluIHF1ZXN0aW9uIHRoZSBfVE1QIG1ldGhvZCBjb250YWlucw0KYW5vdGhlciBOb3RpZnkgKCkg
dGFyZ2V0aW5nIHRoZSBzYW1lIHRoZXJtYWwgem9uZSB3aGljaCBnZXRzIHF1ZXVlZCB1cA0Kdmlh
IHRoZSBhY3BpX2V4X29wY29kZV8yQV8wVF8wUigpIGF0IHRoZSB0b3AuICBPYnZpb3VzbHkgdGhh
dCBOb3RpZnkNCigpICh3aGVuIGl0IGdldHMgZXhlY3V0ZWQpIHdpbGwgY2F1c2UgYWNwaV90aGVy
bWFsX25vdGlmeSgpIHRvIGJlDQpleGVjdXRlZCBhZ2FpbiBhbmQgc28gb24sIGFkIGluZmluaXR1
bSB1bmxlc3MgdGhlIE5vdGlmeSAoKSBpbiBfVE1QIGlzDQpjb25kaXRpb25hbCBvbiBzb21ldGhp
bmcuDQoNCj4gfCAgcHJvY2Vzc19vbmVfd29yaysweDFkMi8weDNhMA0KPiB8ICB3b3JrZXJfdGhy
ZWFkKzB4NDUvMHgzYzANCj4gfCAga3RocmVhZCsweGY2LzB4MTMwDQo+IHwgIHJldF9mcm9tX2Zv
cmsrMHgzNS8weDQwDQo+DQo+IHNvIG5vIEdQRSBhbmQgaXQgY29tZXMgdGhlIG5vdGlmeSBjYWxs
YmFjayB3aGlsZSBwYXJzaW5nIHRoZSBBQ1BJIHRhYmxlLg0KDQpSaWdodC4NCg0KPiBBbnkgaWRl
YXM/IEkgZ3Vlc3MgYWNwaV9leF9vcGNvZGVfMkFfMFRfMFIoKSB1c2VzIHRoZSB3b3JrcXVldWUg
YmVjYXVzZQ0KPiBpdCBtYXkgc2xlZXAgYW5kIGl0IG1pZ2h0IGJlIGludm9rZWQgZnJvbSBub24t
cHJlZW1wdGlibGUgY29udGV4dC4NCg0KTm8sIGl0IHVzZXMgdGhlIHdvcmtxdWV1ZSBiZWNhdXNl
IGl0IHF1ZXVlcyB1cCBhIE5vdGlmeSAoKSB3aGljaA0KYWx3YXlzIGdvZXMgdGhyb3VnaCBhIHdv
cmtxdWV1ZSAoa2FjcGlfbm90aWZ5X3dxIHRvIGJlIHByZWNpc2UpIGFuZA0KYmFzaWNhbGx5IGlu
IG9yZGVyIHRvIGF2b2lkIGRlYWRsb2NrcyAoaXQgcnVucyB1bmRlciBsb2NrcyB3aGljaCBtYXkN
Cm5lZWQgdG8gYmUgYWNxdWlyZWQgYWdhaW4gdG8gaGFuZGxlIHRoZSBub3RpZmljYXRpb24pLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBtYWls
aW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShjZ2ll
eHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
