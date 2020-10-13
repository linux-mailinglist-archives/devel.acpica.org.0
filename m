Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C7B28C6CF
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Oct 2020 03:35:25 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 44861156ABF44;
	Mon, 12 Oct 2020 18:35:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6C21C156ABF42
	for <devel@acpica.org>; Mon, 12 Oct 2020 18:35:22 -0700 (PDT)
IronPort-SDR: iAddVwfwMkmc3L+0tlnJ/IwI7NPn5sAKKzbmsOACuiqAYJU2vkHAsXLXbVbWiHYPl9i8GMZCXy
 pJcrPSWhZkPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165889569"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400";
   d="scan'208";a="165889569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 18:35:21 -0700
IronPort-SDR: SN8WWaIprLB1wQSmfiEQDM4uoDndPtx+SZ4fyiWBjGzYk2Z+buQh8UtnbuvNTyyTOdBuufKq2E
 abIQqRhw/3uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400";
   d="scan'208";a="530190952"
Received: from lkp-server01.sh.intel.com (HELO aa1d92d39b27) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 12 Oct 2020 18:35:19 -0700
Received: from kbuild by aa1d92d39b27 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kS9Dj-0000FD-4d; Tue, 13 Oct 2020 01:35:19 +0000
Date: Tue, 13 Oct 2020 09:34:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f850430.JehQN60BoOCjEESB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: CHQ4Q2LPOCTMPECVMB4BNORQRY5JNX2A
X-Message-ID-Hash: CHQ4Q2LPOCTMPECVMB4BNORQRY5JNX2A
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 91e0225c546b542d828011feef9fb155e18b7941
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CHQ4Q2LPOCTMPECVMB4BNORQRY5JNX2A/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 91e0225c546b542d828011feef9fb155e18b7941  Merge branch 'pm-cpufreq' into linux-next

elapsed time: 721m

configs tested: 178
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm                     eseries_pxa_defconfig
sh                             shx3_defconfig
mips                            e55_defconfig
arm                       spear13xx_defconfig
arm                          imote2_defconfig
arc                          axs101_defconfig
arm                      tct_hammer_defconfig
m68k                        mvme16x_defconfig
mips                          rm200_defconfig
mips                           jazz_defconfig
sh                   sh7770_generic_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7264_defconfig
powerpc                       ebony_defconfig
arm                            mmp2_defconfig
arm                           spitz_defconfig
powerpc                  iss476-smp_defconfig
s390                          debug_defconfig
ia64                                defconfig
powerpc                      cm5200_defconfig
sh                          rsk7201_defconfig
h8300                            allyesconfig
arm                       mainstone_defconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     asp8347_defconfig
arm                  colibri_pxa270_defconfig
mips                      loongson3_defconfig
powerpc                     kilauea_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                         palmz72_defconfig
arm                      integrator_defconfig
arm                        multi_v7_defconfig
arm                              alldefconfig
sh                             espt_defconfig
c6x                         dsk6455_defconfig
arm                      footbridge_defconfig
mips                         mpc30x_defconfig
sh                        dreamcast_defconfig
mips                         db1xxx_defconfig
arm                        realview_defconfig
mips                           ip32_defconfig
powerpc                 mpc834x_mds_defconfig
xtensa                    xip_kc705_defconfig
sh                   secureedge5410_defconfig
arm                          iop32x_defconfig
mips                      pistachio_defconfig
openrisc                    or1ksim_defconfig
powerpc                 mpc85xx_cds_defconfig
arc                        vdk_hs38_defconfig
powerpc                    amigaone_defconfig
powerpc                    mvme5100_defconfig
sh                              ul2_defconfig
arm                            qcom_defconfig
sh                        sh7785lcr_defconfig
m68k                        stmark2_defconfig
xtensa                  cadence_csp_defconfig
x86_64                           allyesconfig
mips                      fuloong2e_defconfig
mips                           xway_defconfig
arm                            xcep_defconfig
powerpc                     tqm8548_defconfig
parisc                              defconfig
arc                              allyesconfig
powerpc                 mpc8313_rdb_defconfig
openrisc                            defconfig
ia64                         bigsur_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                       maple_defconfig
powerpc                     powernv_defconfig
sh                           se7712_defconfig
arm                         lubbock_defconfig
sh                     sh7710voipgw_defconfig
um                           x86_64_defconfig
nios2                            allyesconfig
powerpc                          g5_defconfig
arc                             nps_defconfig
m68k                        m5272c3_defconfig
mips                           ip28_defconfig
arm                         socfpga_defconfig
sh                          urquell_defconfig
arc                            hsdk_defconfig
openrisc                         alldefconfig
arm                           h3600_defconfig
sh                             sh03_defconfig
powerpc                      ppc40x_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                       omap2plus_defconfig
mips                       lemote2f_defconfig
mips                         cobalt_defconfig
arm                           corgi_defconfig
m68k                        m5307c3_defconfig
sh                          sdk7780_defconfig
um                            kunit_defconfig
arm                      jornada720_defconfig
h8300                     edosk2674_defconfig
powerpc                      pcm030_defconfig
arm64                            alldefconfig
arm                             rpc_defconfig
powerpc                     tqm8555_defconfig
arm                       multi_v4t_defconfig
powerpc                   motionpro_defconfig
mips                        workpad_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                  mpc885_ads_defconfig
arc                           tb10x_defconfig
mips                          ath25_defconfig
parisc                           allyesconfig
nios2                         3c120_defconfig
mips                           ip27_defconfig
powerpc                     pq2fads_defconfig
m68k                             allmodconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201012
i386                 randconfig-a006-20201012
i386                 randconfig-a001-20201012
i386                 randconfig-a003-20201012
i386                 randconfig-a004-20201012
i386                 randconfig-a002-20201012
x86_64               randconfig-a016-20201012
x86_64               randconfig-a015-20201012
x86_64               randconfig-a012-20201012
x86_64               randconfig-a013-20201012
x86_64               randconfig-a014-20201012
x86_64               randconfig-a011-20201012
i386                 randconfig-a016-20201012
i386                 randconfig-a015-20201012
i386                 randconfig-a013-20201012
i386                 randconfig-a012-20201012
i386                 randconfig-a011-20201012
i386                 randconfig-a014-20201012
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201012
x86_64               randconfig-a002-20201012
x86_64               randconfig-a006-20201012
x86_64               randconfig-a001-20201012
x86_64               randconfig-a003-20201012
x86_64               randconfig-a005-20201012

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
