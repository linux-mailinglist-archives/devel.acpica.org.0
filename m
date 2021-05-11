Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C1737A48A
	for <lists+devel-acpica@lfdr.de>; Tue, 11 May 2021 12:26:25 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 01B53100EB329;
	Tue, 11 May 2021 03:26:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.180; helo=mail-oi1-f180.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5695E100EB329
	for <devel@acpica.org>; Tue, 11 May 2021 03:26:22 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id i81so18592831oif.6
        for <devel@acpica.org>; Tue, 11 May 2021 03:26:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Y/kVtDHIZKmMSzJqt2osYUZoKGVA0ReHyak/rU5cC5c=;
        b=UurwKw/JmRzordhY3kp8xtk4jknF2V2VPh24VQR3v47Dut5ufei+Ux8Hc8jp9TZXnR
         YayP6LFPWZXId83A2579EAR9vWa4+EV5HeTW+LlsZAJgTvJHCFWbTZesCdHGpW0uMyZ+
         HPcWXN70VkVhOd5g85AzFes0LpHfndfQHF0zicuYujVItnNTKNIOLJrnSvjAG6LsKJwe
         XST+mLSzGZmlT7Csr/5yiGwV4fPhvGgffzb048t+SW1ngM9EWIldp0LioQajg559GpQa
         OclihiJ/bT7GrG444Iir6cZC+iZKFW6rC8XRSMWXPMK6EAzsUj0MHrl5+lr/gHfm6/qq
         7qYQ==
X-Gm-Message-State: AOAM533ELIRQBbr1WjnXsDSgRsKBZ5alBwyD0KCdesi3UV5pLG4Qe+q7
	9BgYyznclprmDUinQOhMhFumRWsvA6dueDsRNxI=
X-Google-Smtp-Source: ABdhPJyVc1Adj8xVyObdprPl2+PqCJObB0MAM6XfJz4JAIipmyLDXri3ba7YmDZvSK16PM6BYf++7Uytfb6IowgGI1w=
X-Received: by 2002:a05:6808:90d:: with SMTP id w13mr6920337oih.71.1620728781037;
 Tue, 11 May 2021 03:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210422192937.707500-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <CAJZ5v0hbAaFtRxuyR2B6YBUfV6eGWmDrZnTisd9j5H0UNurqrg@mail.gmail.com> <MWHPR11MB1599AD69C50EE40EF625C837F0539@MWHPR11MB1599.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1599AD69C50EE40EF625C837F0539@MWHPR11MB1599.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 11 May 2021 12:26:10 +0200
Message-ID: <CAJZ5v0jFhX6Jy_Ws14BO3g35yCKnKncp5gBWCADTCdppbHQ55A@mail.gmail.com>
To: "Kaneda, Erik" <erik.kaneda@intel.com>
Message-ID-Hash: UJ5EELFIJ56L2Y5WVN7ZKVKVZQUI2KLQ
X-Message-ID-Hash: UJ5EELFIJ56L2Y5WVN7ZKVKVZQUI2KLQ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>, Rafael J Wysocki <rjw@rjwysocki.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPICA: Add SVKL table headers
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <>
List-Archive: <>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMTEsIDIwMjEgYXQgMjoxNyBBTSBLYW5lZGEsIEVyaWsgPGVyaWsua2FuZWRh
QGludGVsLmNvbT4gd3JvdGU6DQo+DQo+DQo+DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gPiBGcm9tOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+DQo+ID4g
U2VudDogTW9uZGF5LCBNYXkgMTAsIDIwMjEgOTo1OCBBTQ0KPiA+IFRvOiBLdXBwdXN3YW15IFNh
dGh5YW5hcmF5YW5hbg0KPiA+IDxzYXRoeWFuYXJheWFuYW4ua3VwcHVzd2FteUBsaW51eC5pbnRl
bC5jb20+OyBLYW5lZGEsIEVyaWsNCj4gPiA8ZXJpay5rYW5lZGFAaW50ZWwuY29tPg0KPiA+IENj
OiBSYWZhZWwgSiBXeXNvY2tpIDxyandAcmp3eXNvY2tpLm5ldD47IExlbiBCcm93biA8bGVuYkBr
ZXJuZWwub3JnPjsNCj4gPiBNb29yZSwgUm9iZXJ0IDxyb2JlcnQubW9vcmVAaW50ZWwuY29tPjsg
QUNQSSBEZXZlbCBNYWxpbmcgTGlzdCA8bGludXgtDQo+ID4gYWNwaUB2Z2VyLmtlcm5lbC5vcmc+
OyBvcGVuIGxpc3Q6QUNQSSBDT01QT05FTlQgQVJDSElURUNUVVJFDQo+ID4gKEFDUElDQSkgPGRl
dmVsQGFjcGljYS5vcmc+OyBMaW51eCBLZXJuZWwgTWFpbGluZyBMaXN0IDxsaW51eC0NCj4gPiBr
ZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgV3lzb2NraSwgUmFmYWVsIEogPHJhZmFlbC5qLnd5c29j
a2lAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMS8xXSBBQ1BJQ0E6IEFkZCBT
VktMIHRhYmxlIGhlYWRlcnMNCj4gPg0KPiA+IE9uIFRodSwgQXByIDIyLCAyMDIxIGF0IDk6Mjkg
UE0gS3VwcHVzd2FteSBTYXRoeWFuYXJheWFuYW4NCj4gPiA8c2F0aHlhbmFyYXlhbmFuLmt1cHB1
c3dhbXlAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBBQ1BJQ0EgY29tbWl0
IGI1ZTZiY2Y2OWRiYjk4Nzc0ODE5OTJkNWNlODYwMDhjZmI5NGY1YjgNCj4gPiA+DQo+ID4gPiBT
VktMIChTdG9yYWdlIFZvbHVtZSBLZXkgTG9jYXRpb24gVGFibGUpIGlzIHVzZWQgYnkgQklPUy9G
aXJtd2FyZQ0KPiA+ID4gdG8gc2hhcmUgc3RvcmFnZSB2b2x1bWUgZW5jcnlwdGlvbiBrZXkncyB3
aXRoIE9TLiBJdCB3aWxsIGJlIHVzZWQNCj4gPiA+IGJ5IHVzZXJzcGFjZSB0byBkZWNyeXB0IGFu
ZCBtb3VudCBlbmNyeXB0ZWQgZHJpdmVzLg0KPiA+ID4NCj4gPiA+IFNvIGFkZCBTVktMIHRhYmxl
IHNpZ25hdHVyZSBhbmQgYWRkIGl0IHRvIGtub3duIHNpZ25hdHVyZXMgYXJyYXkNCj4gPiA+IHN1
cHBvcnQgU1ZLTC4NCj4gPiA+DQo+ID4gPiBZb3UgY2FuIGZpbmQgZGV0YWlscyBhYm91dCB0aGUg
U1ZLTCB0YWJsZSBpbiBURFggc3BlY2ZpY2F0aW9uDQo+ID4gPiB0aXRsZWQgIkd1ZXN0LUhvc3Qt
Q29tbXVuaWNhdGlvbiBJbnRlcmZhY2UgKEdIQ0kpIGZvciBJbnRlbA0KPiA+ID4gVHJ1c3QgRG9t
YWluIEV4dGVuc2lvbnMgKEludGVswq4gVERYKSIsIHNlYyA0LjQgYW5kIGluIEFDUEkNCj4gPiA+
IHNwZWNpZmljYXRpb24gcjYuNCwgc2VjIDUuMi42Lg0KPiA+ID4NCj4gPiA+DQo+ID4gaHR0cHM6
Ly9zb2Z0d2FyZS5pbnRlbC5jb20vY29udGVudC9kYW0vZGV2ZWxvcC9leHRlcm5hbC91cy9lbi9k
b2N1bWVuDQo+ID4gdHMvaW50ZWwtdGR4LWd1ZXN0LWh5cGVydmlzb3ItY29tbXVuaWNhdGlvbi1p
bnRlcmZhY2UucGRmDQo+ID4gPg0KPiA+ID4gQ2M6IFJvYmVydCBNb29yZSA8cm9iZXJ0Lm1vb3Jl
QGludGVsLmNvbT4NCj4gPiA+IENjOiBFcmlrIEthbmVkYSA8ZXJpay5rYW5lZGFAaW50ZWwuY29t
Pg0KPiA+ID4gQ2M6IFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWwuai53eXNvY2tpQGludGVsLmNv
bT4NCj4gPiA+DQo+ID4gPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vYWNwaWNhL2FjcGljYS9j
b21taXQvYjVlNmJjZjYNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEt1cHB1c3dhbXkgU2F0aHlhbmFy
YXlhbmFuDQo+ID4gPHNhdGh5YW5hcmF5YW5hbi5rdXBwdXN3YW15QGxpbnV4LmludGVsLmNvbT4N
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJvYiBNb29yZSA8cm9iZXJ0Lm1vb3JlQGludGVsLmNvbT4N
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEVyaWsgS2FuZWRhIDxlcmlrLmthbmVkYUBpbnRlbC5jb20+
DQo+ID4NCj4gPiBFcmlrLCB3aGF0J3MgdGhlIHBsYW4gcmVnYXJkaW5nIHRoaXMgcGF0Y2ggYW5k
IHRoZSBvdGhlciBBQ1BJQ0EgY2hhbmdlDQo+ID4gcmVxdWlzaXRlIGZvciB0aGlzIHNlcmllcz8N
Cj4gPg0KPiA+IEFyZSB0aGV5IGdvaW5nIHRvIGJlIHBhcnQgb2YgdGhlIG5leHQgQUNQSUNBIHJl
bGVhc2UgYW5kIGFtIEkgZ29pbmcgdG8NCj4gPiByZWNlaXZlIHRoZW0gdGhlIHVzdWFsIHdheT8N
Cj4NCj4gWWVzLCB3ZSdsbCBkbyB0aGlzIHRoZSB1c3VhbCB3YXkNCg0KT0ssIHRoYW5rcyEKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KRGV2ZWwgbWFpbGlu
ZyBsaXN0IC0tIGRldmVsQGFjcGljYS5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBkZXZlbC1sZWF2ZUBhY3BpY2Eub3JnCiUod2ViX3BhZ2VfdXJsKXNsaXN0aW5mbyUoY2dpZXh0
KXMvJShfaW50ZXJuYWxfbmFtZSlz
