Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC35430927B
	for <lists+devel-acpica@lfdr.de>; Sat, 30 Jan 2021 08:00:09 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2FCD3100EC1D9;
	Fri, 29 Jan 2021 23:00:08 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 38057100EC1D8
	for <devel@acpica.org>; Fri, 29 Jan 2021 23:00:05 -0800 (PST)
IronPort-SDR: +1ahW5UDmivJcADNgx6r7JbO5ViLiFQ6Fo/kBL0+Bznd0sDD1Rc0KwztVT41R6BsnEMHsMOgKR
 Amh3Uc/F1c+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="179738654"
X-IronPort-AV: E=Sophos;i="5.79,387,1602572400";
   d="scan'208";a="179738654"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jan 2021 22:59:56 -0800
IronPort-SDR: ppu7VpAmIDKtzn7aP7tHzRr/sj0d6JFiDwSTqa1T4IiO3nu6oOWEyswWFDs1MS94WZoclYIuRi
 QlvbSD1sk2cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,387,1602572400";
   d="scan'208";a="404774942"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 29 Jan 2021 22:59:53 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l5kEa-0004MF-IK; Sat, 30 Jan 2021 06:59:52 +0000
Date: Sat, 30 Jan 2021 14:59:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <601503d0.mNkS62LRsk+LcCq4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NEUNEI2PRLVANGYA3ZM6EEBE5QBJQD6J
X-Message-ID-Hash: NEUNEI2PRLVANGYA3ZM6EEBE5QBJQD6J
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS e86d494782b7e43504b343d37b88c5c1d7af9ff6
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NEUNEI2PRLVANGYA3ZM6EEBE5QBJQD6J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: e86d494782b7e43504b343d37b88c5c1d7af9ff6  Merge branch 'pnp' into linux-next

elapsed time: 724m

configs tested: 128
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nios2                         3c120_defconfig
powerpc                     tqm5200_defconfig
arm                             rpc_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     tqm8540_defconfig
sh                        edosk7705_defconfig
arm                       imx_v4_v5_defconfig
riscv                             allnoconfig
m68k                           sun3_defconfig
riscv                            allmodconfig
arm                  colibri_pxa300_defconfig
x86_64                           allyesconfig
powerpc                 mpc8315_rdb_defconfig
arm                             pxa_defconfig
arm                       omap2plus_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                         lubbock_defconfig
microblaze                          defconfig
xtensa                  cadence_csp_defconfig
mips                         rt305x_defconfig
sh                          kfr2r09_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                      jornada720_defconfig
arc                          axs101_defconfig
powerpc                 mpc8540_ads_defconfig
sh                               j2_defconfig
arm                          ep93xx_defconfig
sh                        dreamcast_defconfig
sh                          rsk7203_defconfig
arm                      tct_hammer_defconfig
powerpc                    mvme5100_defconfig
sh                           se7712_defconfig
c6x                        evmc6474_defconfig
arm                         shannon_defconfig
mips                      pistachio_defconfig
arm                        multi_v5_defconfig
mips                          ath79_defconfig
sh                           se7721_defconfig
mips                     cu1830-neo_defconfig
xtensa                    xip_kc705_defconfig
powerpc                      walnut_defconfig
sh                             sh03_defconfig
arc                        nsim_700_defconfig
sh                         ecovec24_defconfig
xtensa                         virt_defconfig
powerpc                    amigaone_defconfig
mips                      pic32mzda_defconfig
powerpc                     asp8347_defconfig
sh                   sh7770_generic_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
arc                              allyesconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210130
i386                 randconfig-a003-20210130
i386                 randconfig-a002-20210130
i386                 randconfig-a001-20210130
i386                 randconfig-a004-20210130
i386                 randconfig-a006-20210130
i386                 randconfig-a013-20210130
i386                 randconfig-a011-20210130
i386                 randconfig-a015-20210130
i386                 randconfig-a012-20210130
i386                 randconfig-a014-20210130
i386                 randconfig-a016-20210130
x86_64               randconfig-a004-20210130
x86_64               randconfig-a002-20210130
x86_64               randconfig-a001-20210130
x86_64               randconfig-a005-20210130
x86_64               randconfig-a006-20210130
x86_64               randconfig-a003-20210130
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210130
x86_64               randconfig-a011-20210130
x86_64               randconfig-a014-20210130
x86_64               randconfig-a016-20210130
x86_64               randconfig-a012-20210130
x86_64               randconfig-a013-20210130
x86_64               randconfig-a012-20210129
x86_64               randconfig-a015-20210129
x86_64               randconfig-a016-20210129
x86_64               randconfig-a011-20210129
x86_64               randconfig-a013-20210129
x86_64               randconfig-a014-20210129

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
