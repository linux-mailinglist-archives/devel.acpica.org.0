Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 878CA3D6CB2
	for <lists+devel-acpica@lfdr.de>; Tue, 27 Jul 2021 05:28:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2E031100EB822;
	Mon, 26 Jul 2021 20:28:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D94F0100ED482
	for <devel@acpica.org>; Mon, 26 Jul 2021 20:28:00 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="209248160"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400";
   d="scan'208";a="209248160"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2021 20:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400";
   d="scan'208";a="437102821"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 26 Jul 2021 20:27:58 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m8Dl8-0006Pu-0R; Tue, 27 Jul 2021 03:27:58 +0000
Date: Tue, 27 Jul 2021 11:27:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60ff7d18.Or5/Z76P5dwqfEGM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 5W4N7C2FL22Q5YDRYYZYGSY2OQF7YEMX
X-Message-ID-Hash: 5W4N7C2FL22Q5YDRYYZYGSY2OQF7YEMX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 1dae4a65c01109508ee17281b6d92b734d7bc1f3
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5W4N7C2FL22Q5YDRYYZYGSY2OQF7YEMX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 1dae4a65c01109508ee17281b6d92b734d7bc1f3  Merge branch 'pm-pci' into linux-next

elapsed time: 722m

configs tested: 167
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210726
sh                          landisk_defconfig
arm                            lart_defconfig
powerpc                      katmai_defconfig
arm                          pxa168_defconfig
arm                         lpc18xx_defconfig
powerpc                    socrates_defconfig
powerpc                       holly_defconfig
xtensa                          iss_defconfig
sh                        dreamcast_defconfig
xtensa                              defconfig
powerpc                     mpc5200_defconfig
sh                      rts7751r2d1_defconfig
h8300                     edosk2674_defconfig
powerpc                      cm5200_defconfig
mips                         mpc30x_defconfig
powerpc                         wii_defconfig
arm                       netwinder_defconfig
arm                        magician_defconfig
arm                        trizeps4_defconfig
sh                           se7722_defconfig
arm                            qcom_defconfig
powerpc                   lite5200b_defconfig
arm                          pcm027_defconfig
mips                            gpr_defconfig
arm                            mps2_defconfig
arc                        vdk_hs38_defconfig
m68k                       m5249evb_defconfig
sh                          sdk7786_defconfig
arm                         mv78xx0_defconfig
sh                   rts7751r2dplus_defconfig
sh                          kfr2r09_defconfig
sh                          r7780mp_defconfig
arm                            xcep_defconfig
mips                       bmips_be_defconfig
powerpc                       ebony_defconfig
sh                          sdk7780_defconfig
powerpc                      ppc64e_defconfig
powerpc                     sbc8548_defconfig
arm                          iop32x_defconfig
ia64                      gensparse_defconfig
sh                 kfr2r09-romimage_defconfig
sh                               alldefconfig
arm                       imx_v6_v7_defconfig
arm                             mxs_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                          g5_defconfig
mips                           rs90_defconfig
riscv                    nommu_virt_defconfig
m68k                        mvme147_defconfig
sh                     magicpanelr2_defconfig
powerpc                 linkstation_defconfig
sh                          r7785rp_defconfig
ia64                          tiger_defconfig
arm                           spitz_defconfig
ia64                             alldefconfig
powerpc                    sam440ep_defconfig
riscv                    nommu_k210_defconfig
i386                             allyesconfig
arc                            hsdk_defconfig
sh                        sh7785lcr_defconfig
powerpc                     kilauea_defconfig
mips                     cu1830-neo_defconfig
sh                          urquell_defconfig
mips                        bcm47xx_defconfig
arm                          exynos_defconfig
powerpc                     stx_gp3_defconfig
sh                   sh7770_generic_defconfig
sh                              ul2_defconfig
mips                           ip27_defconfig
mips                         bigsur_defconfig
sh                        sh7763rdp_defconfig
x86_64                              defconfig
openrisc                  or1klitex_defconfig
sh                             espt_defconfig
s390                             allmodconfig
mips                        nlm_xlp_defconfig
x86_64                            allnoconfig
ia64                                defconfig
ia64                             allyesconfig
ia64                             allmodconfig
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
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
sparc                               defconfig
i386                                defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210726
x86_64               randconfig-a006-20210726
x86_64               randconfig-a001-20210726
x86_64               randconfig-a005-20210726
x86_64               randconfig-a004-20210726
x86_64               randconfig-a002-20210726
i386                 randconfig-a005-20210726
i386                 randconfig-a003-20210726
i386                 randconfig-a004-20210726
i386                 randconfig-a002-20210726
i386                 randconfig-a001-20210726
i386                 randconfig-a006-20210726
i386                 randconfig-a016-20210726
i386                 randconfig-a013-20210726
i386                 randconfig-a012-20210726
i386                 randconfig-a011-20210726
i386                 randconfig-a014-20210726
i386                 randconfig-a015-20210726
i386                 randconfig-a016-20210727
i386                 randconfig-a013-20210727
i386                 randconfig-a012-20210727
i386                 randconfig-a011-20210727
i386                 randconfig-a014-20210727
i386                 randconfig-a015-20210727
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210726
x86_64               randconfig-a003-20210725
x86_64               randconfig-a006-20210725
x86_64               randconfig-a001-20210725
x86_64               randconfig-a005-20210725
x86_64               randconfig-a004-20210725
x86_64               randconfig-a002-20210725
x86_64               randconfig-a003-20210727
x86_64               randconfig-a006-20210727
x86_64               randconfig-a001-20210727
x86_64               randconfig-a005-20210727
x86_64               randconfig-a004-20210727
x86_64               randconfig-a002-20210727
x86_64               randconfig-a011-20210726
x86_64               randconfig-a016-20210726
x86_64               randconfig-a013-20210726
x86_64               randconfig-a014-20210726
x86_64               randconfig-a012-20210726
x86_64               randconfig-a015-20210726

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
