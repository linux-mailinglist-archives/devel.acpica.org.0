Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C495B624A
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Sep 2022 22:37:39 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3F45A100EA939;
	Mon, 12 Sep 2022 13:37:36 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id B26D3100EAB0D
	for <devel@acpica.org>; Mon, 12 Sep 2022 13:37:34 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11439106F;
	Mon, 12 Sep 2022 13:37:40 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com [10.118.28.62])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 72D7C3F73B;
	Mon, 12 Sep 2022 13:37:33 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-acpi@vger.kernel.org
Date: Mon, 12 Sep 2022 15:37:21 -0500
Message-Id: <20220912203722.205185-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Message-ID-Hash: GQQLR6RKWRUIAAO2HWTZMT476QOM545C
X-Message-ID-Hash: GQQLR6RKWRUIAAO2HWTZMT476QOM545C
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: rafael@kernel.org, viresh.kumar@linaro.org, punit.agrawal@bytedance.com, lukasz.luba@arm.com, ionela.voinescu@arm.com, pierre.gondois@arm.com, linux-kernel@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH v5 0/1] Disable FIE on machines with slow counters
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GQQLR6RKWRUIAAO2HWTZMT476QOM545C/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

FIE assumes the delivered/relative perf registers are fast to read so
it goes ahead and hits them quite frequently. On a couple of Arm
platforms though they end up in PCC regions which require mailbox
handshaking with other parts of the platform.

This results in a lot of overhead in the cppc_fie task. As such lets
runtime disable FIE if we detect it enabled on one of those platforms.
Lastly, allow the user to override this decision via a module parameter.

v1->v2:
	Apply Rafael's review comments.
	Move the MODULE_PARAM into the ifdef
	Fix compiler warning when ACPI_CPPC_LIB is disabled.
v2->v3:
	Tristate the module param so FIE can be forced on/off
	Bump pr_debug to pr_info if FIE is disabled due to PCC regions
	Switch ACPI_CPPC_CPUFREQ_FIE off by default
v3->v4:
	No functional change, resend due to email addr issues

v4->v5:
	Minor whitespace, comment wording, if/case conversion
	Drop the ACPI_CPPC_CPUFREQ_FIE disable config change added in v3

Jeremy Linton (1):
  ACPI: CPPC: Disable FIE if registers in PCC regions

 drivers/acpi/cppc_acpi.c       | 42 ++++++++++++++++++++++++++++++++++
 drivers/cpufreq/cppc_cpufreq.c | 25 ++++++++++++++++----
 include/acpi/cppc_acpi.h       |  5 ++++
 3 files changed, 68 insertions(+), 4 deletions(-)

-- 
2.37.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
