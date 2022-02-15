Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E504B64AC
	for <lists+devel-acpica@lfdr.de>; Tue, 15 Feb 2022 08:47:47 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4A115100E5D4E;
	Mon, 14 Feb 2022 23:47:45 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6A6B2100F3951
	for <devel@acpica.org>; Mon, 14 Feb 2022 23:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644911262; x=1676447262;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=bKfn5cFC+4sCU4g1lSHUk5eDHm4O5lP5V0B5i3FL4vc=;
  b=H+NDj1hKB+mp8sT7zsS6DHD6IY6bOD8k7TNtY5mCy2lzDXvbXhjm11UW
   OjmdcPH/4loy7dL9VpC2dC+E8fTgfFr4CvRUvCrFSmSGUu7ibPZw29E7n
   IIJVemLkx4RMsu1rFxiX2gc+CQ0zxl2TRfGqrmXjYNrKysGHyupMu9471
   soulqld6UkVoxZXE7nC6UGay377gz1nbsLyfraGXDrEIbNB3NljSMTIJL
   YYgxOeRpVZEyM3pu3LHakAFq2hYDuV1T4A2F8G1RglzNPZz+elfavF+yD
   RmWmMR8hj/NOSAGP9yu6a5MoFAbI2w2thJ9/ux93j8VVsDFJGGQoNj2HO
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230235397"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600";
   d="scan'208";a="230235397"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Feb 2022 23:47:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600";
   d="scan'208";a="773394809"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2022 23:47:39 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nJsYl-0009Qm-BC; Tue, 15 Feb 2022 07:47:39 +0000
Date: Tue, 15 Feb 2022 15:47:19 +0800
From: kernel test robot <lkp@intel.com>
To: Shuai Xue <xueshuai@linux.alibaba.com>
Message-ID: <202202151504.jWpZGPaH-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: KKHB754EPF26KSGE36TJX5M4HT5Z4ANN
X-Message-ID-Hash: KKHB754EPF26KSGE36TJX5M4HT5Z4ANN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 41/47] ld.lld: error: undefined symbol: ghes_disable
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KKHB754EPF26KSGE36TJX5M4HT5Z4ANN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   9db71e8e3027d2026be1ea9b6cfce8fd7216fb01
commit: f521a6e687d139e5d33a3d92f5ba4cd0a825cc66 [41/47] ACPI: APEI: explicit init HEST and GHES in apci_init()
config: arm64-randconfig-r004-20220214 (https://download.01.org/0day-ci/archive/20220215/202202151504.jWpZGPaH-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 37f422f4ac31c8b8041c6b62065263314282dab6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=f521a6e687d139e5d33a3d92f5ba4cd0a825cc66
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout f521a6e687d139e5d33a3d92f5ba4cd0a825cc66
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: ghes_notify_sea
   >>> referenced by acpi.c
   >>> kernel/acpi.o:(apei_claim_sea) in archive arch/arm64/built-in.a
--
>> ld.lld: error: undefined symbol: ghes_disable
   >>> referenced by bus.c
   >>> acpi/bus.o:(acpi_bus_init) in archive drivers/built-in.a
   >>> referenced by bus.c
   >>> acpi/bus.o:(acpi_bus_init) in archive drivers/built-in.a

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for ACPI_APEI_GHES
   Depends on ACPI && ACPI_APEI
   Selected by
   - ARM_SDE_INTERFACE && ARM64

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
