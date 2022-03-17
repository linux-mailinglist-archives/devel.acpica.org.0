Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 347814DC84C
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Mar 2022 15:04:33 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8A99F100EA93A;
	Thu, 17 Mar 2022 07:04:31 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:768:2704:8c1a:3eec:efff:fe00:2ce4; helo=srv1.home.kabele.me; envelope-from=vit@kabele.me; receiver=<UNKNOWN> 
Received: from srv1.home.kabele.me (unknown [IPv6:2a02:768:2704:8c1a:3eec:efff:fe00:2ce4])
	by ml01.01.org (Postfix) with ESMTP id 433E6100EA934
	for <devel@acpica.org>; Thu, 17 Mar 2022 07:04:28 -0700 (PDT)
Received: from srv1.home.kabele.me (localhost [IPv6:::1])
	by srv1.home.kabele.me (Postfix) with ESMTP id 67FBF168FA8;
	Thu, 17 Mar 2022 15:04:31 +0100 (CET)
Received: from localhost ([2a01:c22:8dfa:1400:beea:2810:7764:7afc])
	by srv1.home.kabele.me with ESMTPSA
	id FsSRFu8/M2JB8zMAnmUwTQ
	(envelope-from <vit@kabele.me>); Thu, 17 Mar 2022 15:04:31 +0100
Date: Thu, 17 Mar 2022 15:04:26 +0100
From: Vit Kabele <vit@kabele.me>
To: platform-driver-x86@kernel.org
Message-ID: <YjM/6rqxZN19en2I@czspare1-lap.sysgo.cz>
Mail-Followup-To: platform-driver-x86@kernel.org, r.marek@assembler.cz,
	devel@acpica.org, mingo@redhat.com, robert.moore@intel.com,
	linux-kernel@kernel.org, linux-acpi@vger.kernel.org
References: <cover.1647525033.git.vit@kabele.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1647525033.git.vit@kabele.me>
Message-ID-Hash: 3QCIW2ZET2DOCB5D4ZZAOBWBLHXOJBD7
X-Message-ID-Hash: 3QCIW2ZET2DOCB5D4ZZAOBWBLHXOJBD7
X-MailFrom: vit@kabele.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: vit@kabele.me, devel@acpica.org, mingo@redhat.com, linux-kernel@kernel.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH 2/3] acpica: Check that the EBDA pointer is in valid range
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3QCIW2ZET2DOCB5D4ZZAOBWBLHXOJBD7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If the memory at 0x40e is uninitialized, the retrieved physical_memory
address of EBDA may be beyond the low memory (i.e. above 640K).

If so, the kernel may unintentionally access the VGA memory, that
might not be decoded or even present in case of virtualization.

Signed-off-by: Vit Kabele <vit@kabele.me>
Reviewed-by: Rudolf Marek <r.marek@assembler.cz>
---
 drivers/acpi/acpica/tbxfroot.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/acpica/tbxfroot.c b/drivers/acpi/acpica/tbxfroot.c
index 9fec3df6c3ba..67b7df1c0520 100644
--- a/drivers/acpi/acpica/tbxfroot.c
+++ b/drivers/acpi/acpica/tbxfroot.c
@@ -138,8 +138,11 @@ acpi_find_root_pointer(acpi_physical_address *table_address)
 	acpi_os_unmap_memory(table_ptr, ACPI_EBDA_PTR_LENGTH);
 
 	/* EBDA present? */
-
-	if (physical_address > 0x400) {
+	/* Check that the EBDA pointer from 0x40e is sane and does not point
+	 * above valid low memory
+	 */
+	if (physical_address > 0x400 &&
+	    physical_address < 0xA0000) {
 		/*
 		 * 1b) Search EBDA paragraphs (EBDA is required to be a
 		 *     minimum of 1K length)
-- 
2.30.2
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
