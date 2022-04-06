Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAB74F5BC6
	for <lists+devel-acpica@lfdr.de>; Wed,  6 Apr 2022 12:52:04 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B7E3F100EA103;
	Wed,  6 Apr 2022 03:52:02 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 21E33100EB855
	for <devel@acpica.org>; Wed,  6 Apr 2022 03:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649242321; x=1680778321;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=sCbndmvVFeuFOpdMRm7H6hoHwI9EpwMyrkrA0NqeNzs=;
  b=cIogpgBlayExNQnEaIEjs/iEtD/0gXyCj4R8fnCPiaYtt/xlgatI7VMT
   boewmj1cnONsbLV9vbnhWeE5OJk5Au+RgTEdMoKylstflE0CathrXcw26
   wEro9cgDeAh7W+8w/re6c+oLVHgno558cFMbr7XhIJynovQMdTl7bYZgb
   yr5XiOrQR+VnS5URuMr4v3x80i8tB/IWFuJ2Z56D7NehnwObvA3wonbVh
   lK5asvZAzvS8F7VKlDP2ptLSi4RV1v1cdwIT2gWGcWosndg7EG7Git305
   ThxuAvpQYBFT5XzVFbKCDvDi8Eyzjtc0wlKMGt9RdwiMZoZFy7Lw0Pa8L
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="243153392"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400";
   d="scan'208";a="243153392"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Apr 2022 03:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400";
   d="scan'208";a="608846945"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 06 Apr 2022 03:51:58 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nc3GX-0004K2-V1;
	Wed, 06 Apr 2022 10:51:57 +0000
Date: Wed, 06 Apr 2022 18:51:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <624d70bb.IDPV7PFlNd1OW6GM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: KMHHCQ6XZMCJTPNDCHI7525G6OXPRUZW
X-Message-ID-Hash: KMHHCQ6XZMCJTPNDCHI7525G6OXPRUZW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS bfb13c25fad240c3fd1601e8deff642389e903e8
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KMHHCQ6XZMCJTPNDCHI7525G6OXPRUZW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: bfb13c25fad240c3fd1601e8deff642389e903e8  Merge branch 'thermal-int340x' into bleeding-edge

elapsed time: 976m

configs tested: 93
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                                 defconfig
arm                              allmodconfig
i386                          randconfig-c001
sh                          sdk7786_defconfig
arc                          axs101_defconfig
m68k                        m5407c3_defconfig
mips                         mpc30x_defconfig
openrisc                  or1klitex_defconfig
xtensa                  nommu_kc705_defconfig
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                  randconfig-r043-20220405
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                          pcm027_defconfig
mips                           mtx1_defconfig
arm                        neponset_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220405
hexagon              randconfig-r045-20220405
s390                 randconfig-r044-20220405
riscv                randconfig-r042-20220405

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
