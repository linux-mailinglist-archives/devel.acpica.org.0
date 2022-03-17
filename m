Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3D14DCDD5
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Mar 2022 19:44:26 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 400C9100EA2A8;
	Thu, 17 Mar 2022 11:44:25 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:768:2704:8c1a:3eec:efff:fe00:2ce4; helo=srv1.home.kabele.me; envelope-from=vit@kabele.me; receiver=<UNKNOWN> 
Received: from srv1.home.kabele.me (unknown [IPv6:2a02:768:2704:8c1a:3eec:efff:fe00:2ce4])
	by ml01.01.org (Postfix) with ESMTP id 9EB82100EA2A4
	for <devel@acpica.org>; Thu, 17 Mar 2022 11:44:22 -0700 (PDT)
Received: from srv1.home.kabele.me (localhost [IPv6:::1])
	by srv1.home.kabele.me (Postfix) with ESMTP id 7423916927C;
	Thu, 17 Mar 2022 19:44:24 +0100 (CET)
Received: from localhost ([2a01:c22:8dfa:1400:beea:2810:7764:7afc])
	by srv1.home.kabele.me with ESMTPSA
	id 9D7GGYiBM2LuRjQAnmUwTQ
	(envelope-from <vit@kabele.me>); Thu, 17 Mar 2022 19:44:24 +0100
Date: Thu, 17 Mar 2022 19:44:19 +0100
From: Vit Kabele <vit@kabele.me>
To: platform-driver-x86@vger.kernel.org
Message-ID: <YjOBg4Oys3qV1dbe@czspare1-lap.sysgo.cz>
Mail-Followup-To: platform-driver-x86@vger.kernel.org, r.marek@assembler.cz,
	devel@acpica.org, mingo@redhat.com, robert.moore@intel.com,
	linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: 7KYVHNZNTY74ETCX5PMX2RCO6C5Z6QLR
X-Message-ID-Hash: 7KYVHNZNTY74ETCX5PMX2RCO6C5Z6QLR
X-MailFrom: vit@kabele.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org, mingo@redhat.com, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [PATCH 0/3 RESEND] platform/x86, apcica: Sanitize EBDA pointer from memory
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7KYVHNZNTY74ETCX5PMX2RCO6C5Z6QLR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[Resend because I messed up the mailing list addresses]

When testing custom virtualization platform, we noticed that in cases
where the memory is initialized with random pattern, the Linux guest
tends to crash on EPT violation.

It turns out that (at least two) codepaths during boot do not check the
validity of EBDA pointer retrieved from BDA memory at address 0x40e.
In case that the returned address is over 640K, the kernel happily
touches the VGA memory (which was not present in our setup, hence the
EPT violation).

This may be problematic in other virtualized environment too, but it can
probably also happen on bare metal when booted with legacy free (e.g.
UEFI without CSM) firmware, because the BDA may not be initialized and
the VGA range might not be properly decoded.

The third patch of the series adds workaround for the situation where
EBDA is smaller than 1KiB and the ACPI code scanning for RSDP table
bumps to the VGA memory.

The two acpcia patches can eventually be squashed together, it's up to you.

I tested these patches on my lenovo laptop (and in QEMU if that counts).

Vit Kabele (3):
  platform/x86: Check validity of EBDA pointer in mpparse.c
  acpica: Check that the EBDA pointer is in valid range
  acpica: Do not touch VGA memory when EBDA < 1KiB

 arch/x86/include/asm/bios_ebda.h |  3 +++
 arch/x86/kernel/ebda.c           |  3 ---
 arch/x86/kernel/mpparse.c        | 12 +++++++++++-
 drivers/acpi/acpica/tbxfroot.c   | 25 ++++++++++++++++++-------
 4 files changed, 32 insertions(+), 11 deletions(-)

-- 
2.30.2
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
