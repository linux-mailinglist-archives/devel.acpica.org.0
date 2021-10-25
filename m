Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A7B43A06F
	for <lists+devel-acpica@lfdr.de>; Mon, 25 Oct 2021 21:28:21 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DC77D100EA919;
	Mon, 25 Oct 2021 12:28:19 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0DB67100F226B
	for <devel@acpica.org>; Mon, 25 Oct 2021 12:28:17 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253274124"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800";
   d="scan'208";a="253274124"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2021 12:28:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800";
   d="scan'208";a="446772164"
Received: from lkp-server01.sh.intel.com (HELO 0352ec6b4cf1) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 25 Oct 2021 12:28:15 -0700
Received: from kbuild by 0352ec6b4cf1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mf5dm-0000Bs-FT; Mon, 25 Oct 2021 19:28:14 +0000
Date: Tue, 26 Oct 2021 03:27:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61770535.Egfg7roQia0TU6Qf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: EXNLHAP7GUNNBOSTCMYJKORTT6APWUTF
X-Message-ID-Hash: EXNLHAP7GUNNBOSTCMYJKORTT6APWUTF
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS af2b73b422405bf7d7aef0060da17281f7a0e6d4
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EXNLHAP7GUNNBOSTCMYJKORTT6APWUTF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: af2b73b422405bf7d7aef0060da17281f7a0e6d4  Merge branch 'pm-sleep' into bleeding-edge

elapsed time: 2416m

configs tested: 81
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20211024
x86_64               randconfig-a004-20211024
x86_64               randconfig-a005-20211024
x86_64               randconfig-a006-20211024
x86_64               randconfig-a001-20211024
x86_64               randconfig-a003-20211024
x86_64               randconfig-a013-20211025
x86_64               randconfig-a015-20211025
x86_64               randconfig-a011-20211025
x86_64               randconfig-a014-20211025
x86_64               randconfig-a016-20211025
x86_64               randconfig-a012-20211025
i386                 randconfig-a012-20211025
i386                 randconfig-a013-20211025
i386                 randconfig-a011-20211025
i386                 randconfig-a016-20211025
i386                 randconfig-a015-20211025
i386                 randconfig-a014-20211025
arc                  randconfig-r043-20211025
s390                 randconfig-r044-20211025
riscv                randconfig-r042-20211025
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
i386                 randconfig-a003-20211025
i386                 randconfig-a004-20211025
i386                 randconfig-a002-20211025
i386                 randconfig-a005-20211025
i386                 randconfig-a001-20211025
i386                 randconfig-a006-20211025
hexagon              randconfig-r045-20211025
hexagon              randconfig-r041-20211025

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
