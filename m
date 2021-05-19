Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46070389856
	for <lists+devel-acpica@lfdr.de>; Wed, 19 May 2021 23:03:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EB9C7100EBB6A;
	Wed, 19 May 2021 14:03:21 -0700 (PDT)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.142.5.84; helo=fgw23-7.mail.saunalahti.fi; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from fgw23-7.mail.saunalahti.fi (fgw23-7.mail.saunalahti.fi [62.142.5.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5E90E100EF264
	for <devel@acpica.org>; Wed, 19 May 2021 14:03:17 -0700 (PDT)
Received: from localhost (88-115-248-186.elisa-laajakaista.fi [88.115.248.186])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id a0466097-b8e5-11eb-8ccd-005056bdfda7;
	Thu, 20 May 2021 00:03:15 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Daniel Scally <djrscally@gmail.com>,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devel@acpica.org
Date: Thu, 20 May 2021 00:02:53 +0300
Message-Id: <20210519210253.3578025-1-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Message-ID-Hash: CGMI4DWQ2YMJLLXYWI32SCYSKW2AGU6X
X-Message-ID-Hash: CGMI4DWQ2YMJLLXYWI32SCYSKW2AGU6X
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v1 1/1] ACPI: utils: Fix reference counting in for_each_acpi_dev_match()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CGMI4DWQ2YMJLLXYWI32SCYSKW2AGU6X/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Currently it's possible to iterate over the dangling pointer in case the device
suddenly disappears. This may happen becase callers put it at the end of a loop.

Instead, let's move that call inside acpi_dev_get_next_match_dev().

Fixes: 803abec64ef9 ("media: ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver")
Fixes: bf263f64e804 ("media: ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro")
Cc: Daniel Scally <djrscally@gmail.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
 drivers/acpi/utils.c                       | 5 +----
 drivers/media/pci/intel/ipu3/cio2-bridge.c | 8 +++-----
 include/acpi/acpi_bus.h                    | 5 -----
 3 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
index 3b54b8fd7396..ccfc484dbffd 100644
--- a/drivers/acpi/utils.c
+++ b/drivers/acpi/utils.c
@@ -846,10 +846,6 @@ EXPORT_SYMBOL(acpi_dev_present);
  * Return the next match of ACPI device if another matching device was present
  * at the moment of invocation, or NULL otherwise.
  *
- * FIXME: The function does not tolerate the sudden disappearance of @adev, e.g.
- * in the case of a hotplug event. That said, the caller should ensure that
- * this will never happen.
- *
  * The caller is responsible for invoking acpi_dev_put() on the returned device.
  *
  * See additional information in acpi_dev_present() as well.
@@ -866,6 +862,7 @@ acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const cha
 	match.hrv = hrv;
 
 	dev = bus_find_device(&acpi_bus_type, start, &match, acpi_dev_match_cb);
+	acpi_dev_put(adev);
 	return dev ? to_acpi_device(dev) : NULL;
 }
 EXPORT_SYMBOL(acpi_dev_get_next_match_dev);
diff --git a/drivers/media/pci/intel/ipu3/cio2-bridge.c b/drivers/media/pci/intel/ipu3/cio2-bridge.c
index e8511787c1e4..477417261b6e 100644
--- a/drivers/media/pci/intel/ipu3/cio2-bridge.c
+++ b/drivers/media/pci/intel/ipu3/cio2-bridge.c
@@ -178,13 +178,11 @@ static int cio2_bridge_connect_sensor(const struct cio2_sensor_config *cfg,
 
 		if (bridge->n_sensors >= CIO2_NUM_PORTS) {
 			dev_err(&cio2->dev, "Exceeded available CIO2 ports\n");
-			cio2_bridge_unregister_sensors(bridge);
 			ret = -EINVAL;
-			goto err_out;
+			goto err_put_adev;
 		}
 
 		sensor = &bridge->sensors[bridge->n_sensors];
-		sensor->adev = adev;
 		strscpy(sensor->name, cfg->hid, sizeof(sensor->name));
 
 		ret = cio2_bridge_read_acpi_buffer(adev, "SSDB",
@@ -214,6 +212,7 @@ static int cio2_bridge_connect_sensor(const struct cio2_sensor_config *cfg,
 			goto err_free_swnodes;
 		}
 
+		sensor->adev = acpi_dev_get(adev);
 		adev->fwnode.secondary = fwnode;
 
 		dev_info(&cio2->dev, "Found supported sensor %s\n",
@@ -227,8 +226,7 @@ static int cio2_bridge_connect_sensor(const struct cio2_sensor_config *cfg,
 err_free_swnodes:
 	software_node_unregister_nodes(sensor->swnodes);
 err_put_adev:
-	acpi_dev_put(sensor->adev);
-err_out:
+	acpi_dev_put(adev);
 	return ret;
 }
 
diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
index 3a82faac5767..bff6a11bb21f 100644
--- a/include/acpi/acpi_bus.h
+++ b/include/acpi/acpi_bus.h
@@ -698,11 +698,6 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
  * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
  *
  * The caller is responsible for invoking acpi_dev_put() on the returned device.
- *
- * FIXME: Due to above requirement there is a window that may invalidate @adev
- * and next iteration will use a dangling pointer, e.g. in the case of a
- * hotplug event. That said, the caller should ensure that this will never
- * happen.
  */
 #define for_each_acpi_dev_match(adev, hid, uid, hrv)			\
 	for (adev = acpi_dev_get_first_match_dev(hid, uid, hrv);	\
-- 
2.31.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
