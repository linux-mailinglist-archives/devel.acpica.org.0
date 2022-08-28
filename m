Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0795A3ADA
	for <lists+devel-acpica@lfdr.de>; Sun, 28 Aug 2022 04:09:35 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 039A2100EA91C;
	Sat, 27 Aug 2022 19:09:33 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6C9CC100EA91B
	for <devel@acpica.org>; Sat, 27 Aug 2022 19:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661652570; x=1693188570;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=sp0ThocBG4EzI3XMXy93MNtL6tu6JPFUfULdMgcnG4E=;
  b=C9X341Onyjq1khkBB4novpG+uvdP4bhE6+IIjzd6CBUSQq08xSFOBdUX
   QJBMnvbb6FjkKEYNYlgIKmPDUFdSq6hrBEuoOtYGp3XKXF1d02kjWMnDb
   ISTQCivSvjp3qZsggQVrpfapR6SxSIeWdFOhzQ06sYXxQPKIpFe1PDQir
   RHIhg/Tioe+wCITiCe3f9WpssyQ7nJJXE83nTjSBFkQAG3NWvJWuRub9O
   PWyBiXLdi9nb2UE+tQHvGCY1Jo61zWy6jZlxAL4l85DOZ7aNicRKYDnIM
   I3PspsIE2d4pgGuqewSPsU39R1CD9qYpltVNEaAzWk0413OX1GyihmVxS
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10452"; a="281672781"
X-IronPort-AV: E=Sophos;i="5.93,269,1654585200";
   d="scan'208";a="281672781"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Aug 2022 19:09:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,269,1654585200";
   d="scan'208";a="561836618"
Received: from lkp-server01.sh.intel.com (HELO fc16deae1c42) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Aug 2022 19:09:27 -0700
Received: from kbuild by fc16deae1c42 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oS7jr-0000hH-02;
	Sun, 28 Aug 2022 02:09:27 +0000
Date: Sun, 28 Aug 2022 10:09:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <630ace53.oXgM0yYrPlAxuQNl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: KM6SFK5ENJ4QIP2IX7EFTI7SAF4JI4OJ
X-Message-ID-Hash: KM6SFK5ENJ4QIP2IX7EFTI7SAF4JI4OJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 99ab2f21bfd615a8ba701b2ba16aa5024e94c2d4
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KM6SFK5ENJ4QIP2IX7EFTI7SAF4JI4OJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 99ab2f21bfd615a8ba701b2ba16aa5024e94c2d4  Merge branches 'acpi-cppc', 'acpi-osi' and 'acpi-bus' into bleeding-edge

elapsed time: 722m

configs tested: 102
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
loongarch                         allnoconfig
arc                               allnoconfig
um                             i386_defconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
um                           x86_64_defconfig
arc                                 defconfig
x86_64                              defconfig
alpha                               defconfig
powerpc                           allnoconfig
i386                                defconfig
loongarch                           defconfig
csky                                defconfig
i386                          debian-10.3-kvm
sparc                               defconfig
arm                                 defconfig
x86_64                               rhel-8.3
i386                          randconfig-a014
riscv                    nommu_virt_defconfig
sh                               allmodconfig
x86_64                        randconfig-a004
arc                          axs101_defconfig
arm                              allyesconfig
parisc                              defconfig
x86_64                           allyesconfig
mips                             allyesconfig
riscv                          rv32_defconfig
x86_64                                  kexec
x86_64                        randconfig-a013
m68k                             allmodconfig
m68k                         amcore_defconfig
i386                        debian-10.3-kunit
x86_64                        randconfig-a011
ia64                             alldefconfig
arm64                            allyesconfig
s390                                defconfig
sh                          landisk_defconfig
m68k                        stmark2_defconfig
alpha                            allyesconfig
powerpc                          allmodconfig
xtensa                       common_defconfig
i386                   debian-10.3-kselftests
microblaze                          defconfig
x86_64                        randconfig-a002
i386                          randconfig-a012
s390                             allmodconfig
i386                          randconfig-a016
x86_64                        randconfig-a015
m68k                        m5307c3_defconfig
i386                              debian-10.3
i386                         debian-10.3-func
arc                              allyesconfig
riscv                    nommu_k210_defconfig
nios2                               defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a006
parisc64                            defconfig
x86_64                           rhel-8.3-kvm
nios2                            allyesconfig
m68k                             allyesconfig
sparc                            allyesconfig
s390                             allyesconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
parisc                           allyesconfig
xtensa                           allyesconfig
powerpc                      makalu_defconfig
x86_64                           rhel-8.3-syz
sh                         microdev_defconfig
arm                              allmodconfig
arm64                               defconfig
i386                          randconfig-c001
sh                               j2_defconfig
m68k                                defconfig
ia64                                defconfig
arc                  randconfig-r043-20220828
ia64                             allmodconfig
s390                 randconfig-r044-20220828
riscv                randconfig-r042-20220828
ia64                             allyesconfig
mips                             allmodconfig

clang tested configs:
i386                          randconfig-a013
mips                        maltaup_defconfig
arm                           sama7_defconfig
powerpc                      walnut_defconfig
i386                          randconfig-a011
x86_64                        randconfig-a016
powerpc                      obs600_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a014
i386                          randconfig-a015
powerpc                  mpc885_ads_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-k001
arm                          ixp4xx_defconfig
mips                  cavium_octeon_defconfig
hexagon              randconfig-r041-20220828
hexagon              randconfig-r045-20220828

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
