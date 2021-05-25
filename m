Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FB538F85F
	for <lists+devel-acpica@lfdr.de>; Tue, 25 May 2021 04:56:43 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 09708100EF276;
	Mon, 24 May 2021 19:56:40 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id ABAD2100EF267
	for <devel@acpica.org>; Mon, 24 May 2021 19:56:37 -0700 (PDT)
IronPort-SDR: ufJRKd9OM8ty1gDACFf4Dnn1XE/DM1/xl/qcXg+c0vtL4CsTJOqvJd4OYdyKCCsIWTLXQu2OJq
 yE+USOjFISrQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="223246915"
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400";
   d="scan'208";a="223246915"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2021 19:56:36 -0700
IronPort-SDR: PmSN1XQ1H8pDr0lOX/rUCCHuPCkM+YnpZ4R4Ryr1hwCs/PmLULsvuABYDOKAC0D5TQ3vHnnIPC
 G3fxN8zCRrPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400";
   d="scan'208";a="546323839"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 24 May 2021 19:56:35 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1llNFC-0001TB-Cd; Tue, 25 May 2021 02:56:34 +0000
Date: Tue, 25 May 2021 10:56:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60ac6756.Ry0ZjKs6/VsAolJM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: KEII5BCWYFDEXJ26I62TRKKU64MHUOD2
X-Message-ID-Hash: KEII5BCWYFDEXJ26I62TRKKU64MHUOD2
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 04e5775c09a2edfe8b310fd22099d46d98e0a5d2
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KEII5BCWYFDEXJ26I62TRKKU64MHUOD2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 04e5775c09a2edfe8b310fd22099d46d98e0a5d2  Merge branch 'acpi-misc' into bleeding-edge

i386-tinyconfig vmlinux size:

=======================================================================
 TOTAL  TEXT                                                           
=======================================================================
     0     0  04e5775c09a2 Merge branch 'acpi-misc' into bleeding-edge 
  -172  -174  c4681547bcce..04e5775c09a2 (ALL COMMITS)                 
=======================================================================

elapsed time: 722m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         shannon_defconfig
powerpc                      ppc64e_defconfig
arm                         assabet_defconfig
powerpc                       eiger_defconfig
microblaze                      mmu_defconfig
powerpc                     skiroot_defconfig
powerpc                      tqm8xx_defconfig
sh                                  defconfig
arm                          gemini_defconfig
powerpc                 linkstation_defconfig
mips                         tb0226_defconfig
powerpc                       maple_defconfig
arm                            qcom_defconfig
sh                   sh7724_generic_defconfig
arm                      integrator_defconfig
arm                        oxnas_v6_defconfig
sh                         microdev_defconfig
parisc                generic-32bit_defconfig
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
i386                 randconfig-a001-20210524
i386                 randconfig-a002-20210524
i386                 randconfig-a005-20210524
i386                 randconfig-a006-20210524
i386                 randconfig-a004-20210524
i386                 randconfig-a003-20210524
i386                 randconfig-a011-20210524
i386                 randconfig-a016-20210524
i386                 randconfig-a015-20210524
i386                 randconfig-a012-20210524
i386                 randconfig-a014-20210524
i386                 randconfig-a013-20210524
x86_64               randconfig-a005-20210524
x86_64               randconfig-a001-20210524
x86_64               randconfig-a006-20210524
x86_64               randconfig-a003-20210524
x86_64               randconfig-a004-20210524
x86_64               randconfig-a002-20210524
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210524
x86_64               randconfig-a013-20210524
x86_64               randconfig-a012-20210524
x86_64               randconfig-a014-20210524
x86_64               randconfig-a016-20210524
x86_64               randconfig-a015-20210524
x86_64               randconfig-a011-20210524

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
