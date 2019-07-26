Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6197723E
	for <lists+devel-acpica@lfdr.de>; Fri, 26 Jul 2019 21:35:54 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B609F212E1588;
	Fri, 26 Jul 2019 12:38:19 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.120; helo=mga04.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 882EB212C01E3
 for <devel@acpica.org>; Fri, 26 Jul 2019 12:38:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 12:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="181973736"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2019 12:35:50 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 12:35:50 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.246]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 12:35:50 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Qian Cai <cai@lca.pw>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
Thread-Topic: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPaHylXmfzBauvEybJLDaugeeCqbdV0WA
Date: Fri, 26 Jul 2019 19:35:49 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
References: <20190718194846.1880-1-cai@lca.pw>
In-Reply-To: <20190718194846.1880-1-cai@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjJiMzAxZTctOWE5ZS00MjJhLWE4NDAtYzI2NzI2OWNkNGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRWo5bWtmaEIrbVlsZUZ3SVNjVVwvR3dsRGdcL2RCa0tId2VMSUZBYndYXC9SdGNzbk1hdTQ2QkFaWHZvV3NocGlhWCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Devel] [PATCH v2] acpica: fix -Wnull-pointer-arithmetic
 warnings
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

We've taken the change to ACPI_TO_POINTER.
Thanks,
Bob


-----Original Message-----
From: Qian Cai [mailto:cai@lca.pw] 
Sent: Thursday, July 18, 2019 12:49 PM
To: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
Cc: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; jkim@FreeBSD.org; lenb@kernel.org; ndesaulniers@google.com; linux-acpi@vger.kernel.org; devel@acpica.org; clang-built-linux@googlegroups.com; linux-kernel@vger.kernel.org; Qian Cai <cai@lca.pw>
Subject: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings

Clang generate quite a few of those warnings.

drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer treated as a cast from integer to pointer is a GNU extension [-Wnull-pointer-arithmetic]
		status = acpi_get_handle(ACPI_ROOT_OBJECT,
obj->string.pointer,
                                         ^~~~~~~~~~~~~~~~
./include/acpi/actypes.h:458:56: note: expanded from macro 'ACPI_ROOT_OBJECT'
 #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
(ACPI_MAX_PTR))
							^~~~~~~~~~~~~~~
./include/acpi/actypes.h:509:41: note: expanded from macro 'ACPI_TO_POINTER'
 #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
(acpi_size) (i))
                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/acpi/actypes.h:503:84: note: expanded from macro 'ACPI_ADD_PTR'
 #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
(ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
                                         ^~~~~~~~~~~~~~~~~
./include/acpi/actypes.h:501:66: note: expanded from macro 'ACPI_CAST_PTR'
 #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
                                                                 ^ This is because pointer arithmetic on a pointer not pointing to an array is an undefined behavior (C11 6.5.6, constraint 8). Fix it by just casting the corresponding pointers using ACPI_CAST_PTR() and skip the arithmetic. Also, fix a checkpatch warning together.

ERROR: Macros with complex values should be enclosed in parentheses
 #45: FILE: include/acpi/actypes.h:509:
+#define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, i)

Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Use ACPI_CAST_PTR() in ACPI_TO_POINTER() directly without
    arithmetic.

 include/acpi/actypes.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index ad6892a24015..163181e2d884 100644
--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -506,7 +506,7 @@ typedef u64 acpi_integer;
 
 /* Pointer/Integer type conversions */
 
-#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (acpi_size) (i))
+#define ACPI_TO_POINTER(i)              (ACPI_CAST_PTR (void, i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
 #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
--
2.20.1 (Apple Git-117)

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
