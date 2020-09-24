Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E41E5277C52
	for <lists+devel-acpica@lfdr.de>; Fri, 25 Sep 2020 01:30:58 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6841E154A7621;
	Thu, 24 Sep 2020 16:30:57 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 10136154A618E
	for <devel@acpica.org>; Thu, 24 Sep 2020 16:30:54 -0700 (PDT)
IronPort-SDR: HyPkfZv1oM7iDEQKGsibaAxifeH6Pdn47VLtq2YEo2raXfP5lI0IrHaWOVMsRPYKEX87toSl7r
 5NP0Ef+sbV7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="222968401"
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400";
   d="scan'208";a="222968401"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 16:30:54 -0700
IronPort-SDR: K6mKcueJwbyouJ7WqyR3yeL3kCMDm3k0c+sFOTgjeL62hHhMKl9iOu7PVe208I48xIZVzE8q2j
 n/HWHn+wRy6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400";
   d="scan'208";a="310587055"
Received: from lkp-server01.sh.intel.com (HELO d1a6b931d9c6) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 24 Sep 2020 16:30:52 -0700
Received: from kbuild by d1a6b931d9c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLahP-0000Au-VF; Thu, 24 Sep 2020 23:30:51 +0000
Date: Fri, 25 Sep 2020 07:29:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f6d2bf3.eUzt5WRZn90nkRFo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: PSYZGJQUSD4TFS7Q7HK3D3GOUZJAJ5R7
X-Message-ID-Hash: PSYZGJQUSD4TFS7Q7HK3D3GOUZJAJ5R7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS c6fdc99d71f335046a3cf4014097576e9907b94b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PSYZGJQUSD4TFS7Q7HK3D3GOUZJAJ5R7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: c6fdc99d71f335046a3cf4014097576e9907b94b  Merge branch 'acpi-numa' into bleeding-edge

elapsed time: 720m

configs tested: 90
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          rsk7203_defconfig
powerpc                 mpc8313_rdb_defconfig
sparc                            alldefconfig
arm                           h5000_defconfig
m68k                           sun3_defconfig
arm                          ixp4xx_defconfig
powerpc                      arches_defconfig
um                             i386_defconfig
sh                            shmin_defconfig
xtensa                  cadence_csp_defconfig
mips                   sb1250_swarm_defconfig
sh                           se7705_defconfig
powerpc                    amigaone_defconfig
arc                        nsim_700_defconfig
sh                      rts7751r2d1_defconfig
sh                        sh7757lcr_defconfig
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
i386                 randconfig-a002-20200923
i386                 randconfig-a006-20200923
i386                 randconfig-a003-20200923
i386                 randconfig-a004-20200923
i386                 randconfig-a005-20200923
i386                 randconfig-a001-20200923
x86_64               randconfig-a011-20200923
x86_64               randconfig-a013-20200923
x86_64               randconfig-a014-20200923
x86_64               randconfig-a015-20200923
x86_64               randconfig-a012-20200923
x86_64               randconfig-a016-20200923
i386                 randconfig-a012-20200923
i386                 randconfig-a014-20200923
i386                 randconfig-a016-20200923
i386                 randconfig-a013-20200923
i386                 randconfig-a011-20200923
i386                 randconfig-a015-20200923
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
x86_64               randconfig-a005-20200923
x86_64               randconfig-a003-20200923
x86_64               randconfig-a004-20200923
x86_64               randconfig-a002-20200923
x86_64               randconfig-a006-20200923
x86_64               randconfig-a001-20200923

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
