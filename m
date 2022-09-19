Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 725C05BD253
	for <lists+devel-acpica@lfdr.de>; Mon, 19 Sep 2022 18:37:32 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C688F100EB331;
	Mon, 19 Sep 2022 09:37:28 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.170; helo=mail-qt1-f170.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E9CA9100EB323
	for <devel@acpica.org>; Mon, 19 Sep 2022 09:37:26 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id b23so16065972qtr.13
        for <devel@acpica.org>; Mon, 19 Sep 2022 09:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=6fQ+1twC0Ji8Gsk3L6i3tph/pC38VH4wEOFGFdDw050=;
        b=kIbMYMbVtejuT1RtJsTjLfFoDOakt0qr+LGwWGo1xQeVdk/O28saaUsTjYPwZJA6Gi
         QdXKp1qF4HwUYSmuTmSUUNJ2XCmZBt9HDbefO2TIeAU+9DLWGmuOp+JGWWBR5oXKexNp
         ObDbfNU9mt0Ed2IHVCkcfp3UM6d3D4WH+txZsblhDReUXGQEL8606nRyRQ9prk0R1CSR
         O25P4S8X9KT8yaCqIqfYpLy7v61j0s8tc+D37jworz8uJT9eJNbh0WnIqmffiAt4h4tV
         Ts3AEwfWkvhKwdVms6QTCHCK/OGVrIE+//9jKFB0yTaeuv6oS9MNbL7sFCjDSqQDZMMf
         ZxMw==
X-Gm-Message-State: ACrzQf3KjlkQfaPrCTgAGZIMaX53BbLb2ZCTtj5VgjHuBJIFQ2MipROd
	BOYVv9GSFdh057YAtjfClPLEjam14BivNup6NaM=
X-Google-Smtp-Source: AMsMyM7blqbSOQF2Eb+/gT/WjwNk4M3+7d9RSV0hwBTX8X90/fo4L+7TFwDreiiSDssZGSjBiZZcyiQJ08xH1VjMZaU=
X-Received: by 2002:a05:622a:104:b0:35c:cb31:c0d9 with SMTP id
 u4-20020a05622a010400b0035ccb31c0d9mr15708109qtw.49.1663605445534; Mon, 19
 Sep 2022 09:37:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220913163147.24258-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20220913163147.24258-1-andriy.shevchenko@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 19 Sep 2022 18:37:14 +0200
Message-ID: <CAJZ5v0hC5Tif=nR2CjDcStUp+SZx3v7d7RCykzcYGYDHsNcYsg@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: DTRWXAF7JONO6K4E3IP7CPOSHZZNA666
X-Message-ID-Hash: DTRWXAF7JONO6K4E3IP7CPOSHZZNA666
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Hans de Goede <hdegoede@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, Mark Brown <broonie@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-spi <linux-spi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Elie Morisse <syniurge@gmail.com>, Nehal Shah <nehal-bakulchandra.shah@amd.com>, Shyam Sundar S K <shyam-sundar.s-k@amd.com>, Khalil Blaiech <kblaiech@nvidia.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Daniel
  Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 0/8] ACPI: unify _UID handling as integer
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DTRWXAF7JONO6K4E3IP7CPOSHZZNA666/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMTMsIDIwMjIgYXQgNjozMiBQTSBBbmR5IFNoZXZjaGVua28NCjxhbmRyaXku
c2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPg0KPiBUaGlzIHNlcmllcyBpcyBh
Ym91dCB1bmlmaWNhdGlvbiBvbiBob3cgd2UgaGFuZGxlIEFDUEkgX1VJRCB3aGVuDQo+IGl0J3Mg
a25vd24gdG8gYmUgYW4gaW50ZWdlci1pbi10aGUtc3RyaW5nLg0KPg0KPiBUaGUgaWRlYSBvZiBt
ZXJnaW5nIGVpdGhlciBhbGwgdmlhIEFDUEkgdHJlZSwgb3IgdGFraW5nIEFDUEkgc3R1ZmYNCj4g
Zm9yIHRoZSB2Ni4xIHdoaWxlIHRoZSByZXN0IG1heSBiZSBwaWNrZWQgdXAgbGF0ZXIgb24gYnkg
cmVzcGVjdGl2ZQ0KPiBtYWludGFpbmVycyBzZXBhcmF0ZWx5IChjdXJyZW50bHkgb25seSBwZXJm
IHBhdGNoIGlzIG5vdCB0YWdnZWQpLg0KPg0KPiBQYXJ0aWFsbHkgY29tcGlsZS10ZXN0ZWQgKHg4
Ni02NCkuDQo+DQo+IENoYW5nZWxvZyB2MzoNCj4gLSBmaXhlZCBkZXZfZGJnKCkgc3BlY2lmaWVy
IHRvIGJlIGluIGFsaWduIHdpdGggdGhlIHZhcmlhYmxlIHR5cGUgKExLUCkNCj4gLSBtYWRlIHVz
ZSBvZiB0ZW1wb3JhcnkgZGV2IHZhcmlhYmxlIGJleW9uZCB0aGUgQUNQSSBzY29wZSAoTEtQKQ0K
PiAtIGFkZGVkIHRhZ3MgdG8gScKyQyBwYXRjaGVzIChXb2xmcmFtKQ0KDQpJJ3ZlIHJlcGxhY2Vk
IHRoZSBwcmV2aW91cyB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggc2VyaWVzIGluIG15IHRyZWUNCndp
dGggdGhpcyBvbmUuDQoNClRoYW5rcyENCg0KDQo+IENoYW5nZWxvZyB2MjoNCj4gLSByZWJhc2Vk
IHB4YTJ4eCBwYXRjaCB0byBiZSBhcHBsaWVkIGFnYWluc3QgY3VycmVudCBMaW51eCBrZXJuZWwg
Y29kZQ0KPiAtIGZpeGVkIHVuaW5pdGlhbGl6ZWQgdmFyaWFibGUgYWRldiBpbiB1c2UgKG1seGJm
KQ0KPiAtIGRyb3BwZWQgdW5uZWVkZWQgdGVtcG9yYXJ5IHZhcmlhYmxlIGFkZXYgKHFjb21fbDJf
cG11KQ0KPiAtIGNoYW5nZWQgdHlwZSBmb3IgcmV0IGluIHBhdGNoIDggKEhhbnMpDQo+IC0gc3dh
cHBlZCBjb25kaXRpb25zIHRvIGNoZWNrIHJldCA9PSAwIGZpcnN0IChBcmQpDQo+IC0gYWRkZWQg
dGFncyAoTWFyaywgQXJkLCBIYW5zKQ0KPg0KPiBBbmR5IFNoZXZjaGVua28gKDgpOg0KPiAgIEFD
UEk6IHV0aWxzOiBBZGQgYWNwaV9kZXZfdWlkX3RvX2ludGVnZXIoKSBoZWxwZXIgdG8gZ2V0IF9V
SUQgYXMNCj4gICAgIGludGVnZXINCj4gICBBQ1BJOiBMUFNTOiBSZWZhY3RvciBfVUlEIGhhbmRs
aW5nIHRvIHVzZSBhY3BpX2Rldl91aWRfdG9faW50ZWdlcigpDQo+ICAgQUNQSTogeDg2OiBSZWZh
Y3RvciBfVUlEIGhhbmRsaW5nIHRvIHVzZSBhY3BpX2Rldl91aWRfdG9faW50ZWdlcigpDQo+ICAg
aTJjOiBhbWQtbXAyLXBsYXQ6IFJlZmFjdG9yIF9VSUQgaGFuZGxpbmcgdG8gdXNlDQo+ICAgICBh
Y3BpX2Rldl91aWRfdG9faW50ZWdlcigpDQo+ICAgaTJjOiBtbHhiZjogUmVmYWN0b3IgX1VJRCBo
YW5kbGluZyB0byB1c2UgYWNwaV9kZXZfdWlkX3RvX2ludGVnZXIoKQ0KPiAgIHBlcmY6IHFjb21f
bDJfcG11OiBSZWZhY3RvciBfVUlEIGhhbmRsaW5nIHRvIHVzZQ0KPiAgICAgYWNwaV9kZXZfdWlk
X3RvX2ludGVnZXIoKQ0KPiAgIHNwaTogcHhhMnh4OiBSZWZhY3RvciBfVUlEIGhhbmRsaW5nIHRv
IHVzZSBhY3BpX2Rldl91aWRfdG9faW50ZWdlcigpDQo+ICAgZWZpL2Rldi1wYXRoLXBhcnNlcjog
UmVmYWN0b3IgX1VJRCBoYW5kbGluZyB0byB1c2UNCj4gICAgIGFjcGlfZGV2X3VpZF90b19pbnRl
Z2VyKCkNCj4NCj4gIGRyaXZlcnMvYWNwaS9hY3BpX2xwc3MuYyAgICAgICAgICAgICAgIHwgMTUg
KysrKystLS0tLS0NCj4gIGRyaXZlcnMvYWNwaS91dGlscy5jICAgICAgICAgICAgICAgICAgIHwg
MjQgKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvYWNwaS94ODYvdXRpbHMuYyAgICAgICAg
ICAgICAgIHwgMTQgKysrKysrKy0tLQ0KPiAgZHJpdmVycy9maXJtd2FyZS9lZmkvZGV2LXBhdGgt
cGFyc2VyLmMgfCAxMCArKysrLS0tDQo+ICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLWFtZC1tcDIt
cGxhdC5jICB8IDI3ICsrKysrKystLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtbWx4YmYuYyAgICAgICAgIHwgMjAgKysrKystLS0tLS0tLS0NCj4gIGRyaXZlcnMvcGVyZi9x
Y29tX2wyX3BtdS5jICAgICAgICAgICAgIHwgMTAgKysrLS0tLQ0KPiAgZHJpdmVycy9zcGkvc3Bp
LXB4YTJ4eC5jICAgICAgICAgICAgICAgfCAzNyArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiAgaW5jbHVkZS9hY3BpL2FjcGlfYnVzLmggICAgICAgICAgICAgICAgfCAgMSArDQo+ICBpbmNs
dWRlL2xpbnV4L2FjcGkuaCAgICAgICAgICAgICAgICAgICB8ICA1ICsrKysNCj4gIDEwIGZpbGVz
IGNoYW5nZWQsIDgzIGluc2VydGlvbnMoKyksIDgwIGRlbGV0aW9ucygtKQ0KPg0KPiAtLQ0KPiAy
LjM1LjENCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
RGV2ZWwgbWFpbGluZyBsaXN0IC0tIGRldmVsQGFjcGljYS5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnCiUod2ViX3BhZ2VfdXJsKXNsaXN0
aW5mbyUoY2dpZXh0KXMvJShfaW50ZXJuYWxfbmFtZSlz
