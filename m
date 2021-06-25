Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B67563B4821
	for <lists+devel-acpica@lfdr.de>; Fri, 25 Jun 2021 19:20:41 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 69A88100EC1DA;
	Fri, 25 Jun 2021 10:20:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.181; helo=mail-oi1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 29D91100EF27E
	for <devel@acpica.org>; Fri, 25 Jun 2021 10:20:37 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id s23so12064140oiw.9
        for <devel@acpica.org>; Fri, 25 Jun 2021 10:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=iQHYTvyd4a0AyeWeHM8/s+AdYzRSjG7DUNNZmMzSrVs=;
        b=NP9K06UXLtvwQ3qp4Ix36sqxTvQ9zKLWJS35g9SqZ/RrRcLjKc6PtJbF20sSrad5hy
         PgehJAPLx4NJjwXvb3L/6s21teVTzyCSFTYnc7NO1OJ39YWj4dd5CpL+y/Y0wolRI5Jh
         gQDGT5/kEbW5ePHt1k/NDg0vbgbj1gNpW/E+gC4Snpowdl6jL523YAAW0Y8H0lub0RUx
         4MNVDVaAmKhmpJH3FYaQr8Ty9NMJ5gMBt8lSQud6z9n8JVlO4cAc2FppZh0ZEcH3wbGo
         wxXC+IL5SpavTuaW2eyZpmMDPyyq6q5WlhmQFQGsHT0FoXJo/2hINcPDzZjHOMcR5Eth
         55PA==
X-Gm-Message-State: AOAM530h42kGz4RrStkpmzcsjpi4Ct/MfHdZnOE+6ROyScF70VfpjtLd
	/iiN8cZUJ1en/8eYFTybTiXu4DxP2V8M17r2XPk=
X-Google-Smtp-Source: ABdhPJwviMtRjL4//xOjfoZkWyYtshQCaFM/jcVobJ3k3NM5Bk3nG1/Kf8yQOqfOuO5JQTsz5UFALVRC33pbcmDXe/w=
X-Received: by 2002:aca:f0d5:: with SMTP id o204mr9019606oih.71.1624641633957;
 Fri, 25 Jun 2021 10:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210621200459.3558199-1-mw@semihalf.com> <CAPv3WKctDU7WOxHzeHc49-G_h42qX-pUpinJN2CVHNoRH86QHw@mail.gmail.com>
 <CAPv3WKf=ufj-RbqOKm3cjOQcG1PDAEAkVLdLQUkRK94=_vtj9w@mail.gmail.com>
In-Reply-To: <CAPv3WKf=ufj-RbqOKm3cjOQcG1PDAEAkVLdLQUkRK94=_vtj9w@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 25 Jun 2021 19:20:23 +0200
Message-ID: <CAJZ5v0j9eTL476N7FJ+-m0VpbCdtOQZkZBtgvQ__3U1Jvs_cPg@mail.gmail.com>
To: Marcin Wojtas <mw@semihalf.com>
Message-ID-Hash: AO37LFXKDXVFSZHBFWQ2YLSLN5TEGVM5
X-Message-ID-Hash: AO37LFXKDXVFSZHBFWQ2YLSLN5TEGVM5
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Grzegorz Jaszczyk <jaz@semihalf.com>, Grzegorz Bernacki <gjb@semihalf.com>, upstream@semihalf.com, Samer El-Haj-Mahmoud <Samer.El-Haj-Mahmoud@arm.com>, Jon Nettleton <jon@solid-run.com>, Tomasz Nowicki <tn@semihalf.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: SPCR: Add new 16550-compatible Serial Port Subtype
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AO37LFXKDXVFSZHBFWQ2YLSLN5TEGVM5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdW4gMjUsIDIwMjEgYXQgNzoxOCBQTSBNYXJjaW4gV29qdGFzIDxtd0BzZW1paGFs
Zi5jb20+IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gcG9uLiwgMjEgY3plIDIwMjEgbyAyMjowNiBN
YXJjaW4gV29qdGFzIDxtd0BzZW1paGFsZi5jb20+IG5hcGlzYcWCKGEpOg0KPiA+DQo+ID4gQXBv
bG9naWVzIGZvciB0aGUgcGF0Y2ggcHJlZml4LCBvZiBjb3Vyc2UgaXQncyBhIGZpcnN0IHZlcnNp
b24gYW5kDQo+ID4gdW5yZWxhdGVkIHRvIHRoZSBuZXR3b3JraW5nIHN1YnN5c3RlbS4NCj4gPg0K
PiA+IEJlc3QgcmVnYXJkcywNCj4gPiBNYXJjaW4NCj4gPg0KPiA+DQo+ID4gcG9uLiwgMjEgY3pl
IDIwMjEgbyAyMjowNSBNYXJjaW4gV29qdGFzIDxtd0BzZW1paGFsZi5jb20+IG5hcGlzYcWCKGEp
Og0KPiA+ID4NCj4gPiA+IFRoZSBNaWNyb3NvZnQgRGVidWcgUG9ydCBUYWJsZSAyIChEQkcyKSBz
cGVjaWZpY2F0aW9uIHJldmlzaW9uDQo+ID4gPiBNYXkgMzEsIDIwMTcgYWRkcyBzdXBwb3J0IGZv
ciAxNjU1MC1jb21wYXRpYmxlIFNlcmlhbCBQb3J0DQo+ID4gPiBTdWJ0eXBlIHdpdGggcGFyYW1l
dGVycyBkZWZpbmVkIGluIEdlbmVyaWMgQWRkcmVzcyBTdHJ1Y3R1cmUgKEdBUykgWzFdDQo+ID4g
Pg0KPiA+ID4gQWRkIGl0cyBzdXBwb3J0IGluIFNQQ1IgcGFyc2luZyByb3V0aW5lLg0KPiA+ID4N
Cj4gPiA+IFsxXSBodHRwczovL2RvY3MubWljcm9zb2Z0LmNvbS9lbi11cy93aW5kb3dzLWhhcmR3
YXJlL2RyaXZlcnMvYnJpbmd1cC9hY3BpLWRlYnVnLXBvcnQtdGFibGUNCj4gPiA+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBNYXJjaW4gV29qdGFzIDxtd0BzZW1paGFsZi5jb20+DQo+ID4gPiAtLS0N
Cj4gPiA+ICBpbmNsdWRlL2FjcGkvYWN0YmwxLmggfCAxICsNCj4gPiA+ICBkcml2ZXJzL2FjcGkv
c3Bjci5jICAgfCAxICsNCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0K
PiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2FjcGkvYWN0YmwxLmggYi9pbmNsdWRl
L2FjcGkvYWN0YmwxLmgNCj4gPiA+IGluZGV4IGNlNTk5MDNjMjY5NS4uZjc0NjAxMmViYThkIDEw
MDY0NA0KPiA+ID4gLS0tIGEvaW5jbHVkZS9hY3BpL2FjdGJsMS5oDQo+ID4gPiArKysgYi9pbmNs
dWRlL2FjcGkvYWN0YmwxLmgNCj4gPiA+IEBAIC00OTgsNiArNDk4LDcgQEAgc3RydWN0IGFjcGlf
ZGJnMl9kZXZpY2Ugew0KPiA+ID4gICNkZWZpbmUgQUNQSV9EQkcyX0FSTV9TQlNBX0dFTkVSSUMg
IDB4MDAwRQ0KPiA+ID4gICNkZWZpbmUgQUNQSV9EQkcyX0FSTV9EQ0MgICAgICAgICAgIDB4MDAw
Rg0KPiA+ID4gICNkZWZpbmUgQUNQSV9EQkcyX0JDTTI4MzUgICAgICAgICAgIDB4MDAxMA0KPiA+
ID4gKyNkZWZpbmUgQUNQSV9EQkcyXzE2NTUwX1dJVEhfR0FTICAgIDB4MDAxMg0KPiA+ID4NCj4g
PiA+ICAjZGVmaW5lIEFDUElfREJHMl8xMzk0X1NUQU5EQVJEICAgICAweDAwMDANCj4gPiA+DQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL3NwY3IuYyBiL2RyaXZlcnMvYWNwaS9zcGNy
LmMNCj4gPiA+IGluZGV4IDg4NDYwYmFjZDVhZS4uMjVjMmQwYmU5NTNlIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9hY3BpL3NwY3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9hY3BpL3NwY3Iu
Yw0KPiA+ID4gQEAgLTEzNiw2ICsxMzYsNyBAQCBpbnQgX19pbml0IGFjcGlfcGFyc2Vfc3Bjcihi
b29sIGVuYWJsZV9lYXJseWNvbiwgYm9vbCBlbmFibGVfY29uc29sZSkNCj4gPiA+ICAgICAgICAg
ICAgICAgICBicmVhazsNCj4gPiA+ICAgICAgICAgY2FzZSBBQ1BJX0RCRzJfMTY1NTBfQ09NUEFU
SUJMRToNCj4gPiA+ICAgICAgICAgY2FzZSBBQ1BJX0RCRzJfMTY1NTBfU1VCU0VUOg0KPiA+ID4g
KyAgICAgICBjYXNlIEFDUElfREJHMl8xNjU1MF9XSVRIX0dBUzoNCj4gPiA+ICAgICAgICAgICAg
ICAgICB1YXJ0ID0gInVhcnQiOw0KPiA+ID4gICAgICAgICAgICAgICAgIGJyZWFrOw0KPiA+ID4g
ICAgICAgICBkZWZhdWx0Og0KPiA+ID4gLS0NCj4NCj4gRG8geW91IGhhdmUgYW55IGNvbW1lbnRz
IC8gcmVtYXJrcyB0byB0aGUgcGF0Y2g/DQoNClllcywgSSBkbywgYnV0IEkgd2lsbCBnZXQgYmFj
ayB0byB5b3UgbmV4dCB3ZWVrLg0KDQpUaGFua3MhCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkRldmVsIG1haWxpbmcgbGlzdCAtLSBkZXZlbEBhY3BpY2Eu
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gZGV2ZWwtbGVhdmVAYWNwaWNhLm9y
ZwolKHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNnaWV4dClzLyUoX2ludGVybmFsX25hbWUpcw==
