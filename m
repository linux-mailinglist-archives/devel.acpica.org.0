Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C052F322E
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jan 2021 14:50:02 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D058C100EB83A;
	Tue, 12 Jan 2021 05:50:00 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.180; helo=mail-oi1-f180.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4E189100EB839
	for <devel@acpica.org>; Tue, 12 Jan 2021 05:49:59 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id l200so2353905oig.9
        for <devel@acpica.org>; Tue, 12 Jan 2021 05:49:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tzLjfKbap56hNQt8zCr5eINZRU89Feh7WJmB8qJ3UiM=;
        b=aPX3dJs3TUCtpR4SpAZU7ie2i2mqt6dMKKzuHDvWklUA9XkGawffVmFp3pvjBsyp+R
         c241IV6+aV6G3DYcmzvCxN+Q4kvG9LPEQtDtM2HExUumvdNKQoER39MdUt06WrazP140
         TzwmRNlUka9rmyEmPiM/jrp8iWD2mgqC7zejNr5cfuG0x8T3gncYDa7RusSFaPIFrvP0
         x/oQqeVF6tLjYE55RwL72LXWuXsAyJ3Cu7WCQOjBcWe8M/TAnsJORWeqoczBizebqmhV
         Ui9jfx5AYuo8N1PK1FuBjlCXW/8np0cKlXCOm0Enb2tyIAS0h7727whdoCBRsC+DmH+m
         n3VQ==
X-Gm-Message-State: AOAM530T4HCWeXqbIgRQRss6p1faGIoCRfoKFznqhEJJuotV7UqlUKIl
	XOquSmUkJfMnxp82wdWj9GcsZ4KqDy5XPV8kTe0=
X-Google-Smtp-Source: ABdhPJy9BZ64g8q2StwTZAAIAMvc+dlWXYdWI1Jgqigh9G/nHpAaP5q9RMsVRAKMrXWV9W9mCYefBJHupj10cA9bSdM=
X-Received: by 2002:aca:4892:: with SMTP id v140mr2379482oia.71.1610459398177;
 Tue, 12 Jan 2021 05:49:58 -0800 (PST)
MIME-Version: 1.0
References: <202101081623.CGkLO3Kx-lkp@intel.com> <5e7a4d87-52ef-e487-9cc2-8e7094beaa08@redhat.com>
 <106d7891-230f-18e1-1b0f-cb6a62cf0387@flygoat.com> <01442a77-7d87-5a12-d7b8-4fe397a37464@redhat.com>
In-Reply-To: <01442a77-7d87-5a12-d7b8-4fe397a37464@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 14:49:46 +0100
Message-ID: <CAJZ5v0hUrNd9HCY66mw6_Vab0JrgNwJYV_PgaT6fkd1+j8UBtw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: KSSUQ4VNGNVLAHX6XFATNXLYR3QKZHBD
X-Message-ID-Hash: KSSUQ4VNGNVLAHX6XFATNXLYR3QKZHBD
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiaxun Yang <jiaxun.yang@flygoat.com>, kernel test robot <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [pm:bleeding-edge 20/29] drivers/acpi/platform_profile.c:67:33: error: passing 'const struct platform_profile_handler to parameter of type 'struct platform_profile_handler discards qualifiers
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KSSUQ4VNGNVLAHX6XFATNXLYR3QKZHBD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgMToxMSBQTSBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gSGksDQo+DQo+IE9uIDEvMTIvMjEgMTowNyBQTSwgSmlh
eHVuIFlhbmcgd3JvdGU6DQo+ID4g5ZyoIDIwMjEvMS8xMiDkuIvljYg2OjQyLCBIYW5zIGRlIEdv
ZWRlIOWGmemBkzoNCj4gPj4gSGksDQo+ID4+DQo+ID4+IE9uIDEvOC8yMSA5OjUyIEFNLCBrZXJu
ZWwgdGVzdCByb2JvdCB3cm90ZToNCj4gPiBbLi4uXQ0KPiA+Pg0KPiA+PiBJZiB5b3UgZml4IHRo
ZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnIGFzIGFwcHJvcHJpYXRlDQo+ID4+IFJl
cG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4NCj4gPj4NCj4gPj4g
QWxsIGVycm9ycyAobmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOg0KPiA+Pg0KPiA+IFsuLi5dDQo+
ID4+PiAgICAgMiBlcnJvcnMgZ2VuZXJhdGVkLg0KPiA+DQo+ID4gT29wcywgdGhhbmtzIGZvciB0
aGUgcmVtaW5kZXIsIEkgc2hvdWxkIGV4Y2x1ZGUgMGRheSBDSSBmcm9tIG1haWwgZmlsdGVyLg0K
PiA+IEl0J3Mgd2lyZWQgdGhhdCBHQ0MgZGlkbid0IHNheSBhbnl0aGluZyBhYm91dCBpdC4NCj4g
Pg0KPiA+PiBVZ2gsIHNvIHRoYXQgbWVhbnMgdGhhdCB0aGUgY3VycmVudCB2ZXJzaW9uIG9mIHRo
ZQ0KPiA+PiAiQUNQSTogcGxhdGZvcm0tcHJvZmlsZTogUGFzcyBwcm9maWxlIHBvaW50ZXIgdG8g
ZHJpdmVyIGNhbGxiYWNrcyINCj4gPj4gcGF0Y2ggaXMgbm8gZ29vZC4gU2luY2UgdGhpcyBpcyBj
YXVzaW5nIGNvbXBpbGUgZXJyb3JzIEkgYXNzdW1lDQo+ID4+IHRoYXQgaXQgd2lsbCBiZSBkcm9w
cGVkIGZyb20gdGhlIGJsZWVkaW5nLWVkZ2UgYnJhbmNoLg0KPiA+PiBJcyB0aGF0IHJpZ2h0IFJh
ZmFlbD8NCj4gPg0KPiA+IEknbSBub3QgZmFtaWxpYXIgd2l0aCB4ODZwZHggYW5kIEFDUEkgd29y
a2Zsb3cuDQo+ID4gU2hvdWxkIEkgcmVzZW5kIHRoZSBwYXRjaCBvciBzZW5kIGEgZml4dXAgcGF0
Y2g/DQo+DQo+IEkgYmVsaWV2ZSBhIG5ldyB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBpcyBiZXN0LCB0
aGVuIFJhZmFlbCBjYW4NCj4gcmVwbGFjZSB0aGUgYnJva2VuIHBhdGNoLiBXZSB3YW50IHRvIGF2
b2lkIGhhdmluZyBhIGNvbW1pdCBpbg0KPiBnaXQgaGlzdG9yeSB3aGljaCBkb2VzIG5vdCBjb21w
aWxlIGluIHNvbWUgY2FzZXMsIGJlY2F1c2UgdGhhdA0KPiBjcmVhdGVzIHByb2JsZW1zIHdoZW4g
Z2l0IGJpc2VjdGluZy4NCg0KVGhhdCdzIHJpZ2h0Lg0KDQpJZiB0aGUgcGxhbiBpcyB0byBkcm9w
IHRoZSAiY29uc3QiIGV2ZXJ5d2hlcmUsIEkgd291bGQgYXBwcmVjaWF0ZSBhbg0KYWRkaXRpb25h
bCBwYXRjaCB0byBkbyB0aGF0IG9uIHRvcCBvZiB0aGUgdHdvIGZyb20gTWFyayBhbmQgYSBuZXcN
CnBhdGNoIGFkZGluZyBhIG5ldyBjYWxsYmFjayBvbiB0b3Agb2YgdGhhdC4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KRGV2ZWwgbWFpbGluZyBsaXN0IC0t
IGRldmVsQGFjcGljYS5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBkZXZlbC1s
ZWF2ZUBhY3BpY2Eub3JnCiUod2ViX3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0KXMvJShfaW50
ZXJuYWxfbmFtZSlz
