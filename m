Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC46C1E9D0E
	for <lists+devel-acpica@lfdr.de>; Mon,  1 Jun 2020 07:17:59 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1A35B100DEFF8;
	Sun, 31 May 2020 22:13:16 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0660E100E2AF0
	for <devel@acpica.org>; Sun, 31 May 2020 22:13:13 -0700 (PDT)
IronPort-SDR: nu2LwNZlLn7zLb4Dk+KoaKSSYD0RjxURBSFDc6EVo1Z3J0YvbEiYWfFcKapL0PD1JRiBUa6Vqw
 x9qqrdWMq3Fw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2020 22:17:55 -0700
IronPort-SDR: FPdTOIxR7+IUlVaAVi90EojpHTeErle20jyl7Ao9WKdE+TfaK+S+kN1vEQ6MbXyvlmZkrKOkgB
 TovDQugbOS2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400";
   d="scan'208";a="303763977"
Received: from lkp-server01.sh.intel.com (HELO 49d03d9b0ee7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 31 May 2020 22:17:54 -0700
Received: from kbuild by 49d03d9b0ee7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jfcpd-0000Dc-DM; Mon, 01 Jun 2020 05:17:53 +0000
Date: Mon, 01 Jun 2020 13:16:43 +0800
From: kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5ed48f3b.zjHwPeh92GoDukNg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: TVCURX5JMBYLLLR4SDKCHVOD3DHPY3FK
X-Message-ID-Hash: TVCURX5JMBYLLLR4SDKCHVOD3DHPY3FK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 1a09809dda810120fadcc35d96872d9fd5ceb00c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TVCURX5JMBYLLLR4SDKCHVOD3DHPY3FK/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 1a09809dda810120fadcc35d96872d9fd5ceb00c  Merge branch 'pm-cpuidle' into linux-next

elapsed time: 3626m

configs tested: 180
configs skipped: 18

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                          pxa3xx_defconfig
arm                         palmz72_defconfig
sh                            shmin_defconfig
ia64                            zx1_defconfig
riscv                          rv32_defconfig
powerpc                      tqm8xx_defconfig
i386                             allyesconfig
sh                          polaris_defconfig
mips                           mtx1_defconfig
arm                       spear13xx_defconfig
um                           x86_64_defconfig
m68k                       m5249evb_defconfig
sh                   sh7770_generic_defconfig
arm                         vf610m4_defconfig
arm                        trizeps4_defconfig
powerpc                      ppc44x_defconfig
powerpc                      mgcoge_defconfig
arm                          pxa168_defconfig
nds32                             allnoconfig
s390                              allnoconfig
sh                        sh7763rdp_defconfig
mips                         tb0226_defconfig
m68k                          multi_defconfig
mips                           ip27_defconfig
arc                 nsimosci_hs_smp_defconfig
microblaze                          defconfig
arm                         shannon_defconfig
powerpc                      ppc6xx_defconfig
powerpc64                        alldefconfig
microblaze                    nommu_defconfig
sh                          rsk7269_defconfig
ia64                        generic_defconfig
mips                             allyesconfig
arm                             pxa_defconfig
c6x                        evmc6678_defconfig
m68k                        m5407c3_defconfig
sh                               j2_defconfig
arm                        multi_v7_defconfig
arm                       mainstone_defconfig
arm                            hisi_defconfig
powerpc                     mpc83xx_defconfig
m68k                             allyesconfig
xtensa                           allyesconfig
sh                          sdk7780_defconfig
mips                        jmr3927_defconfig
riscv                               defconfig
sh                           cayman_defconfig
sh                            titan_defconfig
arm                       netwinder_defconfig
parisc                generic-32bit_defconfig
arm                        spear6xx_defconfig
powerpc                     ep8248e_defconfig
sh                        dreamcast_defconfig
openrisc                 simple_smp_defconfig
arc                     haps_hs_smp_defconfig
arm                         at91_dt_defconfig
sh                             espt_defconfig
arm                        realview_defconfig
arm                      footbridge_defconfig
powerpc                    adder875_defconfig
mips                            ar7_defconfig
ia64                              allnoconfig
arm                        keystone_defconfig
arm                           viper_defconfig
arm                            pleb_defconfig
arm                           omap1_defconfig
sparc64                          allyesconfig
arc                          axs101_defconfig
powerpc                       maple_defconfig
sh                               allmodconfig
arm                     davinci_all_defconfig
c6x                                 defconfig
x86_64                              defconfig
um                               alldefconfig
arc                           tb10x_defconfig
arm                        mvebu_v7_defconfig
powerpc                mpc7448_hpc2_defconfig
c6x                         dsk6455_defconfig
riscv                    nommu_virt_defconfig
sh                        apsh4ad0a_defconfig
sh                           se7343_defconfig
arm                         bcm2835_defconfig
powerpc                      ppc40x_defconfig
s390                       zfcpdump_defconfig
s390                             allyesconfig
arm                       cns3420vb_defconfig
arm                        spear3xx_defconfig
mips                          rm200_defconfig
arm                        mvebu_v5_defconfig
arm                         assabet_defconfig
xtensa                           alldefconfig
sh                           se7750_defconfig
xtensa                         virt_defconfig
arm                        multi_v5_defconfig
i386                              allnoconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200529
i386                 randconfig-a001-20200529
i386                 randconfig-a002-20200529
i386                 randconfig-a006-20200529
i386                 randconfig-a003-20200529
i386                 randconfig-a005-20200529
i386                 randconfig-a013-20200529
i386                 randconfig-a011-20200529
i386                 randconfig-a012-20200529
i386                 randconfig-a015-20200529
i386                 randconfig-a016-20200529
i386                 randconfig-a014-20200529
x86_64               randconfig-a002-20200529
x86_64               randconfig-a006-20200529
x86_64               randconfig-a005-20200529
x86_64               randconfig-a001-20200529
x86_64               randconfig-a004-20200529
x86_64               randconfig-a003-20200529
riscv                            allyesconfig
riscv                             allnoconfig
riscv                            allmodconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
