Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9771F5606E7
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Jun 2022 19:03:34 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6FB18100EA2B1;
	Wed, 29 Jun 2022 10:03:32 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.173; helo=mail-yb1-f173.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6A1FB100F227A
	for <devel@acpica.org>; Wed, 29 Jun 2022 10:03:30 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id d5so29078193yba.5
        for <devel@acpica.org>; Wed, 29 Jun 2022 10:03:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Aqm4FC89DWarFJMROs925TeGjJpuRjPm9/zQL+5jjQE=;
        b=zcH1jULXND8DdSsmZkAyK7t7YrmTLsow/7oyrkynnjr7YjACHyc/FGVp/cL9u6DOsW
         K7BmfIOBUybmn5W06ES98D+HNNHisPu5C5wOSikXgQD28ZCD2ZY2lNvVBqBxbfMgHmH2
         13Dh3hHJ56Vh0SSthV4xRsqAz72L2O+hmX3b3kwBrZ1T7QukeTh2zQ7sqvhwVEV4bKU0
         RFfd+nH5Wo5ODSlxq45AkmZXdyRBdQa96MO/0oZsn9vQoOtSR6zFW9rww11LSi/vR1aQ
         ZUFwAre0VpM2VdVlbnDv7x4h0A6gj14sMw/PNdP8NMUCQlOVm/Ol91oglDiIkW4YjCEK
         oCeQ==
X-Gm-Message-State: AJIora/TywniJf/BVD2UhzA3rFUpLeFGOm2FEf7o+2r6myINveZR+inf
	LKwAw1n+66tOqsOs+gSYk59k58h56U9dhc5yjHTicLGc
X-Google-Smtp-Source: AGRyM1totlxXjvK3OXv8JitH90a/+eghX8CaC1a/ln47tRlBn1zPE3Y6wq3ucmu8X9MfmmhLC/RXwQ0HXGtuP918OL0=
X-Received: by 2002:a25:664f:0:b0:66c:d0f4:36cc with SMTP id
 z15-20020a25664f000000b0066cd0f436ccmr4328210ybm.482.1656522209222; Wed, 29
 Jun 2022 10:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220618112311.14661-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20220618112311.14661-1-u.kleine-koenig@pengutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Jun 2022 19:03:18 +0200
Message-ID: <CAJZ5v0hgPwRHyU6cG-gqtRM4wLaKGRoL3z1nS_FiTybLAcvgGA@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID-Hash: 6TOIL5ZXTW62CSUDPP7ECEBLPPXHCLO4
X-Message-ID-Hash: 6TOIL5ZXTW62CSUDPP7ECEBLPPXHCLO4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Sascha Hauer <kernel@pengutronix.de>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/2] ACPI: Drop redundant check in acpi_device_remove()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6TOIL5ZXTW62CSUDPP7ECEBLPPXHCLO4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBKdW4gMTgsIDIwMjIgYXQgMToyMyBQTSBVd2UgS2xlaW5lLUvDtm5pZw0KPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6DQo+DQo+IEEgYnVzIHJlbW92ZSBjYWxs
YmFjayBpcyBvbmx5IGV2ZXIgY2FsbGVkIGJ5IHRoZSBkZXZpY2UgY29yZSB3aXRoIGENCj4gYm91
bmQgZHJpdmVyLiBTbyB0aGVyZSBpcyBubyBuZWVkIHRvIGNoZWNrIGlmIHRoZSBkcml2ZXIgaXMg
bm9uLU5VTEwuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWlu
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+DQo+IC0tLQ0KPiAgZHJpdmVycy9hY3BpL2J1cy5jIHwg
MTEgKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYnVzLmMgYi9kcml2ZXJz
L2FjcGkvYnVzLmMNCj4gaW5kZXggODZmYTYxYTIxODI2Li42N2EzZjhjZjQyZjkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvYWNwaS9idXMuYw0KPiArKysgYi9kcml2ZXJzL2FjcGkvYnVzLmMNCj4g
QEAgLTEwNjIsMTIgKzEwNjIsMTEgQEAgc3RhdGljIHZvaWQgYWNwaV9kZXZpY2VfcmVtb3ZlKHN0
cnVjdCBkZXZpY2UgKmRldikNCj4gICAgICAgICBzdHJ1Y3QgYWNwaV9kZXZpY2UgKmFjcGlfZGV2
ID0gdG9fYWNwaV9kZXZpY2UoZGV2KTsNCj4gICAgICAgICBzdHJ1Y3QgYWNwaV9kcml2ZXIgKmFj
cGlfZHJ2ID0gYWNwaV9kZXYtPmRyaXZlcjsNCj4NCj4gLSAgICAgICBpZiAoYWNwaV9kcnYpIHsN
Cj4gLSAgICAgICAgICAgICAgIGlmIChhY3BpX2Rydi0+b3BzLm5vdGlmeSkNCj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgYWNwaV9kZXZpY2VfcmVtb3ZlX25vdGlmeV9oYW5kbGVyKGFjcGlfZGV2
KTsNCj4gLSAgICAgICAgICAgICAgIGlmIChhY3BpX2Rydi0+b3BzLnJlbW92ZSkNCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgYWNwaV9kcnYtPm9wcy5yZW1vdmUoYWNwaV9kZXYpOw0KPiAtICAg
ICAgIH0NCj4gKyAgICAgICBpZiAoYWNwaV9kcnYtPm9wcy5ub3RpZnkpDQo+ICsgICAgICAgICAg
ICAgICBhY3BpX2RldmljZV9yZW1vdmVfbm90aWZ5X2hhbmRsZXIoYWNwaV9kZXYpOw0KPiArICAg
ICAgIGlmIChhY3BpX2Rydi0+b3BzLnJlbW92ZSkNCj4gKyAgICAgICAgICAgICAgIGFjcGlfZHJ2
LT5vcHMucmVtb3ZlKGFjcGlfZGV2KTsNCj4gKw0KPiAgICAgICAgIGFjcGlfZGV2LT5kcml2ZXIg
PSBOVUxMOw0KPiAgICAgICAgIGFjcGlfZGV2LT5kcml2ZXJfZGF0YSA9IE5VTEw7DQo+DQo+DQo+
IGJhc2UtY29tbWl0OiBmMjkwNmFhODYzMzgxYWZiMDAxNWE5ZWI3ZmVmYWQ4ODVkNGU1YTU2DQo+
IC0tDQoNCkFwcGxpZWQgKHdpdGggbWlub3IgbW9kaWZpY2F0aW9ucykgYXMgNS4yMCBtYXRlcmlh
bCBhbG9uZyB3aXRoIHRoZSBbMi8yXS4NCg0KVGhhbmtzIQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNw
aWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGlj
YS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1l
KXM=
