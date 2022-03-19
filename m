Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404F4DE589
	for <lists+devel-acpica@lfdr.de>; Sat, 19 Mar 2022 04:51:06 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C2E23100EAB71;
	Fri, 18 Mar 2022 20:51:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A089C100F2257
	for <devel@acpica.org>; Fri, 18 Mar 2022 20:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647661861; x=1679197861;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=+TmYVIGlhVXaNPcUldyOUpJF3OhtFXTt08+/fCIhGeY=;
  b=Z6OybHgO/XJiu+VSgFeJGGwMq2HSXBocE/9JvjHL+HS0p0fOnLmxUhqe
   qZkFj4eqFpHb0qckCY5gcNiFl8ASAcC1KeYECIma9rVAyUSplzcBVm6iE
   xwOcF67pVGgiUdl3GoYxgLmpZIQGBEK8O5t+BjtvER9IYREtdvsorp+Yg
   fDfLBSk7XNtH/w5Pt7dacu7BIwKF/v4UWTiMBmYnNSUgAP0ktFYUPdn/K
   2Ow6s0koHC1TjCeDSq99TCPptiKg2zC/BTFpr8VrRl5O1OW76hggloJXX
   Z/qk00Qs9n2/zkAYBY3MQhClF0Ghi+yB8gqngJvllAp/sVpQITQHa7Cci
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="257466251"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400";
   d="scan'208";a="257466251"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2022 20:51:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400";
   d="scan'208";a="542185691"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 18 Mar 2022 20:50:59 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nVQ7G-000FWT-Hj; Sat, 19 Mar 2022 03:50:58 +0000
Date: Sat, 19 Mar 2022 11:50:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62355312.hQxP5XF68qZlNBcI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: PAFRHABTMCW3HKOXJ6RG2LRNRAGYNBR7
X-Message-ID-Hash: PAFRHABTMCW3HKOXJ6RG2LRNRAGYNBR7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS c4869334ceaf0b0d33b2b606a68221a486d4c7d6
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PAFRHABTMCW3HKOXJ6RG2LRNRAGYNBR7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: c4869334ceaf0b0d33b2b606a68221a486d4c7d6  Merge branch 'pm-docs-next' into bleeding-edge

elapsed time: 817m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
powerpc                      tqm8xx_defconfig
mips                            ar7_defconfig
sh                         microdev_defconfig
sh                          polaris_defconfig
arm                          exynos_defconfig
arm                          iop32x_defconfig
sh                           se7343_defconfig
mips                         tb0226_defconfig
powerpc                     ep8248e_defconfig
sh                           se7619_defconfig
ia64                             alldefconfig
powerpc                       maple_defconfig
mips                      maltasmvp_defconfig
arm                  randconfig-c002-20220318
arm                  randconfig-c002-20220317
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
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                                defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220318
riscv                randconfig-r042-20220317
arc                  randconfig-r043-20220317
s390                 randconfig-r044-20220317
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                  randconfig-c002-20220318
x86_64                        randconfig-c007
s390                 randconfig-c005-20220317
s390                 randconfig-c005-20220318
arm                  randconfig-c002-20220317
mips                 randconfig-c004-20220318
mips                 randconfig-c004-20220317
riscv                randconfig-c006-20220318
powerpc              randconfig-c003-20220318
powerpc              randconfig-c003-20220317
i386                          randconfig-c001
riscv                randconfig-c006-20220317
arm                   milbeaut_m10v_defconfig
powerpc                        icon_defconfig
arm                         orion5x_defconfig
mips                           mtx1_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220318
hexagon              randconfig-r041-20220318
hexagon              randconfig-r041-20220317
s390                 randconfig-r044-20220318
hexagon              randconfig-r045-20220317
riscv                randconfig-r042-20220318

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
