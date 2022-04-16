Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2005031F7
	for <lists+devel-acpica@lfdr.de>; Sat, 16 Apr 2022 02:04:48 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 15F60100F3FA0;
	Fri, 15 Apr 2022 17:04:46 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D55EB100F395D
	for <devel@acpica.org>; Fri, 15 Apr 2022 17:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650067483; x=1681603483;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=HSZPWAGVL0OCHmyMupnEy3BzizzwkFnuvdX77ziaNz8=;
  b=mUWRmKdGA4oH06tN25grT8AoXwbsPKMLczb47k9yTubLH9C6dOgrPrqA
   GBNz0ke50y2iVNtnx+S9rN2ldoyXUNiHSrzhqyeQLPca3i4XZNDiaPM1J
   1P08saSUeWrr2VhVTlvpWDHl1ZS5oMN+gSgh8l1+sA0IDEPKBMbXGMz4C
   lXs6DVbjTtF2H/vsaI8wDpXeLf//Xhq/sUwCazr1bF2GdX1EAMcHGAKMT
   W1EuG2GM6iQT7/p6S64CqpeYGRcaGPomQPWqDs0av6gRDOZRSDiE7UU/B
   FMIGcLX3BsV6Nk9U1GDonzI3+ygzjx2Nwhcwja/Yp2G1tV0nEmAfCxgdT
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="262712082"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400";
   d="scan'208";a="262712082"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 17:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400";
   d="scan'208";a="509115384"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 15 Apr 2022 17:04:40 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nfVvb-0002Yz-JJ;
	Sat, 16 Apr 2022 00:04:39 +0000
Date: Sat, 16 Apr 2022 08:04:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <625a0814.ppOYLNShBLe1ZHKS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: UZKBHIATNC6MTLMRBH2C662H6N2SWD4I
X-Message-ID-Hash: UZKBHIATNC6MTLMRBH2C662H6N2SWD4I
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 5675fd487f2b221a27a44f6ac78bdb2e5f235052
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UZKBHIATNC6MTLMRBH2C662H6N2SWD4I/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 5675fd487f2b221a27a44f6ac78bdb2e5f235052  Merge branch 'thermal-misc' into linux-next

elapsed time: 1802m

configs tested: 185
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220415
powerpc              randconfig-c003-20220414
sh                   secureedge5410_defconfig
powerpc                   motionpro_defconfig
arc                     haps_hs_smp_defconfig
arc                          axs103_defconfig
m68k                        stmark2_defconfig
arm                         lpc18xx_defconfig
mips                     loongson1b_defconfig
arm                        spear6xx_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                      cm5200_defconfig
sparc                       sparc64_defconfig
sh                          rsk7264_defconfig
mips                           xway_defconfig
xtensa                       common_defconfig
powerpc                     taishan_defconfig
arc                           tb10x_defconfig
m68k                           sun3_defconfig
arm                       imx_v6_v7_defconfig
sh                               j2_defconfig
powerpc64                           defconfig
powerpc                      bamboo_defconfig
microblaze                          defconfig
sparc                            allyesconfig
arm                          pxa910_defconfig
arm                         lubbock_defconfig
arm                           tegra_defconfig
ia64                                defconfig
powerpc                         wii_defconfig
arc                        vdk_hs38_defconfig
mips                           jazz_defconfig
sh                           se7724_defconfig
arm                           imxrt_defconfig
arm                            mps2_defconfig
arm                             rpc_defconfig
sh                   sh7770_generic_defconfig
powerpc                 mpc834x_mds_defconfig
arm                          lpd270_defconfig
powerpc                        warp_defconfig
i386                                defconfig
powerpc                       eiger_defconfig
arm                       multi_v4t_defconfig
powerpc                     mpc83xx_defconfig
sh                        sh7757lcr_defconfig
mips                      maltasmvp_defconfig
sh                                  defconfig
alpha                            allyesconfig
mips                            gpr_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc64                        alldefconfig
arm                     eseries_pxa_defconfig
sh                   sh7724_generic_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                           se7722_defconfig
i386                             alldefconfig
powerpc                      ppc6xx_defconfig
x86_64                              defconfig
arm                         axm55xx_defconfig
arm                          pxa3xx_defconfig
alpha                            alldefconfig
powerpc                     ep8248e_defconfig
arc                        nsim_700_defconfig
xtensa                  cadence_csp_defconfig
xtensa                  nommu_kc705_defconfig
sh                         microdev_defconfig
mips                         bigsur_defconfig
m68k                          atari_defconfig
sh                           se7712_defconfig
mips                     decstation_defconfig
s390                          debug_defconfig
um                                  defconfig
powerpc                     tqm8555_defconfig
s390                                defconfig
sh                           se7343_defconfig
sh                          rsk7269_defconfig
arm                  randconfig-c002-20220414
x86_64                        randconfig-c001
arm                  randconfig-c002-20220415
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220415
arc                  randconfig-r043-20220415
s390                 randconfig-r044-20220415
arc                  randconfig-r043-20220414
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220414
arm                  randconfig-c002-20220414
i386                          randconfig-c001
riscv                randconfig-c006-20220414
mips                      malta_kvm_defconfig
powerpc                    gamecube_defconfig
hexagon                             defconfig
mips                         tb0287_defconfig
x86_64                           allyesconfig
mips                           ip28_defconfig
arm                           omap1_defconfig
arm                            dove_defconfig
powerpc                      acadia_defconfig
powerpc                 mpc8313_rdb_defconfig
riscv                             allnoconfig
powerpc                     kmeter1_defconfig
arm                       mainstone_defconfig
mips                       rbtx49xx_defconfig
arm                      tct_hammer_defconfig
powerpc                     tqm5200_defconfig
arm                        multi_v5_defconfig
mips                           mtx1_defconfig
arm                        spear3xx_defconfig
arm                       aspeed_g4_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                      obs600_defconfig
arm                        vexpress_defconfig
arm                          collie_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
riscv                randconfig-r042-20220414
hexagon              randconfig-r041-20220414
hexagon              randconfig-r045-20220414
s390                 randconfig-r044-20220414

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
