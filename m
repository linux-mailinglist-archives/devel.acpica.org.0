Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C92BC336A80
	for <lists+devel-acpica@lfdr.de>; Thu, 11 Mar 2021 04:17:58 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4331E100F2250;
	Wed, 10 Mar 2021 19:17:57 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 48AAC100EB842
	for <devel@acpica.org>; Wed, 10 Mar 2021 19:17:55 -0800 (PST)
IronPort-SDR: 5+5IOKUYtiGPrWoW2dRJ3XpiNTGCkhCNs4+4lYgA/lP+gnXoZf6+4iW5zXtxQPok62XSQTkda5
 V7YYUbSoGrmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="249972623"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400";
   d="scan'208";a="249972623"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2021 19:17:54 -0800
IronPort-SDR: cn7ZHmS5AzyTNQiA5TUWotxw1ceI82ZdXDggWeaBzi88r3ueyanln1Yqn3EY6rM+eGxBj7TFpY
 ElKyZ+v4pFNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400";
   d="scan'208";a="409341618"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 10 Mar 2021 19:17:53 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lKBpg-0000Xe-EF; Thu, 11 Mar 2021 03:17:52 +0000
Date: Thu, 11 Mar 2021 11:16:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60498bab.jUzETAn78mtsiRfa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: TZH6FDASGNZTEKWQODWDE6SDN553DAEU
X-Message-ID-Hash: TZH6FDASGNZTEKWQODWDE6SDN553DAEU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 8608bdeb4cdb5608b4073077e6e5d7bdedefd169
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TZH6FDASGNZTEKWQODWDE6SDN553DAEU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 8608bdeb4cdb5608b4073077e6e5d7bdedefd169  Merge branch 'devprop' into linux-next

elapsed time: 725m

configs tested: 141
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sparc                            allyesconfig
mips                         db1xxx_defconfig
powerpc                     tqm8540_defconfig
powerpc                      ppc44x_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                         lubbock_defconfig
m68k                       bvme6000_defconfig
arc                          axs103_defconfig
arm                       imx_v4_v5_defconfig
csky                                defconfig
arm                         s5pv210_defconfig
arm                           h5000_defconfig
ia64                         bigsur_defconfig
powerpc                   motionpro_defconfig
nios2                            alldefconfig
arm                     eseries_pxa_defconfig
powerpc                     sbc8548_defconfig
sh                        dreamcast_defconfig
parisc                           alldefconfig
arm                             mxs_defconfig
sh                          r7785rp_defconfig
sh                            titan_defconfig
sh                           se7712_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                    sam440ep_defconfig
powerpc                     akebono_defconfig
mips                        jmr3927_defconfig
mips                        nlm_xlp_defconfig
sh                                  defconfig
powerpc                 mpc832x_rdb_defconfig
arm                       cns3420vb_defconfig
m68k                       m5275evb_defconfig
h8300                               defconfig
mips                        bcm63xx_defconfig
s390                          debug_defconfig
mips                     loongson1c_defconfig
arm                         mv78xx0_defconfig
powerpc                     tqm8548_defconfig
m68k                           sun3_defconfig
ia64                             allyesconfig
h8300                       h8s-sim_defconfig
arm                          moxart_defconfig
arm                           tegra_defconfig
sh                              ul2_defconfig
arm                        multi_v7_defconfig
arm                        mvebu_v7_defconfig
sh                            hp6xx_defconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc8540_ads_defconfig
arc                         haps_hs_defconfig
powerpc                     skiroot_defconfig
powerpc                      ep88xc_defconfig
mips                           jazz_defconfig
powerpc                  storcenter_defconfig
arm                       versatile_defconfig
mips                        bcm47xx_defconfig
powerpc                      pmac32_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
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
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210308
i386                 randconfig-a003-20210308
i386                 randconfig-a002-20210308
i386                 randconfig-a006-20210308
i386                 randconfig-a004-20210308
i386                 randconfig-a001-20210308
i386                 randconfig-a005-20210309
i386                 randconfig-a003-20210309
i386                 randconfig-a002-20210309
i386                 randconfig-a006-20210309
i386                 randconfig-a004-20210309
i386                 randconfig-a001-20210309
x86_64               randconfig-a013-20210309
x86_64               randconfig-a016-20210309
x86_64               randconfig-a015-20210309
x86_64               randconfig-a014-20210309
x86_64               randconfig-a011-20210309
x86_64               randconfig-a012-20210309
i386                 randconfig-a016-20210309
i386                 randconfig-a012-20210309
i386                 randconfig-a014-20210309
i386                 randconfig-a013-20210309
i386                 randconfig-a011-20210309
i386                 randconfig-a015-20210309
i386                 randconfig-a013-20210310
i386                 randconfig-a016-20210310
i386                 randconfig-a011-20210310
i386                 randconfig-a014-20210310
i386                 randconfig-a015-20210310
i386                 randconfig-a012-20210310
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210309
x86_64               randconfig-a001-20210309
x86_64               randconfig-a004-20210309
x86_64               randconfig-a002-20210309
x86_64               randconfig-a005-20210309
x86_64               randconfig-a003-20210309

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
