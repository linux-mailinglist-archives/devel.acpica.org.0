Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E92D2473
	for <lists+devel-acpica@lfdr.de>; Tue,  8 Dec 2020 08:37:12 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A450F100EF24F;
	Mon,  7 Dec 2020 23:37:10 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0109B100EF24E
	for <devel@acpica.org>; Mon,  7 Dec 2020 23:37:08 -0800 (PST)
IronPort-SDR: Iv9DEJah6SkUpt9jsUQ9KbyIey2v0NDmoS0FRX0BBosNHUmDovSYIEl3Gbje+s/J14YsAxRskn
 ql3NmOt7V22g==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="160894945"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400";
   d="scan'208";a="160894945"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2020 23:37:07 -0800
IronPort-SDR: L/nR/tDDohPpMVfC119rVjkX6W2x00Bn0mf4/IdYf7vN/tTlpH5eo53IykUc8KPGq9vEHHBGQg
 TFK5dtfQgzKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400";
   d="scan'208";a="552132877"
Received: from lkp-server01.sh.intel.com (HELO c88bd47c8831) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 07 Dec 2020 23:37:06 -0800
Received: from kbuild by c88bd47c8831 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kmXYX-00004M-K6; Tue, 08 Dec 2020 07:37:05 +0000
Date: Tue, 08 Dec 2020 15:36:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fcf2d00.CPhaM2Fc7r9QPdAw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: UUI4EEFJB4X6RTMZRH762XF547CITKMD
X-Message-ID-Hash: UUI4EEFJB4X6RTMZRH762XF547CITKMD
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 88e3db954de0fa9f322c90c7a783680248950a9a
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UUI4EEFJB4X6RTMZRH762XF547CITKMD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 88e3db954de0fa9f322c90c7a783680248950a9a  Merge branch 'acpi-platform' into bleeding-edge

elapsed time: 725m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                  mpc885_ads_defconfig
mips                           ip28_defconfig
powerpc                     pq2fads_defconfig
powerpc                 mpc832x_rdb_defconfig
c6x                         dsk6455_defconfig
m68k                        m5272c3_defconfig
arm                  colibri_pxa300_defconfig
powerpc                     powernv_defconfig
m68k                        mvme16x_defconfig
arm                           tegra_defconfig
powerpc                     tqm8540_defconfig
powerpc                      chrp32_defconfig
mips                         db1xxx_defconfig
m68k                       m5249evb_defconfig
arc                        nsim_700_defconfig
arm                       omap2plus_defconfig
arm                         lpc18xx_defconfig
sh                          sdk7780_defconfig
m68k                       m5275evb_defconfig
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
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201207
i386                 randconfig-a004-20201207
i386                 randconfig-a001-20201207
i386                 randconfig-a002-20201207
i386                 randconfig-a006-20201207
i386                 randconfig-a003-20201207
x86_64               randconfig-a016-20201207
x86_64               randconfig-a012-20201207
x86_64               randconfig-a014-20201207
x86_64               randconfig-a013-20201207
x86_64               randconfig-a015-20201207
x86_64               randconfig-a011-20201207
i386                 randconfig-a014-20201207
i386                 randconfig-a013-20201207
i386                 randconfig-a011-20201207
i386                 randconfig-a015-20201207
i386                 randconfig-a012-20201207
i386                 randconfig-a016-20201207
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201207
x86_64               randconfig-a006-20201207
x86_64               randconfig-a002-20201207
x86_64               randconfig-a001-20201207
x86_64               randconfig-a005-20201207
x86_64               randconfig-a003-20201207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
