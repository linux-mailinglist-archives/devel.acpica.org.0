Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6444BC072
	for <lists+devel-acpica@lfdr.de>; Fri, 18 Feb 2022 20:47:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 61466100EA2CF;
	Fri, 18 Feb 2022 11:47:29 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.173; helo=mail-yb1-f173.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D7FC7100EA2CD
	for <devel@acpica.org>; Fri, 18 Feb 2022 11:47:27 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id p5so21451314ybd.13
        for <devel@acpica.org>; Fri, 18 Feb 2022 11:47:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YULenVBHCbgpW4h6bzsWkYMc9iBOxmalGocySqatDxE=;
        b=ZncsZd/MJmhkmS9TBSB+uyHLFUAJVZ2PtSmNhCSh+SAkD/ddIwnHqJRAIsCCWMAd9G
         Pqja7vkUImlzo6s/0Kj2Ad5qlV3R6bMA8ppERI/ltgO2OaOPDEsfBdWCwtH+YLnKHpWC
         UsFaIrCjZR0HNVb8reO3vC+npzX/mzjiCOIt4R/n+qfjhvKKbdSDKzvYUNA8/yzmZ5IR
         cEDI14MsZYF/L4BEHC1vG+SJYBvcoFla8fJgCJP+E6Gu0HOMxY+RGXH63t8H2RRbRqVd
         KHb6P51oyelQ5oYom+o/BSFTNkkhMA8w0/BgJwLEjumOypngTiyj+r9BO/mO0qlt4+OG
         ugmA==
X-Gm-Message-State: AOAM532FMSFnHD/nOeL0PQQnLaTHNw5t664mhEIrhOeXhGeo+6zaO2Bm
	fWwfjHZSWsd7yOYfrI+BkPIliPoFJcBIvpktflY=
X-Google-Smtp-Source: ABdhPJwMVEmz5/hz5F8xbI86OXsROAY+/cIAJ/NbgN0uPOXar3V2KzbWMlPbhn4W67kUrspHVGDwCUCMhpIpRgIgaqc=
X-Received: by 2002:a25:d90d:0:b0:615:e400:94c1 with SMTP id
 q13-20020a25d90d000000b00615e40094c1mr8816026ybg.81.1645213646711; Fri, 18
 Feb 2022 11:47:26 -0800 (PST)
MIME-Version: 1.0
References: <20220216203240.GA918517@embeddedor> <202202161236.FBD5D268@keescook>
In-Reply-To: <202202161236.FBD5D268@keescook>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 18 Feb 2022 20:47:15 +0100
Message-ID: <CAJZ5v0j0+oAG3s_ZrhmG+1WaTTc-hogiKv9ZuKDiCkH8JtZ0YA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID-Hash: HMEPLWC5T2TI45DKG5OWCIP5TDCW6VR4
X-Message-ID-Hash: HMEPLWC5T2TI45DKG5OWCIP5TDCW6VR4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH][next] ACPICA: iASL: Replace zero-length array with flexible-array member
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HMEPLWC5T2TI45DKG5OWCIP5TDCW6VR4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBGZWIgMTYsIDIwMjIgYXQgOTozNiBQTSBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9t
aXVtLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFdlZCwgRmViIDE2LCAyMDIyIGF0IDAyOjMyOjQwUE0g
LTA2MDAsIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6DQo+ID4gVGhlcmUgaXMgYSByZWd1bGFy
IG5lZWQgaW4gdGhlIGtlcm5lbCB0byBwcm92aWRlIGEgd2F5IHRvIGRlY2xhcmUNCj4gPiBoYXZp
bmcgYSBkeW5hbWljYWxseSBzaXplZCBzZXQgb2YgdHJhaWxpbmcgZWxlbWVudHMgaW4gYSBzdHJ1
Y3R1cmUuDQo+ID4gS2VybmVsIGNvZGUgc2hvdWxkIGFsd2F5cyB1c2Ug4oCcZmxleGlibGUgYXJy
YXkgbWVtYmVyc+KAnVsxXSBmb3IgdGhlc2UNCj4gPiBjYXNlcy4gVGhlIG9sZGVyIHN0eWxlIG9m
IG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQNCj4gPiBubyBsb25nZXIg
YmUgdXNlZFsyXS4NCj4gPg0KPiA+IFsxXSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9G
bGV4aWJsZV9hcnJheV9tZW1iZXINCj4gPiBbMl0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2Mv
aHRtbC92NS4xNi9wcm9jZXNzL2RlcHJlY2F0ZWQuaHRtbCN6ZXJvLWxlbmd0aC1hbmQtb25lLWVs
ZW1lbnQtYXJyYXlzDQo+ID4NCj4gPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51
eC9pc3N1ZXMvNzgNCj4gPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0
YXZvYXJzQGtlcm5lbC5vcmc+DQo+DQo+IFJldmlld2VkLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4NCg0KSSd2ZSBjcmVhdGVkIGFuIHVwc3RyZWFtIEFDUElDQSBwdWxsIHJl
cXVlc3QgZm9yIHRoaXMgY2hhbmdlLCB0aGFua3MhCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkRldmVsIG1haWxpbmcgbGlzdCAtLSBkZXZlbEBhY3BpY2Eu
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gZGV2ZWwtbGVhdmVAYWNwaWNhLm9y
ZwolKHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNnaWV4dClzLyUoX2ludGVybmFsX25hbWUpcw==
