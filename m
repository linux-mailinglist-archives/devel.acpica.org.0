Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 696976037AC
	for <lists+devel-acpica@lfdr.de>; Wed, 19 Oct 2022 03:51:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4B82C100EA2A1;
	Tue, 18 Oct 2022 18:51:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D2872100F2274
	for <devel@acpica.org>; Tue, 18 Oct 2022 18:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666144275; x=1697680275;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=G4GLDL4SXF8Q7uQ4nuIndTPWq5ouLmk2XRjxP+wb2dk=;
  b=XKaE7YNF/duPY1wWj+p4OVGUlFIfvR2y9lH3ouMFk2WWQGpVz+pNi6EM
   mHk37Z64id2pI0SkGFcNE0Q9bY2l+ZptqP0JI5KNXDGwPx3OhM/I9aWdJ
   T2sEtc+fDUeF3CxmkLkyRPi6fjGZ+TzuhzkLHrYenKLZWainkPV3s4P6f
   2jDEyUS9m+fzhfymxBc0nJsBhhozzxfb3cm6hVcnhY682wcXjxHFFg27s
   D64y/wDVt0wdd0Nr8VGYJPI5b5cZc6pfPvf/2i9oJ4sqhYmwU6dqh8wzo
   0L7iC8I3iHCYKAYd45P5ea4f8UlWL05TdqVI6WZb07Pfel+id4LE8z+5D
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="307390116"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800";
   d="scan'208";a="307390116"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 18:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="629009901"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800";
   d="scan'208";a="629009901"
Received: from lkp-server01.sh.intel.com (HELO 8381f64adc98) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 18 Oct 2022 18:51:12 -0700
Received: from kbuild by 8381f64adc98 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1okyEi-0002Fd-0W;
	Wed, 19 Oct 2022 01:51:12 +0000
Date: Wed, 19 Oct 2022 09:51:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <634f5808.tjazel2jfYuEqNTa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: RG275SVR6ABIHNGR7CHQFU5ANE6KP5AU
X-Message-ID-Hash: RG275SVR6ABIHNGR7CHQFU5ANE6KP5AU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS ba1b46e36fd7cae85e58325de9814fd9a594b4fe
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RG275SVR6ABIHNGR7CHQFU5ANE6KP5AU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: ba1b46e36fd7cae85e58325de9814fd9a594b4fe  Merge branch 'pm-cpufreq' into linux-next

elapsed time: 722m

configs tested: 145
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                               allnoconfig
arc                                 defconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                             allyesconfig
i386                                defconfig
s390                                defconfig
s390                             allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
s390                             allyesconfig
powerpc                         wii_defconfig
arm                            lart_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
arc                     nsimosci_hs_defconfig
m68k                             allmodconfig
arc                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
alpha                            allyesconfig
m68k                             allyesconfig
i386                          randconfig-a001
arc                  randconfig-r043-20221018
i386                          randconfig-a003
riscv                randconfig-r042-20221018
s390                 randconfig-r044-20221018
powerpc                           allnoconfig
mips                             allyesconfig
i386                          randconfig-a005
powerpc                          allmodconfig
sh                               allmodconfig
sh                           se7751_defconfig
m68k                       m5275evb_defconfig
powerpc                     pq2fads_defconfig
sh                   sh7724_generic_defconfig
ia64                          tiger_defconfig
microblaze                      mmu_defconfig
powerpc                      ppc6xx_defconfig
xtensa                  audio_kc705_defconfig
arc                           tb10x_defconfig
openrisc                 simple_smp_defconfig
i386                          randconfig-c001
sparc                             allnoconfig
powerpc                     tqm8541_defconfig
mips                  maltasmvp_eva_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                     stx_gp3_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        trizeps4_defconfig
powerpc                 linkstation_defconfig
m68k                        mvme16x_defconfig
ia64                                defconfig
arm                        mvebu_v7_defconfig
nios2                               defconfig
m68k                          amiga_defconfig
openrisc                         alldefconfig
arm                      jornada720_defconfig
ia64                             allmodconfig
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                  randconfig-r043-20221017
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                        spear6xx_defconfig
arm                         assabet_defconfig
mips                 decstation_r4k_defconfig
powerpc                      ep88xc_defconfig
arm                         lpc18xx_defconfig
arm                            mps2_defconfig
sh                          r7780mp_defconfig
arm                         axm55xx_defconfig
ia64                        generic_defconfig
arm                           tegra_defconfig
powerpc                      chrp32_defconfig
mips                         db1xxx_defconfig
powerpc                  storcenter_defconfig
powerpc                 canyonlands_defconfig
sh                          urquell_defconfig
m68k                                defconfig
sh                 kfr2r09-romimage_defconfig
s390                       zfcpdump_defconfig
openrisc                            defconfig
powerpc                     tqm8548_defconfig
openrisc                  or1klitex_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221018

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-c007
mips                 randconfig-c004-20221018
i386                          randconfig-c001
s390                 randconfig-c005-20221018
arm                  randconfig-c002-20221018
riscv                randconfig-c006-20221018
powerpc              randconfig-c003-20221018
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221018
hexagon              randconfig-r045-20221018
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
x86_64                        randconfig-k001
arm                      tct_hammer_defconfig
riscv                             allnoconfig
arm                      pxa255-idp_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      ppc44x_defconfig
mips                        maltaup_defconfig
arm                                 defconfig
mips                           rs90_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
