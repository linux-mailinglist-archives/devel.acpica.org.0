Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6A8107A34
	for <lists+devel-acpica@lfdr.de>; Fri, 22 Nov 2019 22:49:11 +0100 (CET)
Received: from ml01.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EFE61100DC3F0;
	Fri, 22 Nov 2019 13:52:31 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0EE75100DC418
	for <devel@acpica.org>; Fri, 22 Nov 2019 13:52:29 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Nov 2019 13:49:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600";
   d="scan'208";a="219591918"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
  by orsmga002.jf.intel.com with ESMTP; 22 Nov 2019 13:49:06 -0800
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 Nov 2019 13:49:05 -0800
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.52]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.11]) with mapi id 14.03.0439.000;
 Fri, 22 Nov 2019 13:49:05 -0800
From: "Moore, Robert" <robert.moore@intel.com>
To: zhengbin <zhengbin13@huawei.com>, "Schmauss, Erik"
	<erik.schmauss@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	"lenb@kernel.org" <lenb@kernel.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
Thread-Topic: [PATCH] ACPICA: Use ARRAY_SIZE for
 'fadt_info_table','fadt_pm_info_table'
Thread-Index: AQHVoRboulD/DOKym0m5GPkUUMHHlKeXuvow
Date: Fri, 22 Nov 2019 21:49:05 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96B1A5A@ORSMSX110.amr.corp.intel.com>
References: <1574415183-19322-1-git-send-email-zhengbin13@huawei.com>
In-Reply-To: <1574415183-19322-1-git-send-email-zhengbin13@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDEzM2NmMTUtMDFjMy00NDQ3LWI5YzgtYzU2ZGZjMWY3YTVlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidXhvXC9jYk9zUDd5ZmhXeEpIYm9nRXNCdW5rQkh1UWNRWU1uemRWa3Zxd1hERWJhRDZ3cWt0THByVWN5Q1NVSTQifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: MNK5567C6XDPR474VEHIPSBNHJMLKFF2
X-Message-ID-Hash: MNK5567C6XDPR474VEHIPSBNHJMLKFF2
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Use ARRAY_SIZE for 'fadt_info_table','fadt_pm_info_table'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MNK5567C6XDPR474VEHIPSBNHJMLKFF2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

Where does "ARRAY_SIZE" come from? It's not a part of ACPICA.
Bob


-----Original Message-----
From: zhengbin <zhengbin13@huawei.com> 
Sent: Friday, November 22, 2019 1:33 AM
To: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; lenb@kernel.org; linux-acpi@vger.kernel.org; devel@acpica.org
Cc: zhengbin13@huawei.com
Subject: [PATCH] ACPICA: Use ARRAY_SIZE for 'fadt_info_table','fadt_pm_info_table'

Fixes coccicheck warning:

drivers/acpi/acpica/tbfadt.c:107:27-28: WARNING: Use ARRAY_SIZE
drivers/acpi/acpica/tbfadt.c:137:30-31: WARNING: Use ARRAY_SIZE

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/acpi/acpica/tbfadt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/acpica/tbfadt.c b/drivers/acpi/acpica/tbfadt.c index 0041bfb..324a804 100644
--- a/drivers/acpi/acpica/tbfadt.c
+++ b/drivers/acpi/acpica/tbfadt.c
@@ -103,8 +103,7 @@ static struct acpi_fadt_info fadt_info_table[] = {
 	 ACPI_FADT_SEPARATE_LENGTH | ACPI_FADT_GPE_REGISTER}  };

-#define ACPI_FADT_INFO_ENTRIES \
-			(sizeof (fadt_info_table) / sizeof (struct acpi_fadt_info))
+#define ACPI_FADT_INFO_ENTRIES (ARRAY_SIZE(fadt_info_table))

 /* Table used to split Event Blocks into separate status/enable registers */

@@ -133,8 +132,7 @@ static struct acpi_fadt_pm_info fadt_pm_info_table[] = {
 	 1}
 };

-#define ACPI_FADT_PM_INFO_ENTRIES \
-			(sizeof (fadt_pm_info_table) / sizeof (struct acpi_fadt_pm_info))
+#define ACPI_FADT_PM_INFO_ENTRIES (ARRAY_SIZE(fadt_pm_info_table))

 /*******************************************************************************
  *
--
2.7.4
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
