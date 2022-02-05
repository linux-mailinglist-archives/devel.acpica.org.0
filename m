Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D5F4AA7BD
	for <lists+devel-acpica@lfdr.de>; Sat,  5 Feb 2022 09:49:28 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9C511100EB857;
	Sat,  5 Feb 2022 00:49:25 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 38044100EB823
	for <devel@acpica.org>; Sat,  5 Feb 2022 00:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644050963; x=1675586963;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=4NRaCf50AvqUsL6DWfxkD7/BXjABUN0b0Mvb4hpkGW0=;
  b=SYH8XGT5mTNdmmkA18fCvTyVjkarjwegB9qx+KCOBri1nnB5SisVvJ6u
   +ukdk0PZz0m912Ep4iRlmSPNKHygm2E6xtoUFT/3Gy5qBFnhrgrHgebO+
   GBD/HiLKtWEXW9p87oyDiraoig4cUByseUxWs/jfFxEu5cKdnkGfB1ZVW
   1oeDvQgaG9URgiBEWSxy1TyV5+Sw8NYRH+gxKQeHxE0uM3uZcyEPHtRlw
   KPZwSJ5IlfZFV6dBaXG3UwcQ+7aO7jJGAXk3sQLforZwFp4WaRiT7YG/Q
   Da2nHhF8KcsbEGr1yPN3peEGrXTcD1oc/S7rVMc4K279oEcfQ7zbbZeVD
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="273008248"
X-IronPort-AV: E=Sophos;i="5.88,345,1635231600";
   d="scan'208";a="273008248"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2022 00:49:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,345,1635231600";
   d="scan'208";a="631943712"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 05 Feb 2022 00:49:19 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nGGkx-000YoC-0v; Sat, 05 Feb 2022 08:49:19 +0000
Date: Sat, 05 Feb 2022 16:49:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61fe3a06.GThAYLvk1hSuoU/Q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ZKELFZZQGEYPXNM2722O6XDGUZVICA24
X-Message-ID-Hash: ZKELFZZQGEYPXNM2722O6XDGUZVICA24
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 32ee4d3735ab552d457eeae837ef1ce10360585e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZKELFZZQGEYPXNM2722O6XDGUZVICA24/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 32ee4d3735ab552d457eeae837ef1ce10360585e  Merge branch 'devprop' into bleeding-edge

possible Warning in current branch (please contact us if interested):

drivers/thermal/qcom/../thermal_netlink.h:113:71: warning: 'struct cpu_capability' declared inside parameter list will not be visible outside of this definition or declaration
drivers/thermal/samsung/../thermal_netlink.h:113:71: warning: 'struct cpu_capability' declared inside parameter list will not be visible outside of this definition or declaration
drivers/thermal/st/../thermal_netlink.h:113:71: warning: 'struct cpu_capability' declared inside parameter list will not be visible outside of this definition or declaration
drivers/thermal/tegra/../thermal_netlink.h:113:71: warning: 'struct cpu_capability' declared inside parameter list will not be visible outside of this definition or declaration
drivers/thermal/tegra/../thermal_netlink.h:113:71: warning: declaration of 'struct cpu_capability' will not be visible outside of this function [-Wvisibility]
drivers/thermal/thermal_netlink.h:113:71: warning: declaration of 'struct cpu_capability' will not be visible outside of this function [-Wvisibility]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-buildonly-randconfig-r004-20220201
|   |-- drivers-thermal-qcom-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   |-- drivers-thermal-samsung-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- arc-randconfig-r043-20220130
|   |-- drivers-thermal-samsung-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- arm-defconfig
|   |-- drivers-thermal-samsung-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   |-- drivers-thermal-st-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- arm-randconfig-r023-20220131
|   `-- drivers-thermal-samsung-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- arm-randconfig-r034-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- arm64-defconfig
|   |-- drivers-thermal-qcom-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   |-- drivers-thermal-samsung-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- ia64-randconfig-r035-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- ia64-randconfig-s032-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- m68k-randconfig-r031-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- microblaze-randconfig-r036-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- nds32-randconfig-c024-20220131
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- openrisc-randconfig-r011-20220130
|   |-- drivers-thermal-samsung-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- powerpc-randconfig-r024-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- riscv-randconfig-r042-20220130
|   |-- drivers-thermal-qcom-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|-- s390-randconfig-r023-20220130
|   `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
`-- s390-randconfig-r044-20220130
    `-- drivers-thermal-tegra-..-thermal_netlink.h:warning:struct-cpu_capability-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration

clang_recent_errors
|-- arm-randconfig-r016-20220130
|   |-- drivers-thermal-tegra-..-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- arm64-randconfig-r026-20220131
|   |-- drivers-thermal-tegra-..-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- hexagon-randconfig-r006-20220130
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- hexagon-randconfig-r041-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- hexagon-randconfig-r045-20220130
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- hexagon-randconfig-r045-20220131
|   |-- drivers-thermal-tegra-..-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- hexagon-randconfig-r045-20220203
|   |-- drivers-thermal-tegra-..-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- i386-randconfig-a011
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- i386-randconfig-a013
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- i386-randconfig-c001
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- riscv-randconfig-c006-20220130
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- x86_64-randconfig-a011-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- x86_64-randconfig-a012-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- x86_64-randconfig-a013-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- x86_64-randconfig-a014-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- x86_64-randconfig-a015-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
|-- x86_64-randconfig-a016-20220131
|   `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function
`-- x86_64-randconfig-c007
    `-- drivers-thermal-thermal_netlink.h:warning:declaration-of-struct-cpu_capability-will-not-be-visible-outside-of-this-function

elapsed time: 721m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220131
arm                         vf610m4_defconfig
powerpc64                        alldefconfig
sh                        sh7757lcr_defconfig
mips                      fuloong2e_defconfig
mips                  maltasmvp_eva_defconfig
mips                         db1xxx_defconfig
arm                       aspeed_g5_defconfig
sh                         ap325rxa_defconfig
arm                        clps711x_defconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
arm                           corgi_defconfig
xtensa                    xip_kc705_defconfig
arc                     nsimosci_hs_defconfig
arm                  randconfig-c002-20220130
arm                  randconfig-c002-20220131
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a003-20220131
i386                 randconfig-a002-20220131
i386                 randconfig-a001-20220131
i386                 randconfig-a004-20220131
i386                 randconfig-a006-20220131
i386                 randconfig-a005-20220131
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220203
riscv                randconfig-r042-20220130
arc                  randconfig-r043-20220130
arc                  randconfig-r043-20220131
riscv                randconfig-r042-20220203
s390                 randconfig-r044-20220130
s390                 randconfig-r044-20220203
x86_64               randconfig-a003-20220131
x86_64               randconfig-a001-20220131
x86_64               randconfig-a006-20220131
x86_64               randconfig-a005-20220131
x86_64               randconfig-a002-20220131
x86_64               randconfig-a004-20220131
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64                        randconfig-c007
arm                  randconfig-c002-20220130
powerpc              randconfig-c003-20220130
mips                 randconfig-c004-20220130
s390                 randconfig-c005-20220130
i386                          randconfig-c001
riscv                randconfig-c006-20220130
powerpc                      ppc44x_defconfig
mips                         tb0287_defconfig
powerpc                      obs600_defconfig
x86_64               randconfig-a013-20220131
x86_64               randconfig-a014-20220131
x86_64               randconfig-a016-20220131
x86_64               randconfig-a011-20220131
x86_64               randconfig-a012-20220131
x86_64               randconfig-a015-20220131
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
riscv                randconfig-r042-20220131
hexagon              randconfig-r045-20220203
hexagon              randconfig-r041-20220203
s390                 randconfig-r044-20220131
hexagon              randconfig-r045-20220130
hexagon              randconfig-r045-20220131
hexagon              randconfig-r041-20220130
hexagon              randconfig-r041-20220131

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
