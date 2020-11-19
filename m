Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9577B2B9228
	for <lists+devel-acpica@lfdr.de>; Thu, 19 Nov 2020 13:12:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4A899100EBB8F;
	Thu, 19 Nov 2020 04:12:44 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191; helo=szxga05-in.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6421B100EBB8E
	for <devel@acpica.org>; Thu, 19 Nov 2020 04:12:41 -0800 (PST)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CcJTJ31GlzhXkw;
	Thu, 19 Nov 2020 20:12:20 +0800 (CST)
Received: from S00345302A-PC.china.huawei.com (10.210.168.73) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 19 Nov 2020 20:12:26 +0800
From: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-acpi@vger.kernel.org>,
	<iommu@lists.linux-foundation.org>, <devel@acpica.org>
Date: Thu, 19 Nov 2020 12:11:43 +0000
Message-ID: <20201119121150.3316-2-shameerali.kolothum.thodi@huawei.com>
X-Mailer: git-send-email 2.12.0.windows.1
In-Reply-To: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
References: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.210.168.73]
X-CFilter-Loop: Reflected
Message-ID-Hash: J4H6FGEUVY2RW6SPVYUFFGWQAT3KWIH6
X-Message-ID-Hash: J4H6FGEUVY2RW6SPVYUFFGWQAT3KWIH6
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org, robin.murphy@arm.com, wanghuiqiang@huawei.com, jonathan.cameron@huawei.com, steven.price@arm.com, Sami.Mujawar@arm.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [RFC PATCH v2 1/8] ACPICA: IORT: Update for revision E
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/J4H6FGEUVY2RW6SPVYUFFGWQAT3KWIH6/>
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
aS5jb20+DQotLS0NCiBpbmNsdWRlL2FjcGkvYWN0YmwyLmggfCAyNSArKysrKysrKysrKysrKysr
KysrLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2FjcGkvYWN0YmwyLmggYi9pbmNsdWRlL2FjcGkv
YWN0YmwyLmgNCmluZGV4IGVjNjY3NzljYjE5My4uMjc0ZmNlN2I1YzAxIDEwMDY0NA0KLS0tIGEv
aW5jbHVkZS9hY3BpL2FjdGJsMi5oDQorKysgYi9pbmNsdWRlL2FjcGkvYWN0YmwyLmgNCkBAIC02
OCw3ICs2OCw3IEBADQogICogSU9SVCAtIElPIFJlbWFwcGluZyBUYWJsZQ0KICAqDQogICogQ29u
Zm9ybXMgdG8gIklPIFJlbWFwcGluZyBUYWJsZSBTeXN0ZW0gU29mdHdhcmUgb24gQVJNIFBsYXRm
b3JtcyIsDQotICogRG9jdW1lbnQgbnVtYmVyOiBBUk0gREVOIDAwNDlELCBNYXJjaCAyMDE4DQor
ICogRG9jdW1lbnQgbnVtYmVyOiBBUk0gREVOIDAwNDlFLCBKdW5lIDIwMjANCiAgKg0KICAqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKiovDQogDQpAQCAtODYsNyArODYsOCBAQCBzdHJ1Y3QgYWNwaV9pb3J0
X25vZGUgew0KIAl1OCB0eXBlOw0KIAl1MTYgbGVuZ3RoOw0KIAl1OCByZXZpc2lvbjsNCi0JdTMy
IHJlc2VydmVkOw0KKwl1MTYgcmVzZXJ2ZWQ7DQorCXUxNiBpZGVudGlmaWVyOw0KIAl1MzIgbWFw
cGluZ19jb3VudDsNCiAJdTMyIG1hcHBpbmdfb2Zmc2V0Ow0KIAljaGFyIG5vZGVfZGF0YVsxXTsN
CkBAIC0xMDAsNyArMTAxLDggQEAgZW51bSBhY3BpX2lvcnRfbm9kZV90eXBlIHsNCiAJQUNQSV9J
T1JUX05PREVfUENJX1JPT1RfQ09NUExFWCA9IDB4MDIsDQogCUFDUElfSU9SVF9OT0RFX1NNTVUg
PSAweDAzLA0KIAlBQ1BJX0lPUlRfTk9ERV9TTU1VX1YzID0gMHgwNCwNCi0JQUNQSV9JT1JUX05P
REVfUE1DRyA9IDB4MDUNCisJQUNQSV9JT1JUX05PREVfUE1DRyA9IDB4MDUsDQorCUFDUElfSU9S
VF9OT0RFX1JNUiA9IDB4MDYsDQogfTsNCiANCiBzdHJ1Y3QgYWNwaV9pb3J0X2lkX21hcHBpbmcg
ew0KQEAgLTE2NywxMCArMTY5LDEwIEBAIHN0cnVjdCBhY3BpX2lvcnRfcm9vdF9jb21wbGV4IHsN
CiAJdTggcmVzZXJ2ZWRbM107CQkvKiBSZXNlcnZlZCwgbXVzdCBiZSB6ZXJvICovDQogfTsNCiAN
Ci0vKiBWYWx1ZXMgZm9yIGF0c19hdHRyaWJ1dGUgZmllbGQgYWJvdmUgKi8NCisvKiBNYXNrcyBm
b3IgYXRzX2F0dHJpYnV0ZSBmaWVsZCBhYm92ZSAqLw0KIA0KLSNkZWZpbmUgQUNQSV9JT1JUX0FU
U19TVVBQT1JURUQgICAgICAgICAweDAwMDAwMDAxCS8qIFRoZSByb290IGNvbXBsZXggc3VwcG9y
dHMgQVRTICovDQotI2RlZmluZSBBQ1BJX0lPUlRfQVRTX1VOU1VQUE9SVEVEICAgICAgIDB4MDAw
MDAwMDAJLyogVGhlIHJvb3QgY29tcGxleCBkb2Vzbid0IHN1cHBvcnQgQVRTICovDQorI2RlZmlu
ZSBBQ1BJX0lPUlRfQVRTX1NVUFBPUlRFRCAgICAgICAgICgxKQkvKiBUaGUgcm9vdCBjb21wbGV4
IHN1cHBvcnRzIEFUUyAqLw0KKyNkZWZpbmUgQUNQSV9JT1JUX1BSSV9TVVBQT1JURUQgICAgICAg
ICAoMTw8MSkJLyogVGhlIHJvb3QgY29tcGxleCBzdXBwb3J0cyBQUkkgKi8NCiANCiBzdHJ1Y3Qg
YWNwaV9pb3J0X3NtbXUgew0KIAl1NjQgYmFzZV9hZGRyZXNzOwkvKiBTTU1VIGJhc2UgYWRkcmVz
cyAqLw0KQEAgLTI0MSw2ICsyNDMsMTcgQEAgc3RydWN0IGFjcGlfaW9ydF9wbWNnIHsNCiAJdTY0
IHBhZ2UxX2Jhc2VfYWRkcmVzczsNCiB9Ow0KIA0KK3N0cnVjdCBhY3BpX2lvcnRfcm1yIHsNCisJ
dTMyIHJtcl9jb3VudDsNCisJdTMyIHJtcl9vZmZzZXQ7DQorfTsNCisNCitzdHJ1Y3QgYWNwaV9p
b3J0X3Jtcl9kZXNjIHsNCisJdTY0IGJhc2VfYWRkcmVzczsNCisJdTY0IGxlbmd0aDsNCisJdTMy
IHJlc2VydmVkOw0KK307DQorDQogLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCiAgKg0KICAqIElW
UlMgLSBJL08gVmlydHVhbGl6YXRpb24gUmVwb3J0aW5nIFN0cnVjdHVyZQ0KLS0gDQoyLjE3LjEN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkRldmVsIG1h
aWxpbmcgbGlzdCAtLSBkZXZlbEBhY3BpY2Eub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gZGV2ZWwtbGVhdmVAYWNwaWNhLm9yZwolKHdlYl9wYWdlX3VybClzbGlzdGluZm8lKGNn
aWV4dClzLyUoX2ludGVybmFsX25hbWUpcw==
