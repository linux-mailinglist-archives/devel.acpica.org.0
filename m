Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A136923C
	for <lists+devel-acpica@lfdr.de>; Fri, 23 Apr 2021 14:36:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DDBB1100EAAE6;
	Fri, 23 Apr 2021 05:36:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.178; helo=mail-oi1-f178.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 87882100EAB5E
	for <devel@acpica.org>; Fri, 23 Apr 2021 05:36:53 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id x20so15294664oix.10
        for <devel@acpica.org>; Fri, 23 Apr 2021 05:36:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nJ2OENXUaqO5OvyjBXD2rLeFTuSglGfC0qMGdtDgRkw=;
        b=G9cPBaYGESWdfsRAqru6v/yPZtC3LuHVDk3V1przIig6xDaricoyW27RjLOymAM5qO
         HElxOEN14sJmf0USQdPtPpXfNbQBEobtjyHPfB2t8/knHk1/wKpl0NUJJdKBV8vSBpy1
         IBGVsjS6wKKynmLlhj5Y+DzV+8ZL8xqZnop/JhUkpbx+3zjXzDWL7Ue1C1qfUjsS3qE+
         3nOMRZ5RmpzaYAR25RRudltmkurij421yTpgvUgL2yT0ZvCZJCyzWYKB3UHhDd/VBt8M
         eX2xwsZIijldE61tNh/THUOWaUcVKGpVX3KYFSLPb0qtxe8QwZXEQ7zqB34/Lr4xEKJU
         Opgg==
X-Gm-Message-State: AOAM532kXTBLzI/6QAcAafUkNZgmqg/MC5glXmx0eD1jMxewKqJ2n60g
	CEgAp4h2EuevkLY9rTw2EWxUiMOtNNouUIkCPeM=
X-Google-Smtp-Source: ABdhPJzDYD7KjutDPZHrpNnk02KtkunUs7btU2Xb2RB5NIkPp8RmCAtiFM6FVL9TfUBmDge2EHvgWN3TiYbrA9aSMQ8=
X-Received: by 2002:aca:5fc3:: with SMTP id t186mr2564757oib.69.1619181411373;
 Fri, 23 Apr 2021 05:36:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210422214930.716596-1-sathyanarayanan.kuppuswamy@linux.intel.com>
In-Reply-To: <20210422214930.716596-1-sathyanarayanan.kuppuswamy@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 23 Apr 2021 14:36:38 +0200
Message-ID: <CAJZ5v0gH-Zg7YZPf9joaMt1zfYfNkUGpo596=9QEJ1NKAw87qQ@mail.gmail.com>
To: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: IMBJYIMAXBRWN3TLRFWBADHQGTS3ZVC2
X-Message-ID-Hash: IMBJYIMAXBRWN3TLRFWBADHQGTS3ZVC2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael J Wysocki <rjw@rjwysocki.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPICA: Add SVKL table headers
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IMBJYIMAXBRWN3TLRFWBADHQGTS3ZVC2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMjIsIDIwMjEgYXQgMTE6NDkgUE0gS3VwcHVzd2FteSBTYXRoeWFuYXJheWFu
YW4NCjxzYXRoeWFuYXJheWFuYW4ua3VwcHVzd2FteUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0K
Pg0KPiBBQ1BJQ0EgY29tbWl0IGI1ZTZiY2Y2OWRiYjk4Nzc0ODE5OTJkNWNlODYwMDhjZmI5NGY1
YjgNCg0KRXZpZGVudGx5LCB0aGlzIGlzIEFDUElDQSBtYXRlcmlhbCwgc28gSSdtIGV4cGVjdGlu
ZyB0byByZWNlaXZlIHRoaXMNCnBhdGNoIGZyb20gRXJpayB3aXRoaW4gdGhlIG5vcm1hbCBBQ1BJ
Q0EgZGV2ZWxvcG1lbnQgcHJvY2Vzcywgc28gSSdtDQpub3Qgc3VyZSB3aGF0IHRoZSBwdXJwb3Nl
IG9mIHRoaXMgc3VibWlzc2lvbiBpcy4NCg0KSGFzIHRoaXMgcGF0Y2ggYmVlbiBwb3N0ZWQgaGVy
ZSBmb3IgcmVmZXJlbmNlIG9ubHk/DQoNCj4gU1ZLTCAoU3RvcmFnZSBWb2x1bWUgS2V5IExvY2F0
aW9uIFRhYmxlKSBpcyB1c2VkIGJ5IEJJT1MvRmlybXdhcmUNCj4gdG8gc2hhcmUgc3RvcmFnZSB2
b2x1bWUgZW5jcnlwdGlvbiBrZXkncyB3aXRoIE9TLiBJdCB3aWxsIGJlIHVzZWQNCj4gYnkgdXNl
cnNwYWNlIHRvIGRlY3J5cHQgYW5kIG1vdW50IGVuY3J5cHRlZCBkcml2ZXMuDQo+DQo+IFNvIGFk
ZCBTVktMIHRhYmxlIHNpZ25hdHVyZSBhbmQgYWRkIGl0IHRvIGtub3duIHNpZ25hdHVyZXMgYXJy
YXkNCj4gc3VwcG9ydCBTVktMLg0KPg0KPiBZb3UgY2FuIGZpbmQgZGV0YWlscyBhYm91dCB0aGUg
U1ZLTCB0YWJsZSBpbiBURFggc3BlY2ZpY2F0aW9uDQo+IHRpdGxlZCAiR3Vlc3QtSG9zdC1Db21t
dW5pY2F0aW9uIEludGVyZmFjZSAoR0hDSSkgZm9yIEludGVsDQo+IFRydXN0IERvbWFpbiBFeHRl
bnNpb25zIChJbnRlbMKuIFREWCkiLCBzZWMgNC40IGFuZCBpbiBBQ1BJDQo+IHNwZWNpZmljYXRp
b24gcjYuNCwgc2VjIDUuMi42Lg0KPg0KPiBodHRwczovL3NvZnR3YXJlLmludGVsLmNvbS9jb250
ZW50L2RhbS9kZXZlbG9wL2V4dGVybmFsL3VzL2VuL2RvY3VtZW50cy9pbnRlbC10ZHgtZ3Vlc3Qt
aHlwZXJ2aXNvci1jb21tdW5pY2F0aW9uLWludGVyZmFjZS5wZGYNCj4NCj4gQ2M6IFJvYmVydCBN
b29yZSA8cm9iZXJ0Lm1vb3JlQGludGVsLmNvbT4NCj4gQ2M6IEVyaWsgS2FuZWRhIDxlcmlrLmth
bmVkYUBpbnRlbC5jb20+DQo+IENjOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsLmoud3lzb2Nr
aUBpbnRlbC5jb20+DQo+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9hY3BpY2EvYWNwaWNhL2Nv
bW1pdC9iNWU2YmNmNg0KPiBTaWduZWQtb2ZmLWJ5OiBLdXBwdXN3YW15IFNhdGh5YW5hcmF5YW5h
biA8c2F0aHlhbmFyYXlhbmFuLmt1cHB1c3dhbXlAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGluY2x1ZGUvYWNwaS9hY3RibDIuaCB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvYWNwaS9hY3RibDIuaCBiL2luY2x1ZGUvYWNwaS9hY3RibDIuaA0KPiBpbmRleCBk
NjQ3OGM0MzBjOTkuLjgzYTlkOGI2OGUzYSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9hY3BpL2Fj
dGJsMi5oDQo+ICsrKyBiL2luY2x1ZGUvYWNwaS9hY3RibDIuaA0KPiBAQCAtNDMsNiArNDMsNyBA
QA0KPiAgI2RlZmluZSBBQ1BJX1NJR19TREVJICAgICAgICAgICAiU0RFSSIgLyogU29mdHdhcmUg
RGVsZWdhdGVkIEV4Y2VwdGlvbiBJbnRlcmZhY2UgVGFibGUgKi8NCj4gICNkZWZpbmUgQUNQSV9T
SUdfU0RFViAgICAgICAgICAgIlNERVYiIC8qIFNlY3VyZSBEZXZpY2VzIHRhYmxlICovDQo+ICAj
ZGVmaW5lIEFDUElfU0lHX05ITFQgICAgICAgICAgICJOSExUIiAvKiBOb24tSERBdWRpbyBMaW5r
IFRhYmxlICovDQo+ICsjZGVmaW5lIEFDUElfU0lHX1NWS0wgICAgICAgICAgICJTVktMIiAvKiBT
dG9yYWdlIFZvbHVtZSBLZXkgTG9jYXRpb24gVGFibGUgKi8NCj4NCj4gIC8qDQo+ICAgKiBBbGwg
dGFibGVzIG11c3QgYmUgYnl0ZS1wYWNrZWQgdG8gbWF0Y2ggdGhlIEFDUEkgc3BlY2lmaWNhdGlv
biwgc2luY2UNCj4gQEAgLTE3MTMsNiArMTcxNCwzNSBAQCBzdHJ1Y3QgYWNwaV9zZGV2X3BjaWVf
cGF0aCB7DQo+ICAgICAgICAgdTggZnVuY3Rpb247DQo+ICB9Ow0KPg0KPiArLyoqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioNCj4gKyAqDQo+ICsgKiBTVktMIC0gU3RvcmFnZSBWb2x1bWUgS2V5IExvY2F0
aW9uIFRhYmxlIChBQ1BJIDYuNCkNCj4gKyAqICAgICAgICBWZXJzaW9uIDENCj4gKyAqDQo+ICsg
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqLw0KPiArDQo+ICtzdHJ1Y3QgYWNwaV90YWJsZV9zdmtsIHsN
Cj4gKyAgICAgICBzdHJ1Y3QgYWNwaV90YWJsZV9oZWFkZXIgaGVhZGVyOyAgICAgICAgLyogQ29t
bW9uIEFDUEkgdGFibGUgaGVhZGVyICovDQo+ICsgICAgICAgdTMyIGNvdW50Ow0KPiArfTsNCj4g
Kw0KPiArc3RydWN0IGFjcGlfc3ZrbF9oZWFkZXIgew0KPiArICAgICAgIHUxNiB0eXBlOw0KPiAr
ICAgICAgIHUxNiBmb3JtYXQ7DQo+ICsgICAgICAgdTMyIHNpemU7DQo+ICsgICAgICAgdTY0IGFk
ZHJlc3M7DQo+ICt9Ow0KPiArDQo+ICtlbnVtIGFjcGlfc3ZrbF90eXBlIHsNCj4gKyAgICAgICBB
Q1BJX1NWS0xfVFlQRV9NQUlOX1NUT1JBR0UgPSAwLA0KPiArICAgICAgIEFDUElfU1ZLTF9UWVBF
X1JFU0VSVkVEID0gMSAgICAgLyogMSBhbmQgZ3JlYXRlciBhcmUgcmVzZXJ2ZWQgKi8NCj4gK307
DQo+ICsNCj4gK2VudW0gYWNwaV9zdmtsX2Zvcm1hdCB7DQo+ICsgICAgICAgQUNQSV9TVktMX0ZP
Uk1BVF9SQVdfQklOQVJZID0gMCwNCj4gKyAgICAgICBBQ1BJX1NWS0xfRk9STUFUX1JFU0VSVkVE
ID0gMSAgIC8qIDEgYW5kIGdyZWF0ZXIgYXJlIHJlc2VydmVkICovDQo+ICt9Ow0KPiArDQo+ICAv
KiBSZXNldCB0byBkZWZhdWx0IHBhY2tpbmcgKi8NCj4NCj4gICNwcmFnbWEgcGFjaygpDQo+IC0t
DQo+IDIuMjUuMQ0KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwp
c2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
