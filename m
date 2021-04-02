Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B4035247A
	for <lists+devel-acpica@lfdr.de>; Fri,  2 Apr 2021 02:33:28 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 424CA100EBBBD;
	Thu,  1 Apr 2021 17:33:26 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B2C94100EF265
	for <devel@acpica.org>; Thu,  1 Apr 2021 17:33:23 -0700 (PDT)
IronPort-SDR: OnvMtzfBvbJl07aWTr39GtAfKMf75CQ9nPpkQkQYrpZoMwEY3XzxMXmtmstIg5Y2fPNACirJiS
 bQWF5deBScsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="171776825"
X-IronPort-AV: E=Sophos;i="5.81,298,1610438400";
   d="scan'208";a="171776825"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2021 17:33:23 -0700
IronPort-SDR: bBCSzCcJM3pHGlGAiPHV58G8GSwJLLzko45xOWEVI05LohvedQwnP2GDRqq0zdODNC1VIT7l1z
 2SIiVpGviRUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,298,1610438400";
   d="scan'208";a="412942651"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 01 Apr 2021 17:33:21 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lS7kW-0006mz-Kv; Fri, 02 Apr 2021 00:33:20 +0000
Date: Fri, 02 Apr 2021 08:32:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60666615.oPGdrOaZwSnTidEZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: TKIOUM6HUCSIMNSIMSVMVMWFLLP55JWU
X-Message-ID-Hash: TKIOUM6HUCSIMNSIMSVMVMWFLLP55JWU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 85f34ae663986081df77a1df26e08fd1978573a3
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TKIOUM6HUCSIMNSIMSVMVMWFLLP55JWU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 85f34ae663986081df77a1df26e08fd1978573a3  Merge branches 'acpi-scan' and 'acpi-processor-fixes' into linux-next

elapsed time: 721m

configs tested: 218
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
sh                          rsk7203_defconfig
arc                    vdk_hs38_smp_defconfig
s390                             allmodconfig
arm                           h5000_defconfig
m68k                         amcore_defconfig
arm                       spear13xx_defconfig
arm                           viper_defconfig
um                            kunit_defconfig
xtensa                  cadence_csp_defconfig
xtensa                generic_kc705_defconfig
sh                            titan_defconfig
arm                      footbridge_defconfig
arm                             ezx_defconfig
arm                        trizeps4_defconfig
alpha                            alldefconfig
arm                           sama5_defconfig
sh                         apsh4a3a_defconfig
arm                           omap1_defconfig
m68k                            q40_defconfig
arm                       netwinder_defconfig
powerpc                       ppc64_defconfig
xtensa                       common_defconfig
mips                 decstation_r4k_defconfig
powerpc                   bluestone_defconfig
sh                          rsk7264_defconfig
powerpc                      ppc64e_defconfig
mips                         tb0226_defconfig
powerpc                     tqm8548_defconfig
sh                           se7619_defconfig
m68k                             alldefconfig
powerpc                 mpc8560_ads_defconfig
sh                          r7785rp_defconfig
xtensa                  audio_kc705_defconfig
arm                        vexpress_defconfig
mips                     cu1830-neo_defconfig
mips                     cu1000-neo_defconfig
mips                      pistachio_defconfig
powerpc                 mpc836x_mds_defconfig
mips                             allmodconfig
riscv                          rv32_defconfig
mips                malta_kvm_guest_defconfig
sh                        edosk7760_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     redwood_defconfig
parisc                generic-32bit_defconfig
mips                            gpr_defconfig
powerpc                     tqm8540_defconfig
sh                     magicpanelr2_defconfig
arm                       omap2plus_defconfig
arm                        spear6xx_defconfig
arm                          pcm027_defconfig
arm                        oxnas_v6_defconfig
m68k                         apollo_defconfig
arc                           tb10x_defconfig
arm                            dove_defconfig
arm                        multi_v7_defconfig
powerpc                  mpc866_ads_defconfig
powerpc               mpc834x_itxgp_defconfig
m68k                          atari_defconfig
x86_64                           alldefconfig
arm                          exynos_defconfig
mips                        nlm_xlp_defconfig
arm                         shannon_defconfig
powerpc                      acadia_defconfig
powerpc                     mpc512x_defconfig
sh                   rts7751r2dplus_defconfig
arm                             pxa_defconfig
mips                        workpad_defconfig
nios2                         10m50_defconfig
arm                          iop32x_defconfig
ia64                             alldefconfig
sh                          r7780mp_defconfig
m68k                          sun3x_defconfig
ia64                         bigsur_defconfig
h8300                            alldefconfig
arm                         nhk8815_defconfig
m68k                          hp300_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                        mvme16x_defconfig
arc                        nsim_700_defconfig
arm                         lpc32xx_defconfig
powerpc                     tqm8560_defconfig
sh                          landisk_defconfig
arm                      integrator_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                                  defconfig
arm                           corgi_defconfig
arm                            pleb_defconfig
mips                          malta_defconfig
arm                        magician_defconfig
ia64                      gensparse_defconfig
arm                         cm_x300_defconfig
sh                   sh7724_generic_defconfig
powerpc                   lite5200b_defconfig
arm                          imote2_defconfig
arm                     eseries_pxa_defconfig
arm                     am200epdkit_defconfig
h8300                    h8300h-sim_defconfig
sh                          lboxre2_defconfig
powerpc                    ge_imp3a_defconfig
sh                         ap325rxa_defconfig
powerpc                     ep8248e_defconfig
arm                         orion5x_defconfig
mips                        qi_lb60_defconfig
mips                       rbtx49xx_defconfig
arm                           tegra_defconfig
powerpc                       maple_defconfig
powerpc                     rainier_defconfig
sh                        dreamcast_defconfig
mips                            e55_defconfig
mips                        vocore2_defconfig
powerpc                 mpc8315_rdb_defconfig
riscv                               defconfig
s390                                defconfig
arm                         socfpga_defconfig
powerpc                 linkstation_defconfig
m68k                           sun3_defconfig
ia64                            zx1_defconfig
powerpc                       eiger_defconfig
arm                          ixp4xx_defconfig
arm                       cns3420vb_defconfig
m68k                        mvme147_defconfig
arm                              alldefconfig
mips                         tb0219_defconfig
mips                malta_qemu_32r6_defconfig
m68k                       m5208evb_defconfig
mips                       capcella_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                           se7751_defconfig
sh                             sh03_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                            shmin_defconfig
arm                          lpd270_defconfig
sh                           se7750_defconfig
riscv                    nommu_k210_defconfig
arm                         lpc18xx_defconfig
arm                          moxart_defconfig
s390                             allyesconfig
sh                              ul2_defconfig
powerpc64                        alldefconfig
arc                        nsimosci_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210401
i386                 randconfig-a003-20210401
i386                 randconfig-a001-20210401
i386                 randconfig-a004-20210401
i386                 randconfig-a002-20210401
i386                 randconfig-a005-20210401
i386                 randconfig-a006-20210402
i386                 randconfig-a003-20210402
i386                 randconfig-a001-20210402
i386                 randconfig-a004-20210402
i386                 randconfig-a005-20210402
i386                 randconfig-a002-20210402
x86_64               randconfig-a014-20210401
x86_64               randconfig-a015-20210401
x86_64               randconfig-a011-20210401
x86_64               randconfig-a013-20210401
x86_64               randconfig-a012-20210401
x86_64               randconfig-a016-20210401
i386                 randconfig-a014-20210401
i386                 randconfig-a011-20210401
i386                 randconfig-a016-20210401
i386                 randconfig-a012-20210401
i386                 randconfig-a013-20210401
i386                 randconfig-a015-20210401
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
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
x86_64               randconfig-a004-20210401
x86_64               randconfig-a005-20210401
x86_64               randconfig-a003-20210401
x86_64               randconfig-a001-20210401
x86_64               randconfig-a002-20210401
x86_64               randconfig-a006-20210401

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
