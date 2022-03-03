Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B964CBBF7
	for <lists+devel-acpica@lfdr.de>; Thu,  3 Mar 2022 11:58:57 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 42E7B100F486A;
	Thu,  3 Mar 2022 02:58:55 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 843E2100EAB51
	for <devel@acpica.org>; Thu,  3 Mar 2022 02:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646305133; x=1677841133;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=Nkd29L+j7Fp94sLtS2XD9ueDv63jvM6HfvXNxG4Edqg=;
  b=HGXP/uX6nvy0s5B9drJCNwY103A9l9naGp9fe6BOo350s4uk9h/SGLFk
   aPOcR3MVUtaIhQunopoGau9BwckXBRVo2pmJkPO8CVzm5QuqKAPeZNUK8
   YN9qLu7jKkE0PsSzsG0zCVzjxLHbRAhjQ8LVEyAouRx1l+mrm0LU51YkC
   uXzDDWuAvXyelGdiCVjR1ezg3bIit0mk4BZVy0fPe8x8eSVMACglzJzGg
   YNsoyQLEV6+7m4jPZymu7gdjsx2vfzGhKotF5XO1hR2SFuhzPdLxaXK56
   xd89rr0/w271hbNpFdFUF1D6lcTCM/ii/h+bssxUNDaGO/z/WoNfFNf2h
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253375765"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400";
   d="scan'208";a="253375765"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2022 02:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400";
   d="scan'208";a="642075248"
Received: from lkp-server01.sh.intel.com (HELO ccb16ba0ecc3) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 03 Mar 2022 02:58:50 -0800
Received: from kbuild by ccb16ba0ecc3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nPjAY-0000P0-84; Thu, 03 Mar 2022 10:58:50 +0000
Date: Thu, 03 Mar 2022 18:58:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62209f5c.6l3RKYqOdNdQyzWY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: PS3FXPMOYKHEUTMNMNFP3IFEHBLIJG2V
X-Message-ID-Hash: PS3FXPMOYKHEUTMNMNFP3IFEHBLIJG2V
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 18e73a320f9bcc743a83d419c49f66c4e4e057d8
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PS3FXPMOYKHEUTMNMNFP3IFEHBLIJG2V/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 18e73a320f9bcc743a83d419c49f66c4e4e057d8  Merge branch 'acpi-bus' into bleeding-edge

elapsed time: 740m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
i386                          randconfig-c001
arm                       omap2plus_defconfig
arm                          badge4_defconfig
microblaze                          defconfig
m68k                       m5249evb_defconfig
arc                            hsdk_defconfig
arm                         assabet_defconfig
m68k                        m5272c3_defconfig
sh                ecovec24-romimage_defconfig
sh                            titan_defconfig
mips                     loongson1b_defconfig
m68k                             alldefconfig
mips                           ci20_defconfig
powerpc                     taishan_defconfig
arc                        nsim_700_defconfig
sh                          sdk7780_defconfig
arm                  randconfig-c002-20220302
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
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
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
riscv                randconfig-r042-20220302
arc                  randconfig-r043-20220302
s390                 randconfig-r044-20220302
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                      tct_hammer_defconfig
arm                         mv78xx0_defconfig
arm                         lpc32xx_defconfig
powerpc                      pmac32_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
