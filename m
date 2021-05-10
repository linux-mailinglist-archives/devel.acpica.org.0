Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D32BC3794B0
	for <lists+devel-acpica@lfdr.de>; Mon, 10 May 2021 18:58:35 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 56EAE100EBB98;
	Mon, 10 May 2021 09:58:34 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.46; helo=mail-ot1-f46.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 44271100EBB75
	for <devel@acpica.org>; Mon, 10 May 2021 09:58:32 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id t4-20020a05683014c4b02902ed26dd7a60so4893372otq.7
        for <devel@acpica.org>; Mon, 10 May 2021 09:58:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Mdc3Kqk0NZP6BpgdgGjdHCFYVjpYe4qGua4+BuVWq3U=;
        b=CEG1Kj1j7uRV0OzzG3fyV3RDz7W9cicM9xYcoEFaj/KwIUnaAwEM1AXc21JscUA79l
         8LAD2ebkFZNVvj6cIHppmAzz9FcC2YEK7U3ap4Y3pQMw67UHCKKY1PfloVXd7nNjgEj2
         3EixjAIKi25cx2XH8YDeCYyVLXTUHxnpglg2bGTAPbY6r04CSF0gMHc/ZaFhGaTFXEAz
         G9WTD+IJWwsxATTbwjK1JaRew89yfntKaUyvVqMKqTjh3GQmGQD9CuR7FRiDL44s68aK
         uJYJd1hUpWLrmWJtlen4U/fVckGnvaatLQBq/7INkPQrEEAYdrM++oxvEucrSAXXLeS0
         evbw==
X-Gm-Message-State: AOAM533rcz/mhd/TyOdmfcYomXyIkVsZKfX564mey/7d2Xr5EpdpzIXR
	CyI/tgmj1NBvWGoG/XjqjNXeaKPZ6z+kvmepCqU=
X-Google-Smtp-Source: ABdhPJwHzdHYxbhgDXy0Jlitwnn2q7MwIUVmnIfa1aCkQ/ysTB9d4cRsHs5OHjTLKJEO0JjcwB7tLKlN5ORnFbZ8ekk=
X-Received: by 2002:a9d:3bcb:: with SMTP id k69mr22880619otc.206.1620665910887;
 Mon, 10 May 2021 09:58:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210422192937.707500-1-sathyanarayanan.kuppuswamy@linux.intel.com>
In-Reply-To: <20210422192937.707500-1-sathyanarayanan.kuppuswamy@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 10 May 2021 18:58:19 +0200
Message-ID: <CAJZ5v0hbAaFtRxuyR2B6YBUfV6eGWmDrZnTisd9j5H0UNurqrg@mail.gmail.com>
To: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: O6ZZHV745H6A6VKDM7ORRICCQ2ZBYV53
X-Message-ID-Hash: O6ZZHV745H6A6VKDM7ORRICCQ2ZBYV53
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael J Wysocki <rjw@rjwysocki.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPICA: Add SVKL table headers
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O6ZZHV745H6A6VKDM7ORRICCQ2ZBYV53/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMjIsIDIwMjEgYXQgOToyOSBQTSBLdXBwdXN3YW15IFNhdGh5YW5hcmF5YW5h
bg0KPHNhdGh5YW5hcmF5YW5hbi5rdXBwdXN3YW15QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+
DQo+IEFDUElDQSBjb21taXQgYjVlNmJjZjY5ZGJiOTg3NzQ4MTk5MmQ1Y2U4NjAwOGNmYjk0ZjVi
OA0KPg0KPiBTVktMIChTdG9yYWdlIFZvbHVtZSBLZXkgTG9jYXRpb24gVGFibGUpIGlzIHVzZWQg
YnkgQklPUy9GaXJtd2FyZQ0KPiB0byBzaGFyZSBzdG9yYWdlIHZvbHVtZSBlbmNyeXB0aW9uIGtl
eSdzIHdpdGggT1MuIEl0IHdpbGwgYmUgdXNlZA0KPiBieSB1c2Vyc3BhY2UgdG8gZGVjcnlwdCBh
bmQgbW91bnQgZW5jcnlwdGVkIGRyaXZlcy4NCj4NCj4gU28gYWRkIFNWS0wgdGFibGUgc2lnbmF0
dXJlIGFuZCBhZGQgaXQgdG8ga25vd24gc2lnbmF0dXJlcyBhcnJheQ0KPiBzdXBwb3J0IFNWS0wu
DQo+DQo+IFlvdSBjYW4gZmluZCBkZXRhaWxzIGFib3V0IHRoZSBTVktMIHRhYmxlIGluIFREWCBz
cGVjZmljYXRpb24NCj4gdGl0bGVkICJHdWVzdC1Ib3N0LUNvbW11bmljYXRpb24gSW50ZXJmYWNl
IChHSENJKSBmb3IgSW50ZWwNCj4gVHJ1c3QgRG9tYWluIEV4dGVuc2lvbnMgKEludGVswq4gVERY
KSIsIHNlYyA0LjQgYW5kIGluIEFDUEkNCj4gc3BlY2lmaWNhdGlvbiByNi40LCBzZWMgNS4yLjYu
DQo+DQo+IGh0dHBzOi8vc29mdHdhcmUuaW50ZWwuY29tL2NvbnRlbnQvZGFtL2RldmVsb3AvZXh0
ZXJuYWwvdXMvZW4vZG9jdW1lbnRzL2ludGVsLXRkeC1ndWVzdC1oeXBlcnZpc29yLWNvbW11bmlj
YXRpb24taW50ZXJmYWNlLnBkZg0KPg0KPiBDYzogUm9iZXJ0IE1vb3JlIDxyb2JlcnQubW9vcmVA
aW50ZWwuY29tPg0KPiBDYzogRXJpayBLYW5lZGEgPGVyaWsua2FuZWRhQGludGVsLmNvbT4NCj4g
Q2M6IFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWwuai53eXNvY2tpQGludGVsLmNvbT4NCj4NCj4g
TGluazogaHR0cHM6Ly9naXRodWIuY29tL2FjcGljYS9hY3BpY2EvY29tbWl0L2I1ZTZiY2Y2DQo+
IFNpZ25lZC1vZmYtYnk6IEt1cHB1c3dhbXkgU2F0aHlhbmFyYXlhbmFuIDxzYXRoeWFuYXJheWFu
YW4ua3VwcHVzd2FteUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEJvYiBNb29y
ZSA8cm9iZXJ0Lm1vb3JlQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogRXJpayBLYW5lZGEg
PGVyaWsua2FuZWRhQGludGVsLmNvbT4NCg0KRXJpaywgd2hhdCdzIHRoZSBwbGFuIHJlZ2FyZGlu
ZyB0aGlzIHBhdGNoIGFuZCB0aGUgb3RoZXIgQUNQSUNBIGNoYW5nZQ0KcmVxdWlzaXRlIGZvciB0
aGlzIHNlcmllcz8NCg0KQXJlIHRoZXkgZ29pbmcgdG8gYmUgcGFydCBvZiB0aGUgbmV4dCBBQ1BJ
Q0EgcmVsZWFzZSBhbmQgYW0gSSBnb2luZyB0bw0KcmVjZWl2ZSB0aGVtIHRoZSB1c3VhbCB3YXk/
DQoNCj4gLS0tDQo+ICBpbmNsdWRlL2FjcGkvYWN0YmwyLmggfCAzMCArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQo+DQo+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2FjcGkvYWN0YmwyLmggYi9pbmNsdWRlL2FjcGkvYWN0Ymwy
LmgNCj4gaW5kZXggZDY0NzhjNDMwYzk5Li44M2E5ZDhiNjhlM2EgMTAwNjQ0DQo+IC0tLSBhL2lu
Y2x1ZGUvYWNwaS9hY3RibDIuaA0KPiArKysgYi9pbmNsdWRlL2FjcGkvYWN0YmwyLmgNCj4gQEAg
LTQzLDYgKzQzLDcgQEANCj4gICNkZWZpbmUgQUNQSV9TSUdfU0RFSSAgICAgICAgICAgIlNERUki
IC8qIFNvZnR3YXJlIERlbGVnYXRlZCBFeGNlcHRpb24gSW50ZXJmYWNlIFRhYmxlICovDQo+ICAj
ZGVmaW5lIEFDUElfU0lHX1NERVYgICAgICAgICAgICJTREVWIiAvKiBTZWN1cmUgRGV2aWNlcyB0
YWJsZSAqLw0KPiAgI2RlZmluZSBBQ1BJX1NJR19OSExUICAgICAgICAgICAiTkhMVCIgLyogTm9u
LUhEQXVkaW8gTGluayBUYWJsZSAqLw0KPiArI2RlZmluZSBBQ1BJX1NJR19TVktMICAgICAgICAg
ICAiU1ZLTCIgLyogU3RvcmFnZSBWb2x1bWUgS2V5IExvY2F0aW9uIFRhYmxlICovDQo+DQo+ICAv
Kg0KPiAgICogQWxsIHRhYmxlcyBtdXN0IGJlIGJ5dGUtcGFja2VkIHRvIG1hdGNoIHRoZSBBQ1BJ
IHNwZWNpZmljYXRpb24sIHNpbmNlDQo+IEBAIC0xNzEzLDYgKzE3MTQsMzUgQEAgc3RydWN0IGFj
cGlfc2Rldl9wY2llX3BhdGggew0KPiAgICAgICAgIHU4IGZ1bmN0aW9uOw0KPiAgfTsNCj4NCj4g
Ky8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqDQo+ICsgKg0KPiArICogU1ZLTCAtIFN0b3JhZ2UgVm9s
dW1lIEtleSBMb2NhdGlvbiBUYWJsZSAoQUNQSSA2LjQpDQo+ICsgKiAgICAgICAgVmVyc2lvbiAx
DQo+ICsgKg0KPiArICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8NCj4gKw0KPiArc3RydWN0IGFjcGlf
dGFibGVfc3ZrbCB7DQo+ICsgICAgICAgc3RydWN0IGFjcGlfdGFibGVfaGVhZGVyIGhlYWRlcjsg
ICAgICAgIC8qIENvbW1vbiBBQ1BJIHRhYmxlIGhlYWRlciAqLw0KPiArICAgICAgIHUzMiBjb3Vu
dDsNCj4gK307DQo+ICsNCj4gK3N0cnVjdCBhY3BpX3N2a2xfaGVhZGVyIHsNCj4gKyAgICAgICB1
MTYgdHlwZTsNCj4gKyAgICAgICB1MTYgZm9ybWF0Ow0KPiArICAgICAgIHUzMiBzaXplOw0KPiAr
ICAgICAgIHU2NCBhZGRyZXNzOw0KPiArfTsNCj4gKw0KPiArZW51bSBhY3BpX3N2a2xfdHlwZSB7
DQo+ICsgICAgICAgQUNQSV9TVktMX1RZUEVfTUFJTl9TVE9SQUdFID0gMCwNCj4gKyAgICAgICBB
Q1BJX1NWS0xfVFlQRV9SRVNFUlZFRCA9IDEgICAgIC8qIDEgYW5kIGdyZWF0ZXIgYXJlIHJlc2Vy
dmVkICovDQo+ICt9Ow0KPiArDQo+ICtlbnVtIGFjcGlfc3ZrbF9mb3JtYXQgew0KPiArICAgICAg
IEFDUElfU1ZLTF9GT1JNQVRfUkFXX0JJTkFSWSA9IDAsDQo+ICsgICAgICAgQUNQSV9TVktMX0ZP
Uk1BVF9SRVNFUlZFRCA9IDEgICAvKiAxIGFuZCBncmVhdGVyIGFyZSByZXNlcnZlZCAqLw0KPiAr
fTsNCj4gKw0KPiAgLyogUmVzZXQgdG8gZGVmYXVsdCBwYWNraW5nICovDQo+DQo+ICAjcHJhZ21h
IHBhY2soKQ0KPiAtLQ0KPiAyLjI1LjENCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KRGV2ZWwgbWFpbGluZyBsaXN0IC0tIGRldmVsQGFjcGljYS5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnCiUo
d2ViX3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0KXMvJShfaW50ZXJuYWxfbmFtZSlz
