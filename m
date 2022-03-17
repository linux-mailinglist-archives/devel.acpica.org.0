Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE7C4DCF3F
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Mar 2022 21:24:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D4137100EA2B7;
	Thu, 17 Mar 2022 13:24:11 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 06EE3100EA2B6
	for <devel@acpica.org>; Thu, 17 Mar 2022 13:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647548649; x=1679084649;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=MOtqzX44K7xovyzpcLbuLP0GmRokcStiiAIRKVkO/C0=;
  b=F4vJZK1tfD4ST/VrdmHZKLtJcw4HF8nP9iAtr48ZTfMlspgruvsClowe
   9aiel6gaZBqvMOr/59MlSD+GF1YXI8KLULgrGPiwQEhUykX+vQumL2mvp
   SPBBQKr6Dw0aPWXv+iFEssvDDtQns/G3wAwb9uNYeZeVMmEdBSJpor5ED
   CwhccA6B4js0V6BFDG0IWu2DuL0onBoG34v0aJt6tT77WzNF+qB7FW6sf
   dYKQ2T85jOTK4oh2Tv9XtRztfJbZ6tbKk50bwBDZvwVc87QQjnWjq5mHq
   368XtXslGbg3eGpd9CvurCIe5KWlNaAdo7KLQ9UQsRLfzKY3mGgb7KZMv
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244429948"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400";
   d="scan'208";a="244429948"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2022 13:24:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400";
   d="scan'208";a="513570295"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 17 Mar 2022 13:24:06 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nUwfF-000E19-NM; Thu, 17 Mar 2022 20:24:05 +0000
Date: Fri, 18 Mar 2022 04:23:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <623398b7.7mbh7dQqlrypt/a9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ASGSJVCQCQLJ5MQQ2BJJIM6EYZRCNTUD
X-Message-ID-Hash: ASGSJVCQCQLJ5MQQ2BJJIM6EYZRCNTUD
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 1887e35ee99cdab28fdd1cfd97412b10926fc1e9
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ASGSJVCQCQLJ5MQQ2BJJIM6EYZRCNTUD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 1887e35ee99cdab28fdd1cfd97412b10926fc1e9  Merge branch 'thermal-int340x' into bleeding-edge

elapsed time: 731m

configs tested: 109
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001
arm                            zeus_defconfig
arm                         lubbock_defconfig
sh                             espt_defconfig
powerpc                      bamboo_defconfig
ia64                             alldefconfig
mips                           jazz_defconfig
arc                              alldefconfig
arm                        clps711x_defconfig
m68k                       m5208evb_defconfig
sh                          rsk7201_defconfig
arm                      jornada720_defconfig
alpha                            alldefconfig
sh                        dreamcast_defconfig
arm                        cerfcube_defconfig
arm                           stm32_defconfig
sh                          sdk7780_defconfig
arm                  randconfig-c002-20220317
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
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
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220317
riscv                randconfig-r042-20220317
s390                 randconfig-r044-20220317
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
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
mips                           ip28_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                       lemote2f_defconfig
powerpc                      ppc64e_defconfig
powerpc                    gamecube_defconfig
powerpc                       ebony_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220317
hexagon              randconfig-r041-20220317

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
