Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9229350E7CA
	for <lists+devel-acpica@lfdr.de>; Mon, 25 Apr 2022 20:08:32 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1BBFA100EBB97;
	Mon, 25 Apr 2022 11:08:30 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0A4B7100EBB94
	for <devel@acpica.org>; Mon, 25 Apr 2022 11:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650910107; x=1682446107;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=o3L9DbsHcCsscF7qtxYsQTb6HK5BgXKp4ZCB7vwcXD8=;
  b=G6Zl3gwTP52N1tqMEEt870cE+cHIQrqC3w5Eo7WSSe9AxG0ofEpFunZP
   iBR+9WZ5TiuQoHArhW1O2w1i4A7O46+PZYCLgSjWjNJQUIa0G3lwYWlhP
   c1+LIKtHVZNccji4trW5vEuG5rCTBCWok1oWn+pwvZIkDATVkmrqw0pDb
   +pxpJbqxWZ44n0IacwN/3KBFpQg6xXhJswOgY52sYOHffG7Aa31pw6jWL
   hQSbnnxnabuO/XFJi6bOYBYtUSgEiVs0+8abiWadnM+uyjFRlK3JYoeTo
   jQbVR351Y5swgoE3ht8MG6V93gl9J0AJsZKHl+81LNXirzvzdqN08WI92
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="351771233"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400";
   d="scan'208";a="351771233"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Apr 2022 11:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400";
   d="scan'208";a="807153126"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 25 Apr 2022 11:08:24 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nj38J-0002ks-Sz;
	Mon, 25 Apr 2022 18:08:23 +0000
Date: Tue, 26 Apr 2022 02:08:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6266e387.bctpuhyghUvd25GS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: JUDMBWBKICHDZAXUJMFMLWVRR7AMANIV
X-Message-ID-Hash: JUDMBWBKICHDZAXUJMFMLWVRR7AMANIV
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING f23bedef4354b1e8a69a25d8c9c1201e6d8e8762
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JUDMBWBKICHDZAXUJMFMLWVRR7AMANIV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: f23bedef4354b1e8a69a25d8c9c1201e6d8e8762  Merge branch 'acpi-pci' into bleeding-edge

Warning reports:

https://lore.kernel.org/linux-pm/202204240259.PyW8hsJz-lkp@intel.com
https://lore.kernel.org/linux-pm/202204241452.pAvKt2JP-lkp@intel.com

Warning: (recently discovered and may have been fixed)

WARNING: modpost: vmlinux.o(.exit.text+0xe120): Section mismatch in reference from the function hsr_netlink_exit() to the variable .init.text:.L0
WARNING: modpost: vmlinux.o(.text+0x15ff5e0): Section mismatch in reference from the function dm_stats_init() to the variable .init.text:.L0
WARNING: modpost: vmlinux.o(.text+0x1697378): Section mismatch in reference from the function btintel_send_intel_reset() to the variable .exit.text:.L0
WARNING: modpost: vmlinux.o(.text+0x1bf6234): Section mismatch in reference from the function sctp_sched_ops_register() to the variable .init.text:.L0
WARNING: modpost: vmlinux.o(.text+0x1bf624c): Section mismatch in reference from the function sctp_sched_ops_init() to the variable .init.text:.L0
WARNING: modpost: vmlinux.o(.text+0x1bf627c): Section mismatch in reference from the function sctp_sched_set_sched() to the variable .init.text:.L0
WARNING: modpost: vmlinux.o(.text+0x1bf640c): Section mismatch in reference from the function sctp_sched_get_sched() to the variable .init.text:.L0
WARNING: modpost: vmlinux.o(.text+0xfdc8e4): Section mismatch in reference from the function component_compare_dev_name() to the variable .exit.text:.LFB4478
WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .rodata:_entry.30

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- riscv-buildonly-randconfig-r002-20220421
    |-- Section-mismatch-in-reference-from-the-function-btintel_send_intel_reset()-to-the-variable-.exit.text:.L0
    |-- Section-mismatch-in-reference-from-the-function-component_compare_dev_name()-to-the-variable-.exit.text:.LFB4478
    |-- Section-mismatch-in-reference-from-the-function-dm_stats_init()-to-the-variable-.init.text:.L0
    |-- Section-mismatch-in-reference-from-the-function-hsr_netlink_exit()-to-the-variable-.init.text:.L0
    |-- Section-mismatch-in-reference-from-the-function-sctp_sched_get_sched()-to-the-variable-.init.text:.L0
    |-- Section-mismatch-in-reference-from-the-function-sctp_sched_ops_init()-to-the-variable-.init.text:.L0
    |-- Section-mismatch-in-reference-from-the-function-sctp_sched_ops_register()-to-the-variable-.init.text:.L0
    |-- Section-mismatch-in-reference-from-the-function-sctp_sched_set_sched()-to-the-variable-.init.text:.L0
    `-- Section-mismatch-in-reference-from-the-variable-.L0-to-the-variable-.rodata:_entry.

elapsed time: 4386m

configs tested: 109
configs skipped: 4

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
arm                          simpad_defconfig
m68k                        m5407c3_defconfig
um                                  defconfig
powerpc                   currituck_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc40x_defconfig
arc                          axs103_defconfig
sparc                               defconfig
m68k                             allyesconfig
nios2                            alldefconfig
powerpc                      tqm8xx_defconfig
arm                          badge4_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                   motionpro_defconfig
powerpc                      pcm030_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                  randconfig-c002-20220422
x86_64                        randconfig-c001
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220422
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
mips                 randconfig-c004-20220424
arm                  randconfig-c002-20220424
powerpc              randconfig-c003-20220424
x86_64                        randconfig-c007
i386                          randconfig-c001
s390                 randconfig-c005-20220424
riscv                randconfig-c006-20220424
mips                       rbtx49xx_defconfig
riscv                    nommu_virt_defconfig
powerpc                      walnut_defconfig
mips                         tb0219_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r041-20220422
riscv                randconfig-r042-20220422
hexagon              randconfig-r045-20220422
s390                 randconfig-r044-20220422

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
