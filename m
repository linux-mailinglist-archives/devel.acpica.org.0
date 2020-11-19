Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9AE2B8AA1
	for <lists+devel-acpica@lfdr.de>; Thu, 19 Nov 2020 05:32:48 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 462B3100EBB76;
	Wed, 18 Nov 2020 20:32:46 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6852A100EBBCC
	for <devel@acpica.org>; Wed, 18 Nov 2020 20:32:44 -0800 (PST)
IronPort-SDR: wSjJWqh5Tq8BuSsNtO1T96gwHOs9H1oUDfXIaJP+SMaqchgqPQ4CIKGh7XYJf1hZIhqzuGfIs+
 Mf9OlpaRF2qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="168658515"
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400";
   d="scan'208";a="168658515"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2020 20:32:43 -0800
IronPort-SDR: gNAF51XrXcqAAQ9vM91+QizrRHKvgKczkkCndMsq3vw++sUAT3jhrrI2BXhKp/T3uvRdzkU8R+
 9EoCdFccLVZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400";
   d="scan'208";a="431108008"
Received: from lkp-server01.sh.intel.com (HELO cbf10a1dd0e4) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2020 20:32:42 -0800
Received: from kbuild by cbf10a1dd0e4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kfbcf-00004K-Gl; Thu, 19 Nov 2020 04:32:41 +0000
Date: Thu, 19 Nov 2020 12:32:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fb5f55f.shZdKr2N8+FrAMy9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 4OYP7IX726ISZJAZCFU5D53DNNCODTZ4
X-Message-ID-Hash: 4OYP7IX726ISZJAZCFU5D53DNNCODTZ4
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS e98c22d0368879136786ad5a500791d1846ab754
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4OYP7IX726ISZJAZCFU5D53DNNCODTZ4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: e98c22d0368879136786ad5a500791d1846ab754  Merge branches 'acpi-misc' and 'acpi-resources' into linux-next

elapsed time: 726m

configs tested: 202
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                         ap325rxa_defconfig
mips                  maltasmvp_eva_defconfig
mips                      pic32mzda_defconfig
powerpc                      bamboo_defconfig
powerpc                     tqm8560_defconfig
m68k                          sun3x_defconfig
arc                        nsim_700_defconfig
mips                      loongson3_defconfig
arm                           sunxi_defconfig
nios2                               defconfig
powerpc                    socrates_defconfig
um                           x86_64_defconfig
powerpc                        fsp2_defconfig
powerpc                      ppc6xx_defconfig
arm                            mps2_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                      arches_defconfig
powerpc                     tqm8555_defconfig
sh                        apsh4ad0a_defconfig
arm                         hackkit_defconfig
powerpc                     redwood_defconfig
m68k                         apollo_defconfig
mips                         bigsur_defconfig
xtensa                           alldefconfig
mips                        workpad_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                    adder875_defconfig
sh                ecovec24-romimage_defconfig
m68k                            mac_defconfig
sh                           sh2007_defconfig
sh                          polaris_defconfig
arm                       aspeed_g5_defconfig
arm                           stm32_defconfig
powerpc                     sbc8548_defconfig
arm                   milbeaut_m10v_defconfig
arm                         shannon_defconfig
arc                          axs101_defconfig
mips                         db1xxx_defconfig
m68k                          amiga_defconfig
arm                            zeus_defconfig
powerpc                      ep88xc_defconfig
arm                           sama5_defconfig
powerpc                      cm5200_defconfig
arm                        realview_defconfig
s390                          debug_defconfig
mips                            e55_defconfig
sh                     sh7710voipgw_defconfig
mips                 decstation_r4k_defconfig
sh                           se7206_defconfig
powerpc                   lite5200b_defconfig
powerpc                          g5_defconfig
arm                           omap1_defconfig
arm                       versatile_defconfig
sh                            hp6xx_defconfig
sh                          urquell_defconfig
powerpc                      obs600_defconfig
arm                             mxs_defconfig
sh                   sh7770_generic_defconfig
powerpc                     pq2fads_defconfig
parisc                generic-64bit_defconfig
arm                             rpc_defconfig
powerpc                      katmai_defconfig
powerpc                     mpc5200_defconfig
powerpc                 mpc8272_ads_defconfig
m68k                           sun3_defconfig
powerpc                    sam440ep_defconfig
xtensa                    xip_kc705_defconfig
powerpc                     tqm5200_defconfig
m68k                        m5407c3_defconfig
powerpc                     kilauea_defconfig
arm                        clps711x_defconfig
mips                malta_qemu_32r6_defconfig
mips                        nlm_xlr_defconfig
powerpc                      chrp32_defconfig
powerpc               mpc834x_itxgp_defconfig
c6x                         dsk6455_defconfig
arm                         lpc32xx_defconfig
powerpc                  iss476-smp_defconfig
riscv                    nommu_k210_defconfig
powerpc                    ge_imp3a_defconfig
m68k                        mvme16x_defconfig
sh                        sh7757lcr_defconfig
powerpc                      pcm030_defconfig
sparc                            allyesconfig
powerpc                      ppc64e_defconfig
powerpc                     skiroot_defconfig
sh                         ecovec24_defconfig
sh                           se7722_defconfig
arc                        vdk_hs38_defconfig
sh                          kfr2r09_defconfig
arm                     am200epdkit_defconfig
arm                           efm32_defconfig
arm                           corgi_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         rt305x_defconfig
sh                               alldefconfig
arm                      tct_hammer_defconfig
sh                             sh03_defconfig
arm                         axm55xx_defconfig
powerpc                       ebony_defconfig
sparc                       sparc32_defconfig
arc                                 defconfig
riscv                    nommu_virt_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                           ip32_defconfig
arm                       spear13xx_defconfig
sh                           se7705_defconfig
arm                         cm_x300_defconfig
sh                          r7780mp_defconfig
arc                              alldefconfig
powerpc                     mpc83xx_defconfig
powerpc                     tqm8540_defconfig
powerpc                   motionpro_defconfig
powerpc                         wii_defconfig
powerpc                     kmeter1_defconfig
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
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20201118
x86_64               randconfig-a003-20201118
x86_64               randconfig-a004-20201118
x86_64               randconfig-a002-20201118
x86_64               randconfig-a006-20201118
x86_64               randconfig-a001-20201118
i386                 randconfig-a006-20201119
i386                 randconfig-a005-20201119
i386                 randconfig-a002-20201119
i386                 randconfig-a001-20201119
i386                 randconfig-a003-20201119
i386                 randconfig-a004-20201119
i386                 randconfig-a006-20201118
i386                 randconfig-a005-20201118
i386                 randconfig-a002-20201118
i386                 randconfig-a001-20201118
i386                 randconfig-a003-20201118
i386                 randconfig-a004-20201118
i386                 randconfig-a012-20201118
i386                 randconfig-a014-20201118
i386                 randconfig-a016-20201118
i386                 randconfig-a011-20201118
i386                 randconfig-a013-20201118
i386                 randconfig-a015-20201118
i386                 randconfig-a012-20201119
i386                 randconfig-a014-20201119
i386                 randconfig-a016-20201119
i386                 randconfig-a011-20201119
i386                 randconfig-a013-20201119
i386                 randconfig-a015-20201119
riscv                            allyesconfig
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
x86_64               randconfig-a015-20201118
x86_64               randconfig-a014-20201118
x86_64               randconfig-a011-20201118
x86_64               randconfig-a013-20201118
x86_64               randconfig-a016-20201118
x86_64               randconfig-a012-20201118
x86_64               randconfig-a005-20201119
x86_64               randconfig-a003-20201119
x86_64               randconfig-a004-20201119
x86_64               randconfig-a002-20201119
x86_64               randconfig-a006-20201119
x86_64               randconfig-a001-20201119

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
