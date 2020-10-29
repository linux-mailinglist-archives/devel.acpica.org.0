Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3C729E344
	for <lists+devel-acpica@lfdr.de>; Thu, 29 Oct 2020 06:10:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EF7571638F912;
	Wed, 28 Oct 2020 22:10:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AB30E1638F910
	for <devel@acpica.org>; Wed, 28 Oct 2020 22:10:51 -0700 (PDT)
IronPort-SDR: Q1TPA3gvcBKDdqQ7NJ9LgvWo9UKPEx1T5vpsmyrOSDM+4kFc98JRN0CMF9UQzc1JrC+lvuOq0a
 s5OAVEhC8ZtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="168479855"
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400";
   d="scan'208";a="168479855"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 22:10:51 -0700
IronPort-SDR: SYBoUfZdu/ewHjqWPlPi92xJwDnFwZBCIciHjHJ828PqiulpsWnHNyeT6uuWW0//ExUQTEt6wF
 Ybumm3XPVNNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400";
   d="scan'208";a="304464084"
Received: from lkp-server02.sh.intel.com (HELO 72b1a4bebef6) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 28 Oct 2020 22:10:49 -0700
Received: from kbuild by 72b1a4bebef6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kY0D1-00005F-LG; Thu, 29 Oct 2020 05:10:47 +0000
Date: Thu, 29 Oct 2020 13:10:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f9a4ed6.YWfw4vprz0r9j6gs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: UWZJKPLVIMLQCZ2E3SI6QHQ7WPDGNZWA
X-Message-ID-Hash: UWZJKPLVIMLQCZ2E3SI6QHQ7WPDGNZWA
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 38d3e7dd7c4204c5d26188fe6edded709cfde97c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UWZJKPLVIMLQCZ2E3SI6QHQ7WPDGNZWA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 38d3e7dd7c4204c5d26188fe6edded709cfde97c  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 725m

configs tested: 91
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                    socrates_defconfig
arm                         nhk8815_defconfig
arm                         shannon_defconfig
sh                            titan_defconfig
sh                        sh7785lcr_defconfig
mips                 decstation_r4k_defconfig
arm                      jornada720_defconfig
powerpc64                           defconfig
mips                       capcella_defconfig
arm                           tegra_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                    sam440ep_defconfig
sh                          urquell_defconfig
powerpc                      walnut_defconfig
sh                          sdk7780_defconfig
powerpc                     pseries_defconfig
sh                              ul2_defconfig
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
i386                 randconfig-a002-20201028
i386                 randconfig-a005-20201028
i386                 randconfig-a003-20201028
i386                 randconfig-a001-20201028
i386                 randconfig-a004-20201028
i386                 randconfig-a006-20201028
x86_64               randconfig-a011-20201028
x86_64               randconfig-a013-20201028
x86_64               randconfig-a016-20201028
x86_64               randconfig-a015-20201028
x86_64               randconfig-a012-20201028
x86_64               randconfig-a014-20201028
i386                 randconfig-a016-20201028
i386                 randconfig-a014-20201028
i386                 randconfig-a015-20201028
i386                 randconfig-a013-20201028
i386                 randconfig-a012-20201028
i386                 randconfig-a011-20201028
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
x86_64               randconfig-a001-20201028
x86_64               randconfig-a002-20201028
x86_64               randconfig-a003-20201028
x86_64               randconfig-a006-20201028
x86_64               randconfig-a005-20201028
x86_64               randconfig-a004-20201028

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
