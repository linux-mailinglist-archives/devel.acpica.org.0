Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A833560CA
	for <lists+devel-acpica@lfdr.de>; Wed,  7 Apr 2021 03:30:47 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5B01B100EB34A;
	Tue,  6 Apr 2021 18:30:45 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8F182100EB349
	for <devel@acpica.org>; Tue,  6 Apr 2021 18:30:43 -0700 (PDT)
IronPort-SDR: QMTVapiDMRgM6cS51HL0rfQnl23OiwD1ZVscqG1gSzONkE6fxCSQyiLxvuV53KJUp/T6/A40S5
 s2iTJWUhgdjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="193238244"
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400";
   d="scan'208";a="193238244"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 18:30:42 -0700
IronPort-SDR: u/2AbkfEQN4Oc4uEgi3JJrqqljARcvakSQvMC02g1mTISd38mt3Ap2J9olem0tcixWDI8gcHyA
 3zbQ5r3yIqdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400";
   d="scan'208";a="381131209"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 06 Apr 2021 18:30:40 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTx1j-000CYz-JL; Wed, 07 Apr 2021 01:30:39 +0000
Date: Wed, 07 Apr 2021 09:29:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <606d0b0e.quhv+JGV8TMjRHEK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NHPJYBXU4CQ372R2AF6A76ENEM3JETMP
X-Message-ID-Hash: NHPJYBXU4CQ372R2AF6A76ENEM3JETMP
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS cf66fa75745a0b1237bc54340c8148170dc63edc
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NHPJYBXU4CQ372R2AF6A76ENEM3JETMP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: cf66fa75745a0b1237bc54340c8148170dc63edc  Merge branch 'devprop' into linux-next

elapsed time: 727m

configs tested: 199
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
arm                        clps711x_defconfig
sh                         microdev_defconfig
powerpc                      bamboo_defconfig
mips                      pistachio_defconfig
sh                           se7619_defconfig
mips                      fuloong2e_defconfig
arm                          badge4_defconfig
arm                  colibri_pxa270_defconfig
mips                      maltaaprp_defconfig
ia64                                defconfig
sparc                            alldefconfig
powerpc                    amigaone_defconfig
powerpc                        fsp2_defconfig
powerpc                      ppc6xx_defconfig
sh                        apsh4ad0a_defconfig
arm                         lpc32xx_defconfig
arm                      footbridge_defconfig
arm                          ep93xx_defconfig
powerpc                         wii_defconfig
h8300                            alldefconfig
m68k                        stmark2_defconfig
arc                        nsimosci_defconfig
arm                        shmobile_defconfig
mips                            ar7_defconfig
arm                           spitz_defconfig
m68k                            q40_defconfig
powerpc                    mvme5100_defconfig
mips                          ath25_defconfig
powerpc                     tqm8540_defconfig
sh                        sh7785lcr_defconfig
riscv                    nommu_virt_defconfig
arm                     am200epdkit_defconfig
xtensa                  audio_kc705_defconfig
arm                      integrator_defconfig
arm                           sunxi_defconfig
mips                malta_kvm_guest_defconfig
mips                         bigsur_defconfig
powerpc                     sbc8548_defconfig
xtensa                              defconfig
parisc                generic-32bit_defconfig
powerpc                     mpc83xx_defconfig
powerpc64                        alldefconfig
arm                      jornada720_defconfig
arm                      tct_hammer_defconfig
csky                             alldefconfig
mips                           rs90_defconfig
m68k                       bvme6000_defconfig
sh                           se7780_defconfig
xtensa                generic_kc705_defconfig
arm                           omap1_defconfig
arm                          exynos_defconfig
sh                           sh2007_defconfig
sh                        edosk7705_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                     pq2fads_defconfig
arm                       versatile_defconfig
arm                        trizeps4_defconfig
arc                      axs103_smp_defconfig
sh                         apsh4a3a_defconfig
powerpc                    klondike_defconfig
mips                     cu1000-neo_defconfig
mips                          rb532_defconfig
arc                          axs101_defconfig
openrisc                  or1klitex_defconfig
arm                        spear6xx_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     tqm8541_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          sdk7780_defconfig
sh                        edosk7760_defconfig
arc                     haps_hs_smp_defconfig
sh                           se7724_defconfig
m68k                        m5407c3_defconfig
arm                      pxa255-idp_defconfig
arm                        mvebu_v7_defconfig
arm64                            alldefconfig
h8300                    h8300h-sim_defconfig
mips                       lemote2f_defconfig
openrisc                    or1ksim_defconfig
ia64                             alldefconfig
m68k                          multi_defconfig
mips                   sb1250_swarm_defconfig
nios2                            allyesconfig
mips                        bcm47xx_defconfig
mips                           ip32_defconfig
arm                          pxa168_defconfig
powerpc                   motionpro_defconfig
sh                   sh7770_generic_defconfig
arc                           tb10x_defconfig
mips                       bmips_be_defconfig
s390                       zfcpdump_defconfig
xtensa                           allyesconfig
powerpc                     tqm8548_defconfig
m68k                       m5208evb_defconfig
arc                            hsdk_defconfig
powerpc                     pseries_defconfig
arm                       aspeed_g5_defconfig
ia64                      gensparse_defconfig
arm                           viper_defconfig
mips                 decstation_r4k_defconfig
powerpc                     akebono_defconfig
arc                 nsimosci_hs_smp_defconfig
parisc                generic-64bit_defconfig
arm                    vt8500_v6_v7_defconfig
mips                           gcw0_defconfig
powerpc                 mpc8560_ads_defconfig
arm                            mmp2_defconfig
powerpc                     sequoia_defconfig
arc                     nsimosci_hs_defconfig
arm                       cns3420vb_defconfig
powerpc                      acadia_defconfig
ia64                         bigsur_defconfig
arm                        multi_v7_defconfig
arm                           tegra_defconfig
powerpc                 mpc836x_mds_defconfig
arc                         haps_hs_defconfig
sparc64                             defconfig
xtensa                          iss_defconfig
powerpc                 mpc837x_mds_defconfig
arm                     davinci_all_defconfig
arc                        vdk_hs38_defconfig
sh                          rsk7203_defconfig
sh                          sdk7786_defconfig
sparc                       sparc64_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210406
x86_64               randconfig-a003-20210406
x86_64               randconfig-a005-20210406
x86_64               randconfig-a001-20210406
x86_64               randconfig-a002-20210406
x86_64               randconfig-a006-20210406
i386                 randconfig-a006-20210406
i386                 randconfig-a003-20210406
i386                 randconfig-a001-20210406
i386                 randconfig-a004-20210406
i386                 randconfig-a005-20210406
i386                 randconfig-a002-20210406
i386                 randconfig-a014-20210406
i386                 randconfig-a016-20210406
i386                 randconfig-a011-20210406
i386                 randconfig-a012-20210406
i386                 randconfig-a015-20210406
i386                 randconfig-a013-20210406
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210406
x86_64               randconfig-a015-20210406
x86_64               randconfig-a013-20210406
x86_64               randconfig-a011-20210406
x86_64               randconfig-a012-20210406
x86_64               randconfig-a016-20210406

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
