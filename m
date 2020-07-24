Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA3422CB0C
	for <lists+devel-acpica@lfdr.de>; Fri, 24 Jul 2020 18:29:21 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 384B5124CD1E2;
	Fri, 24 Jul 2020 09:29:20 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C8281124B6CDD
	for <devel@acpica.org>; Fri, 24 Jul 2020 09:29:18 -0700 (PDT)
IronPort-SDR: fZnoFEWJzV2w6O2JDODnkwY30qusdBmpDmAd+yMmxmjtctcyZTk0iuyLeRymg2pO65axby77Zo
 HU/c8IXx7Upw==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="138795268"
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800";
   d="scan'208";a="138795268"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jul 2020 09:29:17 -0700
IronPort-SDR: sG3HMKz/l6nrh9NiKBfR312kXkYWAcAZ6ZBVO+mmyAMbvAXjw50akAX0tspA3Y+T4oSpKu5abS
 FG0KcxAPSpGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800";
   d="scan'208";a="272622695"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
  by fmsmga008.fm.intel.com with ESMTP; 24 Jul 2020 09:29:17 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 09:29:16 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 09:29:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 09:29:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C5u+8b7525iYNuIRb2o9MMsRkVVp8R1O0cFRRBi1caH5+iZMa+GzB8frAblBcRjtWGtDBBO1TjqO/BRhe4tq1X5LEa0diRqk85StEr9Y92LRWVGQCzo219BgrdLbJIcELHq2Bjxptnbi+URzsMoi+q5+Mdr8mA0vF3svdYpPxGEhfyWt7RKoSsYF6ilTLGS4Or6/l/kfNCZWnXZa5OPcxodMT92S9VFqB5/tSHSybNGYrZMoz3m6ZgGzwar9VwdsGPzrntixQjBAW75ldOvF/ZM9pa6ZTQAk+h1+GPkM4Zt5PSwEu5TEQBqxfLBH4+fBBXWKeH+g9/OEJXtDREsz9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ClhGZQfzEknTY3Xz+gWQcA4qmiN1qINZPZ3Vou3qNCw=;
 b=EBcp9DkGub1BdYRPWSbD9/0A0C3yod2yeh0KG35hjpQOW+Rrt/foroLiC9wju0qd13Yz5HdGrShJlIw5BbtyUb5wONfSjKjw440mLjRTKhbAh3FxZlb10hcKYxEVpZv8Dc/UjPN76GaaRw7s+T0jcbpemNJS+sURgK70deQtyHCDlxPUmrPzYE0CcVFX2E8GcJja/vlhHLI/LOs3d2DCckety2Ct0BkUnkcTCYWlXosXyI0TAjwTy5mVdUfmw2dPqa6c75XghstK/OQDRUHgGcb3+48Kvgnc0et8SxR0VLgiYiNvq0rnU6i6vhFzLEwn2AnJhFIZyDaCunE/3Myhmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ClhGZQfzEknTY3Xz+gWQcA4qmiN1qINZPZ3Vou3qNCw=;
 b=sHFiNN9qdwuTLtKY4+KP0z8kWtFd2r49s5dMFWpO2DNoxVi04hWRBn9vYnmyuaXW8yosYqVqRJ/7tLDqUHRtIlkZZB+CYnmiW/eiIMMPfyjiFazcWx9pJPP+YXmL/ZRAkN8cXlXMax4V7wbWiWIEdX1pybjlLvvuEIi2IwmUUa0=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB3400.namprd11.prod.outlook.com (2603:10b6:a03:1a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 16:29:14 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c%4]) with mapi id 15.20.3216.023; Fri, 24 Jul 2020
 16:29:14 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Garrit Franke <garritfranke@gmail.com>, "Wysocki, Rafael J"
	<rafael.j.wysocki@intel.com>, "lenb@kernel.org" <lenb@kernel.org>,
	"trivial@kernel.org" <trivial@kernel.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>,
	"kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Thread-Topic: [PATCH] trivial: acpi: replace some bitshifts with BIT macro
Thread-Index: AQHWYdZ+JdA88oPRJEuxGV8RX7TGgakW62Cg
Date: Fri, 24 Jul 2020 16:29:14 +0000
Message-ID: <BYAPR11MB325604ACC5F3BCCEB89A58AA87770@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <alpine.DEB.2.21.2007241814450.2834@hadrien>
 <20200724162050.18077-2-garritfranke@gmail.com>
In-Reply-To: <20200724162050.18077-2-garritfranke@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfcd87c2-ab38-4d5b-cb53-08d82feeb442
x-ms-traffictypediagnostic: BYAPR11MB3400:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3400021A147BC7733C51556C87770@BYAPR11MB3400.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M8mP7bQA3D6NT246BLHrPyHUJoKE8g2EIRjn+ECodpC8G05cBBzwTJ0r4AVKJ+yN6Fk0kq0ZbkHW2lhcYk1cJy0RlLp/OddseYmKomodX4urwpo1v7DLhVwN6kh6swcbITw1iGk4g0Ylk/iPMYIKS52rN+ssBHSlsbI198T3nJyJ8sC8FugDTVDqKThE2c4ax2piJj/eBOfT9PWl2QAl8qy2Z/Kmji8DJh3LHvIcPsCzXGs3/najkkDUvSn+J/4bYdjBgoVztfb9ohgmJ7CHHorgWzsPu77kAfIZM0IAalzIO89JN/k8mfk1K9bI9aEU
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(366004)(346002)(396003)(136003)(39860400002)(186003)(26005)(83380400001)(7696005)(110136005)(53546011)(6506007)(478600001)(2906002)(52536014)(316002)(5660300002)(8936002)(66556008)(66476007)(64756008)(66946007)(66446008)(76116006)(8676002)(33656002)(71200400001)(86362001)(55016002)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: m6MDckNa0heibQ3It+twfjHhjjFZGdoVVvhPztUAns2BDpJus/R1/NNDOK+InooAAyB8wkUpNeRsbe6p1cLr4jPH9AY7w3seZLQNFdz5/FOi3hy27XgOQy3lzn2PU/C0AshoD3s5yzAbMPCxFi/JpOMZz+2nWBAhun99PIjpk0liYTs8aJVAh/I2oASxPlr0j9kiK8GWoAHWVn89jJVqhYx3kuZZ2tpaVIPJr/PFVd0PSmWIZxQMqjCuaHybuTXBEdN0PNh/89fl6CtdQ7EwJjnYS9yIX4bJkAPeq0MMaQ4cBSAVFOGQuWWqknvmXVQlVUUD4z2xkpmdEtRXVlNUJHhHWKLU82XDfGPA8WBh9bZdKGsswp2TFEFifk9j/Ilsudy1y3a+EQV0s5ov7/CdZbdOXeXOFZyNJcy+Sds54Yrkpzc9yS4I9KlZLJP8ju0CuM0fvIC1NIrCVIErwKHTsbIJ7mtB+PXHQerX2Tk1KTBrO06hrfR76Ovihn0swvky
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfcd87c2-ab38-4d5b-cb53-08d82feeb442
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 16:29:14.5203
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7bx0Ot9Gnmanv3ybJBGO5sspUn+Lm72d1kGVXtcDLuAgbc5OpsPDLenM3HqCb1eISKMlY2sJMqcopNalg8KmlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3400
X-OriginatorOrg: intel.com
Message-ID-Hash: 544P4O7G5REZ4DOEU7BVJHEFTASJO3HV
X-Message-ID-Hash: 544P4O7G5REZ4DOEU7BVJHEFTASJO3HV
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] trivial: acpi: replace some bitshifts with BIT macro
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/544P4O7G5REZ4DOEU7BVJHEFTASJO3HV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

Where is "BIT" defined?


-----Original Message-----
From: Garrit Franke <garritfranke@gmail.com> 
Sent: Friday, July 24, 2020 9:21 AM
To: Moore, Robert <robert.moore@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; lenb@kernel.org; trivial@kernel.org; linux-acpi@vger.kernel.org; devel@acpica.org; kernel-janitors@vger.kernel.org
Cc: Garrit Franke <garritfranke@gmail.com>
Subject: [PATCH] trivial: acpi: replace some bitshifts with BIT macro

Signed-off-by: Garrit Franke <garritfranke@gmail.com>
---
 drivers/acpi/acpica/exfldio.c   | 2 +-
 drivers/acpi/acpica/utownerid.c | 6 +++---
 drivers/acpi/bus.c              | 2 +-
 drivers/acpi/sleep.c            | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c index ade35ff1c7..92fc702456 100644
--- a/drivers/acpi/acpica/exfldio.c
+++ b/drivers/acpi/acpica/exfldio.c
@@ -298,7 +298,7 @@ acpi_ex_register_overflow(union acpi_operand_object *obj_desc, u64 value)
 		return (FALSE);
 	}
 
-	if (value >= ((u64) 1 << obj_desc->common_field.bit_length)) {
+	if (value >= ((u64) BIT(obj_desc->common_field.bit_length))) {
 		/*
 		 * The Value is larger than the maximum value that can fit into
 		 * the register.
diff --git a/drivers/acpi/acpica/utownerid.c b/drivers/acpi/acpica/utownerid.c index d3525ef8ed..c4e2db2f54 100644
--- a/drivers/acpi/acpica/utownerid.c
+++ b/drivers/acpi/acpica/utownerid.c
@@ -74,13 +74,13 @@ acpi_status acpi_ut_allocate_owner_id(acpi_owner_id *owner_id)
 			 * int. Some compilers or runtime error detection may flag this as
 			 * an error.
 			 */
-			if (!(acpi_gbl_owner_id_mask[j] & ((u32)1 << k))) {
+			if (!(acpi_gbl_owner_id_mask[j] & (u32)BIT(k))) {
 				/*
 				 * Found a free ID. The actual ID is the bit index plus one,
 				 * making zero an invalid Owner ID. Save this as the last ID
 				 * allocated and update the global ID mask.
 				 */
-				acpi_gbl_owner_id_mask[j] |= ((u32)1 << k);
+				acpi_gbl_owner_id_mask[j] |= (u32)BIT(k);
 
 				acpi_gbl_last_owner_id_index = (u8)j;
 				acpi_gbl_next_owner_id_offset = (u8)(k + 1); @@ -171,7 +171,7 @@ void acpi_ut_release_owner_id(acpi_owner_id *owner_id_ptr)
 	/* Decode ID to index/offset pair */
 
 	index = ACPI_DIV_32(owner_id);
-	bit = (u32)1 << ACPI_MOD_32(owner_id);
+	bit = (u32)BIT(ACPI_MOD_32(owner_id));
 
 	/* Free the owner ID only if it is valid */
 
diff --git a/drivers/acpi/bus.c b/drivers/acpi/bus.c index 54002670cb..39ead80c45 100644
--- a/drivers/acpi/bus.c
+++ b/drivers/acpi/bus.c
@@ -233,7 +233,7 @@ acpi_status acpi_run_osc(acpi_handle handle, struct acpi_osc_context *context)
 		goto out_kfree;
 	}
 	/* Need to ignore the bit0 in result code */
-	errors = *((u32 *)out_obj->buffer.pointer) & ~(1 << 0);
+	errors = *((u32 *)out_obj->buffer.pointer) & BIT(0);
 	if (errors) {
 		if (errors & OSC_REQUEST_ERROR)
 			acpi_print_osc_error(handle, context, diff --git a/drivers/acpi/sleep.c b/drivers/acpi/sleep.c index aff13bf4d9..38f5210313 100644
--- a/drivers/acpi/sleep.c
+++ b/drivers/acpi/sleep.c
@@ -880,7 +880,7 @@ static void acpi_sleep_run_lps0_dsm(unsigned int func)  {
 	union acpi_object *out_obj;
 
-	if (!(lps0_dsm_func_mask & (1 << func)))
+	if (!(lps0_dsm_func_mask & BIT(func)))
 		return;
 
 	out_obj = acpi_evaluate_dsm(lps0_device_handle, &lps0_dsm_guid, 1, func, NULL);
--
2.25.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
