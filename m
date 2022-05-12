Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BE15250C9
	for <lists+devel-acpica@lfdr.de>; Thu, 12 May 2022 17:04:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 86A6B100F47AF;
	Thu, 12 May 2022 08:04:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.173; helo=mail-yw1-f173.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4562F100EB33C
	for <devel@acpica.org>; Thu, 12 May 2022 08:04:01 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2f7bb893309so59736267b3.12
        for <devel@acpica.org>; Thu, 12 May 2022 08:04:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=03yB+3thvFD8JtxaGtTda0M+LOZiA6X6v6EA8xoZfXM=;
        b=ZW+gT1TUwyxxdv8B1+pc4cC0nuBQuTB8A6BsRDcg1ZSOvqa5BorungnODj2489J2Xb
         rQe4e1tlyAsOU7DhP3n4/UxJAl3J0vE9lKTJJiTvFp4DTE7PgBOicO+rfE7y7gHdjHss
         sOl8Ac2Yjrq8iEs2KuJ4BPyvnTmWgIcrO0moaq4A+GXAl2l86hOqNWXaiqVWrqjfUC8x
         Y+6WA2fSNA18HOIKdoIMfNgQxPAjmS1wV9Jtma2s6FkKlsYlEQqf06Ki3mP6rPd8YT4R
         50HNHdebrToChslTBizoE5LLiKKYdTGYE8QNmJ8WZpsSA7UdEAcVYbg/wb9xQnvYCwui
         g9/w==
X-Gm-Message-State: AOAM532YJltGzgibUGqL0wwOEOfwoKwTxnwElpU4ohbZjTSt3fXxZiMt
	eK3ALjFCwbnblvoOIQ/6ROuj0VY8R1vQP8bWzKA=
X-Google-Smtp-Source: ABdhPJxFA3tZOBogfQgb9aTgqq84JZxkvDvNi3qwEuj4PulKcyiU7vJHw/S2JJ/D2cvzfRRNHdxeWqzmOfVkiSKTz6Y=
X-Received: by 2002:a0d:ddce:0:b0:2f8:c9f7:8f7c with SMTP id
 g197-20020a0dddce000000b002f8c9f78f7cmr479195ywe.301.1652367839727; Thu, 12
 May 2022 08:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220511134559.1466925-1-pierre.gondois@arm.com> <20220511141731.rjyjmgvux43lsj3x@bogus>
In-Reply-To: <20220511141731.rjyjmgvux43lsj3x@bogus>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 12 May 2022 17:03:48 +0200
Message-ID: <CAJZ5v0gvHO=2ZwdpQrgMufGFtkEcG-K9zEqoFBYys36qAhTE4Q@mail.gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Pierre Gondois <pierre.gondois@arm.com>
Message-ID-Hash: 6MPO65RRAPHE32MERVP67JTBBG2OJ4S2
X-Message-ID-Hash: 6MPO65RRAPHE32MERVP67JTBBG2OJ4S2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Ionela Voinescu <Ionela.Voinescu@arm.com>, Dietmar Eggemann <Dietmar.Eggemann@arm.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/5] ACPI: CPPC: Check _OSC for flexible address space
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6MPO65RRAPHE32MERVP67JTBBG2OJ4S2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTEsIDIwMjIgYXQgNDoxNyBQTSBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xs
YUBhcm0uY29tPiB3cm90ZToNCj4NCj4gT24gV2VkLCBNYXkgMTEsIDIwMjIgYXQgMDM6NDU6NTVQ
TSArMDIwMCwgUGllcnJlIEdvbmRvaXMgd3JvdGU6DQo+ID4gQUNQSSA2LjIgU2VjdGlvbiA2LjIu
MTEuMiAnUGxhdGZvcm0tV2lkZSBPU1BNIENhcGFiaWxpdGllcyc6DQo+ID4gICBTdGFydGluZyB3
aXRoIEFDUEkgU3BlY2lmaWNhdGlvbiA2LjIsIGFsbCBfQ1BDIHJlZ2lzdGVycyBjYW4gYmUgaW4N
Cj4gPiAgIFBDQywgU3lzdGVtIE1lbW9yeSwgU3lzdGVtIElPLCBvciBGdW5jdGlvbmFsIEZpeGVk
IEhhcmR3YXJlIGFkZHJlc3MNCj4gPiAgIHNwYWNlcy4gT1NQTSBzdXBwb3J0IGZvciB0aGlzIG1v
cmUgZmxleGlibGUgcmVnaXN0ZXIgc3BhY2Ugc2NoZW1lIGlzDQo+ID4gICBpbmRpY2F0ZWQgYnkg
dGhlIOKAnEZsZXhpYmxlIEFkZHJlc3MgU3BhY2UgZm9yIENQUEMgUmVnaXN0ZXJz4oCdIF9PU0Mg
Yml0DQo+ID4NCj4gPiBPdGhlcndpc2UgKGNmIEFDUEkgNi4xLCBzOC40LjcuMS4xLlgpLCBfQ1BD
IHJlZ2lzdGVycyBtdXN0IGJlIGluOg0KPiA+IC0gUENDIG9yIEZ1bmN0aW9uYWwgRml4ZWQgSGFy
ZHdhcmUgYWRkcmVzcyBzcGFjZSBpZiBkZWZpbmVkDQo+ID4gLSBTeXN0ZW1NZW1vcnkgYWRkcmVz
cyBzcGFjZSAoTlVMTCByZWdpc3RlcikgaWYgbm90IGRlZmluZWQNCj4gPg0KPiA+IEFkZCB0aGUg
Y29ycmVzcG9uZGluZyBfT1NDIGJpdCBhbmQgY2hlY2sgaXQgd2hlbiBwYXJzaW5nIF9DUEMgb2Jq
ZWN0cy4NCj4gPg0KPg0KPiBMb29rcyBnb29kLCBvdGhlciB0aGFuIGEgbWlub3Igbml0IGJlbG93
LiBGZWVsIGZyZWUgdG8gaWdub3JlIHRoYXQgb3INCj4gY2hlY2sgd2hhdCBpcyBSYWZhZWwncyBw
cmVmZXJlbmNlLiBPdGhlcndpc2UsDQo+DQo+IFJldmlld2VkLWJ5OiBTdWRlZXAgSG9sbGEgPHN1
ZGVlcC5ob2xsYUBhcm0uY29tPg0KPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFBpZXJyZSBHb25kb2lz
IDxwaWVycmUuZ29uZG9pc0Bhcm0uY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2FjcGkvYnVz
LmMgICAgICAgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gPiAgZHJpdmVycy9hY3BpL2NwcGNf
YWNwaS5jIHwgIDkgKysrKysrKysrDQo+ID4gIGluY2x1ZGUvbGludXgvYWNwaS5oICAgICB8ICAy
ICsrDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+IFsuLi5d
DQo+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvYWNwaS5oIGIvaW5jbHVkZS9saW51
eC9hY3BpLmgNCj4gPiBpbmRleCBkNzEzNmQxM2FhNDQuLjk3N2Q3NGQwNDY1YiAxMDA2NDQNCj4g
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2FjcGkuaA0KPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvYWNw
aS5oDQo+ID4gQEAgLTU3NCw2ICs1NzQsNyBAQCBhY3BpX3N0YXR1cyBhY3BpX3J1bl9vc2MoYWNw
aV9oYW5kbGUgaGFuZGxlLCBzdHJ1Y3QgYWNwaV9vc2NfY29udGV4dCAqY29udGV4dCk7DQo+ID4g
ICNkZWZpbmUgT1NDX1NCX09TTFBJX1NVUFBPUlQgICAgICAgICAgICAgICAgIDB4MDAwMDAxMDAN
Cj4gPiAgI2RlZmluZSBPU0NfU0JfQ1BDX0RJVkVSU0VfSElHSF9TVVBQT1JUICAgICAgICAgICAg
ICAweDAwMDAxMDAwDQo+ID4gICNkZWZpbmUgT1NDX1NCX0dFTkVSSUNfSU5JVElBVE9SX1NVUFBP
UlQgICAgIDB4MDAwMDIwMDANCj4gPiArI2RlZmluZSBPU0NfU0JfQ1BDX0ZMRVhJQkxFX0FEUl9T
UCAgICAgICAgICAgMHgwMDAwNDAwMA0KPg0KPiBJIHdvdWxkIHByZWZlciBBRFJfU1BBQ0UgaW5z
dGVhZCBvZiBBRFJfU1AuDQoNClllcywgcGxlYXNlIG1ha2UgdGhpcyBjaGFuZ2UuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkRldmVsIG1haWxpbmcgbGlz
dCAtLSBkZXZlbEBhY3BpY2Eub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gZGV2
ZWwtbGVhdmVAYWNwaWNhLm9yZwolKHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNnaWV4dClzLyUo
X2ludGVybmFsX25hbWUpcw==
