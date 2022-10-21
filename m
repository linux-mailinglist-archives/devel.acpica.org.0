Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 906D4606F1D
	for <lists+devel-acpica@lfdr.de>; Fri, 21 Oct 2022 07:07:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8D056100F47B5;
	Thu, 20 Oct 2022 22:07:21 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1D266100F2255
	for <devel@acpica.org>; Thu, 20 Oct 2022 22:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666328840; x=1697864840;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=D3xnR8Ta/qivJr09BNvM6YZyIJkZqkj+4BajqQyNPvE=;
  b=WPU9y9KbkVw0xsN9ZPwTxACQqtytWxogigVoVecahhGftFnlDV2G+cct
   cVS73XSAA1m6Xa2nldnn6s5oRx+1uW/WcGM87G/SPA23zAo/WEQw5/DpM
   Lv3q6NW/UG6TiHMefbri2SZMkPwYioXz3GCWMR98PeUCiK3yxcnIE3D90
   fa+b4r44HKnZAzT2BnvyojK9gYz4QKIyj7ILjm00n5oveH5/OxGxcfJD+
   yPYawDw4RxN2usYGkNhuz71wdNYQyZ1uOTeXIUH59w9/wK7OYqPmSOuXN
   a8RROJgtrwq6L+eHPzh+QTZjYLCTpGdELEg32Y6Yzdtr0t242XwzSL+MX
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="305648208"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800";
   d="scan'208";a="305648208"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 22:07:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="630280376"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800";
   d="scan'208";a="630280376"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 20 Oct 2022 22:07:17 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1olkFY-00028v-2D;
	Fri, 21 Oct 2022 05:07:16 +0000
Date: Fri, 21 Oct 2022 13:06:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <635228db.9kJEbJMDHLjBWJst%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 4W2YMEU4SZYLU6IFRFUN7FFHPLX7XQOG
X-Message-ID-Hash: 4W2YMEU4SZYLU6IFRFUN7FFHPLX7XQOG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 89871b5c10a0504b364a83363f47a069578ae1f9
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4W2YMEU4SZYLU6IFRFUN7FFHPLX7XQOG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 89871b5c10a0504b364a83363f47a069578ae1f9  Merge branch 'acpi-scan' into linux-next

elapsed time: 2003m

configs tested: 211
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                               allnoconfig
alpha                             allnoconfig
csky                              allnoconfig
riscv                             allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
s390                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                  randconfig-r043-20221018
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
riscv                randconfig-r042-20221018
x86_64                              defconfig
s390                 randconfig-r044-20221018
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a004
i386                                defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a001
x86_64                        randconfig-a002
i386                          randconfig-a003
x86_64                        randconfig-a006
i386                          randconfig-a005
i386                             allyesconfig
arm                                 defconfig
sh                            titan_defconfig
arm                       aspeed_g5_defconfig
m68k                          amiga_defconfig
i386                          randconfig-c001
sh                        sh7763rdp_defconfig
mips                           gcw0_defconfig
openrisc                            defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                          tiger_defconfig
m68k                       m5475evb_defconfig
xtensa                              defconfig
powerpc                       maple_defconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                          pxa3xx_defconfig
sparc64                          alldefconfig
m68k                       bvme6000_defconfig
xtensa                         virt_defconfig
powerpc                     sequoia_defconfig
arm                           h3600_defconfig
arm                         cm_x300_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                        dreamcast_defconfig
sh                          kfr2r09_defconfig
mips                           ip32_defconfig
powerpc                     mpc83xx_defconfig
sh                          rsk7269_defconfig
s390                          debug_defconfig
m68k                           virt_defconfig
sh                     sh7710voipgw_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221020
arm                        keystone_defconfig
ia64                                defconfig
arm                  randconfig-c002-20221019
arc                  randconfig-r043-20221020
s390                 randconfig-r044-20221020
riscv                randconfig-r042-20221020
arm                        clps711x_defconfig
xtensa                           alldefconfig
arm                          exynos_defconfig
nios2                               defconfig
powerpc                      ppc6xx_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                   currituck_defconfig
arm                           stm32_defconfig
powerpc                 mpc834x_itx_defconfig
openrisc                  or1klitex_defconfig
csky                                defconfig
sh                             shx3_defconfig
arc                        vdk_hs38_defconfig
arm                         assabet_defconfig
nios2                            alldefconfig
m68k                          sun3x_defconfig
openrisc                       virt_defconfig
xtensa                          iss_defconfig
arc                          axs101_defconfig
powerpc                   motionpro_defconfig
m68k                                defconfig
sparc                       sparc32_defconfig
arc                        nsimosci_defconfig
sh                           se7619_defconfig
arm                         s3c6400_defconfig
powerpc                     tqm8555_defconfig
nios2                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
mips                 randconfig-c004-20221020
ia64                         bigsur_defconfig
m68k                        stmark2_defconfig
powerpc                      cm5200_defconfig
sh                ecovec24-romimage_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
arm                          gemini_defconfig
mips                  maltasmvp_eva_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
um                               alldefconfig
powerpc                  iss476-smp_defconfig
sh                         apsh4a3a_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
openrisc                         alldefconfig
powerpc                       holly_defconfig
sparc                               defconfig
xtensa                           allyesconfig
sparc                            allyesconfig
x86_64                                  kexec
m68k                         apollo_defconfig
sh                           se7712_defconfig
sparc                            alldefconfig
arm                          badge4_defconfig
arm                        oxnas_v6_defconfig
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
powerpc                      chrp32_defconfig
sh                           se7750_defconfig
sh                           se7343_defconfig
nios2                         10m50_defconfig
mips                           ci20_defconfig
m68k                        mvme147_defconfig
mips                       bmips_be_defconfig

clang tested configs:
hexagon              randconfig-r045-20221018
hexagon              randconfig-r041-20221018
s390                 randconfig-r044-20221019
hexagon              randconfig-r045-20221019
riscv                randconfig-r042-20221019
hexagon              randconfig-r041-20221019
x86_64                        randconfig-a014
x86_64                        randconfig-a005
i386                 randconfig-a011-20221017
i386                          randconfig-a002
x86_64                        randconfig-a001
i386                 randconfig-a013-20221017
x86_64                        randconfig-a016
x86_64                        randconfig-a003
i386                 randconfig-a012-20221017
i386                          randconfig-a006
i386                 randconfig-a014-20221017
x86_64                        randconfig-a012
i386                          randconfig-a004
i386                 randconfig-a016-20221017
i386                 randconfig-a015-20221017
powerpc                      pmac32_defconfig
powerpc                     tqm8540_defconfig
x86_64                        randconfig-k001
hexagon              randconfig-r041-20221020
hexagon              randconfig-r045-20221020
x86_64                        randconfig-c007
mips                 randconfig-c004-20221019
i386                          randconfig-c001
s390                 randconfig-c005-20221019
arm                  randconfig-c002-20221019
riscv                randconfig-c006-20221019
powerpc              randconfig-c003-20221019
arm                       mainstone_defconfig
powerpc                      obs600_defconfig
powerpc                     ksi8560_defconfig
powerpc                    gamecube_defconfig
mips                          ath79_defconfig
arm                         shannon_defconfig
mips                     cu1830-neo_defconfig
arm                          ep93xx_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                       lemote2f_defconfig
powerpc                    socrates_defconfig
arm                         orion5x_defconfig
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
arm                           omap1_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
arm                        magician_defconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
arm                  colibri_pxa300_defconfig
mips                          ath25_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
