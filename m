Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7A730757F
	for <lists+devel-acpica@lfdr.de>; Thu, 28 Jan 2021 13:08:11 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 54CFE100EB82D;
	Thu, 28 Jan 2021 04:08:10 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6B24C100EF271
	for <devel@acpica.org>; Thu, 28 Jan 2021 04:08:08 -0800 (PST)
IronPort-SDR: nP+Ghr0XUOoXDFileLt3Sc2YB9pdPSE1nMLmM9SBcdKvBlIU/6rTwToEz0cv8ULuqu7yINPwSB
 fJ2y46Ey7JFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="177658955"
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400";
   d="scan'208";a="177658955"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2021 04:08:07 -0800
IronPort-SDR: QHqBFmuIZepoAWIouaMwRHAbyJPh2vjlqsnJwepKQIrxnJ/lxKN1W916tPcgz+SGr5kUnU7fSj
 gcVaPgaoWPfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400";
   d="scan'208";a="408968704"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2021 04:08:06 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l565l-0002sV-F1; Thu, 28 Jan 2021 12:08:05 +0000
Date: Thu, 28 Jan 2021 20:07:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6012a910.MY+w+Ue0LNA4hchw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ZIXWZB6D6MYRAN6SOG5JMHBBFXWZNATS
X-Message-ID-Hash: ZIXWZB6D6MYRAN6SOG5JMHBBFXWZNATS
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS d8eafbfd2e76d83b8740c90ab8466243c93d61b4
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZIXWZB6D6MYRAN6SOG5JMHBBFXWZNATS/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: d8eafbfd2e76d83b8740c90ab8466243c93d61b4  Merge branch 'pm-clk' into bleeding-edge

elapsed time: 732m

configs tested: 90
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      mgcoge_defconfig
powerpc                          g5_defconfig
arm                       aspeed_g4_defconfig
c6x                        evmc6678_defconfig
mips                          malta_defconfig
arc                           tb10x_defconfig
powerpc                  mpc885_ads_defconfig
nios2                         3c120_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 mpc8313_rdb_defconfig
arc                            hsdk_defconfig
mips                        bcm63xx_defconfig
mips                  cavium_octeon_defconfig
sparc                            allyesconfig
powerpc                  storcenter_defconfig
x86_64                              defconfig
m68k                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210128
i386                 randconfig-a002-20210128
i386                 randconfig-a004-20210128
i386                 randconfig-a005-20210128
i386                 randconfig-a003-20210128
i386                 randconfig-a006-20210128
x86_64               randconfig-a012-20210128
x86_64               randconfig-a015-20210128
x86_64               randconfig-a016-20210128
x86_64               randconfig-a011-20210128
x86_64               randconfig-a013-20210128
x86_64               randconfig-a014-20210128
i386                 randconfig-a013-20210128
i386                 randconfig-a011-20210128
i386                 randconfig-a012-20210128
i386                 randconfig-a016-20210128
i386                 randconfig-a014-20210128
i386                 randconfig-a015-20210128
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
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210128
x86_64               randconfig-a003-20210128
x86_64               randconfig-a001-20210128
x86_64               randconfig-a005-20210128
x86_64               randconfig-a006-20210128
x86_64               randconfig-a004-20210128

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
