Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 602EC492110
	for <lists+devel-acpica@lfdr.de>; Tue, 18 Jan 2022 09:21:24 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 50F58100EAAF0;
	Tue, 18 Jan 2022 00:21:22 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D14D9100EAB6F
	for <devel@acpica.org>; Tue, 18 Jan 2022 00:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642494080; x=1674030080;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=aqjvWPVx9YJJeRWXjyHAWrEuoHA7h5scVl/d2ejQNVk=;
  b=Z4TRokVMhhQ9FTpLBPVJYpK6uZlFgjy21ArHG+sMjgx2GDKugsR1srmA
   ShUR5vMPgeP1sOd6KvMiJOv5QiY7gHBOZgc4Eu1oI6erRCwMK/yjjlTxs
   xhPGtanoUMOHD2o/OAFOGqoiGg6DSv11WXsmc6Eib/VCJzVeu/vFkexJy
   PjG4SriM/6hHDDqijX97C42tAPoOEiVB93hcpnQGcBvnmi6bdQLmq3k8W
   fjAgju/M5Hk93D6kfyzt6vpf4XEdTuQl36ZMpyJVgsD/zoLNRME41JyKT
   Zr7DTAesgsg/GD95hBOeHqeBrJUc5KfX2UoRGYqQx5vyHDvwXyzYD27vV
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243588567"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600";
   d="scan'208";a="243588567"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2022 00:21:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600";
   d="scan'208";a="625432039"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 18 Jan 2022 00:21:08 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1n9jjn-000CLK-9g; Tue, 18 Jan 2022 08:21:07 +0000
Date: Tue, 18 Jan 2022 16:21:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61e6786f.Nakrpo0qkrvtSyjB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: IFFKBDWUMYNS7CKHZGA4NN6YVFLMKBYN
X-Message-ID-Hash: IFFKBDWUMYNS7CKHZGA4NN6YVFLMKBYN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING fc720b592cc66f5903ee0bf4d17508e2b8614528
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IFFKBDWUMYNS7CKHZGA4NN6YVFLMKBYN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: fc720b592cc66f5903ee0bf4d17508e2b8614528  Merge branch 'thermal-int340x' into bleeding-edge

Warning reports:

https://lore.kernel.org/llvm/202112280907.gTYYYuB4-lkp@intel.com

Warning in current branch:

drivers/acpi/acpica/exregion.c:519:17: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]

Warning ids grouped by kconfigs:

clang_recent_errors
|-- arm64-allmodconfig
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a001-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a002-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a003-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a004-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a005-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a006-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-c001
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a001-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a002-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a003-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a004-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a005-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a006-20220117
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
`-- x86_64-randconfig-c007
    `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior

elapsed time: 729m

configs tested: 123
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220117
powerpc                      pasemi_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         tb0226_defconfig
ia64                             alldefconfig
sh                           se7721_defconfig
powerpc                       ppc64_defconfig
powerpc                      mgcoge_defconfig
powerpc                 canyonlands_defconfig
mips                  decstation_64_defconfig
m68k                          amiga_defconfig
mips                          rb532_defconfig
mips                           ip32_defconfig
openrisc                 simple_smp_defconfig
m68k                        stmark2_defconfig
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
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
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
x86_64               randconfig-a016-20220117
i386                 randconfig-a012-20220117
i386                 randconfig-a016-20220117
i386                 randconfig-a014-20220117
i386                 randconfig-a015-20220117
i386                 randconfig-a011-20220117
i386                 randconfig-a013-20220117
riscv                randconfig-r042-20220117
arc                  randconfig-r043-20220116
arc                  randconfig-r043-20220117
s390                 randconfig-r044-20220117
arc                  randconfig-r043-20220118
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220116
i386                          randconfig-c001
mips                 randconfig-c004-20220116
arm                  randconfig-c002-20220116
riscv                randconfig-c006-20220116
s390                 randconfig-c005-20220116
powerpc                    socrates_defconfig
arm                         s5pv210_defconfig
arm                       mainstone_defconfig
powerpc                       ebony_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                      ppc44x_defconfig
i386                 randconfig-a001-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
i386                 randconfig-a005-20220117
i386                 randconfig-a006-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
x86_64               randconfig-a005-20220117
riscv                randconfig-r042-20220118
hexagon              randconfig-r045-20220116
hexagon              randconfig-r045-20220117
hexagon              randconfig-r045-20220118
riscv                randconfig-r042-20220116
hexagon              randconfig-r041-20220118
s390                 randconfig-r044-20220118
s390                 randconfig-r044-20220116
hexagon              randconfig-r041-20220116
hexagon              randconfig-r041-20220117

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
