Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F4E4BD1D9
	for <lists+devel-acpica@lfdr.de>; Sun, 20 Feb 2022 22:21:00 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9B5C0100F3FBF;
	Sun, 20 Feb 2022 13:20:57 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0B318100F3FBA
	for <devel@acpica.org>; Sun, 20 Feb 2022 13:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645392055; x=1676928055;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=ib+fL+nPlzr30RX0OJNSFV2CFalul89B7b7sA0Il3BQ=;
  b=Lpd4ybzOG2UJLgir8qjevB4crLaKRV1HQ4JmBI+5ZPO7GWzbl71jCYib
   47ELfOoEKMlGyaXUXuOulRw11k2KbsEzicbzko2fXlWnlGAIFRrb8+JFy
   eMXYVbLIqG4bTFSGEeJTKugNdKb4BVGeBmwRPdJG0pI1kxMiF+rQKYf+z
   wo5MUUSJCP9hevPtdv30rYq30+m55MT5vzOzrO0yucif5Xm+cv/TCTylv
   agtfdr4hZ6U7vqSqq9uf7PqgaNvCw7FDFpgKf0srgbh0NOO1gIndlz61A
   0aZm52QXf9FYDGrxCpAngSqcGO/DddsDp/81RDfj0RBDUBd04jdmQ/r77
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="231373429"
X-IronPort-AV: E=Sophos;i="5.88,384,1635231600";
   d="scan'208";a="231373429"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2022 13:20:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,384,1635231600";
   d="scan'208";a="636455239"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2022 13:20:52 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nLtdU-0000my-6H; Sun, 20 Feb 2022 21:20:52 +0000
Date: Mon, 21 Feb 2022 05:20:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6212b09d.p9Btv447Zjn0Ggn8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: RX5BLKC4AMMTZO3BGMIHWMTTK4MMWIZX
X-Message-ID-Hash: RX5BLKC4AMMTZO3BGMIHWMTTK4MMWIZX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 2a21c4c1532ac21331c20dd776d407eaa8c6e012
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RX5BLKC4AMMTZO3BGMIHWMTTK4MMWIZX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 2a21c4c1532ac21331c20dd776d407eaa8c6e012  Merge branch 'acpi-properties' into bleeding-edge

elapsed time: 729m

configs tested: 101
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
sh                          kfr2r09_defconfig
arm                       aspeed_g5_defconfig
openrisc                    or1ksim_defconfig
powerpc                       holly_defconfig
mips                         tb0226_defconfig
mips                     decstation_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc64                           defconfig
sh                           sh2007_defconfig
xtensa                  audio_kc705_defconfig
sh                          rsk7269_defconfig
arm                  randconfig-c002-20220220
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                             allnoconfig
nios2                               defconfig
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
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
arm                  randconfig-c002-20220220
mips                 randconfig-c004-20220220
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220220
i386                          randconfig-c001
riscv                randconfig-c006-20220220
s390                 randconfig-c005-20220220
mips                     cu1830-neo_defconfig
arm                         lpc32xx_defconfig
powerpc                     tqm8540_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                   microwatt_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                          malta_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
