Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AA24DCE47
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Mar 2022 19:58:42 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3A09D100EA2A4;
	Thu, 17 Mar 2022 11:58:41 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=195.88.143.223; helo=srv1.home.kabele.me; envelope-from=vit@kabele.me; receiver=<UNKNOWN> 
Received: from srv1.home.kabele.me (gw.home.kabele.me [195.88.143.223])
	by ml01.01.org (Postfix) with ESMTP id 1519C100EB84F
	for <devel@acpica.org>; Thu, 17 Mar 2022 11:58:39 -0700 (PDT)
Received: from srv1.home.kabele.me (localhost [IPv6:::1])
	by srv1.home.kabele.me (Postfix) with ESMTP id 0F0BF1692A5;
	Thu, 17 Mar 2022 19:58:43 +0100 (CET)
Received: from localhost ([2a01:c22:8dfa:1400:beea:2810:7764:7afc])
	by srv1.home.kabele.me with ESMTPSA
	id kQzaAOOEM2JWWDQAnmUwTQ
	(envelope-from <vit@kabele.me>); Thu, 17 Mar 2022 19:58:43 +0100
Date: Thu, 17 Mar 2022 19:58:37 +0100
From: Vit Kabele <vit@kabele.me>
To: platform-driver-x86@vger.kernel.org
Message-ID: <YjOE3QLbvU1d0wAX@czspare1-lap.sysgo.cz>
Mail-Followup-To: platform-driver-x86@vger.kernel.org, r.marek@assembler.cz,
	devel@acpica.org, mingo@redhat.com, robert.moore@intel.com,
	linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
References: <cover.1647526995.git.vit@kabele.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1647526995.git.vit@kabele.me>
Message-ID-Hash: KOV4W5XNJT3VUSVZV2DHWWERRJX66AUD
X-Message-ID-Hash: KOV4W5XNJT3VUSVZV2DHWWERRJX66AUD
X-MailFrom: vit@kabele.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org, mingo@redhat.com, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH 1/3 RESEND] platform/x86: Check validity of EBDA pointer in mpparse.c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KOV4W5XNJT3VUSVZV2DHWWERRJX66AUD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The pointer to EBDA area is retrieved from a word at 0x40e in BDA.
In case that the memory there is not initialized and contains garbage,
it might happen that the kernel touches memory above 640K.

This may cause unwanted reads from VGA memory which may not be decoded,
or even present when running under virtualization.

This patch adds sanity check for the EBDA pointer retrieved from the memory
so that scanning EBDA does not leave the low memory.

Signed-off-by: Vit Kabele <vit@kabele.me>
Reviewed-by: Rudolf Marek <r.marek@assembler.cz>
---
 arch/x86/include/asm/bios_ebda.h |  3 +++
 arch/x86/kernel/ebda.c           |  3 ---
 arch/x86/kernel/mpparse.c        | 12 +++++++++++-
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/bios_ebda.h b/arch/x86/include/asm/bios_ebda.h
index 4d5a17e2febe..c3133c01d5b7 100644
--- a/arch/x86/include/asm/bios_ebda.h
+++ b/arch/x86/include/asm/bios_ebda.h
@@ -4,6 +4,9 @@
 
 #include <asm/io.h>
 
+#define BIOS_START_MIN		0x20000U	/* 128K, less than this is insane */
+#define BIOS_START_MAX		0x9f000U	/* 640K, absolute maximum */
+
 /*
  * Returns physical address of EBDA.  Returns 0 if there is no EBDA.
  */
diff --git a/arch/x86/kernel/ebda.c b/arch/x86/kernel/ebda.c
index 38e7d597b660..86c0801fc3ce 100644
--- a/arch/x86/kernel/ebda.c
+++ b/arch/x86/kernel/ebda.c
@@ -50,9 +50,6 @@
 
 #define BIOS_RAM_SIZE_KB_PTR	0x413
 
-#define BIOS_START_MIN		0x20000U	/* 128K, less than this is insane */
-#define BIOS_START_MAX		0x9f000U	/* 640K, absolute maximum */
-
 void __init reserve_bios_regions(void)
 {
 	unsigned int bios_start, ebda_start;
diff --git a/arch/x86/kernel/mpparse.c b/arch/x86/kernel/mpparse.c
index fed721f90116..6bba0744d32d 100644
--- a/arch/x86/kernel/mpparse.c
+++ b/arch/x86/kernel/mpparse.c
@@ -633,7 +633,17 @@ void __init default_find_smp_config(void)
 	 */
 
 	address = get_bios_ebda();
-	if (address)
+
+	/* Check that the EBDA address is sane and the get_bios_ebda() did not
+	 * return just garbage from memory.
+	 * The upper bound is considered valid if it points below 1K before
+	 * end of the lower memory (i.e. 639K). The EBDA can be smaller
+	 * than 1K in which case the pointer will point above 639K but that
+	 * case is handled in step 2) above, and we don't need to adjust scan
+	 * size to not bump into the memory above 640K.
+	 */
+	if (address >= BIOS_START_MIN &&
+	    address < 639 * 0x400)
 		smp_scan_config(address, 0x400);
 }
 
-- 
2.30.2
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
