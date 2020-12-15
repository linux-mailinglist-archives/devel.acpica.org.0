Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA062DA8AB
	for <lists+devel-acpica@lfdr.de>; Tue, 15 Dec 2020 08:41:59 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B0066100EBBAF;
	Mon, 14 Dec 2020 23:41:57 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 29844100EBBAB
	for <devel@acpica.org>; Mon, 14 Dec 2020 23:41:55 -0800 (PST)
IronPort-SDR: 6z7vwLjeMh7tebD1tNK0cjfictjVE/Y6gBwHx8Jg2ETNuqAKQgb3m+sM4N9QPTE6Mpcbrl/9Zu
 E2NtGkalM1yQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="236424736"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400";
   d="scan'208";a="236424736"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 23:41:55 -0800
IronPort-SDR: i1FYiCwSJDWBO5kxEEGT6OEEHpZpPlHavZMBlV77F7cgNotitnTm4hq90prvbNiFT6BnroVSok
 rP4j/wthio/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400";
   d="scan'208";a="411728191"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 14 Dec 2020 23:41:53 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kp4y0-0000el-Of; Tue, 15 Dec 2020 07:41:52 +0000
Date: Tue, 15 Dec 2020 15:41:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fd868a2.X3gqRbimPKaH9O8+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: DK2DXL6FLESSGCMHET52OYIHNKYOR44C
X-Message-ID-Hash: DK2DXL6FLESSGCMHET52OYIHNKYOR44C
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 08e85a810cae7e70eae555a109236dd8f8730593
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DK2DXL6FLESSGCMHET52OYIHNKYOR44C/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 08e85a810cae7e70eae555a109236dd8f8730593  Merge branch 'pm-cpufreq' into linux-next

elapsed time: 724m

configs tested: 156
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                          axs101_defconfig
sh                           se7206_defconfig
arm                              zx_defconfig
powerpc                      arches_defconfig
arc                              alldefconfig
powerpc                     kmeter1_defconfig
arc                      axs103_smp_defconfig
powerpc                      walnut_defconfig
sparc                               defconfig
m68k                          atari_defconfig
powerpc                 mpc8560_ads_defconfig
arm                      tct_hammer_defconfig
arm                       cns3420vb_defconfig
mips                      pistachio_defconfig
arc                        nsimosci_defconfig
xtensa                    xip_kc705_defconfig
mips                           xway_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                     ppa8548_defconfig
powerpc                       maple_defconfig
h8300                     edosk2674_defconfig
sh                          sdk7780_defconfig
m68k                           sun3_defconfig
arm                            u300_defconfig
sh                          rsk7269_defconfig
powerpc                     mpc83xx_defconfig
mips                           ip32_defconfig
powerpc                     tqm8540_defconfig
arm                         bcm2835_defconfig
powerpc                    socrates_defconfig
mips                     loongson1b_defconfig
powerpc                        fsp2_defconfig
mips                        qi_lb60_defconfig
arm                        multi_v7_defconfig
arm                       aspeed_g4_defconfig
arm                        shmobile_defconfig
mips                            ar7_defconfig
powerpc                          g5_defconfig
powerpc                     stx_gp3_defconfig
powerpc                      obs600_defconfig
mips                      bmips_stb_defconfig
mips                     loongson1c_defconfig
powerpc                      pmac32_defconfig
xtensa                         virt_defconfig
sh                        edosk7760_defconfig
mips                       capcella_defconfig
sh                          lboxre2_defconfig
sh                          sdk7786_defconfig
sh                            titan_defconfig
powerpc                    gamecube_defconfig
c6x                        evmc6472_defconfig
sh                           se7722_defconfig
arm                        spear6xx_defconfig
mips                        nlm_xlr_defconfig
mips                            gpr_defconfig
mips                       lemote2f_defconfig
sh                          rsk7264_defconfig
powerpc                   currituck_defconfig
arm                           sunxi_defconfig
sh                         ap325rxa_defconfig
arc                                 defconfig
sh                         microdev_defconfig
powerpc64                        alldefconfig
mips                 decstation_r4k_defconfig
mips                        nlm_xlp_defconfig
mips                         rt305x_defconfig
mips                  cavium_octeon_defconfig
sh                   sh7724_generic_defconfig
sh                         apsh4a3a_defconfig
h8300                               defconfig
sh                           se7619_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20201214
i386                 randconfig-a004-20201214
i386                 randconfig-a003-20201214
i386                 randconfig-a002-20201214
i386                 randconfig-a006-20201214
i386                 randconfig-a005-20201214
i386                 randconfig-a001-20201213
i386                 randconfig-a004-20201213
i386                 randconfig-a003-20201213
i386                 randconfig-a002-20201213
i386                 randconfig-a005-20201213
i386                 randconfig-a006-20201213
x86_64               randconfig-a016-20201214
x86_64               randconfig-a012-20201214
x86_64               randconfig-a013-20201214
x86_64               randconfig-a015-20201214
x86_64               randconfig-a014-20201214
x86_64               randconfig-a011-20201214
i386                 randconfig-a014-20201214
i386                 randconfig-a013-20201214
i386                 randconfig-a012-20201214
i386                 randconfig-a011-20201214
i386                 randconfig-a015-20201214
i386                 randconfig-a016-20201214
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
x86_64               randconfig-a003-20201214
x86_64               randconfig-a006-20201214
x86_64               randconfig-a002-20201214
x86_64               randconfig-a005-20201214
x86_64               randconfig-a004-20201214
x86_64               randconfig-a001-20201214
x86_64               randconfig-a016-20201213
x86_64               randconfig-a012-20201213
x86_64               randconfig-a013-20201213
x86_64               randconfig-a015-20201213
x86_64               randconfig-a014-20201213
x86_64               randconfig-a011-20201213

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
