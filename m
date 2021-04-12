Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C125135D3DD
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Apr 2021 01:21:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 929F8100EBB81;
	Mon, 12 Apr 2021 16:21:05 -0700 (PDT)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.142.5.83; helo=fgw22-7.mail.saunalahti.fi; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi [62.142.5.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 63346100EBB80
	for <devel@acpica.org>; Mon, 12 Apr 2021 16:21:03 -0700 (PDT)
Received: from localhost (88-115-248-186.elisa-laajakaista.fi [88.115.248.186])
	by fgw22.mail.saunalahti.fi (Halon) with ESMTP
	id be0ecccb-9be5-11eb-88cb-005056bdf889;
	Tue, 13 Apr 2021 02:21:00 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devel@acpica.org
Date: Tue, 13 Apr 2021 02:20:52 +0300
Message-Id: <20210412232052.2162107-2-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412232052.2162107-1-andy.shevchenko@gmail.com>
References: <20210412232052.2162107-1-andy.shevchenko@gmail.com>
MIME-Version: 1.0
Message-ID-Hash: ZSVPVN5BFAHFKYYSU34QP3NSCMWKDFOQ
X-Message-ID-Hash: ZSVPVN5BFAHFKYYSU34QP3NSCMWKDFOQ
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v2 2/2] ACPI: utils: Capitalize abbreviations in the comments
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZSVPVN5BFAHFKYYSU34QP3NSCMWKDFOQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The DSDT and ACPI should be capitalized.

Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
v2: split from patch 1 as per Rafael's request
 drivers/acpi/utils.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
index 60e46efc1bc8..3b54b8fd7396 100644
--- a/drivers/acpi/utils.c
+++ b/drivers/acpi/utils.c
@@ -811,7 +811,7 @@ static int acpi_dev_match_cb(struct device *dev, const void *data)
  * Note that if the device is pluggable, it may since have disappeared.
  *
  * Note that unlike acpi_dev_found() this function checks the status
- * of the device. So for devices which are present in the dsdt, but
+ * of the device. So for devices which are present in the DSDT, but
  * which are disabled (their _STA callback returns 0) this function
  * will return false.
  *
@@ -838,7 +838,7 @@ EXPORT_SYMBOL(acpi_dev_present);
 
 /**
  * acpi_dev_get_next_match_dev - Return the next match of ACPI device
- * @adev: Pointer to the previous acpi_device matching this @hid, @uid and @hrv
+ * @adev: Pointer to the previous ACPI device matching this @hid, @uid and @hrv
  * @hid: Hardware ID of the device.
  * @uid: Unique ID of the device, pass NULL to not check _UID
  * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
-- 
2.31.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
