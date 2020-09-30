Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AB527EDC9
	for <lists+devel-acpica@lfdr.de>; Wed, 30 Sep 2020 17:49:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 64FD0154C7B85;
	Wed, 30 Sep 2020 08:49:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.67; helo=mail-ot1-f67.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F3BF7154C7B84
	for <devel@acpica.org>; Wed, 30 Sep 2020 08:49:45 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id h17so2296265otr.1
        for <devel@acpica.org>; Wed, 30 Sep 2020 08:49:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=mTrSgX4Tixqu3kTctGZ5BfKCOM+BJ2wQmL4YVycvE/I=;
        b=E08mrZFCsZhV4waT0BqL4dlXVuIzkFg+g/EgpcCBrNYusuP33+JZEjjGCUYVxx5pnA
         WJ245FdDrpOWcJSimdji4vFldleByh2FTqAjWHXwl0nHNQXjjBxRo3aOMEK7yuK4tTHC
         rFR8K3bBiOfV6cf1+AlQM95J2LwlnEFo+BABQ6rxDcPDEwlKVRT8zSiZH1zLpsD+VCLO
         Sj1S6wwUgkWXVO/knCOdezT0nx+jwIxpNIPa53ba5UmDpO3VwqVTI93duIjbYJd8Mg2n
         ETbLQA4Lk5seqVEgcufe1NcWeJagILEEdyAQeZdH6Qw/cb1kkbAQrqKmJqgLKOqnl36Q
         Bc6w==
X-Gm-Message-State: AOAM530BV7ElV6asqRWPq1k102HXsp3dnDdpw7AZ7u3wYbaThfeIVGXH
	OPGj/rpzprGjVC/xB5O71gwSrnfcyWNgYWNU5wg=
X-Google-Smtp-Source: ABdhPJz3hWxJC7Wv+mdN7W+4UBYuXRGDar9sH2m/ddSlwtkNcPtwBYe6OJbDp6W+rpGzPUTBMAx+pa5fdCsf+KDNuSQ=
X-Received: by 2002:a9d:718a:: with SMTP id o10mr1956739otj.262.1601480984876;
 Wed, 30 Sep 2020 08:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200928194554.3423466-1-natechancellor@gmail.com> <a39af625-6e2e-3cb2-ece5-ea2b2dbb7c21@huawei.com>
In-Reply-To: <a39af625-6e2e-3cb2-ece5-ea2b2dbb7c21@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 30 Sep 2020 17:49:33 +0200
Message-ID: <CAJZ5v0hno=F9yuJHRQNix7eiLzP=WtY1rB3xxmmBzLYxW62-tg@mail.gmail.com>
To: Hanjun Guo <guohanjun@huawei.com>, Nathan Chancellor <natechancellor@gmail.com>
Message-ID-Hash: KF3TGSF5CPKN6YI4GNLUF5A4SMXINZFE
X-Message-ID-Hash: KF3TGSF5CPKN6YI4GNLUF5A4SMXINZFE
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI / NUMA: Add stub function for pxm_to_node
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KF3TGSF5CPKN6YI4GNLUF5A4SMXINZFE/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMzAsIDIwMjAgYXQgMTE6MDcgQU0gSGFuanVuIEd1byA8Z3VvaGFuanVuQGh1
YXdlaS5jb20+IHdyb3RlOg0KPg0KPiBPbiAyMDIwLzkvMjkgMzo0NSwgTmF0aGFuIENoYW5jZWxs
b3Igd3JvdGU6DQo+ID4gQWZ0ZXIgY29tbWl0IDAxZmViYTU5MGNkNiAoIkFDUEk6IERvIG5vdCBj
cmVhdGUgbmV3IE5VTUEgZG9tYWlucyBmcm9tDQo+ID4gQUNQSSBzdGF0aWMgdGFibGVzIHRoYXQg
YXJlIG5vdCBTUkFUIik6DQo+ID4NCj4gPiAkIHNjcmlwdHMvY29uZmlnIC0tZmlsZSBhcmNoL3g4
Ni9jb25maWdzL3g4Nl82NF9kZWZjb25maWcgLWQgTlVNQSAtZSBBQ1BJX05GSVQNCj4gPg0KPiA+
ICQgbWFrZSAtc2tqIiQobnByb2MpIiBkaXN0Y2xlYW4gZGVmY29uZmlnIGRyaXZlcnMvYWNwaS9u
Zml0Lw0KPiA+IGRyaXZlcnMvYWNwaS9uZml0L2NvcmUuYzogSW4gZnVuY3Rpb24g4oCYYWNwaV9u
Zml0X3JlZ2lzdGVyX3JlZ2lvbuKAmToNCj4gPiBkcml2ZXJzL2FjcGkvbmZpdC9jb3JlLmM6MzAx
MDoyNzogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mDQo+ID4gZnVuY3Rpb24g4oCYcHht
X3RvX25vZGXigJk7IGRpZCB5b3UgbWVhbiDigJh4YV90b19ub2Rl4oCZPw0KPiA+IFstV2Vycm9y
PWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQ0KPiA+ICAgMzAxMCB8ICAgbmRyX2Rlc2Mt
PnRhcmdldF9ub2RlID0gcHhtX3RvX25vZGUoc3BhLT5wcm94aW1pdHlfZG9tYWluKTsNCj4gPiAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+DQo+ID4gICAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICB4YV90b19ub2RlDQo+ID4gY2MxOiBzb21lIHdh
cm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzDQo+ID4gLi4uDQo+ID4NCj4gPiBBZGQgYSBz
dHViIGZ1bmN0aW9uIGxpa2UgYWNwaV9tYXBfcHhtX3RvX25vZGUgaGFkIHNvIHRoYXQgdGhlIGJ1
aWxkDQo+ID4gY29udGludWVzIHRvIHdvcmsuDQo+ID4NCj4gPiBGaXhlczogMDFmZWJhNTkwY2Q2
ICgiQUNQSTogRG8gbm90IGNyZWF0ZSBuZXcgTlVNQSBkb21haW5zIGZyb20gQUNQSSBzdGF0aWMg
dGFibGVzIHRoYXQgYXJlIG5vdCBTUkFUIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBOYXRoYW4gQ2hh
bmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+DQo+ID4gSSBh
bSBub3Qgc3VyZSBpZiB0aGlzIGlzIHRoZSByaWdodCBwbGFjZSBvciB2YWx1ZSBmb3IgdGhpcy4g
SXQgbG9va3MNCj4gPiBsaWtlIHRoZXJlIGlzIGdvaW5nIHRvIGJlIGFub3RoZXIgc3R1YiBmdW5j
dGlvbiBhZGRlZCBoZXJlLCB3aGljaCBpcw0KPiA+IGdvaW5nIHRocm91Z2ggLW1tOg0KPiA+DQo+
ID4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8xNTk2NDMwOTQ5MjUuNDA2MjMwMi4xNDk3OTg3
Mjk3MzA0Mzc3MjMwNS5zdGdpdEBkd2lsbGlhMi1kZXNrMy5hbXIuY29ycC5pbnRlbC5jb20NCj4g
Pg0KPiA+ICAgaW5jbHVkZS9hY3BpL2FjcGlfbnVtYS5oIHwgNSArKysrKw0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
YWNwaS9hY3BpX251bWEuaCBiL2luY2x1ZGUvYWNwaS9hY3BpX251bWEuaA0KPiA+IGluZGV4IGZk
ZWJjZmM2YzhkZi4uMDllYjNiYzIwZmY1IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvYWNwaS9h
Y3BpX251bWEuaA0KPiA+ICsrKyBiL2luY2x1ZGUvYWNwaS9hY3BpX251bWEuaA0KPiA+IEBAIC0y
Miw1ICsyMiwxMCBAQCBleHRlcm4gaW50IGFjcGlfbnVtYSBfX2luaXRkYXRhOw0KPiA+ICAgZXh0
ZXJuIHZvaWQgYmFkX3NyYXQodm9pZCk7DQo+ID4gICBleHRlcm4gaW50IHNyYXRfZGlzYWJsZWQo
dm9pZCk7DQo+ID4NCj4gPiArI2Vsc2UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8q
IENPTkZJR19BQ1BJX05VTUEgKi8NCj4gPiArc3RhdGljIGlubGluZSBpbnQgcHhtX3RvX25vZGUo
aW50IHB4bSkNCj4gPiArew0KPiA+ICsgICAgIHJldHVybiAwOw0KPiA+ICt9DQo+ID4gICAjZW5k
aWYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBDT05GSUdfQUNQSV9OVU1BICovDQo+
ID4gICAjZW5kaWYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBfX0FDUF9OVU1BX0gg
Ki8NCj4NCj4gTG9va3MgZ29vZCB0byBtZSwNCj4NCj4gUmV2aWV3ZWQtYnk6IEhhbmp1biBHdW8g
PGd1b2hhbmp1bkBodWF3ZWkuY29tPg0KDQpQYXRjaCBhcHBsaWVkLCB0aGFua3MhCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkRldmVsIG1haWxpbmcgbGlz
dCAtLSBkZXZlbEBhY3BpY2Eub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gZGV2
ZWwtbGVhdmVAYWNwaWNhLm9yZwolKHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNnaWV4dClzLyUo
X2ludGVybmFsX25hbWUpcw==
