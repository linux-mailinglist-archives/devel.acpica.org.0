Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BEE2EF9B1
	for <lists+devel-acpica@lfdr.de>; Fri,  8 Jan 2021 21:58:20 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 86F01100EA2B7;
	Fri,  8 Jan 2021 12:58:18 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 161F6100EA91D
	for <devel@acpica.org>; Fri,  8 Jan 2021 12:58:15 -0800 (PST)
IronPort-SDR: pLz2Iu7f/SR3AbhHNL3CBxYExL/5ZWpzcG5vxrizduShTieEiAaUWzTTfxKMK2DLuazVHY70Fb
 s5uEXK2qiGEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177802754"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400";
   d="scan'208";a="177802754"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2021 12:58:15 -0800
IronPort-SDR: mXnFTiBAXQkRUvheR/wHq+2wL47lBqSodmANthbkLOUANfBCNqmFPE6ElPolQwp9ac0sjB+tJZ
 hUN0FdcjMPgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400";
   d="scan'208";a="497960176"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 08 Jan 2021 12:58:13 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kxypp-0000fU-2G; Fri, 08 Jan 2021 20:58:13 +0000
Date: Sat, 09 Jan 2021 04:57:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5ff8c74e.h+cmkUVKPZMMcUNw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 6DHCU3EBN4AMJXPXI5L2LV2YNT5KTWQL
X-Message-ID-Hash: 6DHCU3EBN4AMJXPXI5L2LV2YNT5KTWQL
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD REGRESSION 2691096b51bae3563007c4b0188c3eec9878224b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6DHCU3EBN4AMJXPXI5L2LV2YNT5KTWQL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 2691096b51bae3563007c4b0188c3eec9878224b  Merge branch 'linux-next' into bleeding-edge

Error/Warning reports:

https://lore.kernel.org/linux-acpi/202101081623.CGkLO3Kx-lkp@intel.com

Error/Warning in current branch:

drivers/acpi/platform_profile.c:67:33: error: passing 'const struct platform_profile_handler *' to parameter of type 'struct platform_profile_handler *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- x86_64-randconfig-r011-20210108
    `-- drivers-acpi-platform_profile.c:error:passing-const-struct-platform_profile_handler-to-parameter-of-type-struct-platform_profile_handler-discards-qualifiers-Werror-Wincompatible-pointer-types-discards

elapsed time: 1156m

configs tested: 91
configs skipped: 2

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
nios2                         3c120_defconfig
sparc                            allyesconfig
powerpc                      katmai_defconfig
arm                         palmz72_defconfig
sh                              ul2_defconfig
mips                       capcella_defconfig
mips                        bcm47xx_defconfig
ia64                         bigsur_defconfig
arm                         orion5x_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                         nhk8815_defconfig
mips                         tb0287_defconfig
powerpc                 mpc834x_itx_defconfig
sh                         ap325rxa_defconfig
c6x                         dsk6455_defconfig
riscv                    nommu_virt_defconfig
powerpc                        icon_defconfig
openrisc                  or1klitex_defconfig
powerpc                 linkstation_defconfig
powerpc                      walnut_defconfig
mips                         bigsur_defconfig
mips                          rb532_defconfig
sh                            hp6xx_defconfig
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
i386                 randconfig-a005-20210108
i386                 randconfig-a002-20210108
i386                 randconfig-a001-20210108
i386                 randconfig-a003-20210108
i386                 randconfig-a006-20210108
i386                 randconfig-a004-20210108
i386                 randconfig-a016-20210108
i386                 randconfig-a011-20210108
i386                 randconfig-a014-20210108
i386                 randconfig-a015-20210108
i386                 randconfig-a013-20210108
i386                 randconfig-a012-20210108
x86_64               randconfig-a004-20210108
x86_64               randconfig-a006-20210108
x86_64               randconfig-a001-20210108
x86_64               randconfig-a002-20210108
x86_64               randconfig-a003-20210108
x86_64               randconfig-a005-20210108
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
