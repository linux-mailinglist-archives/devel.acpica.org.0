Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FBF1EB2A0
	for <lists+devel-acpica@lfdr.de>; Tue,  2 Jun 2020 02:16:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A9F0F100DCB6B;
	Mon,  1 Jun 2020 17:12:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 70D7E100DCE0D
	for <devel@acpica.org>; Mon,  1 Jun 2020 17:12:06 -0700 (PDT)
IronPort-SDR: 19QANKWkb+re8vaGfklFTqAdo38Ea7T+DuED78g7N9oDWdlkUtegDbE4ZKNeUpkuQKnOlPGoOZ
 228Gpz6QZWGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2020 17:16:53 -0700
IronPort-SDR: Zz0JUr6rke/XwlpSU7tS8uEuj1hn6e+/O2jwbffqzQkSqPX2mujdMrFzsVcDerZgwC7zL/bzdI
 KpKppSw8b5qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400";
   d="scan'208";a="303810730"
Received: from lkp-server02.sh.intel.com (HELO 3e9a596e5d8c) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2020 17:16:51 -0700
Received: from kbuild by 3e9a596e5d8c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jfubr-00000M-9x; Tue, 02 Jun 2020 00:16:51 +0000
Date: Tue, 02 Jun 2020 08:16:33 +0800
From: kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5ed59a61.fTp3pBnAejJZ0U4Z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: P3QUQXDHEA7OIEYOMOO2ZAMJG6T3U6JV
X-Message-ID-Hash: P3QUQXDHEA7OIEYOMOO2ZAMJG6T3U6JV
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS c291ca907606f834e19abfb788b11dfbc888b7e4
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/P3QUQXDHEA7OIEYOMOO2ZAMJG6T3U6JV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: c291ca907606f834e19abfb788b11dfbc888b7e4  Merge branch 'pm-cpufreq' into testing

elapsed time: 481m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
nds32                            alldefconfig
mips                         tb0287_defconfig
sh                         microdev_defconfig
powerpc                       holly_defconfig
powerpc                mpc7448_hpc2_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200601
i386                 randconfig-a006-20200601
i386                 randconfig-a002-20200601
i386                 randconfig-a005-20200601
i386                 randconfig-a003-20200601
i386                 randconfig-a004-20200601
x86_64               randconfig-a002-20200601
x86_64               randconfig-a006-20200601
x86_64               randconfig-a001-20200601
x86_64               randconfig-a003-20200601
x86_64               randconfig-a004-20200601
x86_64               randconfig-a005-20200601
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
um                               allmodconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
