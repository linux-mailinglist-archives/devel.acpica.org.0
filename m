Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E864F76C3
	for <lists+devel-acpica@lfdr.de>; Thu,  7 Apr 2022 09:05:40 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D0F99100E5D12;
	Thu,  7 Apr 2022 00:05:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 38D1C100EAB54
	for <devel@acpica.org>; Thu,  7 Apr 2022 00:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649315136; x=1680851136;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=Wnxt/K3cppREDm55onERZ2t5aEAhCHU2J+hLK+bwHe0=;
  b=P07EWYgy7M11+5CBZdXlflhmabpfgI2Ntyqru/Kzsdpth9sKORHz75GS
   xopMAhMrtYXzq1TRNmdYfeluP5bHf2WP94TPEmVJ7FoaAPM80Hg7H3bZQ
   nBpTIxujjIzwb8yxxf6u2ULszLRYPtAtpPFU551KLIESx697GsaWY6AvA
   nV+Av4qPZYScnLgK+C/GfjYjikmmTuNP6Yjkqn/v7HJk+AbwCqUyNStay
   I8inODDVjHTk4vnwVBV/vhrrLRsHHy0QkWN0GFeWlO/7T+jj4fIgSRPua
   I5cQzBgO1m/LhZaqCM4rpLhKW4WV6y/DKz8oDVnGazhWI26xSBBgjN49s
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="260083582"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400";
   d="scan'208";a="260083582"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2022 00:05:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400";
   d="scan'208";a="658954617"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 07 Apr 2022 00:05:32 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1ncMCx-0005AZ-N3;
	Thu, 07 Apr 2022 07:05:31 +0000
Date: Thu, 07 Apr 2022 15:05:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <624e8d31.gS+o0nNtflPuKq1g%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 6UPG56343PNGTQHHVVF7HLYLEX7COVYB
X-Message-ID-Hash: 6UPG56343PNGTQHHVVF7HLYLEX7COVYB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 2f7fc67b4d3f454beaa41b6c98671e9fd289b16f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6UPG56343PNGTQHHVVF7HLYLEX7COVYB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 2f7fc67b4d3f454beaa41b6c98671e9fd289b16f  Merge branch 'thermal-int340x' into linux-next

elapsed time: 723m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        spear6xx_defconfig
sh                        sh7757lcr_defconfig
xtensa                generic_kc705_defconfig
sh                           se7712_defconfig
m68k                         apollo_defconfig
sparc                               defconfig
mips                      loongson3_defconfig
xtensa                           alldefconfig
arc                     haps_hs_smp_defconfig
openrisc                         alldefconfig
openrisc                            defconfig
sh                           se7343_defconfig
sh                        edosk7705_defconfig
m68k                          atari_defconfig
arm                           stm32_defconfig
powerpc                     stx_gp3_defconfig
powerpc                      cm5200_defconfig
m68k                        m5407c3_defconfig
powerpc                         wii_defconfig
arc                        vdk_hs38_defconfig
arm                            pleb_defconfig
arm                         s3c6400_defconfig
powerpc                         ps3_defconfig
h8300                       h8s-sim_defconfig
powerpc64                           defconfig
sh                        apsh4ad0a_defconfig
powerpc                      chrp32_defconfig
parisc64                         alldefconfig
arm                        clps711x_defconfig
sh                   secureedge5410_defconfig
ia64                         bigsur_defconfig
mips                          rb532_defconfig
um                                  defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220406
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                             allyesconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220406
s390                 randconfig-r044-20220406
riscv                randconfig-r042-20220406
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220406
riscv                randconfig-c006-20220406
mips                 randconfig-c004-20220406
arm                  randconfig-c002-20220406
arm                    vt8500_v6_v7_defconfig
arm                       mainstone_defconfig
arm                        multi_v5_defconfig
mips                     cu1830-neo_defconfig
mips                           ip28_defconfig
powerpc                      pmac32_defconfig
powerpc                      ppc64e_defconfig
arm                        magician_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220406
hexagon              randconfig-r045-20220406

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
