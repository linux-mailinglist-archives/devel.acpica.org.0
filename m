Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 790022FF3BB
	for <lists+devel-acpica@lfdr.de>; Thu, 21 Jan 2021 20:03:39 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1B3E4100F2245;
	Thu, 21 Jan 2021 11:03:38 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.172; helo=mail-oi1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 732B9100F2242
	for <devel@acpica.org>; Thu, 21 Jan 2021 11:03:35 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id g69so2522271oib.12
        for <devel@acpica.org>; Thu, 21 Jan 2021 11:03:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=sxUFDSeoZEWN4aDqisZF6mUVpomTtmiF7YK6hytZxWc=;
        b=h+shkYudhp0XkssENiQJEtzH+uluFh2ZxQZgCkPCj/d9dzvVOmEtlOxTFRyA2pxXUO
         EVM9/k0HJKebOeaIWb9RyIdlrCsnRycjwApYu/vlFz1hlxPtMJWHG3RkyoEIecNRvb2p
         xwY/K5yEh2uqHOwSSb1kdZCACJNm0MPLc5qr4tY9c0NqXFGTCDYMnYrVUO3Hxh8VWwgY
         RkRIOv8kqrKkZX0FobsK0hlVdE07c4Gy2VRY4kWS1z/FCvN+GFybGj6dNzC3XDWOqdIn
         eOhaz6v9XQfR77KwV+Y+KnJrt9GvbqCpYRGOU262E1rSheM0DW9RB83lPz/n+0uneX1t
         dn5w==
X-Gm-Message-State: AOAM532tqrPUzECyhyr9AsITpg5Fx0ggfKOqjSJ3osWM6FBj3LwVGOT8
	Mlprx7FscJ4k08sSOPft4bHMAypYcuJ0jZ/nIHk=
X-Google-Smtp-Source: ABdhPJwFYOx7GKzTGGbTxgqjm5rCY/53kLF3X/JTRr/LaAc8hfo2mXKv0cD2IHyeZkf+1CBzz3/fcbRitQ3sr4ri09g=
X-Received: by 2002:aca:308a:: with SMTP id w132mr703472oiw.69.1611255814671;
 Thu, 21 Jan 2021 11:03:34 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com> <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
In-Reply-To: <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 21 Jan 2021 20:03:23 +0100
Message-ID: <CAJZ5v0it3KfdNo7kwq-7__C+Kvr4Eo7x8-3rBi09B5rHfNv-hQ@mail.gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>, Erik Kaneda <erik.kaneda@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Message-ID-Hash: MLYNIBUEK572GERYHPRAHRZZ2LJTYLPJ
X-Message-ID-Hash: MLYNIBUEK572GERYHPRAHRZZ2LJTYLPJ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, clang-built-linux@googlegroups.com, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix -Wfallthrough
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MLYNIBUEK572GERYHPRAHRZZ2LJTYLPJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgMTE6MDggQU0gSm9uIEh1bnRlciA8am9uYXRoYW5oQG52
aWRpYS5jb20+IHdyb3RlOg0KPg0KPg0KPiBPbiAxMS8xMS8yMDIwIDAyOjExLCBOaWNrIERlc2F1
bG5pZXJzIHdyb3RlOg0KPiA+IFRoZSAiZmFsbHRocm91Z2giIHBzZXVkby1rZXl3b3JkIHdhcyBh
ZGRlZCBhcyBhIHBvcnRhYmxlIHdheSB0byBkZW5vdGUNCj4gPiBpbnRlbnRpb25hbCBmYWxsdGhy
b3VnaC4gVGhpcyBjb2RlIHNlZW1lZCB0byBiZSB1c2luZyBhIG1peCBvZg0KPiA+IGZhbGx0aHJv
dWdoIGNvbW1lbnRzIHRoYXQgR0NDIHJlY29nbml6ZXMsIGFuZCBzb21lIGtpbmQgb2YgbGludCBt
YXJrZXIuDQo+ID4gSSdtIGd1ZXNzaW5nIHRoYXQgbGludGVyIGhhc24ndCBiZWVuIHJ1biBpbiBh
IHdoaWxlIGZyb20gdGhlIG1peGVkIHVzZQ0KPiA+IG9mIHRoZSBtYXJrZXIgdnMgY29tbWVudHMu
DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNA
Z29vZ2xlLmNvbT4NCj4NCj4NCj4gSSBrbm93IHRoaXMgaXMgbm90IHRoZSBleGFjdCB2ZXJzaW9u
IHRoYXQgd2FzIG1lcmdlZCwgSSBjYW4ndCBmaW5kIGl0IG9uDQo+IHRoZSBsaXN0LCBidXQgbG9v
a3MgbGlrZSB0aGUgdmVyc2lvbiB0aGF0IHdhcyBtZXJnZWQgWzBdLA0KDQpJdCB3b3VsZCBiZSB0
aGlzIHBhdGNoOg0KDQpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgt
YWNwaS9wYXRjaC8yMDIxMDExNTE4NDgyNi4yMjUwLTQtZXJpay5rYW5lZGFAaW50ZWwuY29tLw0K
DQpOaWNrLCBFcmlrPw0KDQo+IGlzIGNhdXNpbmcgYnVpbGQgZXJyb3JzIHdpdGggb2xkZXIgdG9v
bGNoYWlucyAoR0NDIHY2KSAuLi4NCj4NCj4gL2R2cy9naXQvZGlydHkvZ2l0LW1hc3Rlcl9sNHQt
dXBzdHJlYW0va2VybmVsL2RyaXZlcnMvYWNwaS9hY3BpY2EvZHNjb250cm9sLmM6IEluIGZ1bmN0
aW9uIOKAmGFjcGlfZHNfZXhlY19iZWdpbl9jb250cm9sX29w4oCZOg0KPiAvZHZzL2dpdC9kaXJ0
eS9naXQtbWFzdGVyX2w0dC11cHN0cmVhbS9rZXJuZWwvZHJpdmVycy9hY3BpL2FjcGljYS9kc2Nv
bnRyb2wuYzo2NTozOiBlcnJvcjog4oCYQUNQSV9GQUxMVEhST1VHSOKAmSB1bmRlY2xhcmVkIChm
aXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbikNCj4gICAgQUNQSV9GQUxMVEhST1VHSDsNCj4gICAg
Xn5+fn5+fn5+fn5+fn5+fg0KPiAvZHZzL2dpdC9kaXJ0eS9naXQtbWFzdGVyX2w0dC11cHN0cmVh
bS9rZXJuZWwvZHJpdmVycy9hY3BpL2FjcGljYS9kc2NvbnRyb2wuYzo2NTozOiBub3RlOiBlYWNo
IHVuZGVjbGFyZWQgaWRlbnRpZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVu
Y3Rpb24gaXQgYXBwZWFycyBpbg0KPiAvZHZzL2dpdC9kaXJ0eS9naXQtbWFzdGVyX2w0dC11cHN0
cmVhbS9rZXJuZWwvc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODc6IHJlY2lwZSBmb3IgdGFyZ2V0
ICdkcml2ZXJzL2FjcGkvYWNwaWNhL2RzY29udHJvbC5vJyBmYWlsZWQNCj4NCj4gQ2hlZXJzDQo+
IEpvbg0KPg0KPiBbMF0gaHR0cHM6Ly9naXRodWIuY29tL2FjcGljYS9hY3BpY2EvY29tbWl0LzRi
OTEzNWY1DQo+DQo+IC0tDQo+IG52cHVibGljCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkRldmVsIG1haWxpbmcgbGlzdCAtLSBkZXZlbEBhY3BpY2Eub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gZGV2ZWwtbGVhdmVAYWNwaWNhLm9yZwol
KHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNnaWV4dClzLyUoX2ludGVybmFsX25hbWUpcw==
