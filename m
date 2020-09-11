Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A788C265AE8
	for <lists+devel-acpica@lfdr.de>; Fri, 11 Sep 2020 09:55:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 22F57143DD1AA;
	Fri, 11 Sep 2020 00:55:56 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F1A01143DD1A8
	for <devel@acpica.org>; Fri, 11 Sep 2020 00:55:53 -0700 (PDT)
IronPort-SDR: nOe0zUAZqIsL/o+RGOr7p1eG7BI5kESRhCKxoYD0c/PAyzIadvrsDd5KUieUr9gy7yTZH1cG+8
 hZlYeKIg33yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156163875"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600";
   d="scan'208";a="156163875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2020 00:55:53 -0700
IronPort-SDR: 6uc9Wrtn1HQ+D275EMTJwnwxGuqTrmQKB4vmw81lDg4FB63cpCclMxko1n0w//wT7fX3E/86LW
 i3QzBCv6Z/JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600";
   d="scan'208";a="337423730"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 11 Sep 2020 00:55:51 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGduQ-00007N-EX; Fri, 11 Sep 2020 07:55:50 +0000
Date: Fri, 11 Sep 2020 15:55:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f5b2d5c.dIIJK8ftkCnXUfMT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: SLLYFOTEY5YX4QR7FMVHTKXT4O3SRSB4
X-Message-ID-Hash: SLLYFOTEY5YX4QR7FMVHTKXT4O3SRSB4
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 23818c154baeeb4bb6a8de39cdb9b1e589b6416a
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SLLYFOTEY5YX4QR7FMVHTKXT4O3SRSB4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 23818c154baeeb4bb6a8de39cdb9b1e589b6416a  Merge branch 'pm-em' into linux-next

elapsed time: 721m

configs tested: 190
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                        qi_lb60_defconfig
mips                           rs90_defconfig
mips                       lemote2f_defconfig
riscv                          rv32_defconfig
arm                     davinci_all_defconfig
sh                         apsh4a3a_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
sparc64                             defconfig
arm                         lpc18xx_defconfig
mips                           ip27_defconfig
arm                              zx_defconfig
sh                          sdk7786_defconfig
powerpc                     rainier_defconfig
sh                           sh2007_defconfig
arm                             pxa_defconfig
mips                           ip28_defconfig
openrisc                         alldefconfig
arc                     haps_hs_smp_defconfig
arm                          prima2_defconfig
mips                      pistachio_defconfig
arm                           efm32_defconfig
arm                       aspeed_g4_defconfig
mips                         tb0226_defconfig
mips                          ath79_defconfig
arm                      integrator_defconfig
mips                           ip22_defconfig
powerpc                       maple_defconfig
xtensa                generic_kc705_defconfig
arm                           stm32_defconfig
mips                        workpad_defconfig
mips                           gcw0_defconfig
sh                          sdk7780_defconfig
powerpc                      ppc64e_defconfig
openrisc                    or1ksim_defconfig
arm                          imote2_defconfig
mips                         bigsur_defconfig
mips                          malta_defconfig
arm                            xcep_defconfig
sh                        sh7785lcr_defconfig
sh                        sh7757lcr_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7264_defconfig
arc                    vdk_hs38_smp_defconfig
arm                         ebsa110_defconfig
powerpc                    adder875_defconfig
powerpc                     asp8347_defconfig
arm                         s3c2410_defconfig
mips                     cu1830-neo_defconfig
arm                         lubbock_defconfig
s390                             alldefconfig
mips                          ath25_defconfig
h8300                     edosk2674_defconfig
powerpc                   bluestone_defconfig
powerpc                 mpc837x_mds_defconfig
arm                            u300_defconfig
xtensa                           alldefconfig
arc                          axs101_defconfig
nios2                         3c120_defconfig
powerpc                     powernv_defconfig
sh                ecovec24-romimage_defconfig
ia64                            zx1_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                     pseries_defconfig
arm                      pxa255-idp_defconfig
arm                         mv78xx0_defconfig
arm                          ixp4xx_defconfig
mips                 pnx8335_stb225_defconfig
arm                           omap1_defconfig
c6x                        evmc6472_defconfig
arm                          lpd270_defconfig
arm                         s5pv210_defconfig
arm                              alldefconfig
arm                        shmobile_defconfig
xtensa                       common_defconfig
powerpc                      pmac32_defconfig
s390                       zfcpdump_defconfig
sh                        edosk7760_defconfig
powerpc                  storcenter_defconfig
powerpc64                        alldefconfig
mips                         cobalt_defconfig
mips                         rt305x_defconfig
sh                          kfr2r09_defconfig
mips                            e55_defconfig
arc                        nsim_700_defconfig
arm                        mvebu_v7_defconfig
sh                          lboxre2_defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
x86_64               randconfig-a004-20200910
x86_64               randconfig-a006-20200910
x86_64               randconfig-a003-20200910
x86_64               randconfig-a002-20200910
x86_64               randconfig-a005-20200910
x86_64               randconfig-a001-20200910
i386                 randconfig-a004-20200909
i386                 randconfig-a005-20200909
i386                 randconfig-a006-20200909
i386                 randconfig-a002-20200909
i386                 randconfig-a001-20200909
i386                 randconfig-a003-20200909
i386                 randconfig-a004-20200911
i386                 randconfig-a006-20200911
i386                 randconfig-a001-20200911
i386                 randconfig-a003-20200911
i386                 randconfig-a002-20200911
i386                 randconfig-a005-20200911
i386                 randconfig-a004-20200910
i386                 randconfig-a006-20200910
i386                 randconfig-a001-20200910
i386                 randconfig-a003-20200910
i386                 randconfig-a002-20200910
i386                 randconfig-a005-20200910
x86_64               randconfig-a014-20200911
x86_64               randconfig-a011-20200911
x86_64               randconfig-a012-20200911
x86_64               randconfig-a016-20200911
x86_64               randconfig-a015-20200911
x86_64               randconfig-a013-20200911
i386                 randconfig-a015-20200911
i386                 randconfig-a014-20200911
i386                 randconfig-a011-20200911
i386                 randconfig-a013-20200911
i386                 randconfig-a016-20200911
i386                 randconfig-a012-20200911
i386                 randconfig-a016-20200909
i386                 randconfig-a015-20200909
i386                 randconfig-a011-20200909
i386                 randconfig-a013-20200909
i386                 randconfig-a014-20200909
i386                 randconfig-a012-20200909
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20200911
x86_64               randconfig-a006-20200911
x86_64               randconfig-a003-20200911
x86_64               randconfig-a002-20200911
x86_64               randconfig-a005-20200911
x86_64               randconfig-a001-20200911
x86_64               randconfig-a013-20200909
x86_64               randconfig-a016-20200909
x86_64               randconfig-a011-20200909
x86_64               randconfig-a012-20200909
x86_64               randconfig-a015-20200909
x86_64               randconfig-a014-20200909

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
