Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3415A7871
	for <lists+devel-acpica@lfdr.de>; Wed, 31 Aug 2022 10:05:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 03682100EAB5F;
	Wed, 31 Aug 2022 01:05:04 -0700 (PDT)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5EB7B100EAB5D
	for <devel@acpica.org>; Wed, 31 Aug 2022 01:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661933102; x=1693469102;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=FTZUE/HMB0MTCpZxliUKMFEJs8Y03+K0ziFDxUfaydI=;
  b=QYLQjSe4mDOmzxEZDEP0Sh4nvtCrHFhd6/3B163BCwJwnIkCSDM29EfL
   CyySDuoU9/4jOpqEobF1F/sndEIrmqQBnSIrd+hfDCmNs1kTmqoToUcsw
   FTO730UWtB27jb5p5AyX8Mpt73r7umC18Lm/ve4ix1CJnq9T0PDJTLYZu
   VE16Mnq3CJ5M8kvkpocsmDNO4nfMfTPcn1s3Wl2Mr1u8osCcJXS4dbcoU
   qbpRBgIdhUxOS6AB3r0lHHY1AB3X4D7WAMr1WJIYZIc5cva0lx7u/55Bk
   rNH9CX5eOFVL+Hk2YYi0NsfJ7VymwI/9vY7uIzQ574UE3MCV8IRVnmfJF
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="292974888"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200";
   d="scan'208";a="292974888"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2022 01:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200";
   d="scan'208";a="612016964"
Received: from lkp-server02.sh.intel.com (HELO 811e2ceaf0e5) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 31 Aug 2022 01:04:59 -0700
Received: from kbuild by 811e2ceaf0e5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oTIiZ-00006U-0y;
	Wed, 31 Aug 2022 08:04:59 +0000
Date: Wed, 31 Aug 2022 16:04:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <630f1603.6+GZXZtnLrO93ZoE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: XDUSLX2KSIPXYDDFDYIWKK66TBNK3VEM
X-Message-ID-Hash: XDUSLX2KSIPXYDDFDYIWKK66TBNK3VEM
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 41607487f81ccdf20e796adacc277483ecc9c234
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XDUSLX2KSIPXYDDFDYIWKK66TBNK3VEM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 41607487f81ccdf20e796adacc277483ecc9c234  Merge branch 'thermal-core' into linux-next

elapsed time: 722m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220830
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                              defconfig
i386                          randconfig-a001
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
i386                          randconfig-a003
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
x86_64                           allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a005
powerpc                          allmodconfig
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a014
x86_64                           rhel-8.3-syz
arm                                 defconfig
i386                          randconfig-a012
mips                             allyesconfig
i386                          randconfig-a016
ia64                             allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arm64                            allyesconfig
arm                              allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sparc                               defconfig
mips                      loongson3_defconfig
m68k                       m5475evb_defconfig
xtensa                  nommu_kc705_defconfig
mips                       bmips_be_defconfig
arm                       imx_v6_v7_defconfig
mips                           jazz_defconfig
powerpc                     stx_gp3_defconfig
powerpc                     asp8347_defconfig
sh                           se7619_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
sh                         apsh4a3a_defconfig
arm64                            alldefconfig
mips                        bcm47xx_defconfig
powerpc                       eiger_defconfig
arc                 nsimosci_hs_smp_defconfig
sparc                             allnoconfig
sh                           se7721_defconfig
sh                        edosk7760_defconfig
m68k                            mac_defconfig
xtensa                  cadence_csp_defconfig
x86_64                           alldefconfig
arm                         nhk8815_defconfig
arc                        vdk_hs38_defconfig
arm                           u8500_defconfig
arm                           tegra_defconfig
arm                          badge4_defconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arc                        nsim_700_defconfig
microblaze                      mmu_defconfig
arm                        realview_defconfig
ia64                      gensparse_defconfig
sh                             sh03_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220830

clang tested configs:
hexagon              randconfig-r045-20220830
riscv                randconfig-r042-20220830
hexagon              randconfig-r041-20220830
s390                 randconfig-r044-20220830
i386                          randconfig-a013
x86_64                        randconfig-a001
i386                          randconfig-a015
i386                          randconfig-a002
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
