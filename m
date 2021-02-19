Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A88BA320149
	for <lists+devel-acpica@lfdr.de>; Fri, 19 Feb 2021 23:20:17 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6B8E2100EBBB1;
	Fri, 19 Feb 2021 14:20:15 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C0810100EC1D8
	for <devel@acpica.org>; Fri, 19 Feb 2021 14:20:12 -0800 (PST)
IronPort-SDR: /psSLTmgNc+Ohh5CBAMlEcmKxnG73Mjt7wOX0l7ngxpJvqarwSgm1HIYhcRhZ/mnhv5gT1UPSZ
 fSa5a9p3HyoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="184096411"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400";
   d="scan'208";a="184096411"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2021 14:20:12 -0800
IronPort-SDR: pC71vhmFU2tDf6B0FQIZQWZDEOAgWg6yfu5JluhbEiLNoSljw3CVzq0128QAxaKgBDvTaNghzf
 kIUWcTc0N00Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400";
   d="scan'208";a="440443242"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 19 Feb 2021 14:20:10 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lDE89-000AfC-Fx; Fri, 19 Feb 2021 22:20:09 +0000
Date: Sat, 20 Feb 2021 06:19:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6030398b.B2E7yyx8RuCeVTwN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: CBOHUMRZ4I3KVCHNL462UYO4SJ66P4IM
X-Message-ID-Hash: CBOHUMRZ4I3KVCHNL462UYO4SJ66P4IM
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 8b72d3aa065ce33df4f042840078542b1e5d2c45
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CBOHUMRZ4I3KVCHNL462UYO4SJ66P4IM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 8b72d3aa065ce33df4f042840078542b1e5d2c45  Merge branches 'pm-cpufreq-fixes' and 'pm-opp-fixes' into linux-next

elapsed time: 723m

configs tested: 130
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      cm5200_defconfig
mips                       rbtx49xx_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7780_defconfig
arm                        mvebu_v5_defconfig
powerpc                     sequoia_defconfig
ia64                             alldefconfig
sh                             espt_defconfig
arm                          pcm027_defconfig
mips                      pistachio_defconfig
arm                  colibri_pxa270_defconfig
sh                            migor_defconfig
arm                          pxa910_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                  storcenter_defconfig
mips                       bmips_be_defconfig
arm                            u300_defconfig
powerpc                  iss476-smp_defconfig
arm                        spear3xx_defconfig
powerpc                   motionpro_defconfig
arm                             pxa_defconfig
sh                          polaris_defconfig
arm                         at91_dt_defconfig
sh                        edosk7760_defconfig
powerpc                 mpc834x_mds_defconfig
arm                         bcm2835_defconfig
arm                         s5pv210_defconfig
powerpc                 canyonlands_defconfig
sh                     sh7710voipgw_defconfig
powerpc                      ppc44x_defconfig
mips                         rt305x_defconfig
arm                       omap2plus_defconfig
powerpc                    amigaone_defconfig
sparc64                          alldefconfig
mips                          rb532_defconfig
mips                           jazz_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     sbc8548_defconfig
arm                         hackkit_defconfig
powerpc                    adder875_defconfig
sh                           se7724_defconfig
arm                           stm32_defconfig
arm                          imote2_defconfig
xtensa                         virt_defconfig
arm                           corgi_defconfig
m68k                        mvme16x_defconfig
sh                   sh7770_generic_defconfig
arm                            hisi_defconfig
ia64                            zx1_defconfig
sh                                  defconfig
mips                     cu1830-neo_defconfig
sparc                               defconfig
arc                         haps_hs_defconfig
powerpc                       ppc64_defconfig
sh                          rsk7201_defconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
i386                 randconfig-a005-20210219
i386                 randconfig-a003-20210219
i386                 randconfig-a002-20210219
i386                 randconfig-a004-20210219
i386                 randconfig-a001-20210219
i386                 randconfig-a006-20210219
x86_64               randconfig-a012-20210219
x86_64               randconfig-a016-20210219
x86_64               randconfig-a013-20210219
x86_64               randconfig-a015-20210219
x86_64               randconfig-a011-20210219
x86_64               randconfig-a014-20210219
i386                 randconfig-a016-20210219
i386                 randconfig-a012-20210219
i386                 randconfig-a014-20210219
i386                 randconfig-a013-20210219
i386                 randconfig-a011-20210219
i386                 randconfig-a015-20210219
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210219
x86_64               randconfig-a001-20210219
x86_64               randconfig-a004-20210219
x86_64               randconfig-a002-20210219
x86_64               randconfig-a005-20210219
x86_64               randconfig-a006-20210219

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
