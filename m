Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 635E159AA36
	for <lists+devel-acpica@lfdr.de>; Sat, 20 Aug 2022 02:44:15 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 479FF100AA606;
	Fri, 19 Aug 2022 09:31:16 -0700 (PDT)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (unknown [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id A1186100B5DEE
	for <devel@acpica.org>; Fri, 19 Aug 2022 09:29:44 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9071175A;
	Fri, 19 Aug 2022 09:26:25 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com [10.118.28.62])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D06D23F66F;
	Fri, 19 Aug 2022 09:26:23 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-acpi@vger.kernel.org
Date: Fri, 19 Aug 2022 11:25:47 -0500
Message-Id: <20220819162547.141333-3-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220819162547.141333-1-jeremy.linton@arm.com>
References: <20220819162547.141333-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Message-ID-Hash: MVKR7ZWH4URMZRY4VWURDJ5YM2T3F3IH
X-Message-ID-Hash: MVKR7ZWH4URMZRY4VWURDJ5YM2T3F3IH
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: rafael@kernel.org, viresh.kumar@linaro.org, punit.agrawal@bytedance.com, lukasz.luba@arm.com, ionela.voinescu@arm.com, pierre.gondois@arm.com, linux-kernel@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v4 2/2] cpufreq: CPPC: Change FIE default
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

FIE is mostly implemented as PCC mailboxes on arm machines.  This was
enabled by default without any data suggesting that it does anything
but hurt system performance. Lets change the default to 'n' until
hardware appears which clearly benefits.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/cpufreq/Kconfig.arm | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
index 954749afb5fe..ad66d8f15db0 100644
--- a/drivers/cpufreq/Kconfig.arm
+++ b/drivers/cpufreq/Kconfig.arm
@@ -22,7 +22,7 @@ config ACPI_CPPC_CPUFREQ
 config ACPI_CPPC_CPUFREQ_FIE
 	bool "Frequency Invariance support for CPPC cpufreq driver"
 	depends on ACPI_CPPC_CPUFREQ && GENERIC_ARCH_TOPOLOGY
-	default y
+	default n
 	help
 	  This extends frequency invariance support in the CPPC cpufreq driver,
 	  by using CPPC delivered and reference performance counters.
-- 
2.37.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
