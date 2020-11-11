Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D76EF2AEA5F
	for <lists+devel-acpica@lfdr.de>; Wed, 11 Nov 2020 08:54:46 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4B81D167462D1;
	Tue, 10 Nov 2020 23:54:45 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1DFE21634994A
	for <devel@acpica.org>; Tue, 10 Nov 2020 23:54:44 -0800 (PST)
IronPort-SDR: j53+lfstKlgUAOTZiFeGlpzYp0bilsPQUJUtiTIWf5tz+55E8vYgcexkbJ3SWifvqJgeqDDpDn
 y26ZU2YTWCtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="170268237"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400";
   d="scan'208";a="170268237"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2020 23:54:40 -0800
IronPort-SDR: I8Zwyw9hG4a75lHeIQ3pFJG3MVIEFICPjkY+fkwu8WVemHN1/scHgtK82svPLX0b11zOXQ8G6V
 OP/SEZ0PIIHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400";
   d="scan'208";a="360451002"
Received: from lkp-server02.sh.intel.com (HELO 5b2c7e53fe46) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2020 23:54:39 -0800
Received: from kbuild by 5b2c7e53fe46 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kckxi-00000e-E1; Wed, 11 Nov 2020 07:54:38 +0000
Date: Wed, 11 Nov 2020 15:53:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fab9883.La15Loi1BjnQLo6F%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: EDCWHNSIC3RPXFNLL5WCVDEPVGLPEQVV
X-Message-ID-Hash: EDCWHNSIC3RPXFNLL5WCVDEPVGLPEQVV
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS a786b09de56abff9e68458128c25d0f16f4dc964
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EDCWHNSIC3RPXFNLL5WCVDEPVGLPEQVV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: a786b09de56abff9e68458128c25d0f16f4dc964  Merge branch 'pm-cpuidle' into bleeding-edge

elapsed time: 728m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc64                           defconfig
arm                       omap2plus_defconfig
mips                  maltasmvp_eva_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                          landisk_defconfig
powerpc                       ebony_defconfig
sh                           se7619_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                                  defconfig
arm                            pleb_defconfig
m68k                       m5275evb_defconfig
sh                            shmin_defconfig
mips                        maltaup_defconfig
arm                        magician_defconfig
mips                 decstation_r4k_defconfig
powerpc                 mpc836x_mds_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
x86_64               randconfig-a003-20201110
x86_64               randconfig-a005-20201110
x86_64               randconfig-a004-20201110
x86_64               randconfig-a002-20201110
x86_64               randconfig-a006-20201110
x86_64               randconfig-a001-20201110
i386                 randconfig-a006-20201110
i386                 randconfig-a005-20201110
i386                 randconfig-a002-20201110
i386                 randconfig-a001-20201110
i386                 randconfig-a003-20201110
i386                 randconfig-a004-20201110
i386                 randconfig-a012-20201110
i386                 randconfig-a014-20201110
i386                 randconfig-a016-20201110
i386                 randconfig-a011-20201110
i386                 randconfig-a015-20201110
i386                 randconfig-a013-20201110
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
x86_64               randconfig-a015-20201110
x86_64               randconfig-a011-20201110
x86_64               randconfig-a014-20201110
x86_64               randconfig-a013-20201110
x86_64               randconfig-a016-20201110
x86_64               randconfig-a012-20201110

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
