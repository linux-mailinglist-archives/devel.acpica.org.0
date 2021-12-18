Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B094479C03
	for <lists+devel-acpica@lfdr.de>; Sat, 18 Dec 2021 19:25:01 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 29820100EA2C2;
	Sat, 18 Dec 2021 10:24:59 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8F07F100EB846
	for <devel@acpica.org>; Sat, 18 Dec 2021 10:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639851896; x=1671387896;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=TymOUnAh3bsvcbuLs0xfgEhg4jnfOW/+Xa6YQ+6mURI=;
  b=WwSxez4pt1tpp+835n7pe3dzCmLBtYXy/knwU4dIfrLDm6/8ho9yd9k2
   3SV3HiPDIiM4vuzR/jCLGAwLrkyOeEr4XqH1ffuhz8hUfwpohkO/hrBSy
   cTUWcoSlFP+36nRjmtZYtk6RMBm/7ZYhUAuA6MKzKDzTHtHF8PSyKDISq
   hS3tIcQrzuRQuSPLlRpF2D5s0YraTjeCbPu+O57E1SEjCtbr2kw8ohIOe
   jwRSHzBzgDow91+E0FtfhJ+AvdZziULaoD936s4paHPjkz2GFPExQxylc
   ylmbBmmZ2OyN9AyUGYec+8+94NmKrislXxzZ2b0Zwj32XCPeWgmNXDHoy
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10202"; a="240164661"
X-IronPort-AV: E=Sophos;i="5.88,216,1635231600";
   d="scan'208";a="240164661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2021 10:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,216,1635231600";
   d="scan'208";a="683755892"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 18 Dec 2021 10:24:54 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1myeO5-0006I3-CF; Sat, 18 Dec 2021 18:24:53 +0000
Date: Sun, 19 Dec 2021 02:24:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61be2742.DfMPO2sk93xjEQ7y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NMGUQY3C4GHT7XXNYO34NF742NVSEJTQ
X-Message-ID-Hash: NMGUQY3C4GHT7XXNYO34NF742NVSEJTQ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 13500db7a43ad5848884273e6c647633c93db266
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NMGUQY3C4GHT7XXNYO34NF742NVSEJTQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 13500db7a43ad5848884273e6c647633c93db266  Merge branch 'pm-core' into bleeding-edge

elapsed time: 1168m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211216
mips                            ar7_defconfig
m68k                       bvme6000_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                              alldefconfig
powerpc                 mpc8560_ads_defconfig
nios2                            alldefconfig
powerpc                      pasemi_defconfig
m68k                        m5407c3_defconfig
arm                       netwinder_defconfig
powerpc                      pmac32_defconfig
arm                         hackkit_defconfig
arc                        nsim_700_defconfig
arm                          pxa168_defconfig
openrisc                 simple_smp_defconfig
ia64                          tiger_defconfig
mips                        omega2p_defconfig
arm                         lubbock_defconfig
arm                        magician_defconfig
sh                           se7721_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                      walnut_defconfig
mips                         rt305x_defconfig
arm                         axm55xx_defconfig
parisc                           alldefconfig
m68k                          amiga_defconfig
m68k                        mvme147_defconfig
sh                        sh7757lcr_defconfig
arm                  randconfig-c002-20211218
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
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
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a002-20211218
i386                 randconfig-a001-20211218
i386                 randconfig-a003-20211218
i386                 randconfig-a004-20211218
i386                 randconfig-a005-20211218
i386                 randconfig-a006-20211218
i386                 randconfig-a013-20211217
i386                 randconfig-a011-20211217
i386                 randconfig-a012-20211217
i386                 randconfig-a016-20211217
i386                 randconfig-a014-20211217
i386                 randconfig-a015-20211217
arc                  randconfig-r043-20211216
x86_64               randconfig-a001-20211216
x86_64               randconfig-a002-20211216
x86_64               randconfig-a003-20211216
x86_64               randconfig-a004-20211216
x86_64               randconfig-a006-20211216
x86_64               randconfig-a005-20211216
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
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
x86_64               randconfig-a011-20211216
x86_64               randconfig-a014-20211216
x86_64               randconfig-a012-20211216
x86_64               randconfig-a013-20211216
x86_64               randconfig-a015-20211216
x86_64               randconfig-a016-20211216
i386                 randconfig-a011-20211216
i386                 randconfig-a014-20211216
i386                 randconfig-a012-20211216
i386                 randconfig-a013-20211216
i386                 randconfig-a015-20211216
i386                 randconfig-a016-20211216
hexagon              randconfig-r045-20211216
s390                 randconfig-r044-20211216
riscv                randconfig-r042-20211216
hexagon              randconfig-r041-20211216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
