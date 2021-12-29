Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B593948105F
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Dec 2021 07:30:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6DA73100EB855;
	Tue, 28 Dec 2021 22:30:53 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id ED008100EB846
	for <devel@acpica.org>; Tue, 28 Dec 2021 22:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640759450; x=1672295450;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=nn20DoR/p6ki/0UudGymy07+MjDwTYJ5M3ujk7GSdhY=;
  b=K/P4W5zyQDOcxUw9wbLGS4+zkloNwqA6B4x/nghduXrBayNArluxNDjM
   AYro2Z3snBPQzaXI1RjKMBLrKR6jpQbuMvaRFaSbi7/eqr9DUVf5XQY7a
   8XppYCMbc94/+ej1FV76fmA7nQrZ8xrJtt1hLUwL/gwx0UednG2yR3fRI
   9LKTsQn8PTP+Tu2olbpyr0QWdAy8nacK9XUYC9jetlfwlGInSg+vxzAC8
   whTcOytSJ550E7EbOwIT3OA/HT8Py4GrTodcXV17MPzQG+bYOQU5lt541
   0UKHnQsQAgrdz/B2wrsDpa4ji6p0zRFryswtQ9SFyoePdWE5aRJ5YqCxC
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="327801430"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600";
   d="scan'208";a="327801430"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2021 22:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600";
   d="scan'208";a="615857359"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2021 22:30:48 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1n2SU3-0008cP-Tu; Wed, 29 Dec 2021 06:30:47 +0000
Date: Wed, 29 Dec 2021 14:30:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61cc007a.mWwpG8hntz2tC9i6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: O7GS5KGV56PFU3QYIJAPYLGWCWFLOMO3
X-Message-ID-Hash: O7GS5KGV56PFU3QYIJAPYLGWCWFLOMO3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O7GS5KGV56PFU3QYIJAPYLGWCWFLOMO3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 8d681a5245f0a5cfb20326b4f6578af1adb8676b  Merge branch 'acpi-sysfs' into bleeding-edge

Warning reports:

https://lore.kernel.org/llvm/202112280907.gTYYYuB4-lkp@intel.com

Warning in current branch:

drivers/acpi/acpica/exregion.c:519:17: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]

Warning ids grouped by kconfigs:

clang_recent_errors
|-- i386-randconfig-a001-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a002-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a003-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a004-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a005-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a006-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a011-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a012-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a013-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a014-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a015-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- i386-randconfig-a016-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a001-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a002-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a003-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a004-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a005-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a006-20211229
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a011-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a012-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a013-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a014-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a015-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-a016-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
|-- x86_64-randconfig-r012-20211228
|   `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
`-- x86_64-randconfig-r024-20211228
    `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior

elapsed time: 725m

configs tested: 104
configs skipped: 3

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211228
arm                           sama7_defconfig
arc                        nsim_700_defconfig
arm                            qcom_defconfig
arm                          pxa3xx_defconfig
powerpc                   bluestone_defconfig
mips                      bmips_stb_defconfig
arm                             ezx_defconfig
sh                           se7343_defconfig
powerpc                     skiroot_defconfig
arm                         lpc18xx_defconfig
arm                       imx_v6_v7_defconfig
arm                          pxa910_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                     pq2fads_defconfig
arm                           sama5_defconfig
arm                        shmobile_defconfig
arc                    vdk_hs38_smp_defconfig
csky                             alldefconfig
riscv             nommu_k210_sdcard_defconfig
arm                  randconfig-c002-20211229
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
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
arc                  randconfig-r043-20211228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a001-20211229
x86_64               randconfig-a003-20211229
x86_64               randconfig-a004-20211229
x86_64               randconfig-a002-20211229
x86_64               randconfig-a005-20211229
x86_64               randconfig-a006-20211229
i386                 randconfig-a002-20211229
i386                 randconfig-a003-20211229
i386                 randconfig-a001-20211229
i386                 randconfig-a005-20211229
i386                 randconfig-a006-20211229
i386                 randconfig-a004-20211229
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a013-20211228
i386                 randconfig-a016-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a015-20211228
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228
hexagon              randconfig-r045-20211228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
