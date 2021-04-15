Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5B335FFB9
	for <lists+devel-acpica@lfdr.de>; Thu, 15 Apr 2021 03:48:41 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 55B6F100F2276;
	Wed, 14 Apr 2021 18:48:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8BC83100F2271
	for <devel@acpica.org>; Wed, 14 Apr 2021 18:48:37 -0700 (PDT)
IronPort-SDR: /i4CD09FLa1Osh6gRXzqHWobe2mjO77YwTXP/DT8omI2G0jeCHFwUBn3Hh0TvmS5uCVHqnAF8D
 nIjFKiUJ9XPg==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="194796937"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400";
   d="scan'208";a="194796937"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 18:48:36 -0700
IronPort-SDR: A6E8cr4GjLHdjpUAYN3q5tPxpKK+aPwgVJJsW7lrsaj32f3pehLI5Au4xU0mhe6PR7oMRXqEsJ
 H3h/Au+B944Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400";
   d="scan'208";a="424991557"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 14 Apr 2021 18:48:34 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWr7P-0000Z3-Lq; Thu, 15 Apr 2021 01:48:31 +0000
Date: Thu, 15 Apr 2021 09:48:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60779b60.kwysEistnLZUV/r6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: GZOCYKLE7RLGR4CUI3MJB5BM47E3KN62
X-Message-ID-Hash: GZOCYKLE7RLGR4CUI3MJB5BM47E3KN62
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS a5b1c231c4a84cae19849db076b8a56ffbc8a079
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GZOCYKLE7RLGR4CUI3MJB5BM47E3KN62/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: a5b1c231c4a84cae19849db076b8a56ffbc8a079  Merge branches 'acpi-scan' and 'acpi-utils' into linux-next

elapsed time: 723m

configs tested: 193
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
mips                           ip28_defconfig
arm                           corgi_defconfig
powerpc                     asp8347_defconfig
ia64                        generic_defconfig
arm                       versatile_defconfig
arc                     nsimosci_hs_defconfig
m68k                          sun3x_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     mpc83xx_defconfig
ia64                         bigsur_defconfig
arc                        vdk_hs38_defconfig
sparc                            alldefconfig
powerpc                 mpc8272_ads_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                      cm5200_defconfig
mips                        maltaup_defconfig
xtensa                    smp_lx200_defconfig
mips                           rs90_defconfig
powerpc                       maple_defconfig
arm                          ep93xx_defconfig
mips                            e55_defconfig
ia64                      gensparse_defconfig
mips                           gcw0_defconfig
sh                           se7724_defconfig
powerpc                      obs600_defconfig
arm                            mmp2_defconfig
arc                        nsim_700_defconfig
sh                          urquell_defconfig
arm                       cns3420vb_defconfig
powerpc                          g5_defconfig
arm                         palmz72_defconfig
sh                          rsk7269_defconfig
mips                        bcm47xx_defconfig
sh                        sh7757lcr_defconfig
powerpc                        icon_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                         tb0287_defconfig
arm                          pxa3xx_defconfig
sh                           se7722_defconfig
powerpc                     ep8248e_defconfig
nds32                            alldefconfig
arm                         socfpga_defconfig
sparc64                             defconfig
powerpc                        warp_defconfig
mips                        nlm_xlr_defconfig
h8300                       h8s-sim_defconfig
powerpc                       ebony_defconfig
s390                             allyesconfig
powerpc                      ppc6xx_defconfig
mips                          rb532_defconfig
sh                        sh7785lcr_defconfig
sh                         ap325rxa_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
arm                         s3c2410_defconfig
sh                          rsk7264_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                        spear6xx_defconfig
mips                      bmips_stb_defconfig
mips                          malta_defconfig
arm                            zeus_defconfig
mips                     cu1830-neo_defconfig
arm                          gemini_defconfig
microblaze                          defconfig
riscv                          rv32_defconfig
m68k                             allmodconfig
arm                           h3600_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                              defconfig
sh                   rts7751r2dplus_defconfig
arm                      jornada720_defconfig
mips                         bigsur_defconfig
arm                         vf610m4_defconfig
powerpc                     tqm8548_defconfig
powerpc                      ppc44x_defconfig
alpha                            alldefconfig
powerpc                   currituck_defconfig
mips                          ath25_defconfig
mips                            gpr_defconfig
mips                           ci20_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7203_defconfig
sh                            hp6xx_defconfig
arm                         s3c6400_defconfig
arm                          pcm027_defconfig
arm                            mps2_defconfig
arm                          simpad_defconfig
powerpc64                           defconfig
powerpc                      arches_defconfig
h8300                            alldefconfig
powerpc                 mpc837x_rdb_defconfig
arm                         axm55xx_defconfig
m68k                       m5475evb_defconfig
mips                     decstation_defconfig
openrisc                  or1klitex_defconfig
powerpc                      ppc64e_defconfig
arm                          badge4_defconfig
arm                         at91_dt_defconfig
arm                        realview_defconfig
m68k                       m5275evb_defconfig
arc                           tb10x_defconfig
arc                          axs101_defconfig
mips                           xway_defconfig
sh                   secureedge5410_defconfig
alpha                               defconfig
powerpc                   motionpro_defconfig
m68k                          hp300_defconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
powerpc                      acadia_defconfig
powerpc                 mpc834x_itx_defconfig
m68k                            q40_defconfig
m68k                       m5249evb_defconfig
powerpc                     tqm8555_defconfig
powerpc                     tqm8540_defconfig
powerpc                         ps3_defconfig
powerpc                       eiger_defconfig
powerpc                     mpc512x_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
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
i386                 randconfig-a003-20210414
i386                 randconfig-a006-20210414
i386                 randconfig-a001-20210414
i386                 randconfig-a005-20210414
i386                 randconfig-a004-20210414
i386                 randconfig-a002-20210414
x86_64               randconfig-a014-20210414
x86_64               randconfig-a015-20210414
x86_64               randconfig-a011-20210414
x86_64               randconfig-a013-20210414
x86_64               randconfig-a012-20210414
x86_64               randconfig-a016-20210414
i386                 randconfig-a015-20210414
i386                 randconfig-a014-20210414
i386                 randconfig-a013-20210414
i386                 randconfig-a012-20210414
i386                 randconfig-a016-20210414
i386                 randconfig-a011-20210414
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a003-20210414
x86_64               randconfig-a002-20210414
x86_64               randconfig-a005-20210414
x86_64               randconfig-a001-20210414
x86_64               randconfig-a006-20210414
x86_64               randconfig-a004-20210414

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
