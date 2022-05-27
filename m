Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5A2535A58
	for <lists+devel-acpica@lfdr.de>; Fri, 27 May 2022 09:30:27 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2CC34100F47BC;
	Fri, 27 May 2022 00:30:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 342F2100F47BB
	for <devel@acpica.org>; Fri, 27 May 2022 00:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653636622; x=1685172622;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=4H5ZZox4Hea9gHi0yLFufIXq1tOa7VmXgab7ZUUNkMc=;
  b=I94nfrFaTA6DFRDLOj/Ctc3ImGj+nMPn98lMtI4jVsDW/hcbofLn6OgG
   0YWGkzQdvjaksuDmm9YovU2d0686/DFJEZ3exmuuh/eZv5pgCOEqGIz+H
   v1S939Njtr3+FIp0PNa2pGHekXnex4xj22DKvesFuPZy+sLfPU/6BOuFy
   ni/VHj0Gtquv3bXhZBYkwORQjRKTbBJeAWnViJ26uo3zgSgSo/CY5Fn4S
   ilhRmQueqqH3Vea6NQjoQ8UvYhEOrQmgT1HHaa+fM26vvSOFZVkMHRjfL
   XtbOmV23zZ3YbE3ZCuQV2PoAJtgt9FJ357dMaxf6IFa5H9Oven/5qaGVc
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="271980524"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600";
   d="scan'208";a="271980524"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2022 00:30:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600";
   d="scan'208";a="704990295"
Received: from lkp-server01.sh.intel.com (HELO db63a1be7222) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 27 May 2022 00:30:19 -0700
Received: from kbuild by db63a1be7222 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nuUQM-0004WA-7y;
	Fri, 27 May 2022 07:30:18 +0000
Date: Fri, 27 May 2022 15:30:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62907df9.MhV6PMu3R7X9bBr/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 4ZL3CSSO5AMU7PYRHITGGQQDPKIICWZR
X-Message-ID-Hash: 4ZL3CSSO5AMU7PYRHITGGQQDPKIICWZR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 4eec359c469be110cdaa32c4a511930e9459fd8b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4ZL3CSSO5AMU7PYRHITGGQQDPKIICWZR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 4eec359c469be110cdaa32c4a511930e9459fd8b  Merge branch 'pm-docs' into linux-next

Unverified Warning (likely false positive, please contact us if interested):

kernel/reboot.c:554:43: warning: Parameter 'power_off' can be declared with const [constParameter]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- m68k-randconfig-p001-20220524
|   `-- kernel-reboot.c:warning:Parameter-power_off-can-be-declared-with-const-constParameter
`-- microblaze-randconfig-p002-20220524
    `-- kernel-reboot.c:warning:Parameter-power_off-can-be-declared-with-const-constParameter

elapsed time: 723m

configs tested: 142
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
arm64                               defconfig
i386                          randconfig-c001
powerpc                          allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
powerpc                          allyesconfig
s390                             allmodconfig
s390                             allyesconfig
arm                            mps2_defconfig
arm                         assabet_defconfig
sh                          polaris_defconfig
powerpc                      pcm030_defconfig
mips                         db1xxx_defconfig
arm                           imxrt_defconfig
parisc                           alldefconfig
arm                         vf610m4_defconfig
parisc64                            defconfig
sh                            titan_defconfig
sh                           sh2007_defconfig
openrisc                         alldefconfig
sh                           se7712_defconfig
arm                          pxa3xx_defconfig
sh                ecovec24-romimage_defconfig
mips                         bigsur_defconfig
powerpc                      ep88xc_defconfig
arc                           tb10x_defconfig
powerpc                         ps3_defconfig
sh                          sdk7786_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                   motionpro_defconfig
nios2                         10m50_defconfig
arm                            zeus_defconfig
um                               alldefconfig
sh                           se7619_defconfig
powerpc                     asp8347_defconfig
sparc                       sparc32_defconfig
arm                            pleb_defconfig
arm                     eseries_pxa_defconfig
sparc                       sparc64_defconfig
sh                        apsh4ad0a_defconfig
sh                           se7343_defconfig
s390                       zfcpdump_defconfig
arm                        trizeps4_defconfig
sh                            hp6xx_defconfig
mips                 decstation_r4k_defconfig
riscv                    nommu_k210_defconfig
m68k                        m5407c3_defconfig
powerpc                     ep8248e_defconfig
arc                            hsdk_defconfig
arm                  randconfig-c002-20220526
arm                  randconfig-c002-20220524
x86_64                        randconfig-c001
ia64                                defconfig
ia64                             allyesconfig
ia64                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
parisc                              defconfig
parisc                           allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220524
s390                 randconfig-r044-20220524
riscv                randconfig-r042-20220524
arc                  randconfig-r043-20220526
riscv                randconfig-r042-20220526
s390                 randconfig-r044-20220526
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
powerpc                  mpc885_ads_defconfig
mips                        workpad_defconfig
mips                       rbtx49xx_defconfig
powerpc                      walnut_defconfig
mips                         tb0287_defconfig
powerpc                      obs600_defconfig
arm                        mvebu_v5_defconfig
mips                      pic32mzda_defconfig
arm                     am200epdkit_defconfig
mips                           ip28_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220524
hexagon              randconfig-r045-20220526
hexagon              randconfig-r041-20220526
hexagon              randconfig-r041-20220524

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
