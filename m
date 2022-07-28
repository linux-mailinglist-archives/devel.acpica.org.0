Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEE4584806
	for <lists+devel-acpica@lfdr.de>; Fri, 29 Jul 2022 00:11:43 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 64C7C100F3FA3;
	Thu, 28 Jul 2022 15:11:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 87CC7100F395F
	for <devel@acpica.org>; Thu, 28 Jul 2022 15:11:37 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC431106F;
	Thu, 28 Jul 2022 15:11:35 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com [10.118.28.62])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF4D13F70D;
	Thu, 28 Jul 2022 15:11:34 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-pm@vger.kernel.org
Date: Thu, 28 Jul 2022 17:10:42 -0500
Message-Id: <20220728221043.4161903-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Message-ID-Hash: 2SLA5WHDOF53HYOJNCYOR53G5NLVXTPX
X-Message-ID-Hash: 2SLA5WHDOF53HYOJNCYOR53G5NLVXTPX
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: rafael@kernel.org, viresh.kumar@linaro.org, devel@acpica.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v2 0/1] Disable FIE on machines with slow counters
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2SLA5WHDOF53HYOJNCYOR53G5NLVXTPX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

FIE assumes the delivered/relative perf registers are fast to read so
it goes ahead and hits them quite frequently. On a couple Arm
platforms though they end up in PCC regions which require mailbox
handshaking with other parts of the platform.

This results in a lot of overhead in the cppc_fie task. As such lets
runtime disable FIE if we detect it enabled on one of those platforms.
Also allow the user to manually disable it via a module parameter.

v1->v2:
	Apply Rafael's review comments.
	Move the MODULE_PARAM into the ifdef
	Fix compiler warning when ACPI_CPPC_LIB is disabled.
	
Jeremy Linton (1):
  ACPI: CPPC: Disable FIE if registers in PCC regions

 drivers/acpi/cppc_acpi.c       | 41 ++++++++++++++++++++++++++++++++++
 drivers/cpufreq/cppc_cpufreq.c | 19 ++++++++++++----
 include/acpi/cppc_acpi.h       |  5 +++++
 3 files changed, 61 insertions(+), 4 deletions(-)

-- 
2.35.3
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
