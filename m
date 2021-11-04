Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C7844523D
	for <lists+devel-acpica@lfdr.de>; Thu,  4 Nov 2021 12:31:41 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 799FB100EAB17;
	Thu,  4 Nov 2021 04:31:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.54; helo=mail-ot1-f54.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 00607100EAB17
	for <devel@acpica.org>; Thu,  4 Nov 2021 04:31:34 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id g25-20020a9d5f99000000b0055af3d227e8so3357548oti.11
        for <devel@acpica.org>; Thu, 04 Nov 2021 04:31:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MgdOLOPcs/A9vtxa4IU81lPxBsuAOPrUSmt5KTVFe1c=;
        b=bGHsd/KivlxenLgWzuHDtUSaE0t2uHBRx8MaCVqXfDGTQomtIR5Bxl2OLN4xKkO8Q7
         ddzA2Zv2xhseeFWzkgQ4K06GhOMVSU0bMHJ8K3RVOtbY0VznABupNAiCJhd0quAQ8huP
         JGD63de/e0vyoy+9amg482nVI3RBSw5Yc+4Jfw695wJ+w3ZY5JgLcB8fG4C/2GYBcY70
         dTRbwOLb/cW2VsXh3hUmbT6RXFHpJEVgz+dfh4+1baFZMpVsYNzZ/E2hpKtkkfRxfutG
         +UCna3UEXvd8YUBqQygXad9OzG2CEfeKIK8Wu4aYull/R0egDCUAsQNE2sifTX1j7Q2i
         o7Dw==
X-Gm-Message-State: AOAM533DBR2/nUiD9WB+ipsvdA8m9kn8+RPwbW1OTnHHFcaTF3ePPYH/
	sntHAtDq5+BOi119vwba7ckGODXlIYpiETTePwI=
X-Google-Smtp-Source: ABdhPJyz+c5mJx35EqCu2zCOmAMuHJd58bEGPCbjF/ZRaisv3JU+s3sWzlmd8eR1Gg5qsKPAA7e55XEGx8XMc0QzcX8=
X-Received: by 2002:a9d:a64:: with SMTP id 91mr30941382otg.198.1636025493924;
 Thu, 04 Nov 2021 04:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <20211026075257.3785036-1-ishii.shuuichir@fujitsu.com> <TYCPR01MB6160403C510AE93C1EC2635DE98D9@TYCPR01MB6160.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB6160403C510AE93C1EC2635DE98D9@TYCPR01MB6160.jpnprd01.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 4 Nov 2021 12:31:22 +0100
Message-ID: <CAJZ5v0j4ZvbkdF2Az_5MLFY=Vt7835LA-U2N2qKbZVk9KDx7QA@mail.gmail.com>
To: "ishii.shuuichir@fujitsu.com" <ishii.shuuichir@fujitsu.com>
Message-ID-Hash: UGEP23DLDTN5NBZICEB4OAEEJMNOJ5BY
X-Message-ID-Hash: UGEP23DLDTN5NBZICEB4OAEEJMNOJ5BY
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "rafael.j.wysocki@intel.com" <rafael.j.wysocki@intel.com>, "devel@acpica.org" <devel@acpica.org>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: Add AEST in ACPI Table Definitions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UGEP23DLDTN5NBZICEB4OAEEJMNOJ5BY/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgNCwgMjAyMSBhdCA4OjE0IEFNIGlzaGlpLnNodXVpY2hpckBmdWppdHN1LmNv
bQ0KPGlzaGlpLnNodXVpY2hpckBmdWppdHN1LmNvbT4gd3JvdGU6DQo+DQo+IHBpbmc/DQo+DQo+
IFAuUy4NCj4gV2Ugc2hvdWxkIGhhdmUgYWRkZWQgdGhlIG1haW50YWluZXIgb2YgQUNQSSBGT1Ig
QVJNNjQgKEFDUEkvYXJtNjQpIGZpcnN0LA0KPiBidXQgc2luY2UgQUVTVCBpcyBhbiBhcm0tc3Bl
YyBBQ1BJIHRhYmxlLCBhZGRlZCB0aGUgY29uY2VybmVkIHBlcnNvbnMNCj4gYXMgbmV3IGUtbWFp
bCBhZGRyZXNzZXMuDQoNClBsZWFzZSByZXNlbmQgdGhlIHBhdGNoLCB0aGVuLCB3aXRoIGFsbCBv
ZiB0aGUgcmVxdWlzaXRlIGFkZHJlc3Nlcw0KcHJlc2VudCBpbiB0aGUgQ0MgbGlzdC4NCg0KPiA+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogU2h1dWljaGlyb3UgSXNoaWkg
PGlzaGlpLnNodXVpY2hpckBmdWppdHN1LmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCBPY3RvYmVy
IDI2LCAyMDIxIDQ6NTMgUE0NCj4gPiBUbzogcmp3QHJqd3lzb2NraS5uZXQ7IGxlbmJAa2VybmVs
Lm9yZzsgbGludXgtYWNwaUB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4gbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgcm9iZXJ0Lm1vb3JlQGludGVsLmNvbTsgZXJpay5rYW5lZGFAaW50ZWwuY29t
Ow0KPiA+IHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tOyBkZXZlbEBhY3BpY2Eub3JnDQo+ID4g
Q2M6IElzaGlpLCBTaHV1aWNoaXJvdS/nn7PkupUg5ZGo5LiA6YOOIDxpc2hpaS5zaHV1aWNoaXJA
ZnVqaXRzdS5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIXSBBQ1BJOiBBZGQgQUVTVCBpbiBBQ1BJ
IFRhYmxlIERlZmluaXRpb25zDQo+ID4NCj4gPiBXaGVuIFdlIGFkZGVkIEFFU1QgdXNpbmcgdGhl
IFVwZ3JhZGluZyBBQ1BJIHRhYmxlcyB2aWEgaW5pdHJkIGZ1bmN0aW9uLCB0aGUNCj4gPiBrZXJu
ZWwgY291bGQgbm90IHJlY29nbml6ZSB0aGUgQUVTVCwgc28gV2UgYWRkZWQgQUVTVCB0aGUgQUNQ
SSB0YWJsZSBkZWZpbml0aW9uLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU2h1dWljaGlyb3Ug
SXNoaWkgPGlzaGlpLnNodXVpY2hpckBmdWppdHN1LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9hY3BpL3RhYmxlcy5jIHwgMiArLQ0KPiA+ICBpbmNsdWRlL2FjcGkvYWN0YmwyLmggfCAxICsN
Cj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvdGFibGVzLmMgYi9kcml2ZXJzL2FjcGkv
dGFibGVzLmMgaW5kZXgNCj4gPiBmOTM4MzczNmZhMGYuLmFiMGZiNGMzM2UwNyAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2FjcGkvdGFibGVzLmMNCj4gPiArKysgYi9kcml2ZXJzL2FjcGkvdGFi
bGVzLmMNCj4gPiBAQCAtNDk5LDcgKzQ5OSw3IEBAIHN0YXRpYyBjb25zdCBjaGFyIHRhYmxlX3Np
Z3NbXVtBQ1BJX05BTUVTRUdfU0laRV0NCj4gPiBfX2luaXRjb25zdCA9IHsNCj4gPiAgICAgICBB
Q1BJX1NJR19XRERULCBBQ1BJX1NJR19XRFJULCBBQ1BJX1NJR19EU0RULCBBQ1BJX1NJR19GQURU
LA0KPiA+ICAgICAgIEFDUElfU0lHX1BTRFQsIEFDUElfU0lHX1JTRFQsIEFDUElfU0lHX1hTRFQs
IEFDUElfU0lHX1NTRFQsDQo+ID4gICAgICAgQUNQSV9TSUdfSU9SVCwgQUNQSV9TSUdfTkZJVCwg
QUNQSV9TSUdfSE1BVCwgQUNQSV9TSUdfUFBUVCwNCj4gPiAtICAgICBBQ1BJX1NJR19OSExUIH07
DQo+ID4gKyAgICAgQUNQSV9TSUdfTkhMVCwgQUNQSV9TSUdfQUVTVCB9Ow0KPiA+DQo+ID4gICNk
ZWZpbmUgQUNQSV9IRUFERVJfU0laRSBzaXplb2Yoc3RydWN0IGFjcGlfdGFibGVfaGVhZGVyKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvYWNwaS9hY3RibDIuaCBiL2luY2x1ZGUvYWNw
aS9hY3RibDIuaCBpbmRleA0KPiA+IGE0N2IzMmE1Y2JkZS4uYjU4NmU0MGQ0Yjg2IDEwMDY0NA0K
PiA+IC0tLSBhL2luY2x1ZGUvYWNwaS9hY3RibDIuaA0KPiA+ICsrKyBiL2luY2x1ZGUvYWNwaS9h
Y3RibDIuaA0KPiA+IEBAIC00OCw2ICs0OCw3IEBADQo+ID4gICNkZWZpbmUgQUNQSV9TSUdfU0RF
ViAgICAgICAgICAgIlNERVYiICAgICAgIC8qIFNlY3VyZSBEZXZpY2VzIHRhYmxlICovDQo+ID4g
ICNkZWZpbmUgQUNQSV9TSUdfTkhMVCAgICAgICAgICAgIk5ITFQiICAgICAgIC8qIE5vbi1IREF1
ZGlvIExpbmsgVGFibGUNCj4gPiAqLw0KPiA+ICAjZGVmaW5lIEFDUElfU0lHX1NWS0wgICAgICAg
ICAgICJTVktMIiAgICAgICAvKiBTdG9yYWdlIFZvbHVtZSBLZXkNCj4gPiBMb2NhdGlvbiBUYWJs
ZSAqLw0KPiA+ICsjZGVmaW5lIEFDUElfU0lHX0FFU1QgICAgICAgICAgICJBRVNUIiAvKiBBcm0g
RXJyb3IgU291cmNlIFRhYmxlICovDQo+ID4NCj4gPiAgLyoNCj4gPiAgICogQWxsIHRhYmxlcyBt
dXN0IGJlIGJ5dGUtcGFja2VkIHRvIG1hdGNoIHRoZSBBQ1BJIHNwZWNpZmljYXRpb24sIHNpbmNl
DQo+ID4gLS0NCj4gPiAyLjI3LjANCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KRGV2ZWwgbWFpbGluZyBsaXN0IC0tIGRldmVsQGFjcGljYS5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnCiUod2Vi
X3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0KXMvJShfaW50ZXJuYWxfbmFtZSlz
