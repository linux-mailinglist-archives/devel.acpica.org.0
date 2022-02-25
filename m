Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EA34C40E1
	for <lists+devel-acpica@lfdr.de>; Fri, 25 Feb 2022 10:04:05 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 719CB100F3FB0;
	Fri, 25 Feb 2022 01:04:03 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BF71A100F3FAF
	for <devel@acpica.org>; Fri, 25 Feb 2022 01:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645779841; x=1677315841;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=UAdv8sGQlefjIXGs5osDQgt20WFAvQ4dLxD1UwEgTJs=;
  b=EMGR9DFju6eQNGV34ry1fuxXRtW7mqDE6/qixQZNO8ANACcqm6YPsgPA
   VQnE8YcSpedxs14Q5nnfnVY02OT1rlHcYTL3/we1JMIbgYcGdlefo9mYN
   SPCO8aLoBaTdAPXj419BJU7It7pYXich8ijAhJhtT9LOWBTuwRQSwXjRj
   YahuI/ZuoutuTapthnRr9OfVIo10wfVECZUzxz3Gi4qzYjQgH2RRzFd9V
   PhuXqI9qoRrn6+GYOjpoKqsKci7IjXEYD9hzQ1RNi10c0Fl7OZP+AQGqc
   uhfL3FIElt8+KZ+M58MlecJVusFNsg3wBPwxXI4u8+y+/Et4CVomR4YZ7
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="250039169"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400";
   d="scan'208";a="250039169"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2022 01:04:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400";
   d="scan'208";a="628788472"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2022 01:03:58 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nNWW6-00047k-4N; Fri, 25 Feb 2022 09:03:58 +0000
Date: Fri, 25 Feb 2022 17:03:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62189b44.QBrVbFGRLXJ9SScw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: WI7PWO3CF2PHDKO4CL7JYFYOAEUHTW7Y
X-Message-ID-Hash: WI7PWO3CF2PHDKO4CL7JYFYOAEUHTW7Y
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD REGRESSION 8276cbee5a52543c614a1e1bc2624188d5970848
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WI7PWO3CF2PHDKO4CL7JYFYOAEUHTW7Y/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 8276cbee5a52543c614a1e1bc2624188d5970848  Merge branch 'thermal-int340x-fixes' into bleeding-edge

Error/Warning reports:

https://lore.kernel.org/llvm/202202250758.oDiHyXAy-lkp@intel.com

Error/Warning in current branch:

arch/x86/include/asm/pci_x86.h:133:19: error: expected ';' after top level declarator
arch/x86/include/asm/pci_x86.h:138:12: error: redeclaration of '__init' with a different type: 'int' vs 'void'
arch/x86/include/asm/pci_x86.h:174:33: error: redeclaration of '__init' with a different type: 'struct pci_mmcfg_region *' vs 'void'

possible Error/Warning in current branch (please contact us if interested):

arch/x86/include/asm/pci_x86.h:133:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'dmi_check_pciprobe'
arch/x86/include/asm/pci_x86.h:134:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'dmi_check_skip_isa_align'
arch/x86/include/asm/pci_x86.h:138:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_acpi_init'
arch/x86/include/asm/pci_x86.h:145:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pcibios_irq_init'
arch/x86/include/asm/pci_x86.h:146:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pcibios_init'
arch/x86/include/asm/pci_x86.h:166:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_mmcfg_arch_init'
arch/x86/include/asm/pci_x86.h:167:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_mmcfg_arch_free'
arch/x86/include/asm/pci_x86.h:174:40: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_mmconfig_add'
arch/x86/include/asm/pci_x86.h:97:8: error: unknown type name 'raw_spinlock_t'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-a003
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
|-- i386-randconfig-c001
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
|-- i386-randconfig-s001
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
|-- i386-randconfig-s002
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
|-- x86_64-alldefconfig
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
|-- x86_64-randconfig-c002
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
|-- x86_64-randconfig-s021
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
|   `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t
`-- x86_64-randconfig-s022
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_pciprobe
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-dmi_check_skip_isa_align
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_acpi_init
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_free
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmcfg_arch_init
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pci_mmconfig_add
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_init
    |-- arch-x86-include-asm-pci_x86.h:error:expected-asm-or-__attribute__-before-pcibios_irq_init
    `-- arch-x86-include-asm-pci_x86.h:error:unknown-type-name-raw_spinlock_t

clang_recent_errors
|-- i386-randconfig-a002
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- i386-randconfig-a004
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- i386-randconfig-a006
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- i386-randconfig-a011
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- i386-randconfig-a013
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- i386-randconfig-a015
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- x86_64-randconfig-a001
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
|-- x86_64-randconfig-a005
|   |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
|   |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
|   `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void
`-- x86_64-randconfig-a012
    |-- arch-x86-include-asm-pci_x86.h:error:expected-after-top-level-declarator
    |-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:int-vs-void
    `-- arch-x86-include-asm-pci_x86.h:error:redeclaration-of-__init-with-a-different-type:struct-pci_mmcfg_region-vs-void

elapsed time: 731m

configs tested: 110
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001
microblaze                      mmu_defconfig
powerpc                     sequoia_defconfig
arm                        spear6xx_defconfig
powerpc                  iss476-smp_defconfig
x86_64                           alldefconfig
arc                      axs103_smp_defconfig
m68k                          atari_defconfig
arm                          iop32x_defconfig
powerpc                       eiger_defconfig
sh                   sh7724_generic_defconfig
mips                       bmips_be_defconfig
xtensa                       common_defconfig
sh                          sdk7780_defconfig
arm                  randconfig-c002-20220224
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
arc                  randconfig-r043-20220223
s390                 randconfig-r044-20220224
arc                  randconfig-r043-20220224
riscv                randconfig-r042-20220224
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc              randconfig-c003-20220225
mips                 randconfig-c004-20220225
arm                  randconfig-c002-20220225
s390                 randconfig-c005-20220225
riscv                randconfig-c006-20220225
mips                        omega2p_defconfig
mips                   sb1250_swarm_defconfig
mips                           ip28_defconfig
arm                          ixp4xx_defconfig
powerpc                          g5_defconfig
mips                          rm200_defconfig
mips                          malta_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220223
hexagon              randconfig-r045-20220224
s390                 randconfig-r044-20220223
riscv                randconfig-r042-20220223
hexagon              randconfig-r041-20220224
hexagon              randconfig-r041-20220223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
