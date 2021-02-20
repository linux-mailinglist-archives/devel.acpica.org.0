Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6733432058D
	for <lists+devel-acpica@lfdr.de>; Sat, 20 Feb 2021 14:39:12 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B0978100ED499;
	Sat, 20 Feb 2021 05:39:10 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6F6C5100EF264
	for <devel@acpica.org>; Sat, 20 Feb 2021 05:39:07 -0800 (PST)
IronPort-SDR: oUcQ4/Zy9/gu7P9p/U9HmNWJC8Ggj7wjwo3zYg8zSY175TKkS0FNmH6OarPmu8i1sv6mhlI/Wh
 uZLAowL/n7UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="163253313"
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400";
   d="scan'208";a="163253313"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2021 05:39:06 -0800
IronPort-SDR: wbDDrAwtgbEoM+YuUMG8QTT0Lst8ruR0TaWXrGG8lUxJwIMtzLZPsINZsqBFC1o/gBP4rByCXy
 zJy+gcqWzm6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400";
   d="scan'208";a="514072987"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 20 Feb 2021 05:39:04 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lDSTP-000B3I-Jm; Sat, 20 Feb 2021 13:39:03 +0000
Date: Sat, 20 Feb 2021 21:38:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <603110ec.tBR5K6lisbTTdnBv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: OFLQSV7FZL5EHOZUS6UPN43AFACTMDF5
X-Message-ID-Hash: OFLQSV7FZL5EHOZUS6UPN43AFACTMDF5
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS fa7998ffaad0ed13479fe7026ef814b8a5bd8925
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OFLQSV7FZL5EHOZUS6UPN43AFACTMDF5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: fa7998ffaad0ed13479fe7026ef814b8a5bd8925  Merge branch 'pm-cpufreq-fixes' into bleeding-edge

elapsed time: 721m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          landisk_defconfig
powerpc                     tqm5200_defconfig
xtensa                       common_defconfig
h8300                               defconfig
sh                           se7619_defconfig
powerpc                 mpc834x_mds_defconfig
sh                           se7206_defconfig
arm                       imx_v6_v7_defconfig
sh                         microdev_defconfig
powerpc                     rainier_defconfig
arc                        nsim_700_defconfig
sh                   rts7751r2dplus_defconfig
arc                      axs103_smp_defconfig
powerpc                    klondike_defconfig
sh                           se7712_defconfig
arm                           h5000_defconfig
xtensa                  nommu_kc705_defconfig
sh                           se7705_defconfig
mips                     cu1830-neo_defconfig
arm                        mvebu_v5_defconfig
powerpc                     pseries_defconfig
arm                        multi_v7_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210219
i386                 randconfig-a003-20210219
i386                 randconfig-a002-20210219
i386                 randconfig-a004-20210219
i386                 randconfig-a001-20210219
i386                 randconfig-a006-20210219
x86_64               randconfig-a012-20210219
x86_64               randconfig-a016-20210219
x86_64               randconfig-a013-20210219
x86_64               randconfig-a015-20210219
x86_64               randconfig-a011-20210219
x86_64               randconfig-a014-20210219
i386                 randconfig-a016-20210219
i386                 randconfig-a012-20210219
i386                 randconfig-a014-20210219
i386                 randconfig-a013-20210219
i386                 randconfig-a011-20210219
i386                 randconfig-a015-20210219
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210219
x86_64               randconfig-a001-20210219
x86_64               randconfig-a004-20210219
x86_64               randconfig-a002-20210219
x86_64               randconfig-a005-20210219
x86_64               randconfig-a006-20210219

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
