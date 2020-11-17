Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 425DA2B5CFA
	for <lists+devel-acpica@lfdr.de>; Tue, 17 Nov 2020 11:37:36 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 84194100EF267;
	Tue, 17 Nov 2020 02:37:34 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AA1AE100EF260
	for <devel@acpica.org>; Tue, 17 Nov 2020 02:37:32 -0800 (PST)
IronPort-SDR: 0LDaDEFP/4ugzCEg6hy4iWUnCjk3jHXH9Tm1JJcV022eH3Wloy6ocTo37RvEpZJgmiR3Prn7g0
 Xikz0+T+DPYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="188955561"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400";
   d="scan'208";a="188955561"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2020 02:37:30 -0800
IronPort-SDR: TRZSE14v3le4UP/EWOpRkEebScNFTHVbCrD8SavnyE4VlxQg5Du0FWgnQpP6uxvi6QOkBEflnj
 vu4Ob0ygNaVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400";
   d="scan'208";a="475875600"
Received: from lkp-server01.sh.intel.com (HELO 45561eaec37e) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 17 Nov 2020 02:37:28 -0800
Received: from kbuild by 45561eaec37e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1keyMa-00002q-3Z; Tue, 17 Nov 2020 10:37:28 +0000
Date: Tue, 17 Nov 2020 18:36:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fb3a7c8.rBK49q/ve6j46fAI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 57CJMDRULCBYVJYZUUJONCJE3ZHR2KTQ
X-Message-ID-Hash: 57CJMDRULCBYVJYZUUJONCJE3ZHR2KTQ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS b098fbf94c5d6f1d30a3820ac4c9859d0b0abf0b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/57CJMDRULCBYVJYZUUJONCJE3ZHR2KTQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: b098fbf94c5d6f1d30a3820ac4c9859d0b0abf0b  Merge branch 'linux-next' into bleeding-edge

elapsed time: 725m

configs tested: 91
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     cu1830-neo_defconfig
arm                         socfpga_defconfig
nios2                         10m50_defconfig
powerpc                 mpc8315_rdb_defconfig
xtensa                  nommu_kc705_defconfig
arm                            zeus_defconfig
arm                           omap1_defconfig
arm                        neponset_defconfig
mips                           ip22_defconfig
arm                          iop32x_defconfig
mips                      loongson3_defconfig
powerpc                     stx_gp3_defconfig
arc                     nsimosci_hs_defconfig
powerpc                 mpc8272_ads_defconfig
m68k                       m5249evb_defconfig
m68k                          sun3x_defconfig
arm                          collie_defconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201116
i386                 randconfig-a005-20201116
i386                 randconfig-a001-20201116
i386                 randconfig-a002-20201116
i386                 randconfig-a004-20201116
i386                 randconfig-a003-20201116
x86_64               randconfig-a015-20201115
x86_64               randconfig-a011-20201115
x86_64               randconfig-a014-20201115
x86_64               randconfig-a013-20201115
x86_64               randconfig-a016-20201115
x86_64               randconfig-a012-20201115
i386                 randconfig-a012-20201116
i386                 randconfig-a014-20201116
i386                 randconfig-a016-20201116
i386                 randconfig-a011-20201116
i386                 randconfig-a015-20201116
i386                 randconfig-a013-20201116
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20201115
x86_64               randconfig-a005-20201115
x86_64               randconfig-a004-20201115
x86_64               randconfig-a002-20201115
x86_64               randconfig-a001-20201115
x86_64               randconfig-a006-20201115

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
