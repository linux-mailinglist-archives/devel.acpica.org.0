Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D5634B44A
	for <lists+devel-acpica@lfdr.de>; Sat, 27 Mar 2021 05:56:50 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E6E5B100EAB51;
	Fri, 26 Mar 2021 21:56:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C1D86100EC1CE
	for <devel@acpica.org>; Fri, 26 Mar 2021 21:56:45 -0700 (PDT)
IronPort-SDR: +SmZLIszeqc6joEwtPkieo+VNxDlsVt50qVGenY0jmzkY+e6F04VTECCZFz8iRpzb/rDTu64Mi
 T4PlNVq1tbMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="187983972"
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400";
   d="scan'208";a="187983972"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2021 21:56:44 -0700
IronPort-SDR: G/4xWkbGQ6VhAWfbTruOkelhVwlEnu0AGW3OQEYcaxQB61Tei6v4Q+1jz13MnmJ8lUv+slRd70
 6s2U+aatRedA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400";
   d="scan'208";a="410203387"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 26 Mar 2021 21:56:42 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lQ105-0003EH-O6; Sat, 27 Mar 2021 04:56:41 +0000
Date: Sat, 27 Mar 2021 12:56:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <605ebb05.L0i44vx1DEBqYKoZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: V6D5WVBUUSRSF5ZL4NYLI7Y4MRZI7CMG
X-Message-ID-Hash: V6D5WVBUUSRSF5ZL4NYLI7Y4MRZI7CMG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 5fdb42f06656bb3434d22a8d455dbb34512e572a
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/V6D5WVBUUSRSF5ZL4NYLI7Y4MRZI7CMG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 5fdb42f06656bb3434d22a8d455dbb34512e572a  Merge branch 'pm-cpufreq-fixes' into bleeding-edge

elapsed time: 721m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
riscv                            allyesconfig
arm                         hackkit_defconfig
arm                         lpc18xx_defconfig
sh                          kfr2r09_defconfig
sh                ecovec24-romimage_defconfig
sh                           se7780_defconfig
xtensa                generic_kc705_defconfig
powerpc                      arches_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                       eiger_defconfig
sh                          polaris_defconfig
powerpc                      walnut_defconfig
arm                         s3c6400_defconfig
powerpc                     mpc5200_defconfig
mips                           mtx1_defconfig
arm                          exynos_defconfig
sh                             shx3_defconfig
xtensa                  cadence_csp_defconfig
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
s390                             allmodconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20210326
i386                 randconfig-a003-20210326
i386                 randconfig-a001-20210326
i386                 randconfig-a002-20210326
i386                 randconfig-a006-20210326
i386                 randconfig-a005-20210326
x86_64               randconfig-a012-20210326
x86_64               randconfig-a015-20210326
x86_64               randconfig-a014-20210326
x86_64               randconfig-a013-20210326
x86_64               randconfig-a016-20210326
x86_64               randconfig-a011-20210326
i386                 randconfig-a014-20210326
i386                 randconfig-a011-20210326
i386                 randconfig-a015-20210326
i386                 randconfig-a016-20210326
i386                 randconfig-a012-20210326
i386                 randconfig-a013-20210326
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210326
x86_64               randconfig-a003-20210326
x86_64               randconfig-a001-20210326
x86_64               randconfig-a006-20210326
x86_64               randconfig-a004-20210326
x86_64               randconfig-a005-20210326

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
