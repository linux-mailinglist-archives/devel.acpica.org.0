Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B51A8C46
	for <lists+devel-acpica@lfdr.de>; Tue, 14 Apr 2020 22:22:48 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A1F1110FD1F6B;
	Tue, 14 Apr 2020 13:23:20 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D559510FC546A
	for <devel@acpica.org>; Tue, 14 Apr 2020 13:23:17 -0700 (PDT)
IronPort-SDR: vVLWy/7c5NBTbkDa9ph2xfPfLA29bWqSyEPF9rwRkyKREZePVnke2thQQkuiUvU6DF8L5ynPNv
 LCd9BD4cxr1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 13:22:41 -0700
IronPort-SDR: V0+HOszgHeIq+0rekuUIV0Y5Q1Ykf6UNOYs4D2TW1H2VxAUm2gYsw9HXh0Xx3tblx45u/ZzrI5
 5d9Vclu4QyOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200";
   d="scan'208";a="245510622"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
  by fmsmga008.fm.intel.com with ESMTP; 14 Apr 2020 13:22:42 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 13:22:41 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.172]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.99]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 13:22:41 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Jason Yan <yanaijie@huawei.com>, "Kaneda, Erik" <erik.kaneda@intel.com>,
	"Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "lenb@kernel.org"
	<lenb@kernel.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
	"devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] ACPICA: Use ARRAY_SIZE instead of hardcoded siz
Thread-Index: AQHWEZysu7u4opIOMUyKgwd1vmqkR6h5D5pA
Date: Tue, 14 Apr 2020 20:22:40 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3C68A849E@ORSMSX108.amr.corp.intel.com>
References: <20200413143156.22633-1-yanaijie@huawei.com>
In-Reply-To: <20200413143156.22633-1-yanaijie@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: JODBHUS3PDPNAZR5AEXPMRXED4RL3AUA
X-Message-ID-Hash: JODBHUS3PDPNAZR5AEXPMRXED4RL3AUA
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Use ARRAY_SIZE instead of hardcoded siz
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JODBHUS3PDPNAZR5AEXPMRXED4RL3AUA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

I think we've discussed this in the past. ARRAY_SIZE is not standard, and will get in the way of portability:

On gcc v7.4.0:
../../../source/components/resources/rsdumpinfo.c:335:25: note: in expansion of macro 'ACPI_RSD_TABLE_SIZE'
     {ACPI_RSD_TITLE,    ACPI_RSD_TABLE_SIZE (AcpiRsDumpGenericReg),         "Generic Register",         NULL},

../../../source/components/resources/rsdumpinfo.c:166:37: error: initializer element is not constant
 #define ACPI_RSD_TABLE_SIZE(name)   ARRAY_SIZE (name)


And, on MSVC 2017:
Severity	Code	Description	Project	File	Line	Suppression State
Warning	C4013	'ARRAY_SIZE' undefined; assuming extern returning int	AcpiExec	c:\acpica\source\components\resources\rsdumpinfo.c	179	
-----Original Message-----
From: Jason Yan <yanaijie@huawei.com> 
Sent: Monday, April 13, 2020 7:32 AM
To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; lenb@kernel.org; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Cc: Jason Yan <yanaijie@huawei.com>
Subject: [PATCH] ACPICA: Use ARRAY_SIZE instead of hardcoded siz

Fix the following coccicheck warning:

./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE
./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE
./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE
./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE
./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE
./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE
./drivers/acpi/acpica/rsdumpinfo.c:18:48-49: WARNING: Use ARRAY_SIZE

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/acpi/acpica/rsdumpinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/acpica/rsdumpinfo.c b/drivers/acpi/acpica/rsdumpinfo.c
index cafa8134b4c6..f1ba4cd8080f 100644
--- a/drivers/acpi/acpica/rsdumpinfo.c
+++ b/drivers/acpi/acpica/rsdumpinfo.c
@@ -15,7 +15,7 @@ ACPI_MODULE_NAME("rsdumpinfo")  #if defined(ACPI_DEBUG_OUTPUT) || defined(ACPI_DISASSEMBLER) || defined(ACPI_DEBUGGER)
 #define ACPI_RSD_OFFSET(f)          (u8) ACPI_OFFSET (union acpi_resource_data,f)
 #define ACPI_PRT_OFFSET(f)          (u8) ACPI_OFFSET (struct acpi_pci_routing_table,f)
-#define ACPI_RSD_TABLE_SIZE(name)   (sizeof(name) / sizeof (struct acpi_rsdump_info))
+#define ACPI_RSD_TABLE_SIZE(name)   ARRAY_SIZE(name)
 /*******************************************************************************
  *
  * Resource Descriptor info tables
--
2.21.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
