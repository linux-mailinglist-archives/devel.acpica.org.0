Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 968D44EBE29
	for <lists+devel-acpica@lfdr.de>; Wed, 30 Mar 2022 11:59:25 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 56401100EAB12;
	Wed, 30 Mar 2022 02:59:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0303F100EAB09
	for <devel@acpica.org>; Wed, 30 Mar 2022 02:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648634362; x=1680170362;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=VfBiVolvCJHl5eMtmZtvm1ki1KZT8OJLshIN1GcLDMY=;
  b=YVty+F/nQMZg6b4XBJL4IkVXGFa34vKdIM8yVWx6N03JJA4iUrwtjCNG
   qtnBdydlP5n7SGUTb11Doy7ECl/7/U/7v25DnmHgkkNQHBiroCI9P75xJ
   QH/Aa7/fBXaDvLk+J9KjZUS/H9754sBYkYQQhsQDSADswVxfR8yN9KLV6
   DVevMnBzG4q76lv0zsRhAly4GeX7IQzViSGRSfWn/MHtqKzKK+rTsrV4Z
   vnaIMUcPRHFlB2Xm0YzcS0hpSoWUU/MiZJpfKcScnierZsqkcWcSg3lKD
   eUudL8vh3c1+VFL67n7PXqc3pXh4KRujl4e+X8A7nm0Z1ZCb1sfYodjBF
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239434401"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400";
   d="scan'208";a="239434401"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2022 02:59:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400";
   d="scan'208";a="521832879"
Received: from lkp-server02.sh.intel.com (HELO 7a008980c4ea) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 30 Mar 2022 02:59:18 -0700
Received: from kbuild by 7a008980c4ea with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nZV6k-0000G7-0g; Wed, 30 Mar 2022 09:59:18 +0000
Date: Wed, 30 Mar 2022 17:59:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <624429f0.RenlGNGiIterGGxW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: TJZSV4HR73MWUIDBK7VQSGFRVHZL5AHC
X-Message-ID-Hash: TJZSV4HR73MWUIDBK7VQSGFRVHZL5AHC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS bd19672308663b45ebecd8010fa1c51515719dc4
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TJZSV4HR73MWUIDBK7VQSGFRVHZL5AHC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: bd19672308663b45ebecd8010fa1c51515719dc4  Merge branch 'pm-docs' into linux-next

elapsed time: 739m

configs tested: 198
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220329
m68k                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
s390                             allyesconfig
sh                          landisk_defconfig
sh                        edosk7760_defconfig
powerpc                     rainier_defconfig
um                             i386_defconfig
xtensa                    smp_lx200_defconfig
arm                        mini2440_defconfig
arm                      integrator_defconfig
sh                           se7751_defconfig
sh                            migor_defconfig
arm                        clps711x_defconfig
arm                            xcep_defconfig
arm                          badge4_defconfig
m68k                            q40_defconfig
nios2                         10m50_defconfig
mips                      fuloong2e_defconfig
sh                         microdev_defconfig
arc                        nsim_700_defconfig
arm                         nhk8815_defconfig
powerpc                    sam440ep_defconfig
mips                            ar7_defconfig
arm                            hisi_defconfig
ia64                            zx1_defconfig
sh                         ecovec24_defconfig
arm                             pxa_defconfig
arc                                 defconfig
i386                                defconfig
mips                           xway_defconfig
xtensa                       common_defconfig
sh                            hp6xx_defconfig
arc                          axs101_defconfig
sparc                       sparc32_defconfig
parisc                           alldefconfig
h8300                       h8s-sim_defconfig
sh                     magicpanelr2_defconfig
parisc                generic-32bit_defconfig
m68k                       m5275evb_defconfig
mips                         cobalt_defconfig
arm                        trizeps4_defconfig
sh                          lboxre2_defconfig
sh                         ap325rxa_defconfig
arm                            lart_defconfig
arm                          lpd270_defconfig
powerpc                      ppc40x_defconfig
m68k                       m5249evb_defconfig
arm                            pleb_defconfig
arm                         s3c6400_defconfig
mips                        vocore2_defconfig
sh                   sh7724_generic_defconfig
mips                         bigsur_defconfig
sh                        sh7757lcr_defconfig
arm                            qcom_defconfig
mips                         db1xxx_defconfig
sh                          sdk7786_defconfig
powerpc                         wii_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                  randconfig-c002-20220329
arm                  randconfig-c002-20220327
arm                  randconfig-c002-20220330
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a001-20220328
x86_64               randconfig-a003-20220328
x86_64               randconfig-a004-20220328
x86_64               randconfig-a002-20220328
x86_64               randconfig-a005-20220328
x86_64               randconfig-a006-20220328
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                 randconfig-a001-20220328
i386                 randconfig-a003-20220328
i386                 randconfig-a006-20220328
i386                 randconfig-a005-20220328
i386                 randconfig-a004-20220328
i386                 randconfig-a002-20220328
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
riscv                randconfig-r042-20220330
s390                 randconfig-r044-20220330
arc                  randconfig-r043-20220330
arc                  randconfig-r043-20220329
s390                 randconfig-r044-20220327
arc                  randconfig-r043-20220328
arc                  randconfig-r043-20220327
riscv                randconfig-r042-20220329
s390                 randconfig-r044-20220329
riscv                randconfig-r042-20220327
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
mips                 randconfig-c004-20220329
x86_64                        randconfig-c007
mips                 randconfig-c004-20220327
arm                  randconfig-c002-20220327
arm                  randconfig-c002-20220329
riscv                randconfig-c006-20220327
powerpc              randconfig-c003-20220327
powerpc              randconfig-c003-20220329
riscv                randconfig-c006-20220329
i386                          randconfig-c001
s390                 randconfig-c005-20220327
s390                 randconfig-c005-20220329
mips                 randconfig-c004-20220330
powerpc              randconfig-c003-20220330
riscv                randconfig-c006-20220330
arm                  randconfig-c002-20220330
powerpc                 mpc8313_rdb_defconfig
mips                           mtx1_defconfig
mips                     cu1830-neo_defconfig
powerpc                    socrates_defconfig
mips                           rs90_defconfig
powerpc                     mpc5200_defconfig
arm                     am200epdkit_defconfig
mips                   sb1250_swarm_defconfig
powerpc                   lite5200b_defconfig
powerpc                     kilauea_defconfig
riscv                            alldefconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a016-20220328
x86_64               randconfig-a012-20220328
x86_64               randconfig-a011-20220328
x86_64               randconfig-a014-20220328
x86_64               randconfig-a013-20220328
x86_64               randconfig-a015-20220328
i386                 randconfig-a012-20220328
i386                 randconfig-a016-20220328
i386                 randconfig-a015-20220328
i386                 randconfig-a011-20220328
i386                 randconfig-a013-20220328
i386                 randconfig-a014-20220328
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220328
hexagon              randconfig-r045-20220329
hexagon              randconfig-r045-20220328
hexagon              randconfig-r045-20220327
hexagon              randconfig-r041-20220327
hexagon              randconfig-r045-20220330
hexagon              randconfig-r041-20220329
hexagon              randconfig-r041-20220328
hexagon              randconfig-r041-20220330
s390                 randconfig-r044-20220328

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
