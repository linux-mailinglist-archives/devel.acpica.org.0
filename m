Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8C0275061
	for <lists+devel-acpica@lfdr.de>; Wed, 23 Sep 2020 07:44:10 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 91CC51505E06D;
	Tue, 22 Sep 2020 22:44:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C226513F83520
	for <devel@acpica.org>; Tue, 22 Sep 2020 22:44:06 -0700 (PDT)
IronPort-SDR: i5N8l6lCP1QbPwQd8ht6NSVvVcILndrf89SiNPJ6yg5qiLW1eeO6EY5mmjGaxR/kdTlYhlJ375
 Uhx0jXnc0NSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="148541267"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400";
   d="scan'208";a="148541267"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2020 22:44:05 -0700
IronPort-SDR: di7myRpo+iG+b9Uzt4suRJe5kjLVwzIwEkrODKvBeYl/OkSU3klROVAZKEpSFVy+nsd0y/j25x
 5IEUyyu0HSSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400";
   d="scan'208";a="510867298"
Received: from lkp-server01.sh.intel.com (HELO 9f27196b5390) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 22 Sep 2020 22:44:03 -0700
Received: from kbuild by 9f27196b5390 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kKxZS-00000n-KD; Wed, 23 Sep 2020 05:44:02 +0000
Date: Wed, 23 Sep 2020 13:43:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f6ae06f.pjEeo02JAYaRHOCW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ZHTKADDVTN6SHRUTUFETQ2ZTRMMGQRVC
X-Message-ID-Hash: ZHTKADDVTN6SHRUTUFETQ2ZTRMMGQRVC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS f6c2526bd34bc27821a5c75d22b8ef4d386ffb7f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZHTKADDVTN6SHRUTUFETQ2ZTRMMGQRVC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: f6c2526bd34bc27821a5c75d22b8ef4d386ffb7f  Merge branch 'pm-avs' into bleeding-edge

elapsed time: 721m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           ip28_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                      malta_kvm_defconfig
powerpc                     tqm8555_defconfig
mips                       lemote2f_defconfig
xtensa                         virt_defconfig
powerpc                     asp8347_defconfig
arc                        nsim_700_defconfig
arm                        vexpress_defconfig
arm                       spear13xx_defconfig
arm                       aspeed_g5_defconfig
mips                      loongson3_defconfig
mips                 decstation_r4k_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                      ep88xc_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
h8300                    h8300h-sim_defconfig
powerpc                 mpc837x_rdb_defconfig
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
i386                 randconfig-a002-20200921
i386                 randconfig-a006-20200921
i386                 randconfig-a003-20200921
i386                 randconfig-a004-20200921
i386                 randconfig-a005-20200921
i386                 randconfig-a001-20200921
i386                 randconfig-a012-20200921
i386                 randconfig-a014-20200921
i386                 randconfig-a016-20200921
i386                 randconfig-a013-20200921
i386                 randconfig-a011-20200921
i386                 randconfig-a015-20200921
x86_64               randconfig-a005-20200922
x86_64               randconfig-a003-20200922
x86_64               randconfig-a004-20200922
x86_64               randconfig-a002-20200922
x86_64               randconfig-a006-20200922
x86_64               randconfig-a001-20200922
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
x86_64               randconfig-a011-20200920
x86_64               randconfig-a013-20200920
x86_64               randconfig-a014-20200920
x86_64               randconfig-a015-20200920
x86_64               randconfig-a012-20200920
x86_64               randconfig-a016-20200920

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
