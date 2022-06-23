Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CCA556FDA
	for <lists+devel-acpica@lfdr.de>; Thu, 23 Jun 2022 03:28:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 71CDE100EAB06;
	Wed, 22 Jun 2022 18:28:04 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AD775100EAB7D
	for <devel@acpica.org>; Wed, 22 Jun 2022 18:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655947682; x=1687483682;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=JDaY/H6l4S7fw8l9x6LMQMp2crDdKIldldQwzF5WU4k=;
  b=FhVaIe5c6FUL3mOSdRpTRKG88E/tTC+T0l3AbQKhIiJJjbx8yrOT7/gb
   AWbJ1lwQnYNdm7MmM8ALN9yxRLhEqBv7Rn+Prsc2jMWiVtK0vHySR/Tya
   u/0vQG8zMAsuav8B22t18YsI/BZQ2gTWvr9fUvzLJP8uaqXko1olaLFOV
   js4BIJqwe6iK17iGhUv5tVAsUAfvhYsHVy1JbLwnIDcCGYHxoWk3q6RW2
   ApoY3qZJWOYnwHDZrnWKy5bKJJ7SVFSZy1h3P7lM45mXVlhVr52zYGXjF
   PeYTEy/RFq/ItKOdtDZFF5x7asmzdGtd/IiQZaicwNVl8AnXybDCoHD6X
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260410771"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400";
   d="scan'208";a="260410771"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2022 18:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400";
   d="scan'208";a="914958346"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 22 Jun 2022 18:28:00 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o4BdX-0000Hj-IM;
	Thu, 23 Jun 2022 01:27:59 +0000
Date: Thu, 23 Jun 2022 09:17:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62b3bf31.e3RKhPmmPlJYpvAW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: IN6TWGJ4B4XKJTFR6HWZTIKXZIUU2YQX
X-Message-ID-Hash: IN6TWGJ4B4XKJTFR6HWZTIKXZIUU2YQX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 22f7e9edec50b73e533b1f73bd4b2e10a0910d3f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IN6TWGJ4B4XKJTFR6HWZTIKXZIUU2YQX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 22f7e9edec50b73e533b1f73bd4b2e10a0910d3f  Merge branch 'pm-sleep' into linux-next

elapsed time: 729m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
m68k                          atari_defconfig
sh                             espt_defconfig
arc                    vdk_hs38_smp_defconfig
s390                          debug_defconfig
m68k                        mvme16x_defconfig
arm                            xcep_defconfig
arc                              alldefconfig
sh                           se7343_defconfig
parisc                generic-32bit_defconfig
arm                        oxnas_v6_defconfig
um                               alldefconfig
sh                          urquell_defconfig
sh                         microdev_defconfig
sparc                               defconfig
powerpc                      pasemi_defconfig
sh                             sh03_defconfig
openrisc                         alldefconfig
arm                           u8500_defconfig
arm                       aspeed_g5_defconfig
xtensa                              defconfig
ia64                             allmodconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                              debian-10.3
i386                                defconfig
i386                   debian-10.3-kselftests
i386                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                 mpc8315_rdb_defconfig
arm                          ixp4xx_defconfig
riscv                    nommu_virt_defconfig
mips                           ip28_defconfig
arm                         hackkit_defconfig
riscv                             allnoconfig
powerpc                 xes_mpc85xx_defconfig
i386                             allyesconfig
mips                        qi_lb60_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r041-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r041-20220623
hexagon              randconfig-r045-20220623

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
