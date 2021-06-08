Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CC739ED3E
	for <lists+devel-acpica@lfdr.de>; Tue,  8 Jun 2021 05:58:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D21C2100ED4A4;
	Mon,  7 Jun 2021 20:58:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2BA35100EF276
	for <devel@acpica.org>; Mon,  7 Jun 2021 20:58:14 -0700 (PDT)
IronPort-SDR: x8UsOHsPyNooArM7ebGSIV+tVUv5c6tQxslzclCSsjnLy0ZIijTOf7hBzat75GZWWfbiNnsfox
 AyVQbFkqKKcA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192092532"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800";
   d="scan'208";a="192092532"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 20:58:14 -0700
IronPort-SDR: bJ1/8bo157+dX8QThXAk9BJKGk40t3cvuopyo0Q5OjdrC0oBn91hF/rKb2Uj/erXRUZBkR16AQ
 1KHsCxcGaDDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800";
   d="scan'208";a="552114492"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2021 20:58:12 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqSsW-0008lO-6a; Tue, 08 Jun 2021 03:58:12 +0000
Date: Tue, 08 Jun 2021 11:57:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60beeabc.r+uDy1Td1/8BBo3x%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 7WJ7VTZRZI2MBR6J3NKLJVAWOCQUUA36
X-Message-ID-Hash: 7WJ7VTZRZI2MBR6J3NKLJVAWOCQUUA36
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS ef9717af1f5dba66340aed0809eecd4abc207bac
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7WJ7VTZRZI2MBR6J3NKLJVAWOCQUUA36/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: ef9717af1f5dba66340aed0809eecd4abc207bac  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 721m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     loongson2k_defconfig
mips                          rm200_defconfig
powerpc                 mpc8560_ads_defconfig
arm                           omap1_defconfig
powerpc                     powernv_defconfig
mips                           rs90_defconfig
arm                         mv78xx0_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                          simpad_defconfig
arc                            hsdk_defconfig
mips                       bmips_be_defconfig
s390                                defconfig
arc                          axs103_defconfig
powerpc                 mpc832x_mds_defconfig
sh                             espt_defconfig
arc                           tb10x_defconfig
powerpc                         wii_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                           se7343_defconfig
x86_64                            allnoconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210607
i386                 randconfig-a006-20210607
i386                 randconfig-a004-20210607
i386                 randconfig-a001-20210607
i386                 randconfig-a002-20210607
i386                 randconfig-a005-20210607
x86_64               randconfig-a015-20210607
x86_64               randconfig-a011-20210607
x86_64               randconfig-a014-20210607
x86_64               randconfig-a012-20210607
x86_64               randconfig-a016-20210607
x86_64               randconfig-a013-20210607
i386                 randconfig-a015-20210607
i386                 randconfig-a013-20210607
i386                 randconfig-a011-20210607
i386                 randconfig-a016-20210607
i386                 randconfig-a014-20210607
i386                 randconfig-a012-20210607
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210607
x86_64               randconfig-a002-20210607
x86_64               randconfig-a004-20210607
x86_64               randconfig-a003-20210607
x86_64               randconfig-a006-20210607
x86_64               randconfig-a005-20210607
x86_64               randconfig-a001-20210607

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
