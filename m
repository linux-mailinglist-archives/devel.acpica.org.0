Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D39618C374
	for <lists+devel-acpica@lfdr.de>; Fri, 20 Mar 2020 00:04:35 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B05D710FC36DF;
	Thu, 19 Mar 2020 16:05:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D0FE310FC363B
	for <devel@acpica.org>; Thu, 19 Mar 2020 16:05:21 -0700 (PDT)
IronPort-SDR: feYkig0rfysysa2VtuHRz2Aeihn43ESJXtHRn7xT/0wqoeCyTXFCcQy/kHGKaZJY2d0pE1mPWb
 EneBTvfCl0JQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 16:04:30 -0700
IronPort-SDR: xWaTkAWhBCEJSNmVeajuK4yalUQc7o+SZ2HQkNdStHZnjvoMQQC6eIdkOeqq/tR6WqYw68gkgd
 8LR4MudsuScA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400";
   d="scan'208";a="238621004"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 19 Mar 2020 16:04:28 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jF4DE-000J3D-6b; Fri, 20 Mar 2020 07:04:28 +0800
Date: Fri, 20 Mar 2020 07:04:10 +0800
From: kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5e73fa6a.FXWjlVh0KUY8zyxQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: O3AORMVHW77DWGFPNQFESRGJOE4T5SBZ
X-Message-ID-Hash: O3AORMVHW77DWGFPNQFESRGJOE4T5SBZ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 8c2bbc5c3a0aef446e9116c2d357f7563a772433
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O3AORMVHW77DWGFPNQFESRGJOE4T5SBZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 8c2bbc5c3a0aef446e9116c2d357f7563a772433  Merge branch 'pnp' into bleeding-edge

elapsed time: 818m

configs tested: 133
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
i386                 randconfig-a003-20200319
i386                 randconfig-a001-20200319
x86_64               randconfig-a001-20200319
x86_64               randconfig-a002-20200319
i386                 randconfig-a002-20200319
x86_64               randconfig-a003-20200319
riscv                randconfig-a001-20200319
m68k                 randconfig-a001-20200319
nds32                randconfig-a001-20200319
alpha                randconfig-a001-20200319
parisc               randconfig-a001-20200319
mips                 randconfig-a001-20200319
h8300                randconfig-a001-20200319
sparc64              randconfig-a001-20200319
c6x                  randconfig-a001-20200319
nios2                randconfig-a001-20200319
microblaze           randconfig-a001-20200319
xtensa               randconfig-a001-20200319
csky                 randconfig-a001-20200319
openrisc             randconfig-a001-20200319
sh                   randconfig-a001-20200319
s390                 randconfig-a001-20200319
x86_64               randconfig-b001-20200319
x86_64               randconfig-b002-20200319
i386                 randconfig-b001-20200319
x86_64               randconfig-b003-20200319
i386                 randconfig-b002-20200319
i386                 randconfig-b003-20200319
x86_64               randconfig-c001-20200319
i386                 randconfig-c001-20200319
x86_64               randconfig-c002-20200319
i386                 randconfig-c003-20200319
x86_64               randconfig-c003-20200319
i386                 randconfig-c002-20200319
i386                 randconfig-d003-20200319
i386                 randconfig-d002-20200319
i386                 randconfig-g001-20200319
i386                 randconfig-g003-20200319
x86_64               randconfig-g003-20200319
x86_64               randconfig-g002-20200319
x86_64               randconfig-g001-20200319
i386                 randconfig-g002-20200319
arc                  randconfig-a001-20200319
ia64                 randconfig-a001-20200319
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
