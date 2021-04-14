Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C18135F56D
	for <lists+devel-acpica@lfdr.de>; Wed, 14 Apr 2021 15:51:09 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 86ABB100F2274;
	Wed, 14 Apr 2021 06:51:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.182; helo=mail-oi1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 964B3100F2274
	for <devel@acpica.org>; Wed, 14 Apr 2021 06:51:05 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id u16so3340701oiu.7
        for <devel@acpica.org>; Wed, 14 Apr 2021 06:51:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wBROHEdqHjbHn2xOAzD9zl5G4PP8Iw0t5oCeREsbRUI=;
        b=Y0WcubSnQ/2U/MplHjn9vhgJ1qGzNTn4eheTOZf6Y3Qen/BtZGXOSuttSHDFExgB3q
         o5YzeuU/aqHlVPW+2NNWyxvGpoBJEZur8fSbnNzZJ/5nHs9ELZ2ZUHTkGX2lfi5JT1L9
         BBgqi2YvDyQz1hj6tDslcsES6ScXJj+fGcbeVE9erYH8+5lY5nySskrCN0oL7P9oBlIN
         6pPoDLmk84pcGHA2vFp8E/BkgrbSwu7JDWbZSk+BQaIiLmTw6Pzj3nEzFo5tzVLu6Ibg
         xNXdQ0RdmFFb89UqtFacYGcKvu21qrM9PLE40Gi4U0YXYAfKwztfuPbGFzzWKkFaxwAJ
         Y7Rw==
X-Gm-Message-State: AOAM532o+Gs0A/C9SEmg3QtX1FYOYGSL9mLU4CxcVI4Fp8MJ0Xr7uTiV
	SDBcb48ZkSuudKW8mJIE2hkn5XHMwzx8apwrE/Y=
X-Google-Smtp-Source: ABdhPJyhYaDnUaYnzBxw8igmmnt23AyoMpasJJWHn8h31YSoD28txunXdSxgxZg0g8G7IlVS4hI/flsMyB1LxHSZP2c=
X-Received: by 2002:aca:5fc3:: with SMTP id t186mr2337394oib.69.1618408264317;
 Wed, 14 Apr 2021 06:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210413063435.18111-1-me@fabwu.ch> <20210414083022.25453-1-me@fabwu.ch>
 <20210414083022.25453-2-me@fabwu.ch>
In-Reply-To: <20210414083022.25453-2-me@fabwu.ch>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 14 Apr 2021 15:50:53 +0200
Message-ID: <CAJZ5v0ich7DA47ybP552MJJg6-TkShnJyGcrz0PpWYETHHREHQ@mail.gmail.com>
To: =?UTF-8?Q?Fabian_W=C3=BCthrich?= <me@fabwu.ch>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: XTZSGMA77HQYM6I2OT6YLXVBR2C5FS4F
X-Message-ID-Hash: XTZSGMA77HQYM6I2OT6YLXVBR2C5FS4F
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Media Mailing List <linux-media@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Jacopo Mondi <jacopo@jmondi.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Dan Scally <djrscally@gmail.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/2] ACPI: Add _PLD panel positions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XTZSGMA77HQYM6I2OT6YLXVBR2C5FS4F/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTQsIDIwMjEgYXQgMTA6MzAgQU0gRmFiaWFuIFfDvHRocmljaCA8bWVAZmFi
d3UuY2g+IHdyb3RlOg0KPg0KPiBUaGUgQUNQSSBzcGVjaWZpY2F0aW9uIHY2LjMgZGVmaW5lcyB0
aGUgcGFuZWwgcG9zaXRpb25zIGluIGNoYXB0ZXIgNi4xLjgNCj4gIl9QTEQgKFBoeXNpY2FsIExv
Y2F0aW9uIG9mIERldmljZSkiDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEZhYmlhbiBXw7x0aHJpY2gg
PG1lQGZhYnd1LmNoPg0KPiBSZXZpZXdlZC1ieTogRGFuaWVsIFNjYWxseSA8ZGpyc2NhbGx5QGdt
YWlsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtv
QGdtYWlsLmNvbT4NCg0KVGhpcyBpcyBBQ1BJQ0EgbWF0ZXJpYWwuDQoNCkVyaWssIGNhbiB5b3Ug
cGljayB1cCB0aGlzIG9uZSwgcGxlYXNlPw0KDQo+IC0tLQ0KPiAgaW5jbHVkZS9hY3BpL2FjYnVm
ZmVyLmggfCA5ICsrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0K
Pg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hY3BpL2FjYnVmZmVyLmggYi9pbmNsdWRlL2FjcGkv
YWNidWZmZXIuaA0KPiBpbmRleCAxODE5N2MxNjE0OWYuLmQ0MmU4MmE4Mjg1MiAxMDA2NDQNCj4g
LS0tIGEvaW5jbHVkZS9hY3BpL2FjYnVmZmVyLmgNCj4gKysrIGIvaW5jbHVkZS9hY3BpL2FjYnVm
ZmVyLmgNCj4gQEAgLTIwNyw0ICsyMDcsMTMgQEAgc3RydWN0IGFjcGlfcGxkX2luZm8gew0KPiAg
I2RlZmluZSBBQ1BJX1BMRF9HRVRfSE9SSVpfT0ZGU0VUKGR3b3JkKSAgICAgICAgQUNQSV9HRVRf
QklUUyAoZHdvcmQsIDE2LCBBQ1BJXzE2QklUX01BU0spDQo+ICAjZGVmaW5lIEFDUElfUExEX1NF
VF9IT1JJWl9PRkZTRVQoZHdvcmQsdmFsdWUpICBBQ1BJX1NFVF9CSVRTIChkd29yZCwgMTYsIEFD
UElfMTZCSVRfTUFTSywgdmFsdWUpICAgICAgLyogT2Zmc2V0IDEyOCsxNj0xNDQsIExlbiAxNiAq
Lw0KPg0KPiArLyogUGFuZWwgcG9zaXRpb24gZGVmaW5lZCBpbiBfUExEIHNlY3Rpb24gb2YgQUNQ
SSBTcGVjaWZpY2F0aW9uIDYuMyAqLw0KPiArI2RlZmluZSBBQ1BJX1BMRF9QQU5FTF9UT1AgICAg
ICAgICAgICAgICAgICAgICAwDQo+ICsjZGVmaW5lIEFDUElfUExEX1BBTkVMX0JPVFRPTSAgICAg
ICAgICAgICAgICAgIDENCj4gKyNkZWZpbmUgQUNQSV9QTERfUEFORUxfTEVGVCAgICAgICAgICAg
ICAgICAgICAgMg0KPiArI2RlZmluZSBBQ1BJX1BMRF9QQU5FTF9SSUdIVCAgICAgICAgICAgICAg
ICAgICAzDQo+ICsjZGVmaW5lIEFDUElfUExEX1BBTkVMX0ZST05UICAgICAgICAgICAgICAgICAg
IDQNCj4gKyNkZWZpbmUgQUNQSV9QTERfUEFORUxfQkFDSyAgICAgICAgICAgICAgICAgICAgNQ0K
PiArI2RlZmluZSBBQ1BJX1BMRF9QQU5FTF9VTktOT1dOICAgICAgICAgICAgICAgICA2DQo+ICsN
Cj4gICNlbmRpZiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBBQ0JVRkZFUl9IICovDQo+IC0t
DQo+IDIuMzEuMQ0KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwp
c2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
