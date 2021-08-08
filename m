Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E12D3E37EC
	for <lists+devel-acpica@lfdr.de>; Sun,  8 Aug 2021 04:02:32 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0B3BD100EB349;
	Sat,  7 Aug 2021 19:02:29 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 45722100EB342
	for <devel@acpica.org>; Sat,  7 Aug 2021 19:02:27 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10069"; a="212680298"
X-IronPort-AV: E=Sophos;i="5.84,304,1620716400";
   d="scan'208";a="212680298"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Aug 2021 19:02:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,304,1620716400";
   d="scan'208";a="504616672"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 07 Aug 2021 19:02:24 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mCY8u-000IKY-B0; Sun, 08 Aug 2021 02:02:24 +0000
Date: Sun, 08 Aug 2021 10:02:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <610f3b1d.xEyyZPUgcwkMKDZk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ZU6JLUFNBQRDCG2XOXBMT6ETSC6P35LZ
X-Message-ID-Hash: ZU6JLUFNBQRDCG2XOXBMT6ETSC6P35LZ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 228706e6d423b9209b3f55f36cb34a95e7f1a153
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZU6JLUFNBQRDCG2XOXBMT6ETSC6P35LZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 228706e6d423b9209b3f55f36cb34a95e7f1a153  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 2139m

configs tested: 98
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210804
arc                     haps_hs_smp_defconfig
arm                          pcm027_defconfig
arm                         lpc32xx_defconfig
sh                           sh2007_defconfig
mips                        nlm_xlp_defconfig
sh                          rsk7264_defconfig
arm                       imx_v6_v7_defconfig
ia64                        generic_defconfig
powerpc                         wii_defconfig
mips                        bcm47xx_defconfig
sh                            migor_defconfig
m68k                        m5307c3_defconfig
powerpc                        fsp2_defconfig
arm                      footbridge_defconfig
arm                           spitz_defconfig
powerpc                     stx_gp3_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                        edosk7760_defconfig
arm                           tegra_defconfig
microblaze                          defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
x86_64                            allnoconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210805
i386                 randconfig-a004-20210805
i386                 randconfig-a002-20210805
i386                 randconfig-a006-20210805
i386                 randconfig-a003-20210805
i386                 randconfig-a001-20210805
x86_64               randconfig-a012-20210804
x86_64               randconfig-a016-20210804
x86_64               randconfig-a011-20210804
x86_64               randconfig-a013-20210804
x86_64               randconfig-a014-20210804
x86_64               randconfig-a015-20210804
i386                 randconfig-a012-20210806
i386                 randconfig-a011-20210806
i386                 randconfig-a015-20210806
i386                 randconfig-a013-20210806
i386                 randconfig-a014-20210806
i386                 randconfig-a016-20210806
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210806
x86_64               randconfig-a002-20210804
x86_64               randconfig-a006-20210804
x86_64               randconfig-a004-20210804
x86_64               randconfig-a003-20210804
x86_64               randconfig-a001-20210804
x86_64               randconfig-a005-20210804

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
