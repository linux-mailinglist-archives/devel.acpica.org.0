Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3482B9232
	for <lists+devel-acpica@lfdr.de>; Thu, 19 Nov 2020 13:13:16 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B51FA100EBB91;
	Thu, 19 Nov 2020 04:13:15 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.32; helo=szxga06-in.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B3370100EBB8B
	for <devel@acpica.org>; Thu, 19 Nov 2020 04:13:13 -0800 (PST)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4CcJTz013FzhdPH;
	Thu, 19 Nov 2020 20:12:55 +0800 (CST)
Received: from S00345302A-PC.china.huawei.com (10.210.168.73) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 19 Nov 2020 20:12:56 +0800
From: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-acpi@vger.kernel.org>,
	<iommu@lists.linux-foundation.org>, <devel@acpica.org>
Date: Thu, 19 Nov 2020 12:11:48 +0000
Message-ID: <20201119121150.3316-7-shameerali.kolothum.thodi@huawei.com>
X-Mailer: git-send-email 2.12.0.windows.1
In-Reply-To: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
References: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.210.168.73]
X-CFilter-Loop: Reflected
Message-ID-Hash: F3IVXDDCDU4NRWN7CRJ37STLIUQ3AWAP
X-Message-ID-Hash: F3IVXDDCDU4NRWN7CRJ37STLIUQ3AWAP
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org, robin.murphy@arm.com, wanghuiqiang@huawei.com, jonathan.cameron@huawei.com, steven.price@arm.com, Sami.Mujawar@arm.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel]  [RFC PATCH v2 6/8] =?utf-8?q?iommu/arm-smmu-v3=3A_Add_bypass_flag_to=C2=A0arm=5Fsmmu=5Fwrite=5Fstrtab=5Fent=28=29?=
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/F3IVXDDCDU4NRWN7CRJ37STLIUQ3AWAP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnkgZGVmYXVsdCzCoGRpc2FibGVfYnlwYXNzIGlzIHNldCBhbmQgYW55IGRldiB3aXRob3V0IGFu
IGlvbW11IGRvbWFpbg0KaW5zdGFsbHMgU1RFIHdpdGggQ0ZHX0FCT1JUIGR1cmluZ8KgYXJtX3Nt
bXVfaW5pdF9ieXBhc3Nfc3RlcygpLiBJbnRyb2R1Y2UNCmEgImJ5cGFzcyIgZmxhZyB0b8KgYXJt
X3NtbXVfd3JpdGVfc3RydGFiX2VudCgpIHNvIHRoYXQgd2UgY2FuIGZvcmNlIGl0IHRvDQppbnN0
YWxswqBDRkdfQllQQVNTIFNURSBmb3Igc3BlY2lmaWMgU0lEcy4gVGhpcyB3aWxsIGJlwqB1c2Vm
dWzCoGZvciBSTVINCnJlbGF0ZWQgU0lEcy4NCg0KU2lnbmVkLW9mZi1ieTogU2hhbWVlciBLb2xv
dGh1bSA8c2hhbWVlcmFsaS5rb2xvdGh1bS50aG9kaUBodWF3ZWkuY29tPg0KLS0tDQogZHJpdmVy
cy9pb21tdS9hcm0vYXJtLXNtbXUtdjMvYXJtLXNtbXUtdjMuYyB8IDggKysrKy0tLS0NCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9pb21tdS9hcm0vYXJtLXNtbXUtdjMvYXJtLXNtbXUtdjMuYyBiL2RyaXZlcnMv
aW9tbXUvYXJtL2FybS1zbW11LXYzL2FybS1zbW11LXYzLmMNCmluZGV4IDE5NTNiMzE3ZDgxNC4u
NWYzNjZkNWE5ZWJmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9pb21tdS9hcm0vYXJtLXNtbXUtdjMv
YXJtLXNtbXUtdjMuYw0KKysrIGIvZHJpdmVycy9pb21tdS9hcm0vYXJtLXNtbXUtdjMvYXJtLXNt
bXUtdjMuYw0KQEAgLTExNzQsNyArMTE3NCw3IEBAIHN0YXRpYyB2b2lkIGFybV9zbW11X3N5bmNf
c3RlX2Zvcl9zaWQoc3RydWN0IGFybV9zbW11X2RldmljZSAqc21tdSwgdTMyIHNpZCkNCiB9DQog
DQogc3RhdGljIHZvaWQgYXJtX3NtbXVfd3JpdGVfc3RydGFiX2VudChzdHJ1Y3QgYXJtX3NtbXVf
bWFzdGVyICptYXN0ZXIsIHUzMiBzaWQsDQotCQkJCSAgICAgIF9fbGU2NCAqZHN0KQ0KKwkJCQkg
ICAgICBfX2xlNjQgKmRzdCwgYm9vbCBieXBhc3MpDQogew0KIAkvKg0KIAkgKiBUaGlzIGlzIGhp
ZGVvdXNseSBjb21wbGljYXRlZCwgYnV0IHdlIG9ubHkgcmVhbGx5IGNhcmUgYWJvdXQNCkBAIC0x
MjQ1LDcgKzEyNDUsNyBAQCBzdGF0aWMgdm9pZCBhcm1fc21tdV93cml0ZV9zdHJ0YWJfZW50KHN0
cnVjdCBhcm1fc21tdV9tYXN0ZXIgKm1hc3RlciwgdTMyIHNpZCwNCiANCiAJLyogQnlwYXNzL2Zh
dWx0ICovDQogCWlmICghc21tdV9kb21haW4gfHwgIShzMV9jZmcgfHwgczJfY2ZnKSkgew0KLQkJ
aWYgKCFzbW11X2RvbWFpbiAmJiBkaXNhYmxlX2J5cGFzcykNCisJCWlmICghc21tdV9kb21haW4g
JiYgZGlzYWJsZV9ieXBhc3MgJiYgIWJ5cGFzcykNCiAJCQl2YWwgfD0gRklFTERfUFJFUChTVFJU
QUJfU1RFXzBfQ0ZHLCBTVFJUQUJfU1RFXzBfQ0ZHX0FCT1JUKTsNCiAJCWVsc2UNCiAJCQl2YWwg
fD0gRklFTERfUFJFUChTVFJUQUJfU1RFXzBfQ0ZHLCBTVFJUQUJfU1RFXzBfQ0ZHX0JZUEFTUyk7
DQpAQCAtMTMxNyw3ICsxMzE3LDcgQEAgc3RhdGljIHZvaWQgYXJtX3NtbXVfaW5pdF9ieXBhc3Nf
c3RlcyhfX2xlNjQgKnN0cnRhYiwgdW5zaWduZWQgaW50IG5lbnQpDQogCXVuc2lnbmVkIGludCBp
Ow0KIA0KIAlmb3IgKGkgPSAwOyBpIDwgbmVudDsgKytpKSB7DQotCQlhcm1fc21tdV93cml0ZV9z
dHJ0YWJfZW50KE5VTEwsIC0xLCBzdHJ0YWIpOw0KKwkJYXJtX3NtbXVfd3JpdGVfc3RydGFiX2Vu
dChOVUxMLCAtMSwgc3RydGFiLCBmYWxzZSk7DQogCQlzdHJ0YWIgKz0gU1RSVEFCX1NURV9EV09S
RFM7DQogCX0NCiB9DQpAQCAtMjAzOCw3ICsyMDM4LDcgQEAgc3RhdGljIHZvaWQgYXJtX3NtbXVf
aW5zdGFsbF9zdGVfZm9yX2RldihzdHJ1Y3QgYXJtX3NtbXVfbWFzdGVyICptYXN0ZXIpDQogCQlp
ZiAoaiA8IGkpDQogCQkJY29udGludWU7DQogDQotCQlhcm1fc21tdV93cml0ZV9zdHJ0YWJfZW50
KG1hc3Rlciwgc2lkLCBzdGVwKTsNCisJCWFybV9zbW11X3dyaXRlX3N0cnRhYl9lbnQobWFzdGVy
LCBzaWQsIHN0ZXAsIGZhbHNlKTsNCiAJfQ0KIH0NCiANCi0tIA0KMi4xNy4xDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3Qg
LS0gZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVs
LWxlYXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9p
bnRlcm5hbF9uYW1lKXM=
