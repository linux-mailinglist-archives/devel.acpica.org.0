Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A69B4DCE66
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Mar 2022 20:03:09 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C978F100EA2AB;
	Thu, 17 Mar 2022 12:03:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:768:2704:8c1a:3eec:efff:fe00:2ce4; helo=srv1.home.kabele.me; envelope-from=vit@kabele.me; receiver=<UNKNOWN> 
Received: from srv1.home.kabele.me (unknown [IPv6:2a02:768:2704:8c1a:3eec:efff:fe00:2ce4])
	by ml01.01.org (Postfix) with ESMTP id 84EE3100EA2A9
	for <devel@acpica.org>; Thu, 17 Mar 2022 12:03:05 -0700 (PDT)
Received: from srv1.home.kabele.me (localhost [IPv6:::1])
	by srv1.home.kabele.me (Postfix) with ESMTP id C6C421692B3;
	Thu, 17 Mar 2022 20:03:08 +0100 (CET)
Received: from localhost ([2a01:c22:8dfa:1400:beea:2810:7764:7afc])
	by srv1.home.kabele.me with ESMTPSA
	id CG36LOyFM2ITWTQAnmUwTQ
	(envelope-from <vit@kabele.me>); Thu, 17 Mar 2022 20:03:08 +0100
Date: Thu, 17 Mar 2022 20:03:03 +0100
From: Vit Kabele <vit@kabele.me>
To: platform-driver-x86@vger.kernel.org
Message-ID: <YjOF5y0Edc0IdSOR@czspare1-lap.sysgo.cz>
Mail-Followup-To: platform-driver-x86@vger.kernel.org, r.marek@assembler.cz,
	devel@acpica.org, mingo@redhat.com, robert.moore@intel.com,
	linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
References: <cover.1647526995.git.vit@kabele.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1647526995.git.vit@kabele.me>
Message-ID-Hash: AD34M74SHHJWJIZJRJPOPMJCG5ID7ANR
X-Message-ID-Hash: AD34M74SHHJWJIZJRJPOPMJCG5ID7ANR
X-MailFrom: vit@kabele.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org, mingo@redhat.com, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH 3/3 RESEND] acpica: Do not touch VGA memory when EBDA < 1KiB
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AD34M74SHHJWJIZJRJPOPMJCG5ID7ANR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The ACPICA code assumes that EBDA region must be at least 1KiB in size.
Because this is not guaranteed, it might happen that while scanning the
memory for RSDP pointer, the kernel touches memory above 640KiB.

This is unwanted as the VGA memory range may not be decoded or
even present when running under virtualization.

Signed-off-by: Vit Kabele <vit@kabele.me>
Reviewed-by: Rudolf Marek <r.marek@assembler.cz>
---
 drivers/acpi/acpica/tbxfroot.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/acpi/acpica/tbxfroot.c b/drivers/acpi/acpica/tbxfroot.c
index 67b7df1c0520..b1f4a91044d9 100644
--- a/drivers/acpi/acpica/tbxfroot.c
+++ b/drivers/acpi/acpica/tbxfroot.c
@@ -114,6 +114,7 @@ acpi_find_root_pointer(acpi_physical_address *table_address)
 	u8 *table_ptr;
 	u8 *mem_rover;
 	u32 physical_address;
+	u32 ebda_window_size;
 
 	ACPI_FUNCTION_TRACE(acpi_find_root_pointer);
 
@@ -143,25 +144,32 @@ acpi_find_root_pointer(acpi_physical_address *table_address)
 	 */
 	if (physical_address > 0x400 &&
 	    physical_address < 0xA0000) {
+		/* Calculate the scan window size
+		 * The EBDA is not guaranteed to be larger than a KiB
+		 * and in case that it is smaller the scanning function would
+		 * leave the low memory and continue to the VGA range.
+		 */
+		ebda_window_size = ACPI_MIN(ACPI_EBDA_WINDOW_SIZE,
+					    0xA0000 - physical_address);
+
 		/*
-		 * 1b) Search EBDA paragraphs (EBDA is required to be a
-		 *     minimum of 1K length)
+		 * 1b) Search EBDA paragraphs
 		 */
 		table_ptr = acpi_os_map_memory((acpi_physical_address)
 					       physical_address,
-					       ACPI_EBDA_WINDOW_SIZE);
+					       ebda_window_size);
 		if (!table_ptr) {
 			ACPI_ERROR((AE_INFO,
 				    "Could not map memory at 0x%8.8X for length %u",
-				    physical_address, ACPI_EBDA_WINDOW_SIZE));
+				    physical_address, ebda_window_size));
 
 			return_ACPI_STATUS(AE_NO_MEMORY);
 		}
 
 		mem_rover =
 		    acpi_tb_scan_memory_for_rsdp(table_ptr,
-						 ACPI_EBDA_WINDOW_SIZE);
-		acpi_os_unmap_memory(table_ptr, ACPI_EBDA_WINDOW_SIZE);
+						 ebda_window_size);
+		acpi_os_unmap_memory(table_ptr, ebda_window_size);
 
 		if (mem_rover) {
 
-- 
2.30.2
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
