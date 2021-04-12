Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4625435D301
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Apr 2021 00:24:10 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E45B7100EBB8C;
	Mon, 12 Apr 2021 15:24:08 -0700 (PDT)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.142.5.81; helo=fgw20-7.mail.saunalahti.fi; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi [62.142.5.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 83968100EC1E3
	for <devel@acpica.org>; Mon, 12 Apr 2021 15:24:06 -0700 (PDT)
Received: from localhost (88-115-248-186.elisa-laajakaista.fi [88.115.248.186])
	by fgw20.mail.saunalahti.fi (Halon) with ESMTP
	id c7be06e0-9bdd-11eb-ba24-005056bd6ce9;
	Tue, 13 Apr 2021 01:24:01 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devel@acpica.org
Date: Tue, 13 Apr 2021 01:23:58 +0300
Message-Id: <20210412222358.2078782-1-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Message-ID-Hash: 764ODUJX2OQU3XTCVFTXBP4UJ7H7WXRD
X-Message-ID-Hash: 764ODUJX2OQU3XTCVFTXBP4UJ7H7WXRD
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v2 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/764ODUJX2OQU3XTCVFTXBP4UJ7H7WXRD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Introduce acpi_dev_get() to have a symmetrical API with acpi_dev_put()
and reuse both in ACPI code under drivers/acpi folder.

While at it, use acpi_bus_put_acpi_device() in one place rather than above.

Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
v2: made acpi_dev_get() to return pointer as get_device() does (Rafael)
 drivers/acpi/device_sysfs.c | 4 ++--
 drivers/acpi/glue.c         | 8 ++++----
 drivers/acpi/scan.c         | 9 ++++-----
 include/acpi/acpi_bus.h     | 5 +++++
 4 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/acpi/device_sysfs.c b/drivers/acpi/device_sysfs.c
index a07d4ade5835..fa2c1c93072c 100644
--- a/drivers/acpi/device_sysfs.c
+++ b/drivers/acpi/device_sysfs.c
@@ -377,12 +377,12 @@ eject_store(struct device *d, struct device_attribute *attr,
 	if (ACPI_FAILURE(status) || !acpi_device->flags.ejectable)
 		return -ENODEV;
 
-	get_device(&acpi_device->dev);
+	acpi_dev_get(acpi_device);
 	status = acpi_hotplug_schedule(acpi_device, ACPI_OST_EC_OSPM_EJECT);
 	if (ACPI_SUCCESS(status))
 		return count;
 
-	put_device(&acpi_device->dev);
+	acpi_dev_put(acpi_device);
 	acpi_evaluate_ost(acpi_device->handle, ACPI_OST_EC_OSPM_EJECT,
 			  ACPI_OST_SC_NON_SPECIFIC_FAILURE, NULL);
 	return status == AE_NO_MEMORY ? -ENOMEM : -EAGAIN;
diff --git a/drivers/acpi/glue.c b/drivers/acpi/glue.c
index 36b24b0658cb..0715e3be99a0 100644
--- a/drivers/acpi/glue.c
+++ b/drivers/acpi/glue.c
@@ -190,7 +190,7 @@ int acpi_bind_one(struct device *dev, struct acpi_device *acpi_dev)
 	if (!acpi_dev)
 		return -EINVAL;
 
-	get_device(&acpi_dev->dev);
+	acpi_dev_get(acpi_dev);
 	get_device(dev);
 	physical_node = kzalloc(sizeof(*physical_node), GFP_KERNEL);
 	if (!physical_node) {
@@ -217,7 +217,7 @@ int acpi_bind_one(struct device *dev, struct acpi_device *acpi_dev)
 				goto err;
 
 			put_device(dev);
-			put_device(&acpi_dev->dev);
+			acpi_dev_put(acpi_dev);
 			return 0;
 		}
 		if (pn->node_id == node_id) {
@@ -257,7 +257,7 @@ int acpi_bind_one(struct device *dev, struct acpi_device *acpi_dev)
  err:
 	ACPI_COMPANION_SET(dev, NULL);
 	put_device(dev);
-	put_device(&acpi_dev->dev);
+	acpi_dev_put(acpi_dev);
 	return retval;
 }
 EXPORT_SYMBOL_GPL(acpi_bind_one);
@@ -285,7 +285,7 @@ int acpi_unbind_one(struct device *dev)
 			ACPI_COMPANION_SET(dev, NULL);
 			/* Drop references taken by acpi_bind_one(). */
 			put_device(dev);
-			put_device(&acpi_dev->dev);
+			acpi_dev_put(acpi_dev);
 			kfree(entry);
 			break;
 		}
diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
index d9e024fc6e70..bc973fbd70b2 100644
--- a/drivers/acpi/scan.c
+++ b/drivers/acpi/scan.c
@@ -530,7 +530,7 @@ static void acpi_device_del_work_fn(struct work_struct *work_not_used)
 		 * used by the device.
 		 */
 		acpi_power_transition(adev, ACPI_STATE_D3_COLD);
-		put_device(&adev->dev);
+		acpi_dev_put(adev);
 	}
 }
 
@@ -604,8 +604,7 @@ EXPORT_SYMBOL(acpi_bus_get_device);
 
 static void get_acpi_device(void *dev)
 {
-	if (dev)
-		get_device(&((struct acpi_device *)dev)->dev);
+	acpi_dev_get(dev);
 }
 
 struct acpi_device *acpi_bus_get_acpi_device(acpi_handle handle)
@@ -615,7 +614,7 @@ struct acpi_device *acpi_bus_get_acpi_device(acpi_handle handle)
 
 void acpi_bus_put_acpi_device(struct acpi_device *adev)
 {
-	put_device(&adev->dev);
+	acpi_dev_put(adev);
 }
 
 static struct acpi_device_bus_id *acpi_device_bus_id_match(const char *dev_id)
@@ -2355,7 +2354,7 @@ int __init acpi_scan_init(void)
 			acpi_detach_data(acpi_root->handle,
 					 acpi_scan_drop_device);
 			acpi_device_del(acpi_root);
-			put_device(&acpi_root->dev);
+			acpi_bus_put_acpi_device(acpi_root);
 			goto out;
 		}
 	}
diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
index d631cb52283e..d2f5afb04a0b 100644
--- a/include/acpi/acpi_bus.h
+++ b/include/acpi/acpi_bus.h
@@ -695,6 +695,11 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
 	     adev;							\
 	     adev = acpi_dev_get_next_match_dev(adev, hid, uid, hrv))
 
+static inline struct acpi_device *acpi_dev_get(struct acpi_device *adev)
+{
+	return adev ? to_acpi_device(get_device(&adev->dev)) : NULL;
+}
+
 static inline void acpi_dev_put(struct acpi_device *adev)
 {
 	put_device(&adev->dev);
-- 
2.31.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
