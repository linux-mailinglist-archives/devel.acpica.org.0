Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8033CBAF5
	for <lists+devel-acpica@lfdr.de>; Fri, 16 Jul 2021 19:11:48 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2711B100EB82B;
	Fri, 16 Jul 2021 10:11:46 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.53; helo=mail-ot1-f53.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1885E100EBB7D
	for <devel@acpica.org>; Fri, 16 Jul 2021 10:11:36 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id f12-20020a056830204cb029048bcf4c6bd9so10540588otp.8
        for <devel@acpica.org>; Fri, 16 Jul 2021 10:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KNuTw/A4f9C8O7wXXOPp5dr/FmMmVJJ2W7NnHC4GCEs=;
        b=TasXO1nF4SqLhMCdzQnmp8DCG0JHZ2JkPPYUaR6JIPqzUIy9b6jgyg2VnlrYjnt/k0
         dSZFWYbPmRTUEQxddtjaghSzI0NQ8JGqoOu12qe/2ORXEXvdblyEHrXp5u/3VIdQtcEe
         KCJyvh7t4TlvZ4jzXnSYEjXuYRbC4SahJ7oXKp+Hev0yPB2kcGIa5HJ77t2QDTXe/Ceq
         hh9WU11jUfBiCibvnEG9aRKBeAiBQ/kdGHUvyvJnlRlf9B4cXnYtXCCNnWjii1pC6MQL
         WdDCFbiPZM0hMNoTMIH/AVsCuNXY/SIXDu0C2q3yi1FBtcY5dpovcI1Yt4p9/xvMp+1h
         G0Gg==
X-Gm-Message-State: AOAM532qn73S0W3G0KA47oVXgiy8xhPdSNSE7HjSjTtyOc07mP9X/Gqf
	LSTaoX3xWVDMTiIQVOtbzLbJdfYIDSQ8wLeRKZE=
X-Google-Smtp-Source: ABdhPJw1JujzvbOp1ydZUW1nklRlfBPlOZ+7iC9huThdPtvWeFgpaIMOVTnw+lhDKgSgNPk+FwV3fn+tjyW9YjaOS2Q=
X-Received: by 2002:a9d:5f19:: with SMTP id f25mr9330215oti.206.1626455496081;
 Fri, 16 Jul 2021 10:11:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210705124206.1228958-1-chenhuacai@loongson.cn>
 <20210705124206.1228958-2-chenhuacai@loongson.cn> <CAJZ5v0gyun_85uXrH6jt-d3XjaOFZmHEYGnKKGL-XUb=4ZcrMQ@mail.gmail.com>
 <407870af.c1bf.17aa87f94db.Coremail.chenhuacai@loongson.cn>
In-Reply-To: <407870af.c1bf.17aa87f94db.Coremail.chenhuacai@loongson.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 16 Jul 2021 19:11:25 +0200
Message-ID: <CAJZ5v0juBC5USF_t-kF7Npk7onXF6SkKvwechuUYiM2jzFuN3Q@mail.gmail.com>
To: =?UTF-8?B?6ZmI5Y2O5omN?= <chenhuacai@loongson.cn>
Message-ID-Hash: JIKALNR6ON3JMBCNC4UHU6IFCUPSWLAM
X-Message-ID-Hash: JIKALNR6ON3JMBCNC4UHU6IFCUPSWLAM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Xuefeng Li <lixuefeng@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, chenhuacai@gmail.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/3] ACPI: Add LoongArch support for ACPI_PROCESSOR/ACPI_NUMA
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JIKALNR6ON3JMBCNC4UHU6IFCUPSWLAM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKdWwgMTUsIDIwMjEgYXQgNjo0OSBBTSDpmYjljY7miY0gPGNoZW5odWFjYWlAbG9v
bmdzb24uY24+IHdyb3RlOg0KPg0KPiBIaSwgUmFmYWVsLA0KPg0KPg0KPiAmZ3Q7IC0tLS0t5Y6f
5aeL6YKu5Lu2LS0tLS0NCj4gJmd0OyDlj5Hku7bkuro6ICJSYWZhZWwgSi4gV3lzb2NraSIgPHJh
ZmFlbEBrZXJuZWwub3JnPg0KPiAmZ3Q7IOWPkemAgeaXtumXtDogMjAyMS0wNy0xNCAyMDozMDoz
MyAo5pif5pyf5LiJKQ0KPiAmZ3Q7IOaUtuS7tuS6ujogIkh1YWNhaSBDaGVuIiA8Y2hlbmh1YWNh
aUBsb29uZ3Nvbi5jbj4NCj4gJmd0OyDmioTpgIE6ICJSYWZhZWwgSiAuIFd5c29ja2kiIDxyandA
cmp3eXNvY2tpLm5ldD4sICJMZW4gQnJvd24iIDxsZW5iQGtlcm5lbC5vcmc+LCAiUm9iZXJ0IE1v
b3JlIiA8cm9iZXJ0Lm1vb3JlQGludGVsLmNvbT4sICJFcmlrIEthbmVkYSIgPGVyaWsua2FuZWRh
QGludGVsLmNvbT4sICJBQ1BJIERldmVsIE1hbGluZyBMaXN0IiA8bGludXgtYWNwaUB2Z2VyLmtl
cm5lbC5vcmc+LCAib3BlbiBsaXN0OkFDUEkgQ09NUE9ORU5UIEFSQ0hJVEVDVFVSRSAoQUNQSUNB
KSIgPGRldmVsQGFjcGljYS5vcmc+LCAiWHVlZmVuZyBMaSIgPGxpeHVlZmVuZ0Bsb29uZ3Nvbi5j
bj4sICJKaWF4dW4gWWFuZyIgPGppYXh1bi55YW5nQGZseWdvYXQuY29tPg0KPiAmZ3Q7IOS4u+mi
mDogUmU6IFtQQVRDSCAxLzNdIEFDUEk6IEFkZCBMb29uZ0FyY2ggc3VwcG9ydCBmb3IgQUNQSV9Q
Uk9DRVNTT1IvQUNQSV9OVU1BDQo+ICZndDsNCj4gJmd0OyBPbiBNb24sIEp1bCA1LCAyMDIxIGF0
IDI6NDEgUE0gSHVhY2FpIENoZW4gPGNoZW5odWFjYWlAbG9vbmdzb24uY24+IHdyb3RlOg0KPiAm
Z3Q7ICZndDsNCj4gJmd0OyAmZ3Q7IFdlIGFyZSBwcmVwYXJpbmcgdG8gYWRkIG5ldyBMb29uZ3Nv
biAoYmFzZWQgb24gTG9vbmdBcmNoLCBub3QgTUlQUykNCj4gJmd0OyAmZ3Q7IHN1cHBvcnQuIExv
b25nQXJjaCB1c2UgQUNQSSBvdGhlciB0aGFuIERUIGFzIGl0cyBib290IHByb3RvY29sLCBzbw0K
PiAmZ3Q7ICZndDsgYWRkIGl0cyBzdXBwb3J0IGZvciBBQ1BJX1BST0NFU1NPUi9BQ1BJX05VTUEu
DQo+ICZndDsgJmd0Ow0KPiAmZ3Q7ICZndDsgU2lnbmVkLW9mZi1ieTogSHVhY2FpIENoZW4gPGNo
ZW5odWFjYWlAbG9vbmdzb24uY24+DQo+ICZndDsgJmd0OyAtLS0NCj4gJmd0OyAmZ3Q7ICBkcml2
ZXJzL2FjcGkvS2NvbmZpZyAgICAgIHwgNCArKy0tDQo+ICZndDsgJmd0OyAgZHJpdmVycy9hY3Bp
L251bWEvS2NvbmZpZyB8IDIgKy0NCj4gJmd0OyAmZ3Q7ICBkcml2ZXJzL2FjcGkvbnVtYS9zcmF0
LmMgIHwgMiArLQ0KPiAmZ3Q7ICZndDsgIGluY2x1ZGUvbGludXgvYWNwaS5oICAgICAgfCAyICst
DQo+ICZndDsgJmd0OyAgNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pDQo+ICZndDsgJmd0Ow0KPiAmZ3Q7ICZndDsgZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNw
aS9LY29uZmlnIGIvZHJpdmVycy9hY3BpL0tjb25maWcNCj4gJmd0OyAmZ3Q7IGluZGV4IGZlMGJi
NjI3N2U0ZC4uOTBhZmE0NGVmY2JhIDEwMDY0NA0KPiAmZ3Q7ICZndDsgLS0tIGEvZHJpdmVycy9h
Y3BpL0tjb25maWcNCj4gJmd0OyAmZ3Q7ICsrKyBiL2RyaXZlcnMvYWNwaS9LY29uZmlnDQo+ICZn
dDsgJmd0OyBAQCAtMjgwLDkgKzI4MCw5IEBAIGNvbmZpZyBBQ1BJX0NQUENfTElCDQo+ICZndDsg
Jmd0Ow0KPiAmZ3Q7ICZndDsgIGNvbmZpZyBBQ1BJX1BST0NFU1NPUg0KPiAmZ3Q7ICZndDsgICAg
ICAgICB0cmlzdGF0ZSAiUHJvY2Vzc29yIg0KPiAmZ3Q7ICZndDsgLSAgICAgICBkZXBlbmRzIG9u
IFg4NiB8fCBJQTY0IHx8IEFSTTY0DQo+ICZndDsgJmd0OyArICAgICAgIGRlcGVuZHMgb24gWDg2
IHx8IElBNjQgfHwgQVJNNjQgfHwgTE9PTkdBUkNIDQo+ICZndDsgJmd0OyAgICAgICAgIHNlbGVj
dCBBQ1BJX1BST0NFU1NPUl9JRExFDQo+ICZndDsgJmd0OyAtICAgICAgIHNlbGVjdCBBQ1BJX0NQ
VV9GUkVRX1BTUyBpZiBYODYgfHwgSUE2NA0KPiAmZ3Q7ICZndDsgKyAgICAgICBzZWxlY3QgQUNQ
SV9DUFVfRlJFUV9QU1MgaWYgWDg2IHx8IElBNjQgfHwgTE9PTkdBUkNIDQo+ICZndDsgJmd0OyAg
ICAgICAgIGRlZmF1bHQgeQ0KPiAmZ3Q7ICZndDsgICAgICAgICBoZWxwDQo+ICZndDsgJmd0OyAg
ICAgICAgICAgVGhpcyBkcml2ZXIgYWRkcyBzdXBwb3J0IGZvciB0aGUgQUNQSSBQcm9jZXNzb3Ig
cGFja2FnZS4gSXQgaXMgcmVxdWlyZWQNCj4gJmd0OyAmZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2FjcGkvbnVtYS9LY29uZmlnIGIvZHJpdmVycy9hY3BpL251bWEvS2NvbmZpZw0KPiAmZ3Q7ICZn
dDsgaW5kZXggZmNmMmU1NTZkNjlkLi4zOWIxZjM0YzIxZGYgMTAwNjQ0DQo+ICZndDsgJmd0OyAt
LS0gYS9kcml2ZXJzL2FjcGkvbnVtYS9LY29uZmlnDQo+ICZndDsgJmd0OyArKysgYi9kcml2ZXJz
L2FjcGkvbnVtYS9LY29uZmlnDQo+ICZndDsgJmd0OyBAQCAtMiw3ICsyLDcgQEANCj4gJmd0OyAm
Z3Q7ICBjb25maWcgQUNQSV9OVU1BDQo+ICZndDsgJmd0OyAgICAgICAgIGJvb2wgIk5VTUEgc3Vw
cG9ydCINCj4gJmd0OyAmZ3Q7ICAgICAgICAgZGVwZW5kcyBvbiBOVU1BDQo+ICZndDsgJmd0OyAt
ICAgICAgIGRlcGVuZHMgb24gKFg4NiB8fCBJQTY0IHx8IEFSTTY0KQ0KPiAmZ3Q7ICZndDsgKyAg
ICAgICBkZXBlbmRzIG9uIChYODYgfHwgSUE2NCB8fCBBUk02NCB8fCBMT09OR0FSQ0gpDQo+ICZn
dDsgJmd0OyAgICAgICAgIGRlZmF1bHQgeSBpZiBJQTY0IHx8IEFSTTY0DQo+ICZndDsgJmd0Ow0K
PiAmZ3Q7ICZndDsgIGNvbmZpZyBBQ1BJX0hNQVQNCj4gJmd0OyAmZ3Q7IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2FjcGkvbnVtYS9zcmF0LmMgYi9kcml2ZXJzL2FjcGkvbnVtYS9zcmF0LmMNCj4gJmd0
OyAmZ3Q7IGluZGV4IDYwMjFhMTAxMzQ0Mi4uYjg3OTVmYzQ5MDk3IDEwMDY0NA0KPiAmZ3Q7ICZn
dDsgLS0tIGEvZHJpdmVycy9hY3BpL251bWEvc3JhdC5jDQo+ICZndDsgJmd0OyArKysgYi9kcml2
ZXJzL2FjcGkvbnVtYS9zcmF0LmMNCj4gJmd0OyAmZ3Q7IEBAIC0yMDYsNyArMjA2LDcgQEAgaW50
IF9faW5pdCBzcmF0X2Rpc2FibGVkKHZvaWQpDQo+ICZndDsgJmd0OyAgICAgICAgIHJldHVybiBh
Y3BpX251bWEgJmx0OyAwOw0KPiAmZ3Q7ICZndDsgIH0NCj4gJmd0OyAmZ3Q7DQo+ICZndDsgJmd0
OyAtI2lmIGRlZmluZWQoQ09ORklHX1g4NikgfHwgZGVmaW5lZChDT05GSUdfQVJNNjQpDQo+ICZn
dDsgJmd0OyArI2lmIGRlZmluZWQoQ09ORklHX1g4NikgfHwgZGVmaW5lZChDT05GSUdfQVJNNjQp
IHx8IGRlZmluZWQoQ09ORklHX0xPT05HQVJDSCkNCj4gJmd0OyAmZ3Q7ICAvKg0KPiAmZ3Q7ICZn
dDsgICAqIENhbGxiYWNrIGZvciBTTElUIHBhcnNpbmcuICBweG1fdG9fbm9kZSgpIHJldHVybnMg
TlVNQV9OT19OT0RFIGZvcg0KPiAmZ3Q7ICZndDsgICAqIEkvTyBsb2NhbGl0aWVzIHNpbmNlIFNS
QVQgZG9lcyBub3QgbGlzdCB0aGVtLiAgSS9PIGxvY2FsaXRpZXMgYXJlDQo+ICZndDsgJmd0OyBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hY3BpLmggYi9pbmNsdWRlL2xpbnV4L2FjcGkuaA0K
PiAmZ3Q7ICZndDsgaW5kZXggNmJiMzZmZDZiYTMxLi4zYmE4NTExY2JlZGUgMTAwNjQ0DQo+ICZn
dDsgJmd0OyAtLS0gYS9pbmNsdWRlL2xpbnV4L2FjcGkuaA0KPiAmZ3Q7ICZndDsgKysrIGIvaW5j
bHVkZS9saW51eC9hY3BpLmgNCj4gJmd0OyAmZ3Q7IEBAIC0yNDksNyArMjQ5LDcgQEAgdm9pZCBh
Y3BpX3RhYmxlX3ByaW50X21hZHRfZW50cnkgKHN0cnVjdCBhY3BpX3N1YnRhYmxlX2hlYWRlciAq
bWFkdCk7DQo+ICZndDsgJmd0OyAgLyogdGhlIGZvbGxvd2luZyBudW1hIGZ1bmN0aW9ucyBhcmUg
YXJjaGl0ZWN0dXJlLWRlcGVuZGVudCAqLw0KPiAmZ3Q7ICZndDsgIHZvaWQgYWNwaV9udW1hX3Ns
aXRfaW5pdCAoc3RydWN0IGFjcGlfdGFibGVfc2xpdCAqc2xpdCk7DQo+ICZndDsgJmd0Ow0KPiAm
Z3Q7ICZndDsgLSNpZiBkZWZpbmVkKENPTkZJR19YODYpIHx8IGRlZmluZWQoQ09ORklHX0lBNjQp
DQo+ICZndDsgJmd0OyArI2lmIGRlZmluZWQoQ09ORklHX1g4NikgfHwgZGVmaW5lZChDT05GSUdf
SUE2NCkgfHwgZGVmaW5lZChDT05GSUdfTE9PTkdBUkNIKQ0KPiAmZ3Q7ICZndDsgIHZvaWQgYWNw
aV9udW1hX3Byb2Nlc3Nvcl9hZmZpbml0eV9pbml0IChzdHJ1Y3QgYWNwaV9zcmF0X2NwdV9hZmZp
bml0eSAqcGEpOw0KPiAmZ3Q7ICZndDsgICNlbHNlDQo+ICZndDsgJmd0OyAgc3RhdGljIGlubGlu
ZSB2b2lkDQo+ICZndDsgJmd0OyAtLQ0KPiAmZ3Q7DQo+ICZndDsgRG9lcyB0aGlzIHBhdGNoIGFs
b25lIG1ha2Ugc2Vuc2Ugd2l0aG91dCB0aGUgb3RoZXIgdHdvIGluIHRoZSBzZXJpZXM/DQo+ICZn
dDsgSWYgc28sIEkgY2FuIHF1ZXVlIGl0IHVwIGZvciA1LjE1LCBzbyBwbGVhc2UgbGV0IG1lIGtu
b3cuDQo+IFllcywgdGhpcyBwYXRjaCBoYXMgbm8gZGVwZW5kZW5jeSB3aXRoIG90aGVyIHR3by4N
Cg0KT0ssIGFwcGxpZWQgYXMgNS4xNSBtYXRlcmlhbC4NCg0KVGhhbmtzIQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0g
ZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxl
YXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRl
cm5hbF9uYW1lKXM=
