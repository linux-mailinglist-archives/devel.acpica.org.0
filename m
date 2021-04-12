Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C693635D3DC
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Apr 2021 01:21:01 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7BAF9100EC1E3;
	Mon, 12 Apr 2021 16:20:58 -0700 (PDT)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.142.5.81; helo=fgw20-7.mail.saunalahti.fi; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi [62.142.5.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 590C0100EF27E
	for <devel@acpica.org>; Mon, 12 Apr 2021 16:20:56 -0700 (PDT)
Received: from localhost (88-115-248-186.elisa-laajakaista.fi [88.115.248.186])
	by fgw20.mail.saunalahti.fi (Halon) with ESMTP
	id ba24dc43-9be5-11eb-ba24-005056bd6ce9;
	Tue, 13 Apr 2021 02:20:54 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devel@acpica.org
Date: Tue, 13 Apr 2021 02:20:51 +0300
Message-Id: <20210412232052.2162107-1-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Message-ID-Hash: 3ZRQIVFTSJAUEBXEPJVQRI5SG4NYHLOH
X-Message-ID-Hash: 3ZRQIVFTSJAUEBXEPJVQRI5SG4NYHLOH
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, Daniel Scally <djrscally@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v2 1/2] ACPI: utils: Document for_each_acpi_dev_match() macro
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3ZRQIVFTSJAUEBXEPJVQRI5SG4NYHLOH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The macro requires to call acpi_dev_put() on each iteration.
Due to this it doesn't tolerate sudden disappearence of the devices.

Document all these nuances to prevent users blindly call it without
understanding the possible issues.

While at it, add the note to the acpi_dev_get_next_match_dev() and
advertise acpi_dev_put() instead of put_device() in the whole family
of the helper functions.

Fixes: bf263f64e804 ("media: ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro")
Cc: Daniel Scally <djrscally@gmail.com>
Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
v2:
  fixed grammar (Rafael)
  split unrelated fixes to a separate fix (Rafael)
  Add FIXME (for now let's document and fix in the next cycle)

 drivers/acpi/utils.c    |  8 ++++++--
 include/acpi/acpi_bus.h | 14 ++++++++++++++
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
index 29080177cd83..60e46efc1bc8 100644
--- a/drivers/acpi/utils.c
+++ b/drivers/acpi/utils.c
@@ -846,7 +846,11 @@ EXPORT_SYMBOL(acpi_dev_present);
  * Return the next match of ACPI device if another matching device was present
  * at the moment of invocation, or NULL otherwise.
  *
- * The caller is responsible to call put_device() on the returned device.
+ * FIXME: The function does not tolerate the sudden disappearance of @adev, e.g.
+ * in the case of a hotplug event. That said, the caller should ensure that
+ * this will never happen.
+ *
+ * The caller is responsible for invoking acpi_dev_put() on the returned device.
  *
  * See additional information in acpi_dev_present() as well.
  */
@@ -875,7 +879,7 @@ EXPORT_SYMBOL(acpi_dev_get_next_match_dev);
  * Return the first match of ACPI device if a matching device was present
  * at the moment of invocation, or NULL otherwise.
  *
- * The caller is responsible to call put_device() on the returned device.
+ * The caller is responsible for invoking acpi_dev_put() on the returned device.
  *
  * See additional information in acpi_dev_present() as well.
  */
diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
index d2f5afb04a0b..3a82faac5767 100644
--- a/include/acpi/acpi_bus.h
+++ b/include/acpi/acpi_bus.h
@@ -690,6 +690,20 @@ acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const cha
 struct acpi_device *
 acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
 
+/**
+ * for_each_acpi_dev_match - iterate over ACPI devices that matching the criteria
+ * @adev: pointer to the matching ACPI device, NULL at the end of the loop
+ * @hid: Hardware ID of the device.
+ * @uid: Unique ID of the device, pass NULL to not check _UID
+ * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
+ *
+ * The caller is responsible for invoking acpi_dev_put() on the returned device.
+ *
+ * FIXME: Due to above requirement there is a window that may invalidate @adev
+ * and next iteration will use a dangling pointer, e.g. in the case of a
+ * hotplug event. That said, the caller should ensure that this will never
+ * happen.
+ */
 #define for_each_acpi_dev_match(adev, hid, uid, hrv)			\
 	for (adev = acpi_dev_get_first_match_dev(hid, uid, hrv);	\
 	     adev;							\
-- 
2.31.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
