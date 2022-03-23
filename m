Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D91D4E49DF
	for <lists+devel-acpica@lfdr.de>; Wed, 23 Mar 2022 01:01:43 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 415AC100F3FB3;
	Tue, 22 Mar 2022 17:01:41 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B6AB0100EB34A
	for <devel@acpica.org>; Tue, 22 Mar 2022 17:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647993699; x=1679529699;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=hHzBe8U8IturRswb/6WWXu+XslqPIXQ8Eg5k/VP6cek=;
  b=Uc2tQPtL8y+nThFzejXyARx2pxDt78DB+I83V/I5DBYdKEcU6tlIIDp7
   Yen5Z9At/6jijLP8XzA7ioLc1ox93o+6rV1xsGPc+yuKn3+I2XoUblCVJ
   kyptfubK6ezU1X+QxmTQYiqtW8T3zm9JMF4eDJkHOSg3u6/Am/UHymNHk
   qY2AqkNyBPdRvv/EzII9lA24smtaEJCk9QfkFNszgbRhgcU8Datvl+jJh
   IfWABTzNnW9al/VmRqocpzQUjTN+Q+9fT0Co7nvbMU7eS9pV+G7gwzVQp
   SAkAlePaNtmOEI/UQO0XxVoDvIFfg9yTZvRSVsqACVpELXkt6QBgjO9TV
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="238589201"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400";
   d="scan'208";a="238589201"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2022 17:01:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400";
   d="scan'208";a="583490886"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 22 Mar 2022 17:01:35 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nWoRT-000JQp-8I; Wed, 23 Mar 2022 00:01:35 +0000
Date: Wed, 23 Mar 2022 08:01:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <623a6343.pZi+FzcShn3ZsUU6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: YT5MAUZC26Y66CHKJLFGYITHFCMBWNMC
X-Message-ID-Hash: YT5MAUZC26Y66CHKJLFGYITHFCMBWNMC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 81bbf3bb3aecb62a539f57a1d81381f0f95ff6ec
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YT5MAUZC26Y66CHKJLFGYITHFCMBWNMC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 81bbf3bb3aecb62a539f57a1d81381f0f95ff6ec  Merge branch 'pm-opp' into linux-next

elapsed time: 727m

configs tested: 200
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
s390                             allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
s390                             allyesconfig
i386                 randconfig-c001-20220321
mips                 randconfig-c004-20220320
arm                        shmobile_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
arm                         nhk8815_defconfig
arm                        keystone_defconfig
h8300                               defconfig
powerpc                 mpc85xx_cds_defconfig
sparc                       sparc32_defconfig
sh                          polaris_defconfig
i386                                defconfig
sh                          rsk7201_defconfig
h8300                     edosk2674_defconfig
mips                       capcella_defconfig
sh                             shx3_defconfig
sh                        sh7757lcr_defconfig
arm                        multi_v7_defconfig
sh                           se7780_defconfig
arm                             pxa_defconfig
nios2                            alldefconfig
arm                       aspeed_g5_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                         at91_dt_defconfig
xtensa                    xip_kc705_defconfig
m68k                        m5407c3_defconfig
mips                 decstation_r4k_defconfig
h8300                            allyesconfig
m68k                          sun3x_defconfig
powerpc                     taishan_defconfig
arc                          axs101_defconfig
mips                     decstation_defconfig
powerpc                     tqm8548_defconfig
parisc                           allyesconfig
mips                         tb0226_defconfig
powerpc                 canyonlands_defconfig
sh                            hp6xx_defconfig
mips                      maltasmvp_defconfig
powerpc                   motionpro_defconfig
sh                        sh7763rdp_defconfig
arc                           tb10x_defconfig
parisc64                            defconfig
arc                 nsimosci_hs_smp_defconfig
sh                               j2_defconfig
ia64                                defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc64                           defconfig
powerpc                       maple_defconfig
arm                        clps711x_defconfig
arm                            qcom_defconfig
arc                      axs103_smp_defconfig
xtensa                          iss_defconfig
sh                         microdev_defconfig
sh                              ul2_defconfig
um                                  defconfig
nios2                         3c120_defconfig
arm                         lpc18xx_defconfig
sparc                            alldefconfig
m68k                        mvme16x_defconfig
openrisc                 simple_smp_defconfig
mips                         cobalt_defconfig
powerpc                 mpc834x_itx_defconfig
sh                             sh03_defconfig
sh                        edosk7705_defconfig
arm                         vf610m4_defconfig
powerpc                     rainier_defconfig
arm                         s3c6400_defconfig
powerpc                  storcenter_defconfig
sh                        sh7785lcr_defconfig
arm                            hisi_defconfig
arc                        nsimosci_defconfig
nios2                            allyesconfig
sh                            titan_defconfig
arm                         assabet_defconfig
sh                           se7619_defconfig
arm                        trizeps4_defconfig
arm                       omap2plus_defconfig
mips                         db1xxx_defconfig
mips                           xway_defconfig
parisc                generic-64bit_defconfig
arm                           viper_defconfig
nds32                               defconfig
m68k                        mvme147_defconfig
powerpc                    sam440ep_defconfig
sh                                  defconfig
xtensa                       common_defconfig
riscv                            allmodconfig
arm                  randconfig-c002-20220321
arm                  randconfig-c002-20220320
arm                  randconfig-c002-20220322
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a016-20220321
x86_64               randconfig-a011-20220321
x86_64               randconfig-a012-20220321
x86_64               randconfig-a013-20220321
x86_64               randconfig-a014-20220321
x86_64               randconfig-a015-20220321
i386                 randconfig-a015-20220321
i386                 randconfig-a016-20220321
i386                 randconfig-a013-20220321
i386                 randconfig-a012-20220321
i386                 randconfig-a014-20220321
i386                 randconfig-a011-20220321
arc                  randconfig-r043-20220320
riscv                randconfig-r042-20220321
s390                 randconfig-r044-20220321
arc                  randconfig-r043-20220321
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
mips                 randconfig-c004-20220320
arm                  randconfig-c002-20220320
powerpc              randconfig-c003-20220320
riscv                randconfig-c006-20220320
i386                          randconfig-c001
arm                  randconfig-c002-20220322
powerpc              randconfig-c003-20220322
riscv                randconfig-c006-20220322
s390                 randconfig-c005-20220322
mips                 randconfig-c004-20220322
powerpc                    gamecube_defconfig
mips                        maltaup_defconfig
hexagon                          alldefconfig
powerpc                     mpc5200_defconfig
arm                         orion5x_defconfig
powerpc                     akebono_defconfig
arm                         lpc32xx_defconfig
powerpc                          allyesconfig
powerpc                 mpc8272_ads_defconfig
arm                        neponset_defconfig
arm                          moxart_defconfig
arm64                            allyesconfig
arm                        mvebu_v5_defconfig
powerpc                        fsp2_defconfig
arm                     am200epdkit_defconfig
hexagon                             defconfig
x86_64               randconfig-a001-20220321
x86_64               randconfig-a003-20220321
x86_64               randconfig-a005-20220321
x86_64               randconfig-a004-20220321
x86_64               randconfig-a002-20220321
x86_64               randconfig-a006-20220321
i386                 randconfig-a001-20220321
i386                 randconfig-a006-20220321
i386                 randconfig-a003-20220321
i386                 randconfig-a005-20220321
i386                 randconfig-a004-20220321
i386                 randconfig-a002-20220321
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20220320
hexagon              randconfig-r045-20220321
hexagon              randconfig-r045-20220320
hexagon              randconfig-r041-20220321
hexagon              randconfig-r041-20220320
riscv                randconfig-r042-20220322
hexagon              randconfig-r045-20220322
hexagon              randconfig-r041-20220322
s390                 randconfig-r044-20220320

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
