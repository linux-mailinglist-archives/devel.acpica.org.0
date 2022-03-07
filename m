Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 363DA4CF1B5
	for <lists+devel-acpica@lfdr.de>; Mon,  7 Mar 2022 07:16:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 28F18100EA931;
	Sun,  6 Mar 2022 22:16:43 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 536E8100EA930
	for <devel@acpica.org>; Sun,  6 Mar 2022 22:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646633801; x=1678169801;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=czqyC369iJ/4Fiuo2aAnacT+hcsllm8pRuj6qchrKa8=;
  b=KT77jmGHvPcwiI4iygJSR+tyhT9+7Xz7wa8HMHGmpNKHZ/9VTHkWAf61
   KxN3JohsExdcb+WabBoc5rQ8H6LYvz3NdSFKEgkd1ox04h14nnKyRvgmF
   UMFEH6eBG6bngg80lDv2eE/aX8XpF+KQ4ahYOmJvN4FtFGxNJ/dTZS9//
   y1pFYormjLZPr4svYiLJGRTBDIJ8/xy50AVA9aKJ2vEkNAri98xuvDUCW
   bD4HKMfQjdw4mvcTidUhPBfHglyshaH89JiqCmRbV6xh+yhIBgNdjSD7V
   AL4iYDkeX9I0JiC1VlFlUCG+bqr0PhAyi8H+ZF6MOe8K5FpF3Ykf1A+XM
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="241744056"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400";
   d="scan'208";a="241744056"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2022 22:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400";
   d="scan'208";a="710991044"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 06 Mar 2022 22:16:37 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nR6fY-00002N-B1; Mon, 07 Mar 2022 06:16:32 +0000
Date: Mon, 07 Mar 2022 13:40:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62259ac4.hltsASUBeeswv9DD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: EJXDILQFUN5AAWZ5VO5VYIX4GISJ5E26
X-Message-ID-Hash: EJXDILQFUN5AAWZ5VO5VYIX4GISJ5E26
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS c6f4ba2d2b9ac49e8576e8532879484fabec198e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EJXDILQFUN5AAWZ5VO5VYIX4GISJ5E26/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: c6f4ba2d2b9ac49e8576e8532879484fabec198e  Merge branch 'acpi-apei' into bleeding-edge

elapsed time: 4819m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001
m68k                       m5275evb_defconfig
sh                             sh03_defconfig
arm                         axm55xx_defconfig
sh                          r7780mp_defconfig
xtensa                generic_kc705_defconfig
arm                          pxa3xx_defconfig
m68k                          multi_defconfig
arm                           stm32_defconfig
sh                          r7785rp_defconfig
arc                        vdk_hs38_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                            hisi_defconfig
arm                            mps2_defconfig
h8300                     edosk2674_defconfig
arm                  randconfig-c002-20220302
arm                  randconfig-c002-20220304
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
alpha                            allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220304
arc                  randconfig-r043-20220302
s390                 randconfig-r044-20220302
riscv                randconfig-r042-20220304
s390                 randconfig-r044-20220304
riscv                randconfig-r042-20220302
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                     tqm5200_defconfig
powerpc                     kilauea_defconfig
mips                      maltaaprp_defconfig
powerpc                      ppc64e_defconfig
i386                             allyesconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220304
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302
hexagon              randconfig-r041-20220304

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
