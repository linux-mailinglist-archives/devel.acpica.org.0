Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C32A2B9236
	for <lists+devel-acpica@lfdr.de>; Thu, 19 Nov 2020 13:13:24 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CEC9E100EBB96;
	Thu, 19 Nov 2020 04:13:22 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.35; helo=szxga07-in.huawei.com; envelope-from=shameerali.kolothum.thodi@huawei.com; receiver=<UNKNOWN> 
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5073F100EBB96
	for <devel@acpica.org>; Thu, 19 Nov 2020 04:13:19 -0800 (PST)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CcJV528Nrz70BV;
	Thu, 19 Nov 2020 20:13:01 +0800 (CST)
Received: from S00345302A-PC.china.huawei.com (10.210.168.73) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 19 Nov 2020 20:13:09 +0800
From: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-acpi@vger.kernel.org>,
	<iommu@lists.linux-foundation.org>, <devel@acpica.org>
Date: Thu, 19 Nov 2020 12:11:50 +0000
Message-ID: <20201119121150.3316-9-shameerali.kolothum.thodi@huawei.com>
X-Mailer: git-send-email 2.12.0.windows.1
In-Reply-To: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
References: <20201119121150.3316-1-shameerali.kolothum.thodi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.210.168.73]
X-CFilter-Loop: Reflected
Message-ID-Hash: EONUSBOZSTPTF5TQRIJ3X2QRJUSMFVVM
X-Message-ID-Hash: EONUSBOZSTPTF5TQRIJ3X2QRJUSMFVVM
X-MailFrom: shameerali.kolothum.thodi@huawei.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org, robin.murphy@arm.com, wanghuiqiang@huawei.com, jonathan.cameron@huawei.com, steven.price@arm.com, Sami.Mujawar@arm.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel]  [RFC PATCH v2 8/8] =?utf-8?q?iommu/arm-smmu-v3=3A_Reserve_any_RMR_regions_associated_with_a=C2=A0dev?=
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EONUSBOZSTPTF5TQRIJ3X2QRJUSMFVVM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R2V0IFJNUiByZWdpb25zIGFzc29jaWF0ZWQgd2l0aCBhIGRldsKgcmVzZXJ2ZWQgc28gdGhhdCB0
aGVyZSBpcw0KYSB1bml0eSBtYXBwaW5nIGZvciB0aGVtIGluwqBTTU1VLg0KDQpTaWduZWQtb2Zm
LWJ5OiBTaGFtZWVyIEtvbG90aHVtIDxzaGFtZWVyYWxpLmtvbG90aHVtLnRob2RpQGh1YXdlaS5j
b20+DQotLS0NCiBkcml2ZXJzL2lvbW11L2FybS9hcm0tc21tdS12My9hcm0tc21tdS12My5jIHwg
MzggKysrKysrKysrKysrKysrKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMo
KykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtL2FybS1zbW11LXYzL2FybS1zbW11
LXYzLmMgYi9kcml2ZXJzL2lvbW11L2FybS9hcm0tc21tdS12My9hcm0tc21tdS12My5jDQppbmRl
eCA5N2RmMWRmMDAxYzkuLjE3NGE5YmNmZDYyNyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvaW9tbXUv
YXJtL2FybS1zbW11LXYzL2FybS1zbW11LXYzLmMNCisrKyBiL2RyaXZlcnMvaW9tbXUvYXJtL2Fy
bS1zbW11LXYzL2FybS1zbW11LXYzLmMNCkBAIC0yNDkyLDYgKzI0OTIsNDMgQEAgc3RhdGljIGlu
dCBhcm1fc21tdV9vZl94bGF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBvZl9waGFuZGxl
X2FyZ3MgKmFyZ3MpDQogCXJldHVybiBpb21tdV9md3NwZWNfYWRkX2lkcyhkZXYsIGFyZ3MtPmFy
Z3MsIDEpOw0KIH0NCiANCitzdGF0aWMgYm9vbCBhcm1fc21tdV9kZXZfaGFzX3JtcihzdHJ1Y3Qg
YXJtX3NtbXVfbWFzdGVyICptYXN0ZXIsDQorCQkJCSBzdHJ1Y3QgaW9tbXVfcm1yICplKQ0KK3sN
CisJaW50IGksIGo7DQorDQorCWZvciAoaSA9IDA7IGkgPCBtYXN0ZXItPm51bV9zaWRzOyBpKysp
IHsNCisJCWZvciAoaiA9IDA7IGogPCBlLT5udW1faWRzOyBqKyspIHsNCisJCQlpZiAoZS0+aWRz
W2pdID09IG1hc3Rlci0+c2lkc1tpXSkNCisJCQkJcmV0dXJuIHRydWU7DQorCQl9DQorCX0NCisN
CisJcmV0dXJuIGZhbHNlOw0KK30NCisNCitzdGF0aWMgdm9pZCBhcm1fc21tdV9ybXJfZ2V0X3Jl
c3ZfcmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpkZXYsDQorCQkJCQkgIHN0cnVjdCBsaXN0X2hlYWQg
KmhlYWQpDQorew0KKwlzdHJ1Y3QgYXJtX3NtbXVfbWFzdGVyICptYXN0ZXIgPSBkZXZfaW9tbXVf
cHJpdl9nZXQoZGV2KTsNCisJc3RydWN0IGFybV9zbW11X2RldmljZSAqc21tdSA9IG1hc3Rlci0+
c21tdTsNCisJc3RydWN0IGlvbW11X3JtciAqcm1yOw0KKw0KKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
KHJtciwgJnNtbXUtPnJtcl9saXN0LCBsaXN0KSB7DQorCQlzdHJ1Y3QgaW9tbXVfcmVzdl9yZWdp
b24gKnJlZ2lvbjsNCisJCWludCBwcm90ID0gSU9NTVVfUkVBRCB8IElPTU1VX1dSSVRFIHwgSU9N
TVVfTk9FWEVDIHwgSU9NTVVfTU1JTzsNCisNCisJCWlmICghYXJtX3NtbXVfZGV2X2hhc19ybXIo
bWFzdGVyLCBybXIpKQ0KKwkJCWNvbnRpbnVlOw0KKwkJcmVnaW9uID0gaW9tbXVfYWxsb2NfcmVz
dl9yZWdpb24ocm1yLT5iYXNlX2FkZHJlc3MsDQorCQkJCQkJIHJtci0+bGVuZ3RoLCBwcm90LA0K
KwkJCQkJCSBJT01NVV9SRVNWX0RJUkVDVCk7DQorCQlpZiAoIXJlZ2lvbikNCisJCQlyZXR1cm47
DQorDQorCQlsaXN0X2FkZF90YWlsKCZyZWdpb24tPmxpc3QsIGhlYWQpOw0KKwl9DQorfQ0KIHN0
YXRpYyB2b2lkIGFybV9zbW11X2dldF9yZXN2X3JlZ2lvbnMoc3RydWN0IGRldmljZSAqZGV2LA0K
IAkJCQkgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICpoZWFkKQ0KIHsNCkBAIC0yNTA2LDYgKzI1NDMs
NyBAQCBzdGF0aWMgdm9pZCBhcm1fc21tdV9nZXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2Ug
KmRldiwNCiAJbGlzdF9hZGRfdGFpbCgmcmVnaW9uLT5saXN0LCBoZWFkKTsNCiANCiAJaW9tbXVf
ZG1hX2dldF9yZXN2X3JlZ2lvbnMoZGV2LCBoZWFkKTsNCisJYXJtX3NtbXVfcm1yX2dldF9yZXN2
X3JlZ2lvbnMoZGV2LCBoZWFkKTsNCiB9DQogDQogc3RhdGljIGJvb2wgYXJtX3NtbXVfZGV2X2hh
c19mZWF0dXJlKHN0cnVjdCBkZXZpY2UgKmRldiwNCi0tIA0KMi4xNy4xDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpEZXZlbCBtYWlsaW5nIGxpc3QgLS0g
ZGV2ZWxAYWNwaWNhLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGRldmVsLWxl
YXZlQGFjcGljYS5vcmcKJSh3ZWJfcGFnZV91cmwpc2xpc3RpbmZvJShjZ2lleHQpcy8lKF9pbnRl
cm5hbF9uYW1lKXM=
