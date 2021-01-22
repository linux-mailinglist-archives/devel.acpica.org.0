Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3B42FFD6A
	for <lists+devel-acpica@lfdr.de>; Fri, 22 Jan 2021 08:30:46 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CE8E7100F2263;
	Thu, 21 Jan 2021 23:30:44 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7613F100EB342
	for <devel@acpica.org>; Thu, 21 Jan 2021 23:30:43 -0800 (PST)
IronPort-SDR: 6UsNKyDosZSoXu4rZ5WKM+HbO4RNG/6xJS03sm5c9E1/9EN9rrKMREDKj6y1/8g+M9R1cet65d
 bALkLGiDpvSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="240941126"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400";
   d="scan'208";a="240941126"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 23:30:42 -0800
IronPort-SDR: ezljlS7CbtHOd3WXQa0V1Jv6Vd1XlpejZno5NZTHuWLPNwvFVAPZIISd+oPP6QthUR5B8fJieg
 IfuLnJOa95xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400";
   d="scan'208";a="392226326"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 21 Jan 2021 23:30:41 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l2qu0-00075E-Ge; Fri, 22 Jan 2021 07:30:40 +0000
Date: Fri, 22 Jan 2021 15:30:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <600a7f1c.IUhAMURl7o4IVqMl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: H6JDRPW6A2RO2HKPNGOTURPXAR4VHT5J
X-Message-ID-Hash: H6JDRPW6A2RO2HKPNGOTURPXAR4VHT5J
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS WITH WARNING 33b4fa8533186db3c463120ced43b1c12ecba18d
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/H6JDRPW6A2RO2HKPNGOTURPXAR4VHT5J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 33b4fa8533186db3c463120ced43b1c12ecba18d  Merge branch 'acpi-platform' into bleeding-edge

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- x86_64-randconfig-s022-20210122
    `-- include-linux-spinlock.h:sparse:sparse:context-imbalance-in-pm_clk_list_lock-wrong-count-at-exit

elapsed time: 722m

configs tested: 89
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                   motionpro_defconfig
c6x                        evmc6457_defconfig
mips                         tb0226_defconfig
mips                           ip22_defconfig
powerpc                        icon_defconfig
mips                        nlm_xlp_defconfig
xtensa                generic_kc705_defconfig
powerpc                    socrates_defconfig
m68k                          atari_defconfig
arm                             mxs_defconfig
powerpc                   currituck_defconfig
arm                        trizeps4_defconfig
powerpc                 mpc834x_itx_defconfig
arm                        shmobile_defconfig
um                           x86_64_defconfig
arc                        nsimosci_defconfig
m68k                       m5208evb_defconfig
arm                         lpc32xx_defconfig
sh                           se7780_defconfig
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
i386                 randconfig-a001-20210121
i386                 randconfig-a002-20210121
i386                 randconfig-a004-20210121
i386                 randconfig-a006-20210121
i386                 randconfig-a005-20210121
i386                 randconfig-a003-20210121
i386                 randconfig-a013-20210121
i386                 randconfig-a011-20210121
i386                 randconfig-a012-20210121
i386                 randconfig-a014-20210121
i386                 randconfig-a015-20210121
i386                 randconfig-a016-20210121
x86_64               randconfig-a002-20210121
x86_64               randconfig-a003-20210121
x86_64               randconfig-a001-20210121
x86_64               randconfig-a005-20210121
x86_64               randconfig-a006-20210121
x86_64               randconfig-a004-20210121
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
