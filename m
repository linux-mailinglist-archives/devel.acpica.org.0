Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D035160F9
	for <lists+devel-acpica@lfdr.de>; Sun,  1 May 2022 01:23:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AC069100EA906;
	Sat, 30 Apr 2022 16:23:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 73157100EB839
	for <devel@acpica.org>; Sat, 30 Apr 2022 16:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1651361026; x=1682897026;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=LcKoOFAObsyAD/ndPxOCPXL8Nf7equVeddrUCIIimX4=;
  b=VyynqogTgXttL/Fs6uOvqW8g31Xn8ImU87FijOD2tNf+/tmS07iNyIGQ
   J+igOf+H8yPZjzLMkI99cO9SGqgbNri6324kBBJ70vpY6OHEPk7VVLnjR
   dzq7pnIN7mxeiZk50f1cCFH5NoLlzJMmcZ6qjfYxdyJw04Ebty4MAak0R
   +YOvpuKEhl1BVFevv1CZ+lL5lU8nlTtBq+kmoMsOt/eyZ4gjUVQZ+fPVh
   qACSQRdKNM28hLcrjLGBYujcI3XHIMtgpBjNGKATstmUf98O4tbHbtEsJ
   Eql9NfPRKZcTVYBelAeFGq5d/Xk+10uwuU1EmUlMmGhaCYJzDaYHHj1Z1
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10333"; a="246847629"
X-IronPort-AV: E=Sophos;i="5.91,189,1647327600";
   d="scan'208";a="246847629"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2022 16:23:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,189,1647327600";
   d="scan'208";a="707070898"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2022 16:23:43 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nkwRC-0007m0-Q6;
	Sat, 30 Apr 2022 23:23:42 +0000
Date: Sun, 01 May 2022 07:22:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <626dc4c9.OQFd63oOBHa9VwE6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: Z3GE5LCGFITBXJL6CBWJAZWQFY5QHYYO
X-Message-ID-Hash: Z3GE5LCGFITBXJL6CBWJAZWQFY5QHYYO
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS f2febeef358161ef4f8055451778e19fc78d429c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Z3GE5LCGFITBXJL6CBWJAZWQFY5QHYYO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: f2febeef358161ef4f8055451778e19fc78d429c  Merge branch 'acpi-osl' into bleeding-edge

elapsed time: 3473m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                           ci20_defconfig
sh                        sh7763rdp_defconfig
powerpc                        cell_defconfig
parisc                generic-64bit_defconfig
arm                         cm_x300_defconfig
arm                         nhk8815_defconfig
mips                         cobalt_defconfig
ia64                             alldefconfig
parisc                              defconfig
sh                          lboxre2_defconfig
arc                              alldefconfig
sh                               j2_defconfig
arm                        multi_v7_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220428
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
sh                               allmodconfig
arc                                 defconfig
h8300                            allyesconfig
xtensa                           allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc64                            defconfig
s390                                defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220428
riscv                             allnoconfig
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
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
x86_64                           rhel-8.3-syz

clang tested configs:
mips                 randconfig-c004-20220428
x86_64                        randconfig-c007
arm                  randconfig-c002-20220428
i386                          randconfig-c001
powerpc              randconfig-c003-20220428
s390                 randconfig-c005-20220428
riscv                randconfig-c006-20220428
arm                       spear13xx_defconfig
mips                        workpad_defconfig
arm                          collie_defconfig
mips                     loongson2k_defconfig
powerpc                     tqm8540_defconfig
arm                         orion5x_defconfig
arm                         lpc32xx_defconfig
arm                        magician_defconfig
powerpc                 mpc8272_ads_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220428
hexagon              randconfig-r045-20220428
riscv                randconfig-r042-20220428
s390                 randconfig-r044-20220428

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
