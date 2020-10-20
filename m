Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E98929341D
	for <lists+devel-acpica@lfdr.de>; Tue, 20 Oct 2020 06:37:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8E21F159D0DD6;
	Mon, 19 Oct 2020 21:37:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6597E159BD0C0
	for <devel@acpica.org>; Mon, 19 Oct 2020 21:37:45 -0700 (PDT)
IronPort-SDR: +5ihvAd7GQ+6a5z2NVzhJetXkuPlMFPS6HrDOT3ZdcJ5oWXsDA2WcKnGOZh2mJ1XGR7V0KKYiS
 A607SO7PfUnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154096379"
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400";
   d="scan'208";a="154096379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 21:37:45 -0700
IronPort-SDR: PzaCLT5bntA2untvrWoxXnzT3TWDtmDEGRu6xWXwlMw12o+B1Z/nWvtPF5Jopsh5NO9zRS+xho
 IPGQBHA1Quew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400";
   d="scan'208";a="359050909"
Received: from lkp-server01.sh.intel.com (HELO 88424da292e0) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 19 Oct 2020 21:37:43 -0700
Received: from kbuild by 88424da292e0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kUjP4-0000OS-Op; Tue, 20 Oct 2020 04:37:42 +0000
Date: Tue, 20 Oct 2020 12:37:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f8e696e.7otAekyi64MWacHT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: DWEQ5AZPCJO3HWUOVUKGTJZ5YM6WVYWF
X-Message-ID-Hash: DWEQ5AZPCJO3HWUOVUKGTJZ5YM6WVYWF
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD REGRESSION 2a58871c00f77abfc45935812e7e62a9d8a59a40
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DWEQ5AZPCJO3HWUOVUKGTJZ5YM6WVYWF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 2a58871c00f77abfc45935812e7e62a9d8a59a40  Merge branch 'powercap' into bleeding-edge

Error/Warning reports:

https://lore.kernel.org/linux-acpi/202010200230.0MxnAfAW-lkp@intel.com

Error/Warning in current branch:

drivers/base/power/domain.c:419:8: error: implicit declaration of function '__raw_notifier_call_chain'; did you mean 'raw_notifier_call_chain'? [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allmodconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- arm-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- arm-defconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- arm64-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- arm64-defconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- i386-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- i386-randconfig-s001-20201019
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- ia64-allmodconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- ia64-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- mips-allmodconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- mips-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- nds32-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- powerpc-allmodconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- powerpc-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- riscv-allmodconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- riscv-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- sh-allmodconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- sparc-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- x86_64-allyesconfig
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
|-- x86_64-randconfig-a003-20201019
|   `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain
`-- xtensa-allyesconfig
    `-- drivers-base-power-domain.c:error:implicit-declaration-of-function-__raw_notifier_call_chain

elapsed time: 720m

configs tested: 94
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                     haps_hs_smp_defconfig
mips                      malta_kvm_defconfig
powerpc                  storcenter_defconfig
sh                     sh7710voipgw_defconfig
arm                            zeus_defconfig
arm                        spear6xx_defconfig
xtensa                  audio_kc705_defconfig
arm                          tango4_defconfig
mips                        nlm_xlr_defconfig
powerpc                      makalu_defconfig
arm                    vt8500_v6_v7_defconfig
mips                        workpad_defconfig
mips                     loongson1b_defconfig
sh                            migor_defconfig
mips                         tb0219_defconfig
sh                          urquell_defconfig
nios2                         10m50_defconfig
sparc64                             defconfig
arm                           omap1_defconfig
mips                    maltaup_xpa_defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                 randconfig-a006-20201019
i386                 randconfig-a005-20201019
i386                 randconfig-a001-20201019
i386                 randconfig-a003-20201019
i386                 randconfig-a004-20201019
i386                 randconfig-a002-20201019
i386                 randconfig-a015-20201019
i386                 randconfig-a013-20201019
i386                 randconfig-a016-20201019
i386                 randconfig-a012-20201019
i386                 randconfig-a011-20201019
i386                 randconfig-a014-20201019
x86_64               randconfig-a004-20201019
x86_64               randconfig-a002-20201019
x86_64               randconfig-a006-20201019
x86_64               randconfig-a003-20201019
x86_64               randconfig-a005-20201019
x86_64               randconfig-a001-20201019
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
x86_64               randconfig-a016-20201019
x86_64               randconfig-a015-20201019
x86_64               randconfig-a012-20201019
x86_64               randconfig-a013-20201019
x86_64               randconfig-a011-20201019
x86_64               randconfig-a014-20201019

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
