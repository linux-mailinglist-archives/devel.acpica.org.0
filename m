Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF8B3249EE
	for <lists+devel-acpica@lfdr.de>; Thu, 25 Feb 2021 06:06:19 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3934A100EBB9B;
	Wed, 24 Feb 2021 21:06:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 43FF6100EBB94
	for <devel@acpica.org>; Wed, 24 Feb 2021 21:06:14 -0800 (PST)
IronPort-SDR: t16JSJ0Qv84U2/vucnlluFS8dBtdbGXoqNU0gz7qwBidSAjeEL1AO6b65WIiGm0jDJgdaYKhJa
 9v3kt1n4u6BA==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="249468493"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400";
   d="scan'208";a="249468493"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2021 21:06:14 -0800
IronPort-SDR: J6oNWdpzBIsWGrrGo7qs+37JCED0mk2Rs/NwLPM2TsQAk4T9SK/J+aWxphS7l06VB3Z1UsLu77
 kaemGNdJnhhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400";
   d="scan'208";a="367261224"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 24 Feb 2021 21:06:12 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lF8qp-0002VX-Vd; Thu, 25 Feb 2021 05:06:11 +0000
Date: Thu, 25 Feb 2021 13:05:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60373024.wiSJ29Hw53lVyzbJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: GBLVYSFEH23CAHPZHMC2XTTD5D747E3I
X-Message-ID-Hash: GBLVYSFEH23CAHPZHMC2XTTD5D747E3I
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS aa22459146987c639004f1fe5a30fe95743c1a1c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GBLVYSFEH23CAHPZHMC2XTTD5D747E3I/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: aa22459146987c639004f1fe5a30fe95743c1a1c  Merge branches 'acpi-platform' and 'acpi-tables' into linux-next

elapsed time: 728m

configs tested: 134
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     tqm5200_defconfig
mips                         db1xxx_defconfig
arm                          pcm027_defconfig
ia64                            zx1_defconfig
sh                            migor_defconfig
powerpc                     ppa8548_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         s3c6400_defconfig
arm                        magician_defconfig
mips                        bcm47xx_defconfig
sh                            shmin_defconfig
arm                        clps711x_defconfig
arm                          moxart_defconfig
powerpc                     skiroot_defconfig
arm                      jornada720_defconfig
nios2                            allyesconfig
arc                        nsim_700_defconfig
riscv                             allnoconfig
riscv                               defconfig
powerpc                     stx_gp3_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
powerpc                      cm5200_defconfig
arm                         s3c2410_defconfig
arc                        nsimosci_defconfig
powerpc                    adder875_defconfig
sh                            titan_defconfig
sparc                       sparc64_defconfig
arm                             ezx_defconfig
sh                          rsk7201_defconfig
arm                           corgi_defconfig
mips                           ip27_defconfig
arm                           u8500_defconfig
mips                        jmr3927_defconfig
powerpc                      acadia_defconfig
mips                  decstation_64_defconfig
sh                           se7750_defconfig
m68k                       m5475evb_defconfig
arm                           sama5_defconfig
nios2                               defconfig
mips                            ar7_defconfig
arm                        multi_v7_defconfig
sh                           se7780_defconfig
sh                               allmodconfig
parisc                generic-64bit_defconfig
arm                           tegra_defconfig
xtensa                              defconfig
arm                         cm_x300_defconfig
powerpc                    ge_imp3a_defconfig
arm                             mxs_defconfig
arm                            mmp2_defconfig
arm                          lpd270_defconfig
mips                           ci20_defconfig
arm                      tct_hammer_defconfig
c6x                                 defconfig
powerpc                     taishan_defconfig
powerpc                       eiger_defconfig
powerpc                     mpc83xx_defconfig
mips                           ip28_defconfig
arc                        vdk_hs38_defconfig
mips                         tb0219_defconfig
arm                        realview_defconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210223
i386                 randconfig-a006-20210223
i386                 randconfig-a004-20210223
i386                 randconfig-a003-20210223
i386                 randconfig-a001-20210223
i386                 randconfig-a002-20210223
x86_64               randconfig-a015-20210223
x86_64               randconfig-a011-20210223
x86_64               randconfig-a012-20210223
x86_64               randconfig-a016-20210223
x86_64               randconfig-a014-20210223
x86_64               randconfig-a013-20210223
i386                 randconfig-a013-20210223
i386                 randconfig-a012-20210223
i386                 randconfig-a011-20210223
i386                 randconfig-a014-20210223
i386                 randconfig-a016-20210223
i386                 randconfig-a015-20210223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210223
x86_64               randconfig-a002-20210223
x86_64               randconfig-a003-20210223
x86_64               randconfig-a005-20210223
x86_64               randconfig-a006-20210223
x86_64               randconfig-a004-20210223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
