Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A45FD361903
	for <lists+devel-acpica@lfdr.de>; Fri, 16 Apr 2021 06:51:39 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E0F33100EAB56;
	Thu, 15 Apr 2021 21:51:30 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 96E3E100EAB54
	for <devel@acpica.org>; Thu, 15 Apr 2021 21:51:29 -0700 (PDT)
IronPort-SDR: 9LARbc12O1VD/uluISQcE55a+eeVm6VqZkWIOJzMWFDw1dOaEPFwaEQzs9mLEepbPb+M499xuc
 WCYlCsqSuJXw==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="195101351"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400";
   d="scan'208";a="195101351"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 21:51:29 -0700
IronPort-SDR: 4JcHh6q6f3OsCIkeNk2UKSqOxONyvtmmMK6ZFC1E9FbjeJJ6HzmvPHPfxrj7/EL/7xgL4wSWN5
 y4PLN14wKFLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400";
   d="scan'208";a="384219241"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 15 Apr 2021 21:51:25 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXGRv-0001Eo-Ud; Fri, 16 Apr 2021 04:51:23 +0000
Date: Fri, 16 Apr 2021 12:50:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6079179b.NV955TL+SJlZI3s1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: SOSZZHV42FS6SFJOTMDFHHQTEPXZBMWY
X-Message-ID-Hash: SOSZZHV42FS6SFJOTMDFHHQTEPXZBMWY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 82f100a3bced76c3a8a11f4c0e4e8104b95e3993
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <>
List-Archive: <>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 82f100a3bced76c3a8a11f4c0e4e8104b95e3993  Merge branch 'pm-sleep' into bleeding-edge

elapsed time: 724m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
arm                       aspeed_g4_defconfig
xtensa                         virt_defconfig
arm                          gemini_defconfig
h8300                            alldefconfig
arm                          pxa3xx_defconfig
powerpc                       holly_defconfig
um                               alldefconfig
arm                          moxart_defconfig
powerpc                     redwood_defconfig
powerpc                     ep8248e_defconfig
powerpc                      arches_defconfig
m68k                        m5272c3_defconfig
i386                             alldefconfig
powerpc                    mvme5100_defconfig
sh                             shx3_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
i386                 randconfig-a003-20210415
i386                 randconfig-a006-20210415
i386                 randconfig-a001-20210415
i386                 randconfig-a005-20210415
i386                 randconfig-a004-20210415
i386                 randconfig-a002-20210415
i386                 randconfig-a015-20210415
i386                 randconfig-a014-20210415
i386                 randconfig-a013-20210415
i386                 randconfig-a012-20210415
i386                 randconfig-a016-20210415
i386                 randconfig-a011-20210415
x86_64               randconfig-a003-20210415
x86_64               randconfig-a002-20210415
x86_64               randconfig-a005-20210415
x86_64               randconfig-a001-20210415
x86_64               randconfig-a006-20210415
x86_64               randconfig-a004-20210415
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210415
x86_64               randconfig-a015-20210415
x86_64               randconfig-a011-20210415
x86_64               randconfig-a013-20210415
x86_64               randconfig-a012-20210415
x86_64               randconfig-a016-20210415

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
