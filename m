Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 096A54409F5
	for <lists+devel-acpica@lfdr.de>; Sat, 30 Oct 2021 17:31:47 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 64574100F2276;
	Sat, 30 Oct 2021 08:31:45 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 37361100F2271
	for <devel@acpica.org>; Sat, 30 Oct 2021 08:31:42 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10153"; a="210878088"
X-IronPort-AV: E=Sophos;i="5.87,195,1631602800";
   d="scan'208";a="210878088"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2021 08:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,195,1631602800";
   d="scan'208";a="466826468"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 30 Oct 2021 08:31:39 -0700
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mgqKY-0001WX-Rk; Sat, 30 Oct 2021 15:31:38 +0000
Date: Sat, 30 Oct 2021 23:31:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <617d6546.PHVeTb5tmx4hXGQe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: GTK5SM6LZ6PZTXV33JJVSWKLDBQT4YDT
X-Message-ID-Hash: GTK5SM6LZ6PZTXV33JJVSWKLDBQT4YDT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 5f6ba0ff183c91ef793c5db5da532357e7b0ba5e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GTK5SM6LZ6PZTXV33JJVSWKLDBQT4YDT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 5f6ba0ff183c91ef793c5db5da532357e7b0ba5e  Merge branch 'acpi-glue' into linux-next

elapsed time: 1242m

configs tested: 154
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211028
sparc                            allyesconfig
arc                              allyesconfig
nios2                            allyesconfig
alpha                            allyesconfig
s390                       zfcpdump_defconfig
powerpc                 mpc8272_ads_defconfig
arc                              alldefconfig
sh                            shmin_defconfig
powerpc                 canyonlands_defconfig
mips                        vocore2_defconfig
arm                            lart_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                      loongson3_defconfig
arm                            mps2_defconfig
mips                   sb1250_swarm_defconfig
arm                       omap2plus_defconfig
powerpc                     redwood_defconfig
um                           x86_64_defconfig
m68k                          atari_defconfig
mips                        jmr3927_defconfig
mips                      fuloong2e_defconfig
arm                           h3600_defconfig
arm                         s5pv210_defconfig
s390                             alldefconfig
powerpc                 mpc836x_rdk_defconfig
m68k                            mac_defconfig
um                               alldefconfig
arm                             pxa_defconfig
sh                          polaris_defconfig
mips                          rm200_defconfig
mips                malta_qemu_32r6_defconfig
m68k                        mvme147_defconfig
arm                         shannon_defconfig
nios2                         10m50_defconfig
arm64                            alldefconfig
powerpc                        warp_defconfig
mips                          ath25_defconfig
sh                             shx3_defconfig
sh                          r7780mp_defconfig
arm                       aspeed_g5_defconfig
arc                    vdk_hs38_smp_defconfig
m68k                          sun3x_defconfig
powerpc                   microwatt_defconfig
arm                  randconfig-c002-20211028
arm                  randconfig-c002-20211029
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc                              defconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20211028
i386                 randconfig-a003-20211028
i386                 randconfig-a002-20211028
i386                 randconfig-a006-20211028
i386                 randconfig-a001-20211028
i386                 randconfig-a005-20211028
x86_64               randconfig-a015-20211029
x86_64               randconfig-a013-20211029
x86_64               randconfig-a011-20211029
x86_64               randconfig-a014-20211029
x86_64               randconfig-a012-20211029
x86_64               randconfig-a016-20211029
i386                 randconfig-a012-20211029
i386                 randconfig-a013-20211029
i386                 randconfig-a011-20211029
i386                 randconfig-a015-20211029
i386                 randconfig-a016-20211029
i386                 randconfig-a014-20211029
x86_64               randconfig-a002-20211028
x86_64               randconfig-a004-20211028
x86_64               randconfig-a005-20211028
x86_64               randconfig-a001-20211028
x86_64               randconfig-a006-20211028
x86_64               randconfig-a003-20211028
arc                  randconfig-r043-20211028
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
arm                  randconfig-c002-20211029
powerpc              randconfig-c003-20211029
riscv                randconfig-c006-20211029
x86_64               randconfig-c007-20211029
mips                 randconfig-c004-20211029
s390                 randconfig-c005-20211029
i386                 randconfig-c001-20211029
arm                  randconfig-c002-20211028
powerpc              randconfig-c003-20211028
riscv                randconfig-c006-20211028
x86_64               randconfig-c007-20211028
mips                 randconfig-c004-20211028
s390                 randconfig-c005-20211028
i386                 randconfig-c001-20211028
x86_64               randconfig-a005-20211030
x86_64               randconfig-a004-20211030
x86_64               randconfig-a002-20211030
x86_64               randconfig-a003-20211030
x86_64               randconfig-a001-20211030
x86_64               randconfig-a006-20211030
x86_64               randconfig-a015-20211028
x86_64               randconfig-a013-20211028
x86_64               randconfig-a011-20211028
x86_64               randconfig-a014-20211028
x86_64               randconfig-a012-20211028
x86_64               randconfig-a016-20211028
i386                 randconfig-a012-20211028
i386                 randconfig-a013-20211028
i386                 randconfig-a011-20211028
i386                 randconfig-a015-20211028
i386                 randconfig-a016-20211028
i386                 randconfig-a014-20211028
hexagon              randconfig-r045-20211028
riscv                randconfig-r042-20211028
s390                 randconfig-r044-20211028
hexagon              randconfig-r041-20211028
hexagon              randconfig-r045-20211029
hexagon              randconfig-r041-20211029

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
