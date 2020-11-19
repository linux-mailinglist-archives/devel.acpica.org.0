Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB362B9233
	for <lists+devel-acpica@lfdr.de>; Thu, 19 Nov 2020 13:13:20 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BF93B100EBB94;
	Thu, 19 Nov 2020 04:13:18 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191; helo=szxga05-in.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D73EA100EBB94
	for <devel@acpica.org>; Thu, 19 Nov 2020 04:13:16 -0800 (PST)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CcJV00Bwhzhd20;
	Thu, 19 Nov 2020 20:12:56 +0800 (CST)
Received: from S00345302A-PC.china.huawei.com (10.210.168.73) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 19 Nov 2020 20:13:02 +0800
From: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-acpi@vger.kernel.org>,
	<iommu@lists.linux-foundation.org>, <devel@acpica.org>
Date: Thu, 19 Nov 2020 12:11:49 +0000
Message-ID: <20201119121150.3316-8-shameerali.kolothum.thodi@huawei.com>
X-Mailer: git-send-email 2.12.0.windows.1
In-Reply-To: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
References: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.210.168.73]
X-CFilter-Loop: Reflected
Message-ID-Hash: 774ZOLCEVP4OOR4NBUNPCBDMSLBBNGW4
X-Message-ID-Hash: 774ZOLCEVP4OOR4NBUNPCBDMSLBBNGW4
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org, robin.murphy@arm.com, wanghuiqiang@huawei.com, jonathan.cameron@huawei.com, steven.price@arm.com, Sami.Mujawar@arm.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [RFC PATCH v2 7/8] iommu/arm-smmu-v3: Get associated RMR info and install bypass STE
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/774ZOLCEVP4OOR4NBUNPCBDMSLBBNGW4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hlY2sgaWYgdGhlcmUgaXMgYW55IFJNUiBpbmZvIGFzc29jaWF0ZWTCoHdpdGggdGhlIGRldmlj
ZXMgYmVoaW5kDQp0aGUgU01NVXYzIGFuZCBpZiBhbnksIGluc3RhbGwgYnlwYXNzIFNURXMgZm9y
IHRoZW0uIFRoaXMgaXMgdG8NCmtlZXAgYW55IG9uZ29pbmcgdHJhZmZpYyBhc3NvY2lhdGVkIHdp
dGggdGhlc2UgZGV2aWNlcyBhbGl2ZQ0Kd2hlbiB3ZSBlbmFibGUvcmVzZXQgU01NVXYzIGR1cmlu
ZyBwcm9iZSgpLg0KDQpTaWduZWQtb2ZmLWJ5OiBTaGFtZWVyIEtvbG90aHVtIDxzaGFtZWVyYWxp
LmtvbG90aHVtLnRob2RpQGh1YXdlaS5jb20+DQotLS0NCiBkcml2ZXJzL2lvbW11L2FybS9hcm0t
c21tdS12My9hcm0tc21tdS12My5jIHwgNDAgKysrKysrKysrKysrKysrKysrKysrDQogZHJpdmVy
cy9pb21tdS9hcm0vYXJtLXNtbXUtdjMvYXJtLXNtbXUtdjMuaCB8ICAyICsrDQogMiBmaWxlcyBj
aGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2Fy
bS9hcm0tc21tdS12My9hcm0tc21tdS12My5jIGIvZHJpdmVycy9pb21tdS9hcm0vYXJtLXNtbXUt
djMvYXJtLXNtbXUtdjMuYw0KaW5kZXggNWYzNjZkNWE5ZWJmLi45N2RmMWRmMDAxYzkgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL2lvbW11L2FybS9hcm0tc21tdS12My9hcm0tc21tdS12My5jDQorKysg
Yi9kcml2ZXJzL2lvbW11L2FybS9hcm0tc21tdS12My9hcm0tc21tdS12My5jDQpAQCAtMzQ4Niw2
ICszNDg2LDQyIEBAIHN0YXRpYyB2b2lkIF9faW9tZW0gKmFybV9zbW11X2lvcmVtYXAoc3RydWN0
IGRldmljZSAqZGV2LCByZXNvdXJjZV9zaXplX3Qgc3RhcnQsDQogCXJldHVybiBkZXZtX2lvcmVt
YXBfcmVzb3VyY2UoZGV2LCAmcmVzKTsNCiB9DQogDQorc3RhdGljIHZvaWQgYXJtX3NtbXVfcm1y
X2luc3RhbGxfYnlwYXNzX3N0ZShzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlICpzbW11KQ0KK3sNCisJ
c3RydWN0IGlvbW11X3JtciAqZTsNCisJaW50IGksIHJldDsNCisNCisJLyoNCisJICogU2luY2Us
IHdlIGRvbid0IGhhdmUgYSBtZWNoYW5pc20gdG8gZGlmZmVyZW50aWF0ZSB0aGUgUk1SDQorCSAq
IFNJRHMgdGhhdCBoYXMgYW4gb25nb2luZyBsaXZlIHN0cmVhbSwgaW5zdGFsbCBieXBhc3MgU1RF
cw0KKwkgKiBmb3IgYWxsIHRoZSByZXBvcnRlZCBvbmVzLsKgDQorCSAqIEZpeE1lOiBBdm9pZCBk
dXBsaWNhdGUgU0lEcyBpbiB0aGUgbGlzdCBhcyBvbmUgc2lkIG1heQ0KKwkgKiAgICAgICAgYXNz
b2NpYXRlIHdpdGggbXVsdGlwbGUgUk1Scy4NCisJICovDQorCWxpc3RfZm9yX2VhY2hfZW50cnko
ZSwgJnNtbXUtPnJtcl9saXN0LCBsaXN0KSB7DQorCQlmb3IgKGkgPSAwOyBpIDwgZS0+bnVtX2lk
czsgaSsrKSB7DQorCQkJX19sZTY0ICpzdGVwOw0KKwkJCXUzMiBzaWQgPSBlLT5pZHNbaV07DQor
DQorCQkJcmV0ID0gYXJtX3NtbXVfaW5pdF9zaWRfc3RydGFiKHNtbXUsIHNpZCk7DQorCQkJaWYg
KHJldCkgew0KKwkJCQlkZXZfZXJyKHNtbXUtPmRldiwgIlJNUiBieXBhc3MoMHgleCkgZmFpbGVk
XG4iLA0KKwkJCQkJc2lkKTsNCisJCQkJY29udGludWU7DQorCQkJfQ0KKw0KKwkJCXN0ZXAgPSBh
cm1fc21tdV9nZXRfc3RlcF9mb3Jfc2lkKHNtbXUsIHNpZCk7DQorCQkJYXJtX3NtbXVfd3JpdGVf
c3RydGFiX2VudChOVUxMLCBzaWQsIHN0ZXAsIHRydWUpOw0KKwkJfQ0KKwl9DQorfQ0KKw0KK3N0
YXRpYyBpbnQgYXJtX3NtbXVfZ2V0X3JtcihzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlICpzbW11KQ0K
K3sNCisJSU5JVF9MSVNUX0hFQUQoJnNtbXUtPnJtcl9saXN0KTsNCisJcmV0dXJuIGlvbW11X2Rt
YV9nZXRfcm1ycyhkZXZfZndub2RlKHNtbXUtPmRldiksICZzbW11LT5ybXJfbGlzdCk7DQorfQ0K
Kw0KIHN0YXRpYyBpbnQgYXJtX3NtbXVfZGV2aWNlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpDQogew0KIAlpbnQgaXJxLCByZXQ7DQpAQCAtMzU2OSw2ICszNjA1LDEwIEBAIHN0
YXRpYyBpbnQgYXJtX3NtbXVfZGV2aWNlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpDQogCS8qIFJlY29yZCBvdXIgcHJpdmF0ZSBkZXZpY2Ugc3RydWN0dXJlICovDQogCXBsYXRm
b3JtX3NldF9kcnZkYXRhKHBkZXYsIHNtbXUpOw0KIA0KKwkvKiBDaGVjayBmb3IgUk1ScyBhbmQg
aW5zdGFsbCBieXBhc3MgU1RFcyBpZiBhbnkgKi8NCisJaWYgKCFhcm1fc21tdV9nZXRfcm1yKHNt
bXUpKQ0KKwkJYXJtX3NtbXVfcm1yX2luc3RhbGxfYnlwYXNzX3N0ZShzbW11KTsNCisNCiAJLyog
UmVzZXQgdGhlIGRldmljZSAqLw0KIAlyZXQgPSBhcm1fc21tdV9kZXZpY2VfcmVzZXQoc21tdSwg
YnlwYXNzKTsNCiAJaWYgKHJldCkNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS9hcm0t
c21tdS12My9hcm0tc21tdS12My5oIGIvZHJpdmVycy9pb21tdS9hcm0vYXJtLXNtbXUtdjMvYXJt
LXNtbXUtdjMuaA0KaW5kZXggZDRiN2Y0MGNjYjAyLi4xN2I1MTdkZGVjZWUgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2lvbW11L2FybS9hcm0tc21tdS12My9hcm0tc21tdS12My5oDQorKysgYi9kcml2
ZXJzL2lvbW11L2FybS9hcm0tc21tdS12My9hcm0tc21tdS12My5oDQpAQCAtNjM2LDYgKzYzNiw4
IEBAIHN0cnVjdCBhcm1fc21tdV9kZXZpY2Ugew0KIA0KIAkvKiBJT01NVSBjb3JlIGNvZGUgaGFu
ZGxlICovDQogCXN0cnVjdCBpb21tdV9kZXZpY2UJCWlvbW11Ow0KKw0KKwlzdHJ1Y3QgbGlzdF9o
ZWFkCQlybXJfbGlzdDsNCiB9Ow0KIA0KIC8qIFNNTVUgcHJpdmF0ZSBkYXRhIGZvciBlYWNoIG1h
c3RlciAqLw0KLS0gDQoyLjE3LjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkRldmVsIG1haWxpbmcgbGlzdCAtLSBkZXZlbEBhY3BpY2Eub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gZGV2ZWwtbGVhdmVAYWNwaWNhLm9yZwolKHdlYl9w
YWdlX3VybClzbGlzdGluZm8lKGNnaWV4dClzLyUoX2ludGVybmFsX25hbWUpcw==
