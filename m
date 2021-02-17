Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A867B31D506
	for <lists+devel-acpica@lfdr.de>; Wed, 17 Feb 2021 06:33:37 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 125EF100EAB7F;
	Tue, 16 Feb 2021 21:33:36 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 17A23100EAB7E
	for <devel@acpica.org>; Tue, 16 Feb 2021 21:33:33 -0800 (PST)
IronPort-SDR: gAvnMcCx0RHrFFwoGKSHVecSp8wLXVcNFU6hMXtEUviZk4z24YZaiil0cDnDAfutSQuGbd1mTK
 PZ1GMyvMpAEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="247177790"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400";
   d="scan'208";a="247177790"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2021 21:33:32 -0800
IronPort-SDR: zrqcThvVUP1FZhnZ6TjWsXkFH2fDA553cyCtUSZjbHSTRFJ1lEPZVdxpXBZ650yy7/sOZxgnRn
 ZItdPedohkPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400";
   d="scan'208";a="364346199"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 16 Feb 2021 21:33:31 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lCFSs-0008mP-8q; Wed, 17 Feb 2021 05:33:30 +0000
Date: Wed, 17 Feb 2021 13:32:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <602caa79.xSxQXm0wF8N7T0PX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: GU3OEHFI6EK6UXB5WSYSAGLRO2VCPI7T
X-Message-ID-Hash: GU3OEHFI6EK6UXB5WSYSAGLRO2VCPI7T
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 606a1948458764ff9a1ffa47a3d68749b9b93041
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GU3OEHFI6EK6UXB5WSYSAGLRO2VCPI7T/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 606a1948458764ff9a1ffa47a3d68749b9b93041  Merge branches 'pm-misc', 'pm-cpuidle', 'pm-sleep' and 'powercap' into linux-next

elapsed time: 725m

configs tested: 169
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           jazz_defconfig
powerpc                        fsp2_defconfig
csky                             alldefconfig
arc                           tb10x_defconfig
alpha                               defconfig
sh                           se7343_defconfig
xtensa                generic_kc705_defconfig
powerpc                     redwood_defconfig
arm                        shmobile_defconfig
c6x                        evmc6678_defconfig
powerpc                      walnut_defconfig
ia64                            zx1_defconfig
powerpc                    klondike_defconfig
arm                           stm32_defconfig
m68k                        m5272c3_defconfig
arm                       imx_v4_v5_defconfig
ia64                          tiger_defconfig
xtensa                    smp_lx200_defconfig
arm                      pxa255-idp_defconfig
arm                          exynos_defconfig
arm                          pxa168_defconfig
powerpc                  mpc866_ads_defconfig
arm                         axm55xx_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                    mvme5100_defconfig
arm                      footbridge_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                mpc7448_hpc2_defconfig
h8300                    h8300h-sim_defconfig
arm                  colibri_pxa270_defconfig
arc                     haps_hs_smp_defconfig
sh                        edosk7760_defconfig
sh                          rsk7264_defconfig
nds32                             allnoconfig
powerpc                   lite5200b_defconfig
powerpc                     mpc83xx_defconfig
arm                              alldefconfig
riscv                               defconfig
c6x                              allyesconfig
sh                   rts7751r2dplus_defconfig
mips                   sb1250_swarm_defconfig
xtensa                           allyesconfig
mips                         tb0287_defconfig
arm                     eseries_pxa_defconfig
arm                             rpc_defconfig
powerpc                     sbc8548_defconfig
sh                        apsh4ad0a_defconfig
arm                      jornada720_defconfig
arm                         hackkit_defconfig
sh                ecovec24-romimage_defconfig
arm                       cns3420vb_defconfig
arm                        mini2440_defconfig
arm                       multi_v4t_defconfig
xtensa                              defconfig
powerpc                    sam440ep_defconfig
arm                         s3c6400_defconfig
sh                         apsh4a3a_defconfig
powerpc                  storcenter_defconfig
ia64                         bigsur_defconfig
sh                        dreamcast_defconfig
m68k                          hp300_defconfig
ia64                                defconfig
powerpc                      ppc64e_defconfig
sh                            shmin_defconfig
mips                         cobalt_defconfig
xtensa                  cadence_csp_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc832x_mds_defconfig
um                            kunit_defconfig
mips                           ci20_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc8560_ads_defconfig
arm                        oxnas_v6_defconfig
mips                  cavium_octeon_defconfig
mips                      fuloong2e_defconfig
arc                              alldefconfig
arm                            mps2_defconfig
arm                     davinci_all_defconfig
mips                           rs90_defconfig
mips                       lemote2f_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210216
x86_64               randconfig-a002-20210216
x86_64               randconfig-a004-20210216
x86_64               randconfig-a001-20210216
x86_64               randconfig-a005-20210216
x86_64               randconfig-a006-20210216
i386                 randconfig-a003-20210216
i386                 randconfig-a005-20210216
i386                 randconfig-a002-20210216
i386                 randconfig-a006-20210216
i386                 randconfig-a001-20210216
i386                 randconfig-a004-20210216
x86_64               randconfig-a016-20210215
x86_64               randconfig-a013-20210215
x86_64               randconfig-a012-20210215
x86_64               randconfig-a015-20210215
x86_64               randconfig-a014-20210215
x86_64               randconfig-a011-20210215
i386                 randconfig-a016-20210216
i386                 randconfig-a014-20210216
i386                 randconfig-a012-20210216
i386                 randconfig-a013-20210216
i386                 randconfig-a011-20210216
i386                 randconfig-a015-20210216
i386                 randconfig-a016-20210215
i386                 randconfig-a014-20210215
i386                 randconfig-a012-20210215
i386                 randconfig-a013-20210215
i386                 randconfig-a011-20210215
i386                 randconfig-a015-20210215
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210215
x86_64               randconfig-a002-20210215
x86_64               randconfig-a001-20210215
x86_64               randconfig-a004-20210215
x86_64               randconfig-a005-20210215
x86_64               randconfig-a006-20210215
x86_64               randconfig-a013-20210216
x86_64               randconfig-a016-20210216
x86_64               randconfig-a012-20210216
x86_64               randconfig-a015-20210216
x86_64               randconfig-a014-20210216
x86_64               randconfig-a011-20210216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
