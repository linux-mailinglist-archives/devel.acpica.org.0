Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E0348DD09
	for <lists+devel-acpica@lfdr.de>; Thu, 13 Jan 2022 18:42:05 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BD6B6100F393A;
	Thu, 13 Jan 2022 09:42:03 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CF09C100EBB98
	for <devel@acpica.org>; Thu, 13 Jan 2022 09:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642095721; x=1673631721;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=7vvfp8QEIFWemWmYZbPUkb7BTfnB33/a8QpFyM2EwNM=;
  b=T9wGowHxVTgNj9NRcSJUDL1CSpvKEd8u4+jL4bQB5GGA+Naqi7xdnGge
   M246ZNNNZDbgGakQExs9uqUU94ZSv5lEiBchoxIx4Ht6RgKlat/5jaHX8
   bccc9gqVZYQ6lxFrLZFDY9smde97eggBbcIEV2zjAu5EErW7mOHoBOROE
   4eFF5NUZzmOU+Bgr+8Wn7N3729S/EIcvWA0W8BjtkdNNQ4dNUY9eNDMc3
   9IpLCSAUaN74eU+ZaI1IxWS8RgHQUOVdV3FOb2PxNyOrsTKTDdESS/XEB
   BTLMbl8SScQs1n5ICE7pjiJhhXerYvfUU5Xpwt9UFtsRMB2lqt80BTWmx
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="307414489"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600";
   d="scan'208";a="307414489"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2022 09:42:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600";
   d="scan'208";a="593415788"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 13 Jan 2022 09:41:59 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1n846o-0007VF-FP; Thu, 13 Jan 2022 17:41:58 +0000
Date: Fri, 14 Jan 2022 01:41:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61e06439.qy0uOpPWwP7XQiav%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: GVJGYHMMNS4SAAYIEJYLRE4CBWX4AXXG
X-Message-ID-Hash: GVJGYHMMNS4SAAYIEJYLRE4CBWX4AXXG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 625b47dd50305ce992adb54412e7294c9a9a6468
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GVJGYHMMNS4SAAYIEJYLRE4CBWX4AXXG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 625b47dd50305ce992adb54412e7294c9a9a6468  Merge branch 'pm-core' into bleeding-edge

Warning reports:

https://lore.kernel.org/llvm/202112280907.gTYYYuB4-lkp@intel.com

Warning in current branch:

drivers/acpi/acpica/exregion.c:519:17: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]

Warning ids grouped by kconfigs:

clang_recent_errors
|-- i386-randconfig-a002
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a004
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a006
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a011
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a013
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a015
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-c001
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a001
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a003
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a005
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a012
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a014
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a016
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
`-- x86_64-randconfig-c007
    `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior

elapsed time: 1350m

configs tested: 107
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220112
mips                  maltasmvp_eva_defconfig
powerpc                      mgcoge_defconfig
openrisc                            defconfig
powerpc                         wii_defconfig
arm                       omap2plus_defconfig
h8300                     edosk2674_defconfig
sh                        sh7763rdp_defconfig
m68k                       m5275evb_defconfig
sparc                       sparc64_defconfig
powerpc                   currituck_defconfig
arm                  randconfig-c002-20220113
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220112
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
arm                  randconfig-c002-20220113
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220113
i386                          randconfig-c001
s390                 randconfig-c005-20220113
mips                 randconfig-c004-20220113
riscv                randconfig-c006-20220113
mips                  cavium_octeon_defconfig
powerpc                     skiroot_defconfig
powerpc                     tqm5200_defconfig
powerpc                    socrates_defconfig
arm                           spitz_defconfig
powerpc                          g5_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220112
s390                 randconfig-r044-20220112
hexagon              randconfig-r041-20220112
riscv                randconfig-r042-20220112

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
