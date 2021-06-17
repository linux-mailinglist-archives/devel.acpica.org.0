Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7683AACFA
	for <lists+devel-acpica@lfdr.de>; Thu, 17 Jun 2021 09:06:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6BD0E100EBBDD;
	Thu, 17 Jun 2021 00:06:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1FEE5100EBBBB
	for <devel@acpica.org>; Thu, 17 Jun 2021 00:06:44 -0700 (PDT)
IronPort-SDR: M+A++R2tMlzVBKVafYqWV3r1GqK8VvoL1RTtdYBFei/fbGx3H/nmhwrltV09wiMhlL1QU5OCcI
 KRP4odhIQEzw==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="193627319"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800";
   d="scan'208";a="193627319"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2021 00:06:14 -0700
IronPort-SDR: K02K3M3NHtO67858oLuffdVnoqks8s7eMb2fXBMiL1Pl+zK5rVGmrWKSKNZ45gdqGGTe+p7WxM
 Gz3ULd6w2eag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800";
   d="scan'208";a="555119675"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2021 00:06:11 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltm6M-0001rM-LD; Thu, 17 Jun 2021 07:06:10 +0000
Date: Thu, 17 Jun 2021 15:05:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60caf43e.QAqRNTISuNVPS+7i%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: AUK4BEKSHYMP3B6A36XI4EUB3ODAPPLL
X-Message-ID-Hash: AUK4BEKSHYMP3B6A36XI4EUB3ODAPPLL
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 6e92e3ab6c6d4ac9a87fbfae1681ed8515a55809
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AUK4BEKSHYMP3B6A36XI4EUB3ODAPPLL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 6e92e3ab6c6d4ac9a87fbfae1681ed8515a55809  Merge branch 'acpi-pm' into bleeding-edge

elapsed time: 750m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         shannon_defconfig
sh                          sdk7786_defconfig
arm                         orion5x_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                             pxa_defconfig
mips                     cu1830-neo_defconfig
sparc64                          alldefconfig
arm                         lpc32xx_defconfig
arm                          simpad_defconfig
arm                       netwinder_defconfig
arm                        multi_v5_defconfig
powerpc                     kmeter1_defconfig
powerpc                     ppa8548_defconfig
arm                       mainstone_defconfig
sh                        apsh4ad0a_defconfig
powerpc                      acadia_defconfig
arm                        neponset_defconfig
um                                  defconfig
arc                        nsimosci_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
x86_64               randconfig-a001-20210615
x86_64               randconfig-a004-20210615
x86_64               randconfig-a002-20210615
x86_64               randconfig-a003-20210615
x86_64               randconfig-a006-20210615
x86_64               randconfig-a005-20210615
i386                 randconfig-a002-20210615
i386                 randconfig-a006-20210615
i386                 randconfig-a004-20210615
i386                 randconfig-a001-20210615
i386                 randconfig-a005-20210615
i386                 randconfig-a003-20210615
i386                 randconfig-a015-20210615
i386                 randconfig-a013-20210615
i386                 randconfig-a016-20210615
i386                 randconfig-a012-20210615
i386                 randconfig-a014-20210615
i386                 randconfig-a011-20210615
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210615
x86_64               randconfig-a015-20210615
x86_64               randconfig-a011-20210615
x86_64               randconfig-a012-20210615
x86_64               randconfig-a014-20210615
x86_64               randconfig-a016-20210615
x86_64               randconfig-a013-20210615

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
