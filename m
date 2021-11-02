Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A03443582
	for <lists+devel-acpica@lfdr.de>; Tue,  2 Nov 2021 19:26:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0B3AC100EB358;
	Tue,  2 Nov 2021 11:26:12 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 85CDC100EB328
	for <devel@acpica.org>; Tue,  2 Nov 2021 11:26:09 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E6B411B3;
	Tue,  2 Nov 2021 11:26:08 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5DA2B3F7B4;
	Tue,  2 Nov 2021 11:26:07 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robert Moore <robert.moore@intel.com>
Date: Tue,  2 Nov 2021 18:25:39 +0000
Message-Id: <20211102182542.3460787-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: GP7JLDSIDJJEG4W2SFQT2A5SGER2ZDDI
X-Message-ID-Hash: GP7JLDSIDJJEG4W2SFQT2A5SGER2ZDDI
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH 0/3] ACPI: Add support for PCC Operation Region
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GP7JLDSIDJJEG4W2SFQT2A5SGER2ZDDI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This series adds support for ACPI PCC OpRegion added in ACPI 6.3
I understand that the ACPICA changes need to go via different route,
but I am posting it together to give complete narative/picture for
the review/discussion.

Regards,
Sudeep

Sudeep Holla (3):
  ACPICA: Fix wrong interpretation of PCC address
  ACPICA: Add support for PCC Opregion special context data
  ACPI: PCC: Implement OperationRegion handler for the PCC Type 3 subtype

 drivers/acpi/Kconfig           |   5 ++
 drivers/acpi/Makefile          |   1 +
 drivers/acpi/acpica/evregion.c |  11 ++++
 drivers/acpi/acpica/exfield.c  |   7 +--
 drivers/acpi/bus.c             |   1 +
 drivers/acpi/pcc_opregion.c    | 111 +++++++++++++++++++++++++++++++++
 include/acpi/actypes.h         |   8 +++
 include/linux/acpi.h           |   6 ++
 8 files changed, 144 insertions(+), 6 deletions(-)
 create mode 100644 drivers/acpi/pcc_opregion.c

--
2.25.1
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
