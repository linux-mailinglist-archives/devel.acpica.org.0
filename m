Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6B11F00FA
	for <lists+devel-acpica@lfdr.de>; Fri,  5 Jun 2020 22:31:07 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5B21D1009EA34;
	Fri,  5 Jun 2020 13:25:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 327501009F03F
	for <devel@acpica.org>; Fri,  5 Jun 2020 13:25:51 -0700 (PDT)
IronPort-SDR: dKog2tXE4+N/a6OhMAhB8tITRuaa3Z0oirumB043BUVJQi2Ew8uE8yzPME9sqWIa2Q8XFmHW+p
 22m9r3yWVl1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2020 13:31:03 -0700
IronPort-SDR: pwsKWOtCQmVoAe3oNneWMuF2iH8nJAWheywWnYTF+WEgsXGxw9eYjkF9gncwffGnz/HMBI0c7d
 Rmjxw3QrPy5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400";
   d="scan'208";a="446015406"
Received: from lkp-server02.sh.intel.com (HELO 85fa322b0eb2) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 05 Jun 2020 13:31:01 -0700
Received: from kbuild by 85fa322b0eb2 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jhIzU-0000Nd-Rw; Fri, 05 Jun 2020 20:31:00 +0000
Date: Sat, 06 Jun 2020 04:29:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5edaab47.BGrzd29tN8xz8E0X%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NSMABVDVJVY3MF6KPJEC25W4KU5CWNWE
X-Message-ID-Hash: NSMABVDVJVY3MF6KPJEC25W4KU5CWNWE
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 1e4a104be0a3afafbafc13bacc5f42007db8d43e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NSMABVDVJVY3MF6KPJEC25W4KU5CWNWE/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 1e4a104be0a3afafbafc13bacc5f42007db8d43e  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 484m

configs tested: 97
configs skipped: 1

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
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
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
x86_64               randconfig-a002-20200605
x86_64               randconfig-a001-20200605
x86_64               randconfig-a006-20200605
x86_64               randconfig-a003-20200605
x86_64               randconfig-a004-20200605
x86_64               randconfig-a005-20200605
i386                 randconfig-a001-20200605
i386                 randconfig-a006-20200605
i386                 randconfig-a002-20200605
i386                 randconfig-a005-20200605
i386                 randconfig-a004-20200605
i386                 randconfig-a003-20200605
i386                 randconfig-a014-20200605
i386                 randconfig-a015-20200605
i386                 randconfig-a011-20200605
i386                 randconfig-a016-20200605
i386                 randconfig-a012-20200605
i386                 randconfig-a013-20200605
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
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
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
