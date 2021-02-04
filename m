Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1839430ED6A
	for <lists+devel-acpica@lfdr.de>; Thu,  4 Feb 2021 08:34:19 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8A723100EAB09;
	Wed,  3 Feb 2021 23:34:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8AD2A100EAB07
	for <devel@acpica.org>; Wed,  3 Feb 2021 23:34:15 -0800 (PST)
IronPort-SDR: efvvJmv4DSFK7ne5c9zq16ZIPDIJOW8iVn5iyX3VVxuehMcKn0Q//GTapUR9JHzTH9F33Wt9zK
 P1W784bqWdYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="200170993"
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400";
   d="scan'208";a="200170993"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 23:34:14 -0800
IronPort-SDR: tuQBFfMGQL7Xgm+mxxMJvT42Elb3QZ331n87q9q6vZQxYBLTXN9Hi3DWTxnZ4oDEl98Q0kEmSd
 piTJvsGWGNeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400";
   d="scan'208";a="576198674"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 03 Feb 2021 23:34:12 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l7Z9X-0000pE-Uy; Thu, 04 Feb 2021 07:34:11 +0000
Date: Thu, 04 Feb 2021 15:33:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <601ba352.VfF+oLpzGWFpeVB1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: T4BAYS6DABYW4DQ7IZLIYIDHRKM3NJHX
X-Message-ID-Hash: T4BAYS6DABYW4DQ7IZLIYIDHRKM3NJHX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS d0df27d78279aaa73c22e54f0b97d5f3f508f27e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/T4BAYS6DABYW4DQ7IZLIYIDHRKM3NJHX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: d0df27d78279aaa73c22e54f0b97d5f3f508f27e  Merge branch 'sfi-removal' into bleeding-edge

elapsed time: 723m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         cm_x300_defconfig
sh                          urquell_defconfig
arm                        spear6xx_defconfig
sh                ecovec24-romimage_defconfig
c6x                        evmc6472_defconfig
arc                      axs103_smp_defconfig
arc                            hsdk_defconfig
arc                        nsim_700_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     tqm8548_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                    socrates_defconfig
sh                          sdk7780_defconfig
sh                         microdev_defconfig
arm                          pxa168_defconfig
arc                          axs103_defconfig
s390                          debug_defconfig
mips                         bigsur_defconfig
arm                          lpd270_defconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210203
i386                 randconfig-a005-20210203
i386                 randconfig-a003-20210203
i386                 randconfig-a006-20210203
i386                 randconfig-a002-20210203
i386                 randconfig-a004-20210203
x86_64               randconfig-a013-20210202
x86_64               randconfig-a014-20210202
x86_64               randconfig-a015-20210202
x86_64               randconfig-a016-20210202
x86_64               randconfig-a011-20210202
x86_64               randconfig-a012-20210202
i386                 randconfig-a013-20210202
i386                 randconfig-a016-20210202
i386                 randconfig-a014-20210202
i386                 randconfig-a012-20210202
i386                 randconfig-a015-20210202
i386                 randconfig-a011-20210202
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
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210202
x86_64               randconfig-a001-20210202
x86_64               randconfig-a005-20210202
x86_64               randconfig-a002-20210202
x86_64               randconfig-a004-20210202
x86_64               randconfig-a003-20210202

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
