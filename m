Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B6C26D330
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Sep 2020 07:43:34 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 111E6148165EC;
	Wed, 16 Sep 2020 22:43:33 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DC0A4148165EC
	for <devel@acpica.org>; Wed, 16 Sep 2020 22:43:30 -0700 (PDT)
IronPort-SDR: FwKeOQpCX+mHkrjjuasg/kWBZz2Zp/916PwOBqbx5Fo+IVTB0gzwWqhz51gMJn2GrCQeem7g0j
 IPYtKU0Kl7dQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="159683659"
X-IronPort-AV: E=Sophos;i="5.76,435,1592895600";
   d="scan'208";a="159683659"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2020 22:43:30 -0700
IronPort-SDR: ulzv3DvOZhzyXY0xIkIGUEc3VY/WJM02M6P18DNM+362oPpzjKFLafmD5xvOpmIHzbG0jaEwn1
 7ghwT3OlmtKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,435,1592895600";
   d="scan'208";a="302808800"
Received: from lkp-server02.sh.intel.com (HELO bdcb92cf8b4e) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 16 Sep 2020 22:43:28 -0700
Received: from kbuild by bdcb92cf8b4e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kImhb-0000R7-PC; Thu, 17 Sep 2020 05:43:27 +0000
Date: Thu, 17 Sep 2020 13:42:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f62f74a.WH0VoXCZ5Dq6Wsdz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: LE4KXJQUWUNIOO2ZKFFUMHM5XCB53K7Y
X-Message-ID-Hash: LE4KXJQUWUNIOO2ZKFFUMHM5XCB53K7Y
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS a65af31190c0d5c8a9953508914f499deecc82bc
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/LE4KXJQUWUNIOO2ZKFFUMHM5XCB53K7Y/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: a65af31190c0d5c8a9953508914f499deecc82bc  Merge branch 'pm-cpuidle' into linux-next

elapsed time: 724m

configs tested: 154
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                    vt8500_v6_v7_defconfig
arm                       omap2plus_defconfig
arc                     haps_hs_smp_defconfig
sparc                               defconfig
m68k                        mvme16x_defconfig
sh                             espt_defconfig
powerpc                      pcm030_defconfig
arm                       netwinder_defconfig
arm                       spear13xx_defconfig
um                            kunit_defconfig
arm                         axm55xx_defconfig
sh                           se7722_defconfig
powerpc                      pasemi_defconfig
sh                        apsh4ad0a_defconfig
arm                         ebsa110_defconfig
openrisc                         alldefconfig
arm                      tct_hammer_defconfig
openrisc                 simple_smp_defconfig
arm                      jornada720_defconfig
mips                     decstation_defconfig
mips                      malta_kvm_defconfig
sh                        sh7763rdp_defconfig
arm                          pcm027_defconfig
powerpc                  storcenter_defconfig
mips                         cobalt_defconfig
nds32                               defconfig
mips                         bigsur_defconfig
sh                          sdk7780_defconfig
sh                   secureedge5410_defconfig
ia64                        generic_defconfig
arm                         s3c2410_defconfig
mips                          rm200_defconfig
m68k                        stmark2_defconfig
m68k                       m5208evb_defconfig
arc                         haps_hs_defconfig
um                             i386_defconfig
arm                          lpd270_defconfig
riscv                            alldefconfig
sh                            shmin_defconfig
powerpc                    sam440ep_defconfig
arm                         at91_dt_defconfig
parisc                           allyesconfig
powerpc                     kilauea_defconfig
arm                          imote2_defconfig
powerpc                  mpc885_ads_defconfig
nios2                            allyesconfig
arm                           sama5_defconfig
sh                ecovec24-romimage_defconfig
mips                         rt305x_defconfig
powerpc                  mpc866_ads_defconfig
alpha                            alldefconfig
m68k                         apollo_defconfig
alpha                               defconfig
powerpc                 mpc836x_mds_defconfig
arc                      axs103_smp_defconfig
powerpc                   lite5200b_defconfig
sh                           se7343_defconfig
powerpc                 mpc85xx_cds_defconfig
xtensa                          iss_defconfig
ia64                            zx1_defconfig
sh                            migor_defconfig
powerpc                     ppa8548_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                    klondike_defconfig
c6x                        evmc6472_defconfig
arc                        nsimosci_defconfig
xtensa                generic_kc705_defconfig
sh                          rsk7264_defconfig
mips                     loongson1c_defconfig
powerpc                        icon_defconfig
sh                           se7780_defconfig
sh                         apsh4a3a_defconfig
powerpc                       eiger_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                       mainstone_defconfig
arm                        mini2440_defconfig
ia64                         bigsur_defconfig
sh                            hp6xx_defconfig
powerpc64                        alldefconfig
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
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20200916
x86_64               randconfig-a004-20200916
x86_64               randconfig-a003-20200916
x86_64               randconfig-a002-20200916
x86_64               randconfig-a001-20200916
x86_64               randconfig-a005-20200916
i386                 randconfig-a004-20200916
i386                 randconfig-a006-20200916
i386                 randconfig-a003-20200916
i386                 randconfig-a001-20200916
i386                 randconfig-a002-20200916
i386                 randconfig-a005-20200916
i386                 randconfig-a015-20200916
i386                 randconfig-a014-20200916
i386                 randconfig-a011-20200916
i386                 randconfig-a013-20200916
i386                 randconfig-a016-20200916
i386                 randconfig-a012-20200916
i386                 randconfig-a015-20200917
i386                 randconfig-a014-20200917
i386                 randconfig-a011-20200917
i386                 randconfig-a013-20200917
i386                 randconfig-a016-20200917
i386                 randconfig-a012-20200917
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20200916
x86_64               randconfig-a011-20200916
x86_64               randconfig-a016-20200916
x86_64               randconfig-a012-20200916
x86_64               randconfig-a015-20200916
x86_64               randconfig-a013-20200916

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
