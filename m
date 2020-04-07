Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 015A11A0571
	for <lists+devel-acpica@lfdr.de>; Tue,  7 Apr 2020 06:00:08 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CB46D100AA3B7;
	Mon,  6 Apr 2020 21:00:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5852F100AA3B5
	for <devel@acpica.org>; Mon,  6 Apr 2020 21:00:53 -0700 (PDT)
IronPort-SDR: usvcqV0T977nlAzfmGRFK46Ym2g4nB9LdIYJP6amQzgOnOHjIElWcJh4ztAP+ubO9rENYOaYyF
 Vh8d3jZe1enA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Apr 2020 21:00:03 -0700
IronPort-SDR: oPp9iF4cDpIIQq8i/FsRP1Usxl85uFKeTHqFFr5EwvBEdNKK83LWs6CqvRcYN84NIuHqWRsBeE
 uRjgyvEbayyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200";
   d="scan'208";a="286103231"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2020 21:00:01 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jLfP6-0003OM-OL; Tue, 07 Apr 2020 12:00:00 +0800
Date: Tue, 07 Apr 2020 11:59:20 +0800
From: kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5e8bfa98.OXxSha8xumclcWvG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: B4MAQTGHMILBQCZNXETG2YBOJGMSUEZW
X-Message-ID-Hash: B4MAQTGHMILBQCZNXETG2YBOJGMSUEZW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS b1eebcf18a87987171c4b2f32e59eda369290e83
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/B4MAQTGHMILBQCZNXETG2YBOJGMSUEZW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: b1eebcf18a87987171c4b2f32e59eda369290e83  Merge branch 'pm-sleep' into bleeding-edge

elapsed time: 481m

configs tested: 158
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a003-20200407
i386                 randconfig-a002-20200407
x86_64               randconfig-a002-20200407
x86_64               randconfig-a001-20200407
i386                 randconfig-a001-20200407
i386                 randconfig-a003-20200407
mips                 randconfig-a001-20200406
nds32                randconfig-a001-20200406
m68k                 randconfig-a001-20200406
parisc               randconfig-a001-20200406
alpha                randconfig-a001-20200406
riscv                randconfig-a001-20200406
sparc64              randconfig-a001-20200406
h8300                randconfig-a001-20200406
nios2                randconfig-a001-20200406
microblaze           randconfig-a001-20200406
c6x                  randconfig-a001-20200406
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
i386                 randconfig-b003-20200406
x86_64               randconfig-b002-20200406
x86_64               randconfig-b001-20200406
i386                 randconfig-b001-20200406
x86_64               randconfig-b003-20200406
i386                 randconfig-b002-20200406
i386                 randconfig-c003-20200406
i386                 randconfig-c001-20200406
x86_64               randconfig-c002-20200406
x86_64               randconfig-c003-20200406
i386                 randconfig-c002-20200406
x86_64               randconfig-c001-20200406
i386                 randconfig-e001-20200407
i386                 randconfig-e003-20200407
x86_64               randconfig-e002-20200407
x86_64               randconfig-e001-20200407
i386                 randconfig-e002-20200407
x86_64               randconfig-e003-20200407
i386                 randconfig-f001-20200407
x86_64               randconfig-f003-20200407
i386                 randconfig-f003-20200407
x86_64               randconfig-f001-20200407
x86_64               randconfig-f002-20200407
i386                 randconfig-f002-20200407
x86_64               randconfig-g003-20200406
i386                 randconfig-g003-20200406
x86_64               randconfig-g002-20200406
i386                 randconfig-g001-20200406
i386                 randconfig-g002-20200406
x86_64               randconfig-g001-20200406
x86_64               randconfig-h002-20200406
i386                 randconfig-h002-20200406
i386                 randconfig-h003-20200406
i386                 randconfig-h001-20200406
x86_64               randconfig-h003-20200406
x86_64               randconfig-h001-20200406
arm64                randconfig-a001-20200406
sparc                randconfig-a001-20200406
ia64                 randconfig-a001-20200406
arc                  randconfig-a001-20200406
arm                  randconfig-a001-20200406
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
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
