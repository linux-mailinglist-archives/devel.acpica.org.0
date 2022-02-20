Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 237604BCCEB
	for <lists+devel-acpica@lfdr.de>; Sun, 20 Feb 2022 08:16:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C8455100F3FB0;
	Sat, 19 Feb 2022 23:16:42 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6255F100F3956
	for <devel@acpica.org>; Sat, 19 Feb 2022 23:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645341400; x=1676877400;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=Dk2tEy1WYBh2FFMsDGZPffpOnKJ/yzGQkkNOh/0/ijk=;
  b=CZQfo74HrAYZOC8wDMbZlSCyWVx9jji1pob3k/2sLydsVZjtxZ72b2bi
   xTPhZ4PRahPCrGfgcbY73ax1EthQWJnjs6r7IFLVGayjfmXEXHvROJGuX
   f1Alq6qRV7OqbfIJurD0WMLBtOs7gOMnWu/M5tmPrOk9ecl5ysWl4+xR0
   JtPg4mISyW0ewAOoKaqq2uMeoEvrMMPsT3MjFo7f4Pw9WfH2cEd778R8Z
   cbR+mKwMPrydHTFeyQlOjS8rxDJrk7tUnMH07yp8gTN2js6U9+dAK2BS4
   XOhKsfFhZNtBhqily/fD4YAG9hYokeGb1d6azsHCYdXRAhYefYY7KIVuc
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10263"; a="251102615"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600";
   d="scan'208";a="251102615"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2022 23:16:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600";
   d="scan'208";a="705859925"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 19 Feb 2022 23:16:34 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nLgSP-00003N-EM; Sun, 20 Feb 2022 07:16:33 +0000
Date: Sun, 20 Feb 2022 15:16:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6211eaba.nNO/5buGIMGQ4kvp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: HFTI2Q7LYGNB2Z3IDIE6E75YBVVOGE4H
X-Message-ID-Hash: HFTI2Q7LYGNB2Z3IDIE6E75YBVVOGE4H
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 3f4a4374662e7c4826d13cd108265253a11e5114
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HFTI2Q7LYGNB2Z3IDIE6E75YBVVOGE4H/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3f4a4374662e7c4826d13cd108265253a11e5114  Merge branch 'thermal-hfi' into bleeding-edge

elapsed time: 3506m

configs tested: 100
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
arm                        clps711x_defconfig
arm                            zeus_defconfig
sh                           se7780_defconfig
microblaze                      mmu_defconfig
powerpc                       eiger_defconfig
h8300                               defconfig
xtensa                generic_kc705_defconfig
powerpc                 mpc834x_itx_defconfig
m68k                        mvme147_defconfig
riscv                    nommu_k210_defconfig
powerpc                 linkstation_defconfig
arm                  randconfig-c002-20220217
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
arc                  randconfig-r043-20220217
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
mips                          ath79_defconfig
mips                           ip22_defconfig
mips                      maltaaprp_defconfig
arm                      tct_hammer_defconfig
riscv                            alldefconfig
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
hexagon              randconfig-r045-20220217
hexagon              randconfig-r041-20220217
s390                 randconfig-r044-20220217
riscv                randconfig-r042-20220217

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
