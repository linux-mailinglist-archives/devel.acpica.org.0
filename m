Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6ED36F6CA
	for <lists+devel-acpica@lfdr.de>; Fri, 30 Apr 2021 09:59:02 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F204C100EB337;
	Fri, 30 Apr 2021 00:59:00 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 673EE100EBBD7
	for <devel@acpica.org>; Fri, 30 Apr 2021 00:58:58 -0700 (PDT)
IronPort-SDR: vHsiTuL5mXfUijC3ZdwiookZT2KbBmFd8lc1CgjgD3xCQy4pZXnoFfCKxIK510+4lhnB32hdHr
 kAKHF15nhaTQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="195115717"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400";
   d="scan'208";a="195115717"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2021 00:58:57 -0700
IronPort-SDR: 9clr2pxJ0ZWxbKfNTkLkHvjS60rM72iieD0CB07obbjDz5lq2C8J/Jw16MrGj8Eseyo9HOxLkp
 kJIjnLI5VuhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400";
   d="scan'208";a="616783938"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 30 Apr 2021 00:58:56 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcO35-00084l-Gu; Fri, 30 Apr 2021 07:58:55 +0000
Date: Fri, 30 Apr 2021 15:58:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <608bb895.fsqfEdV2vXKjjV9I%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NTKFZB27F3UA3KEWOVLI6XKTX3EWO2N6
X-Message-ID-Hash: NTKFZB27F3UA3KEWOVLI6XKTX3EWO2N6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS eebece9da63e0050345a10e89cb33d7312c9ec3c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NTKFZB27F3UA3KEWOVLI6XKTX3EWO2N6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: eebece9da63e0050345a10e89cb33d7312c9ec3c  Merge branches 'acpi-misc' and 'acpi-docs' into linux-next

elapsed time: 722m

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
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                     cu1830-neo_defconfig
nios2                         3c120_defconfig
sh                               j2_defconfig
arm                            hisi_defconfig
x86_64                              defconfig
arm                          ixp4xx_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                      tqm8xx_defconfig
m68k                       m5249evb_defconfig
arm64                            alldefconfig
um                             i386_defconfig
arc                        nsimosci_defconfig
arm                         socfpga_defconfig
mips                         db1xxx_defconfig
sh                         microdev_defconfig
m68k                       bvme6000_defconfig
arm                           tegra_defconfig
powerpc                        icon_defconfig
powerpc                 mpc836x_rdk_defconfig
xtensa                    xip_kc705_defconfig
m68k                       m5208evb_defconfig
powerpc                 linkstation_defconfig
arm                       aspeed_g5_defconfig
powerpc                    socrates_defconfig
arm                        mini2440_defconfig
arm                         lpc32xx_defconfig
powerpc                   currituck_defconfig
arm                           viper_defconfig
i386                             alldefconfig
arm                        spear6xx_defconfig
powerpc                          g5_defconfig
arm                           omap1_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                   bluestone_defconfig
csky                                defconfig
powerpc                     ksi8560_defconfig
arm                          simpad_defconfig
ia64                                defconfig
arm                             mxs_defconfig
arm                      pxa255-idp_defconfig
sh                        edosk7705_defconfig
powerpc                 mpc8540_ads_defconfig
sh                        sh7763rdp_defconfig
powerpc                   lite5200b_defconfig
arm                        neponset_defconfig
arc                    vdk_hs38_smp_defconfig
x86_64                           alldefconfig
sh                             shx3_defconfig
mips                        vocore2_defconfig
m68k                            q40_defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
openrisc                 simple_smp_defconfig
powerpc                     ppa8548_defconfig
arc                          axs103_defconfig
powerpc                 mpc8272_ads_defconfig
sh                        edosk7760_defconfig
sh                   sh7770_generic_defconfig
sh                            hp6xx_defconfig
arm                          lpd270_defconfig
openrisc                    or1ksim_defconfig
mips                            ar7_defconfig
arc                            hsdk_defconfig
sh                            shmin_defconfig
arm                         s3c2410_defconfig
arm                           sunxi_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210429
x86_64               randconfig-a002-20210429
x86_64               randconfig-a005-20210429
x86_64               randconfig-a006-20210429
x86_64               randconfig-a001-20210429
x86_64               randconfig-a003-20210429
i386                 randconfig-a005-20210429
i386                 randconfig-a002-20210429
i386                 randconfig-a001-20210429
i386                 randconfig-a006-20210429
i386                 randconfig-a003-20210429
i386                 randconfig-a004-20210429
i386                 randconfig-a012-20210429
i386                 randconfig-a014-20210429
i386                 randconfig-a013-20210429
i386                 randconfig-a011-20210429
i386                 randconfig-a015-20210429
i386                 randconfig-a016-20210429
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
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210429
x86_64               randconfig-a016-20210429
x86_64               randconfig-a011-20210429
x86_64               randconfig-a014-20210429
x86_64               randconfig-a013-20210429
x86_64               randconfig-a012-20210429

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
