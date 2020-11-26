Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AE22C4E89
	for <lists+devel-acpica@lfdr.de>; Thu, 26 Nov 2020 06:57:59 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1BFAB100ED499;
	Wed, 25 Nov 2020 21:57:58 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1E8B9100EF265
	for <devel@acpica.org>; Wed, 25 Nov 2020 21:57:54 -0800 (PST)
IronPort-SDR: ekGAGOVgk4p224YCego5mR0HbuKP5iaMFxgj/n0VZ8GCFqYm50t1NQmlxgdMSvbl3zJyhC600C
 7g87JR+MfGbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="152075746"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400";
   d="scan'208";a="152075746"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2020 21:57:54 -0800
IronPort-SDR: Jv+dPjbb8uTe2YzimvesQ720722kAOF0nQ/sjfb7O6mlwawsMPlfljYXip2nwTgjFATLgX8UdB
 X7KbJ+ftrFJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400";
   d="scan'208";a="535623205"
Received: from lkp-server01.sh.intel.com (HELO dd79da36dde1) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 25 Nov 2020 21:57:53 -0800
Received: from kbuild by dd79da36dde1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kiAHw-00004u-9Y; Thu, 26 Nov 2020 05:57:52 +0000
Date: Thu, 26 Nov 2020 13:57:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fbf43c0.kdDJx/HTc1hIV0/o%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: CQLRSR6NGBA6JWGZQLLIL3IA6CKEOBBO
X-Message-ID-Hash: CQLRSR6NGBA6JWGZQLLIL3IA6CKEOBBO
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 59d584c1f534789d8d96114726c651286876b335
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CQLRSR6NGBA6JWGZQLLIL3IA6CKEOBBO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 59d584c1f534789d8d96114726c651286876b335  Merge branch 'acpi-resources' into bleeding-edge

elapsed time: 723m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                         rt305x_defconfig
openrisc                         alldefconfig
powerpc                       ebony_defconfig
sh                          r7785rp_defconfig
sh                          rsk7201_defconfig
m68k                          hp300_defconfig
arc                        vdk_hs38_defconfig
arm                            qcom_defconfig
m68k                        mvme147_defconfig
arm                            dove_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                   motionpro_defconfig
arc                        nsim_700_defconfig
mips                        bcm47xx_defconfig
arm                           sunxi_defconfig
powerpc                     tqm5200_defconfig
powerpc                       holly_defconfig
um                            kunit_defconfig
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
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201125
i386                 randconfig-a003-20201125
i386                 randconfig-a002-20201125
i386                 randconfig-a005-20201125
i386                 randconfig-a001-20201125
i386                 randconfig-a006-20201125
x86_64               randconfig-a015-20201125
x86_64               randconfig-a011-20201125
x86_64               randconfig-a014-20201125
x86_64               randconfig-a016-20201125
x86_64               randconfig-a012-20201125
x86_64               randconfig-a013-20201125
i386                 randconfig-a012-20201125
i386                 randconfig-a013-20201125
i386                 randconfig-a011-20201125
i386                 randconfig-a016-20201125
i386                 randconfig-a014-20201125
i386                 randconfig-a015-20201125
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
x86_64               randconfig-a006-20201125
x86_64               randconfig-a003-20201125
x86_64               randconfig-a004-20201125
x86_64               randconfig-a005-20201125
x86_64               randconfig-a002-20201125
x86_64               randconfig-a001-20201125

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
