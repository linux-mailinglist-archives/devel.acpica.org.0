Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C452551FB
	for <lists+devel-acpica@lfdr.de>; Fri, 28 Aug 2020 02:36:11 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4F02212757C58;
	Thu, 27 Aug 2020 17:36:10 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1C8D712757C56
	for <devel@acpica.org>; Thu, 27 Aug 2020 17:36:07 -0700 (PDT)
IronPort-SDR: uZs0I4Ut9IKi5XY4rLJPn/BJexcLqtYVWCB6mpTfHYImIXhtxQ/TxbW1zqKvBMFtMaTkiOHW9C
 o+E25GLxqkTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="157612023"
X-IronPort-AV: E=Sophos;i="5.76,361,1592895600";
   d="scan'208";a="157612023"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Aug 2020 17:36:07 -0700
IronPort-SDR: x6L+k0cke8o7makoPwEUXXhr+4FrMe5vZek6LAlGyZJBZ8qJWN1D/wxR+hohkcdJMTP2WuM/RS
 A4rHV/GVh39Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,361,1592895600";
   d="scan'208";a="500312364"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 27 Aug 2020 17:36:05 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kBSNA-0002OM-TE; Fri, 28 Aug 2020 00:36:04 +0000
Date: Fri, 28 Aug 2020 08:36:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f485170.xLHB2cTv+CiAHlVG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: U2IWNXVZVLZY5FG6OFPOR7DO4ZJINXWJ
X-Message-ID-Hash: U2IWNXVZVLZY5FG6OFPOR7DO4ZJINXWJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS dc37b29f6d3007e72ff3de80fcbeeed75843cfed
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/U2IWNXVZVLZY5FG6OFPOR7DO4ZJINXWJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: dc37b29f6d3007e72ff3de80fcbeeed75843cfed  Merge branch 'pm-cpufreq' into linux-next

elapsed time: 724m

configs tested: 145
configs skipped: 16

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     decstation_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                              ul2_defconfig
powerpc                         ps3_defconfig
arm                             rpc_defconfig
sh                            shmin_defconfig
arm                         s3c2410_defconfig
m68k                        m5272c3_defconfig
sh                            migor_defconfig
arm                        multi_v7_defconfig
sh                          sdk7780_defconfig
arm                             ezx_defconfig
mips                            e55_defconfig
arm                          pxa910_defconfig
sparc64                          alldefconfig
arm                          pxa168_defconfig
sh                        apsh4ad0a_defconfig
mips                          ath25_defconfig
ia64                             allmodconfig
sh                        sh7763rdp_defconfig
arm                         orion5x_defconfig
mips                          malta_defconfig
arm                           spitz_defconfig
mips                       rbtx49xx_defconfig
sh                           se7721_defconfig
mips                         mpc30x_defconfig
powerpc                      ppc40x_defconfig
parisc                           allyesconfig
mips                         rt305x_defconfig
arm                         lpc32xx_defconfig
powerpc                     mpc5200_defconfig
arm                      pxa255-idp_defconfig
mips                           ip22_defconfig
arc                           tb10x_defconfig
sh                        sh7757lcr_defconfig
mips                      maltaaprp_defconfig
arm                    vt8500_v6_v7_defconfig
arc                              allyesconfig
sh                             sh03_defconfig
arm                         mv78xx0_defconfig
sh                ecovec24-romimage_defconfig
powerpc                      ppc44x_defconfig
arm                       mainstone_defconfig
m68k                             allmodconfig
c6x                         dsk6455_defconfig
powerpc                     powernv_defconfig
mips                          rb532_defconfig
ia64                         bigsur_defconfig
arm                        multi_v5_defconfig
sh                         ecovec24_defconfig
arc                              alldefconfig
arm                  colibri_pxa270_defconfig
mips                       lemote2f_defconfig
m68k                         apollo_defconfig
sh                        edosk7760_defconfig
sh                           sh2007_defconfig
c6x                        evmc6678_defconfig
sparc                               defconfig
arc                    vdk_hs38_smp_defconfig
arm                         at91_dt_defconfig
sh                          kfr2r09_defconfig
arm                          pcm027_defconfig
powerpc                      ppc6xx_defconfig
arm                         bcm2835_defconfig
mips                     loongson1b_defconfig
mips                            ar7_defconfig
arc                            hsdk_defconfig
alpha                               defconfig
arm                          exynos_defconfig
powerpc                      tqm8xx_defconfig
arm                       aspeed_g4_defconfig
riscv                    nommu_k210_defconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20200827
x86_64               randconfig-a002-20200827
x86_64               randconfig-a001-20200827
x86_64               randconfig-a005-20200827
x86_64               randconfig-a006-20200827
x86_64               randconfig-a004-20200827
i386                 randconfig-a002-20200827
i386                 randconfig-a004-20200827
i386                 randconfig-a003-20200827
i386                 randconfig-a005-20200827
i386                 randconfig-a006-20200827
i386                 randconfig-a001-20200827
i386                 randconfig-a002-20200828
i386                 randconfig-a005-20200828
i386                 randconfig-a003-20200828
i386                 randconfig-a004-20200828
i386                 randconfig-a001-20200828
i386                 randconfig-a006-20200828
i386                 randconfig-a013-20200827
i386                 randconfig-a012-20200827
i386                 randconfig-a011-20200827
i386                 randconfig-a016-20200827
i386                 randconfig-a015-20200827
i386                 randconfig-a014-20200827
i386                 randconfig-a013-20200828
i386                 randconfig-a012-20200828
i386                 randconfig-a011-20200828
i386                 randconfig-a016-20200828
i386                 randconfig-a014-20200828
i386                 randconfig-a015-20200828
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
