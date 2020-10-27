Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6884229AA86
	for <lists+devel-acpica@lfdr.de>; Tue, 27 Oct 2020 12:28:10 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8B849161F123E;
	Tue, 27 Oct 2020 04:28:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.35; helo=szxga07-in.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F05E7161F1238
	for <devel@acpica.org>; Tue, 27 Oct 2020 04:28:05 -0700 (PDT)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CL8Zt1Yshz6wN3;
	Tue, 27 Oct 2020 19:28:06 +0800 (CST)
Received: from S00345302A-PC.china.huawei.com (10.47.24.15) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Tue, 27 Oct 2020 19:27:54 +0800
From: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-acpi@vger.kernel.org>,
	<iommu@lists.linux-foundation.org>, <devel@acpica.org>
Date: Tue, 27 Oct 2020 11:26:43 +0000
Message-ID: <20201027112646.44680-2-shameerali.kolothum.thodi@huawei.com>
X-Mailer: git-send-email 2.12.0.windows.1
In-Reply-To: <20201027112646.44680-1-shameerali.kolothum.thodi@huawei.com>
References: <20201027112646.44680-1-shameerali.kolothum.thodi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.47.24.15]
X-CFilter-Loop: Reflected
Message-ID-Hash: JL4W6UKS56NUZ4EPJF56M3NOPE6TWRQV
X-Message-ID-Hash: JL4W6UKS56NUZ4EPJF56M3NOPE6TWRQV
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org, robin.murphy@arm.com, wanghuiqiang@huawei.com, jonathan.cameron@huawei.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [RFC PATCH 1/4] ACPICA: IORT: Update for revision E
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JL4W6UKS56NUZ4EPJF56M3NOPE6TWRQV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SU9SVCByZXZpc2lvbiBFIGNvbnRhaW5zIGEgZmV3IGFkZGl0aW9ucyBsaWtlLA0KwqAgwqAgLUFk
ZGVkIGFuIGlkZW50aWZpZXIgZmllbGQgaW4gdGhlIG5vZGUgZGVzY3JpcHRvcnMgdG8gYWlkIHRh
YmxlDQrCoCDCoCDCoGNyb3NzLXJlZmVyZW5jaW5nLg0KwqAgwqAgLUludHJvZHVjZWQgdGhlIFJl
c2VydmVkIE1lbW9yeSBSYW5nZShSTVIpIG5vZGUuIFRoaXMgaXMgdXNlZA0KIMKgIMKgIHRvIGRl
c2NyaWJlIG1lbW9yeSByYW5nZXMgdGhhdCBhcmUgdXNlZCBieSBlbmRwb2ludHMgYW5kIHJlcXVp
cmVzDQogwqAgwqAgYSB1bml0eSBtYXBwaW5nIGluIFNNTVUuDQogICAgLUludHJvZHVjZWQgYSBm
bGFnIGluIHRoZSBSQyBub2RlIHRvIGV4cHJlc3Mgc3VwcG9ydCBmb3IgUFJJLg0KDQpTaWduZWQt
b2ZmLWJ5OiBTaGFtZWVyIEtvbG90aHVtIDxzaGFtZWVyYWxpLmtvbG90aHVtLnRob2RpQGh1YXdl
aS5jb20+DQotLS0NCiAtVGhpcyBzaG91bGQgYmUgdXBkYXRlZCB0aHJvdWdoIGFjcGljYSBnaXQu
IEkgaGF2ZSBzZW50IG91dCBhIHB1bGwNCiAgcmVxdWVzdCBmb3IgdGhlIHNhbWUgaGVyZSwNCiAg
aHR0cHM6Ly9naXRodWIuY29tL2FjcGljYS9hY3BpY2EvcHVsbC82MzgNCg0KUGxlYXNlIGhlbHAg
dG8gcmV2aWV3Lg0KLS0tDQogaW5jbHVkZS9hY3BpL2FjdGJsMi5oIHwgMjUgKysrKysrKysrKysr
KysrKysrKy0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hY3BpL2FjdGJsMi5oIGIvaW5jbHVkZS9h
Y3BpL2FjdGJsMi5oDQppbmRleCBlYzY2Nzc5Y2IxOTMuLjI3NGZjZTdiNWMwMSAxMDA2NDQNCi0t
LSBhL2luY2x1ZGUvYWNwaS9hY3RibDIuaA0KKysrIGIvaW5jbHVkZS9hY3BpL2FjdGJsMi5oDQpA
QCAtNjgsNyArNjgsNyBAQA0KICAqIElPUlQgLSBJTyBSZW1hcHBpbmcgVGFibGUNCiAgKg0KICAq
IENvbmZvcm1zIHRvICJJTyBSZW1hcHBpbmcgVGFibGUgU3lzdGVtIFNvZnR3YXJlIG9uIEFSTSBQ
bGF0Zm9ybXMiLA0KLSAqIERvY3VtZW50IG51bWJlcjogQVJNIERFTiAwMDQ5RCwgTWFyY2ggMjAx
OA0KKyAqIERvY3VtZW50IG51bWJlcjogQVJNIERFTiAwMDQ5RSwgSnVuZSAyMDIwDQogICoNCiAg
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqLw0KIA0KQEAgLTg2LDcgKzg2LDggQEAgc3RydWN0IGFjcGlf
aW9ydF9ub2RlIHsNCiAJdTggdHlwZTsNCiAJdTE2IGxlbmd0aDsNCiAJdTggcmV2aXNpb247DQot
CXUzMiByZXNlcnZlZDsNCisJdTE2IHJlc2VydmVkOw0KKwl1MTYgaWRlbnRpZmllcjsNCiAJdTMy
IG1hcHBpbmdfY291bnQ7DQogCXUzMiBtYXBwaW5nX29mZnNldDsNCiAJY2hhciBub2RlX2RhdGFb
MV07DQpAQCAtMTAwLDcgKzEwMSw4IEBAIGVudW0gYWNwaV9pb3J0X25vZGVfdHlwZSB7DQogCUFD
UElfSU9SVF9OT0RFX1BDSV9ST09UX0NPTVBMRVggPSAweDAyLA0KIAlBQ1BJX0lPUlRfTk9ERV9T
TU1VID0gMHgwMywNCiAJQUNQSV9JT1JUX05PREVfU01NVV9WMyA9IDB4MDQsDQotCUFDUElfSU9S
VF9OT0RFX1BNQ0cgPSAweDA1DQorCUFDUElfSU9SVF9OT0RFX1BNQ0cgPSAweDA1LA0KKwlBQ1BJ
X0lPUlRfTk9ERV9STVIgPSAweDA2LA0KIH07DQogDQogc3RydWN0IGFjcGlfaW9ydF9pZF9tYXBw
aW5nIHsNCkBAIC0xNjcsMTAgKzE2OSwxMCBAQCBzdHJ1Y3QgYWNwaV9pb3J0X3Jvb3RfY29tcGxl
eCB7DQogCXU4IHJlc2VydmVkWzNdOwkJLyogUmVzZXJ2ZWQsIG11c3QgYmUgemVybyAqLw0KIH07
DQogDQotLyogVmFsdWVzIGZvciBhdHNfYXR0cmlidXRlIGZpZWxkIGFib3ZlICovDQorLyogTWFz
a3MgZm9yIGF0c19hdHRyaWJ1dGUgZmllbGQgYWJvdmUgKi8NCiANCi0jZGVmaW5lIEFDUElfSU9S
VF9BVFNfU1VQUE9SVEVEICAgICAgICAgMHgwMDAwMDAwMQkvKiBUaGUgcm9vdCBjb21wbGV4IHN1
cHBvcnRzIEFUUyAqLw0KLSNkZWZpbmUgQUNQSV9JT1JUX0FUU19VTlNVUFBPUlRFRCAgICAgICAw
eDAwMDAwMDAwCS8qIFRoZSByb290IGNvbXBsZXggZG9lc24ndCBzdXBwb3J0IEFUUyAqLw0KKyNk
ZWZpbmUgQUNQSV9JT1JUX0FUU19TVVBQT1JURUQgICAgICAgICAoMSkJLyogVGhlIHJvb3QgY29t
cGxleCBzdXBwb3J0cyBBVFMgKi8NCisjZGVmaW5lIEFDUElfSU9SVF9QUklfU1VQUE9SVEVEICAg
ICAgICAgKDE8PDEpCS8qIFRoZSByb290IGNvbXBsZXggc3VwcG9ydHMgUFJJICovDQogDQogc3Ry
dWN0IGFjcGlfaW9ydF9zbW11IHsNCiAJdTY0IGJhc2VfYWRkcmVzczsJLyogU01NVSBiYXNlIGFk
ZHJlc3MgKi8NCkBAIC0yNDEsNiArMjQzLDE3IEBAIHN0cnVjdCBhY3BpX2lvcnRfcG1jZyB7DQog
CXU2NCBwYWdlMV9iYXNlX2FkZHJlc3M7DQogfTsNCiANCitzdHJ1Y3QgYWNwaV9pb3J0X3JtciB7
DQorCXUzMiBybXJfY291bnQ7DQorCXUzMiBybXJfb2Zmc2V0Ow0KK307DQorDQorc3RydWN0IGFj
cGlfaW9ydF9ybXJfZGVzYyB7DQorCXU2NCBiYXNlX2FkZHJlc3M7DQorCXU2NCBsZW5ndGg7DQor
CXUzMiByZXNlcnZlZDsNCit9Ow0KKw0KIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqDQogICoNCiAg
KiBJVlJTIC0gSS9PIFZpcnR1YWxpemF0aW9uIFJlcG9ydGluZyBTdHJ1Y3R1cmUNCi0tIA0KMi4x
Ny4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZl
bCBtYWlsaW5nIGxpc3QgLS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGRldmVsLWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZv
JShjZ2lleHQpcy8lKF9pbnRlcm5hbF9uYW1lKXM=
