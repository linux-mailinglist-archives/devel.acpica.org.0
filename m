Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 023764067A5
	for <lists+devel-acpica@lfdr.de>; Fri, 10 Sep 2021 09:28:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1B03D100F2245;
	Fri, 10 Sep 2021 00:28:54 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A92B9100EBB7D
	for <devel@acpica.org>; Fri, 10 Sep 2021 00:28:51 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="282033038"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200";
   d="scan'208";a="282033038"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2021 00:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200";
   d="scan'208";a="466970666"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 10 Sep 2021 00:28:49 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mOaxs-0003z7-O0; Fri, 10 Sep 2021 07:28:48 +0000
Date: Fri, 10 Sep 2021 15:28:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <613b0924.9DSHO5aI3Jx7lrfL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: FU6B6YRLXMRBN4AOEPJ67HTBNRD3CJHR
X-Message-ID-Hash: FU6B6YRLXMRBN4AOEPJ67HTBNRD3CJHR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 11080a410d7e295a16caa8be650460089e172790
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FU6B6YRLXMRBN4AOEPJ67HTBNRD3CJHR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 11080a410d7e295a16caa8be650460089e172790  Merge branch 'acpi-prm' into linux-next

elapsed time: 727m

configs tested: 173
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20210908
i386                 randconfig-c001-20210910
powerpc                 xes_mpc85xx_defconfig
parisc                generic-64bit_defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
mips                     cu1830-neo_defconfig
sh                          kfr2r09_defconfig
sh                        apsh4ad0a_defconfig
nios2                            alldefconfig
powerpc                      pcm030_defconfig
powerpc                  storcenter_defconfig
arm                          ep93xx_defconfig
sparc                       sparc32_defconfig
arm                         bcm2835_defconfig
powerpc                 mpc8540_ads_defconfig
arm                         mv78xx0_defconfig
arc                          axs103_defconfig
arm                         axm55xx_defconfig
mips                     loongson2k_defconfig
mips                      fuloong2e_defconfig
ia64                            zx1_defconfig
openrisc                 simple_smp_defconfig
mips                      pic32mzda_defconfig
powerpc                    mvme5100_defconfig
powerpc                     asp8347_defconfig
powerpc                       ppc64_defconfig
xtensa                           alldefconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    klondike_defconfig
openrisc                            defconfig
mips                          ath79_defconfig
arc                          axs101_defconfig
parisc                generic-32bit_defconfig
arm                       versatile_defconfig
arm                        oxnas_v6_defconfig
powerpc                    sam440ep_defconfig
mips                        workpad_defconfig
sh                             espt_defconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
sh                          polaris_defconfig
m68k                        mvme16x_defconfig
sh                        sh7763rdp_defconfig
powerpc                     taishan_defconfig
mips                           ip22_defconfig
sh                           se7721_defconfig
arm                      tct_hammer_defconfig
sh                           se7712_defconfig
arm                         assabet_defconfig
arm                          ixp4xx_defconfig
ia64                             allyesconfig
powerpc                      pmac32_defconfig
sh                 kfr2r09-romimage_defconfig
x86_64                           alldefconfig
powerpc                      ppc6xx_defconfig
m68k                        m5407c3_defconfig
microblaze                      mmu_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                           se7724_defconfig
csky                             alldefconfig
sh                            hp6xx_defconfig
xtensa                    xip_kc705_defconfig
x86_64               randconfig-c001-20210910
x86_64               randconfig-c001-20210908
arm                  randconfig-c002-20210908
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                                defconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210908
x86_64               randconfig-a006-20210908
x86_64               randconfig-a003-20210908
x86_64               randconfig-a001-20210908
x86_64               randconfig-a005-20210908
x86_64               randconfig-a002-20210908
i386                 randconfig-a005-20210908
i386                 randconfig-a004-20210908
i386                 randconfig-a006-20210908
i386                 randconfig-a002-20210908
i386                 randconfig-a001-20210908
i386                 randconfig-a003-20210908
x86_64               randconfig-a013-20210910
x86_64               randconfig-a016-20210910
x86_64               randconfig-a012-20210910
x86_64               randconfig-a011-20210910
x86_64               randconfig-a014-20210910
x86_64               randconfig-a015-20210910
i386                 randconfig-a016-20210910
i386                 randconfig-a011-20210910
i386                 randconfig-a012-20210910
i386                 randconfig-a013-20210910
i386                 randconfig-a014-20210910
i386                 randconfig-a015-20210910
arc                  randconfig-r043-20210908
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
s390                 randconfig-c005-20210908
powerpc              randconfig-c003-20210908
mips                 randconfig-c004-20210908
i386                 randconfig-c001-20210908
x86_64               randconfig-a002-20210910
x86_64               randconfig-a003-20210910
x86_64               randconfig-a004-20210910
x86_64               randconfig-a006-20210910
x86_64               randconfig-a001-20210910
x86_64               randconfig-a005-20210910
i386                 randconfig-a004-20210910
i386                 randconfig-a005-20210910
i386                 randconfig-a002-20210910
i386                 randconfig-a006-20210910
i386                 randconfig-a001-20210910
i386                 randconfig-a003-20210910
x86_64               randconfig-a016-20210908
x86_64               randconfig-a011-20210908
x86_64               randconfig-a012-20210908
x86_64               randconfig-a015-20210908
x86_64               randconfig-a014-20210908
x86_64               randconfig-a013-20210908
i386                 randconfig-a012-20210908
i386                 randconfig-a015-20210908
i386                 randconfig-a011-20210908
i386                 randconfig-a013-20210908
i386                 randconfig-a014-20210908
i386                 randconfig-a016-20210908
riscv                randconfig-r042-20210908
hexagon              randconfig-r045-20210908
s390                 randconfig-r044-20210908
hexagon              randconfig-r041-20210908

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
