Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA342CF428
	for <lists+devel-acpica@lfdr.de>; Fri,  4 Dec 2020 19:36:25 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 20D29100EC1FB;
	Fri,  4 Dec 2020 10:36:23 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EBD4A100EC1CC
	for <devel@acpica.org>; Fri,  4 Dec 2020 10:36:20 -0800 (PST)
IronPort-SDR: IRYvESh2DHIHwu+g2VLXgiwxhpz2Ll5zYmr+g0LROBCZoIM3Nfjjg9ETcztnSuRHjFLJx5VbQI
 pv0JP/0VynCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="258135189"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400";
   d="scan'208";a="258135189"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2020 10:36:19 -0800
IronPort-SDR: sGvNlvLhYsqS2mkHrHsBQ4KK6I0iMP3Vjb+bNTBASP7GHKgs8poiYqvSw/tkoWQIAm65cBUJMo
 hjqU33nZ3YFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400";
   d="scan'208";a="366390898"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 04 Dec 2020 10:36:18 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1klFwH-0000K3-HR; Fri, 04 Dec 2020 18:36:17 +0000
Date: Sat, 05 Dec 2020 02:35:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fca816f.oCDda8+ObGqjvZwR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: P7544WV75COMNZMLVRL6XIPEUDF7P7OT
X-Message-ID-Hash: P7544WV75COMNZMLVRL6XIPEUDF7P7OT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS c35cc6e0cf0522be409eb83e6c2d7ab606627e17
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/P7544WV75COMNZMLVRL6XIPEUDF7P7OT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: c35cc6e0cf0522be409eb83e6c2d7ab606627e17  Merge branch 'acpi-scan' into linux-next

elapsed time: 720m

configs tested: 134
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      tqm8xx_defconfig
h8300                       h8s-sim_defconfig
mips                      fuloong2e_defconfig
ia64                          tiger_defconfig
arm                        keystone_defconfig
powerpc                     tqm8555_defconfig
sh                           se7721_defconfig
arm                           efm32_defconfig
sh                          landisk_defconfig
csky                             alldefconfig
xtensa                          iss_defconfig
powerpc                      ep88xc_defconfig
arm                         bcm2835_defconfig
powerpc                      acadia_defconfig
arm                         assabet_defconfig
powerpc                     skiroot_defconfig
powerpc                    socrates_defconfig
um                             i386_defconfig
powerpc                      ppc64e_defconfig
powerpc                       eiger_defconfig
xtensa                generic_kc705_defconfig
sh                        edosk7760_defconfig
arm                        mini2440_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      chrp32_defconfig
sh                          urquell_defconfig
arm                       netwinder_defconfig
mips                            gpr_defconfig
sh                          rsk7264_defconfig
arm                            pleb_defconfig
arm                         orion5x_defconfig
powerpc                     kilauea_defconfig
arc                          axs103_defconfig
nds32                            alldefconfig
powerpc                        fsp2_defconfig
arm                          ep93xx_defconfig
xtensa                  audio_kc705_defconfig
sh                            hp6xx_defconfig
arm                       omap2plus_defconfig
c6x                         dsk6455_defconfig
sh                        sh7785lcr_defconfig
arc                     nsimosci_hs_defconfig
openrisc                    or1ksim_defconfig
arm                    vt8500_v6_v7_defconfig
sh                           se7343_defconfig
powerpc                     tqm8540_defconfig
arm                           corgi_defconfig
arm                           omap1_defconfig
arm                        vexpress_defconfig
sh                   rts7751r2dplus_defconfig
m68k                            q40_defconfig
mips                           jazz_defconfig
sparc64                             defconfig
mips                         db1xxx_defconfig
powerpc                   lite5200b_defconfig
arm                         s3c2410_defconfig
powerpc64                        alldefconfig
mips                       lemote2f_defconfig
sh                     magicpanelr2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20201204
x86_64               randconfig-a006-20201204
x86_64               randconfig-a002-20201204
x86_64               randconfig-a001-20201204
x86_64               randconfig-a005-20201204
x86_64               randconfig-a003-20201204
i386                 randconfig-a005-20201204
i386                 randconfig-a001-20201204
i386                 randconfig-a002-20201204
i386                 randconfig-a006-20201204
i386                 randconfig-a003-20201204
i386                 randconfig-a004-20201204
i386                 randconfig-a015-20201204
i386                 randconfig-a016-20201204
i386                 randconfig-a014-20201204
i386                 randconfig-a013-20201204
i386                 randconfig-a011-20201204
i386                 randconfig-a012-20201204
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20201204
x86_64               randconfig-a012-20201204
x86_64               randconfig-a014-20201204
x86_64               randconfig-a013-20201204
x86_64               randconfig-a015-20201204
x86_64               randconfig-a011-20201204

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
