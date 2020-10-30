Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3A29FDEB
	for <lists+devel-acpica@lfdr.de>; Fri, 30 Oct 2020 07:39:54 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D056315ECFAEE;
	Thu, 29 Oct 2020 23:39:52 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 05B851514DB83
	for <devel@acpica.org>; Thu, 29 Oct 2020 23:39:50 -0700 (PDT)
IronPort-SDR: G8+/yOo09QU1stQHRRol8YxTrxo+rZBUsDzquGNc2sJoTEFn338zRD2NaWeSBTLqYATFQWIfP4
 zWGHvIRUGinA==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="147851529"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400";
   d="scan'208";a="147851529"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2020 23:39:50 -0700
IronPort-SDR: ImddMcxm7fyhlBIBjN3iA58DTsaSwqqxdPl8be3nXjpG0rfQ9wHQw5zR8kMFvuxGJUgDfaUBVP
 Xntc4EpsCECA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400";
   d="scan'208";a="356516253"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 29 Oct 2020 23:39:48 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kYO4i-00001l-5O; Fri, 30 Oct 2020 06:39:48 +0000
Date: Fri, 30 Oct 2020 14:39:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f9bb508.rRCoFEN9rotV+PSw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: XODK7B7EFNMC6O6E26T56UDPCNCD7NOX
X-Message-ID-Hash: XODK7B7EFNMC6O6E26T56UDPCNCD7NOX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 5e00eb5f62091ac1f78776b876efe2a09a9263a2
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XODK7B7EFNMC6O6E26T56UDPCNCD7NOX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 5e00eb5f62091ac1f78776b876efe2a09a9263a2  Merge branch 'pm-cpufreq' into linux-next

elapsed time: 723m

configs tested: 168
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
h8300                     edosk2674_defconfig
powerpc                    klondike_defconfig
sh                             espt_defconfig
m68k                         amcore_defconfig
arm                         s3c2410_defconfig
powerpc                      pasemi_defconfig
arc                         haps_hs_defconfig
arm                            pleb_defconfig
sh                        apsh4ad0a_defconfig
xtensa                  nommu_kc705_defconfig
sh                           se7712_defconfig
sparc                       sparc64_defconfig
sh                           se7780_defconfig
arm                         cm_x300_defconfig
sh                            shmin_defconfig
ia64                            zx1_defconfig
mips                        bcm63xx_defconfig
mips                        qi_lb60_defconfig
sh                              ul2_defconfig
um                            kunit_defconfig
openrisc                    or1ksim_defconfig
arm                              alldefconfig
arm                             pxa_defconfig
powerpc                      chrp32_defconfig
mips                           ip27_defconfig
arm                          gemini_defconfig
sh                           se7751_defconfig
c6x                        evmc6472_defconfig
arm                           corgi_defconfig
sh                          kfr2r09_defconfig
arm                      tct_hammer_defconfig
powerpc                     sequoia_defconfig
xtensa                  audio_kc705_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                       m5475evb_defconfig
sh                ecovec24-romimage_defconfig
powerpc                    gamecube_defconfig
powerpc                     stx_gp3_defconfig
powerpc                  mpc885_ads_defconfig
sh                          rsk7264_defconfig
sh                             sh03_defconfig
arm                          prima2_defconfig
mips                       capcella_defconfig
c6x                              alldefconfig
powerpc                       maple_defconfig
nds32                               defconfig
m68k                        m5307c3_defconfig
m68k                       m5208evb_defconfig
mips                        omega2p_defconfig
mips                malta_kvm_guest_defconfig
sh                          sdk7780_defconfig
arm                              zx_defconfig
ia64                          tiger_defconfig
mips                       rbtx49xx_defconfig
powerpc                        warp_defconfig
sh                     sh7710voipgw_defconfig
mips                 decstation_r4k_defconfig
powerpc                 mpc8315_rdb_defconfig
arc                          axs101_defconfig
powerpc                     tqm8540_defconfig
mips                       lemote2f_defconfig
arm                        oxnas_v6_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                        edosk7760_defconfig
arm                      integrator_defconfig
powerpc                 mpc85xx_cds_defconfig
openrisc                         alldefconfig
powerpc                      walnut_defconfig
arm                        mini2440_defconfig
powerpc                 mpc837x_mds_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20201030
x86_64               randconfig-a001-20201030
x86_64               randconfig-a002-20201030
x86_64               randconfig-a003-20201030
x86_64               randconfig-a006-20201030
x86_64               randconfig-a004-20201030
i386                 randconfig-a002-20201029
i386                 randconfig-a005-20201029
i386                 randconfig-a003-20201029
i386                 randconfig-a001-20201029
i386                 randconfig-a004-20201029
i386                 randconfig-a006-20201029
i386                 randconfig-a005-20201030
i386                 randconfig-a003-20201030
i386                 randconfig-a002-20201030
i386                 randconfig-a001-20201030
i386                 randconfig-a006-20201030
i386                 randconfig-a004-20201030
i386                 randconfig-a016-20201029
i386                 randconfig-a014-20201029
i386                 randconfig-a015-20201029
i386                 randconfig-a013-20201029
i386                 randconfig-a012-20201029
i386                 randconfig-a011-20201029
i386                 randconfig-a011-20201030
i386                 randconfig-a014-20201030
i386                 randconfig-a015-20201030
i386                 randconfig-a012-20201030
i386                 randconfig-a013-20201030
i386                 randconfig-a016-20201030
x86_64               randconfig-a001-20201029
x86_64               randconfig-a002-20201029
x86_64               randconfig-a003-20201029
x86_64               randconfig-a006-20201029
x86_64               randconfig-a005-20201029
x86_64               randconfig-a004-20201029
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
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
x86_64               randconfig-a013-20201030
x86_64               randconfig-a014-20201030
x86_64               randconfig-a015-20201030
x86_64               randconfig-a016-20201030
x86_64               randconfig-a011-20201030
x86_64               randconfig-a012-20201030
x86_64               randconfig-a011-20201029
x86_64               randconfig-a013-20201029
x86_64               randconfig-a016-20201029
x86_64               randconfig-a015-20201029
x86_64               randconfig-a012-20201029
x86_64               randconfig-a014-20201029

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
