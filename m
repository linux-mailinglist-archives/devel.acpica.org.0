Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0009436BDAB
	for <lists+devel-acpica@lfdr.de>; Tue, 27 Apr 2021 05:14:27 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8B95E100EBB92;
	Mon, 26 Apr 2021 20:14:26 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7336B100EBB8C
	for <devel@acpica.org>; Mon, 26 Apr 2021 20:14:23 -0700 (PDT)
IronPort-SDR: 8kbN4ne60yYOkhXpA1DPeSTAKkJ1S21oraC1f08MWtmNlxXZGuOWC8Dw2tjRmbahy/BUQdQRoM
 QOpe8ck1DwvQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="281771689"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400";
   d="scan'208";a="281771689"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2021 20:14:22 -0700
IronPort-SDR: JIbvIJWJn2kpTmy7LV+AeFCDsP5ojIMAnuioAW7Cb0vXE2iDtejz1T0xGj4T6MCm978UZY9316
 y5a+GouNGKLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400";
   d="scan'208";a="465332174"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 26 Apr 2021 20:14:20 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lbEB2-0006FH-7z; Tue, 27 Apr 2021 03:14:20 +0000
Date: Tue, 27 Apr 2021 11:14:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60878185.fxFzWu9O6pKSBDvQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 2FP4G2YV2SZANVXZHVXUE2GJYM5N46Z7
X-Message-ID-Hash: 2FP4G2YV2SZANVXZHVXUE2GJYM5N46Z7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 3c44d15e5ffdbc1b9d31d098b65c5cb50211d802
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2FP4G2YV2SZANVXZHVXUE2GJYM5N46Z7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3c44d15e5ffdbc1b9d31d098b65c5cb50211d802  Merge branch 'pm-sleep' into linux-next

elapsed time: 720m

configs tested: 160
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
arm                     eseries_pxa_defconfig
um                             i386_defconfig
sh                            shmin_defconfig
ia64                            zx1_defconfig
sh                            hp6xx_defconfig
mips                         tb0287_defconfig
sh                          rsk7264_defconfig
mips                     decstation_defconfig
powerpc                   currituck_defconfig
powerpc                     tqm8548_defconfig
arm                       imx_v4_v5_defconfig
mips                         tb0219_defconfig
arm                           u8500_defconfig
parisc                generic-64bit_defconfig
powerpc                          g5_defconfig
mips                     loongson1c_defconfig
sparc64                             defconfig
sh                           se7343_defconfig
mips                malta_kvm_guest_defconfig
arm                       aspeed_g4_defconfig
sh                          sdk7780_defconfig
arm                      pxa255-idp_defconfig
mips                      fuloong2e_defconfig
arm                         mv78xx0_defconfig
sparc                       sparc32_defconfig
sh                           se7705_defconfig
s390                                defconfig
sh                           sh2007_defconfig
sh                     sh7710voipgw_defconfig
powerpc                     kilauea_defconfig
m68k                          multi_defconfig
powerpc                     powernv_defconfig
arm                       aspeed_g5_defconfig
sh                             shx3_defconfig
sh                          r7780mp_defconfig
sparc                            alldefconfig
mips                       lemote2f_defconfig
xtensa                  cadence_csp_defconfig
sh                           se7206_defconfig
powerpc                    socrates_defconfig
sh                           se7712_defconfig
arm                     am200epdkit_defconfig
powerpc                 mpc834x_mds_defconfig
arm                            lart_defconfig
arm                            xcep_defconfig
mips                             allmodconfig
sh                            migor_defconfig
arm                      tct_hammer_defconfig
powerpc                      makalu_defconfig
xtensa                generic_kc705_defconfig
sh                          polaris_defconfig
openrisc                            defconfig
arc                        nsimosci_defconfig
xtensa                  nommu_kc705_defconfig
arc                              allyesconfig
ia64                                defconfig
arc                           tb10x_defconfig
powerpc                      pmac32_defconfig
arm                            qcom_defconfig
arm                         at91_dt_defconfig
mips                        nlm_xlr_defconfig
arc                    vdk_hs38_smp_defconfig
sh                   secureedge5410_defconfig
mips                         mpc30x_defconfig
powerpc                     stx_gp3_defconfig
arm                          pxa168_defconfig
m68k                          amiga_defconfig
mips                            ar7_defconfig
riscv                            alldefconfig
arm                            hisi_defconfig
arm                          ixp4xx_defconfig
powerpc                    sam440ep_defconfig
powerpc                      chrp32_defconfig
powerpc                      pasemi_defconfig
mips                            gpr_defconfig
xtensa                              defconfig
powerpc                         ps3_defconfig
arm                         axm55xx_defconfig
powerpc                     tqm8555_defconfig
sh                         ap325rxa_defconfig
arm                       spear13xx_defconfig
mips                     loongson1b_defconfig
arm                             mxs_defconfig
sh                          r7785rp_defconfig
arm                          ep93xx_defconfig
sh                          rsk7201_defconfig
ia64                             allmodconfig
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
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210426
i386                 randconfig-a002-20210426
i386                 randconfig-a001-20210426
i386                 randconfig-a006-20210426
i386                 randconfig-a004-20210426
i386                 randconfig-a003-20210426
x86_64               randconfig-a015-20210426
x86_64               randconfig-a016-20210426
x86_64               randconfig-a011-20210426
x86_64               randconfig-a014-20210426
x86_64               randconfig-a012-20210426
x86_64               randconfig-a013-20210426
i386                 randconfig-a014-20210426
i386                 randconfig-a012-20210426
i386                 randconfig-a011-20210426
i386                 randconfig-a013-20210426
i386                 randconfig-a015-20210426
i386                 randconfig-a016-20210426
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210426
x86_64               randconfig-a004-20210426
x86_64               randconfig-a001-20210426
x86_64               randconfig-a006-20210426
x86_64               randconfig-a005-20210426
x86_64               randconfig-a003-20210426

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
