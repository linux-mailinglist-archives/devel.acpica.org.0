Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4103B454305
	for <lists+devel-acpica@lfdr.de>; Wed, 17 Nov 2021 09:54:53 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B09D7100EA12F;
	Wed, 17 Nov 2021 00:54:50 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4C99E100EA2A8
	for <devel@acpica.org>; Wed, 17 Nov 2021 00:54:48 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="213941220"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800";
   d="scan'208";a="213941220"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2021 00:54:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800";
   d="scan'208";a="506826538"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 17 Nov 2021 00:54:45 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mnGiK-0001Rw-SH; Wed, 17 Nov 2021 08:54:44 +0000
Date: Wed, 17 Nov 2021 16:53:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6194c31d.0YLf30UBdcn8wNVE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: BTN5CTL65FTKJN5UVUW55HNMLR3KTUVX
X-Message-ID-Hash: BTN5CTL65FTKJN5UVUW55HNMLR3KTUVX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 16029e67d98a06dadf0204aec4309239aef6af0f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BTN5CTL65FTKJN5UVUW55HNMLR3KTUVX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 16029e67d98a06dadf0204aec4309239aef6af0f  Merge branch 'acpi-thermal' into bleeding-edge

elapsed time: 728m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211117
powerpc                    socrates_defconfig
mips                  decstation_64_defconfig
mips                     loongson2k_defconfig
xtensa                       common_defconfig
arm                         axm55xx_defconfig
arm                           sama5_defconfig
arm                           stm32_defconfig
arm                       spear13xx_defconfig
ia64                             alldefconfig
mips                          rm200_defconfig
mips                         rt305x_defconfig
powerpc                 mpc832x_mds_defconfig
riscv                             allnoconfig
arm                            mps2_defconfig
xtensa                  cadence_csp_defconfig
arm                    vt8500_v6_v7_defconfig
arc                        nsim_700_defconfig
arm                   milbeaut_m10v_defconfig
sh                   sh7770_generic_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                  randconfig-c002-20211116
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
arc                              allyesconfig
nds32                             allnoconfig
nios2                               defconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a003-20211117
x86_64               randconfig-a002-20211117
x86_64               randconfig-a001-20211117
x86_64               randconfig-a004-20211117
x86_64               randconfig-a005-20211117
x86_64               randconfig-a006-20211117
x86_64               randconfig-a015-20211116
x86_64               randconfig-a013-20211116
x86_64               randconfig-a012-20211116
x86_64               randconfig-a011-20211116
x86_64               randconfig-a016-20211116
x86_64               randconfig-a014-20211116
i386                 randconfig-a012-20211116
i386                 randconfig-a013-20211116
i386                 randconfig-a011-20211116
i386                 randconfig-a015-20211116
i386                 randconfig-a014-20211116
i386                 randconfig-a016-20211116
arc                  randconfig-r043-20211116
riscv                randconfig-r042-20211116
s390                 randconfig-r044-20211116
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a003-20211116
x86_64               randconfig-a001-20211116
x86_64               randconfig-a002-20211116
x86_64               randconfig-a006-20211116
x86_64               randconfig-a004-20211116
x86_64               randconfig-a005-20211116
i386                 randconfig-a003-20211116
i386                 randconfig-a005-20211116
i386                 randconfig-a001-20211116
i386                 randconfig-a004-20211116
i386                 randconfig-a002-20211116
i386                 randconfig-a006-20211116
hexagon              randconfig-r045-20211116
hexagon              randconfig-r041-20211116

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
