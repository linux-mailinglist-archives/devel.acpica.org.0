Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A794C476A0E
	for <lists+devel-acpica@lfdr.de>; Thu, 16 Dec 2021 06:59:54 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8B6ED100EA917;
	Wed, 15 Dec 2021 21:59:52 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BE204100EBB7D
	for <devel@acpica.org>; Wed, 15 Dec 2021 21:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639634390; x=1671170390;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=7Pts2vllcXRGODxvtjcygX5i28dTbNFsfyPTD1UPfQA=;
  b=WBdoyw7CldrViqtOPboqSFKbcs1qVuoB++b0ltlQb1ij/N9QDjnvlp46
   PHqujClz3XNP5m63qyU4lLRx2D52ANSzqWbmeVKhSiO/2225ubVaUCoam
   NjQAfRXYoFz+AZtVqhK9lw94t9eKLQHzqkp5NCePskVJI+6C2fYew4HaG
   +d8ixMWbZB2lQsld5NTimg9bS2oc2p6xcZzD6NanBfmDgMK5J6AKu8bS5
   tLi/V3X3xKTufPI9BuTq0rHZGguxKGtSuzsnOM7XhZaCxIQRX1r+PNzak
   nTPh/Inj5yeg5buP0hELBV57F8vS3V9LEvSXZhYEL5+WscCrJZ8cQpel1
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="226269927"
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600";
   d="scan'208";a="226269927"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2021 21:59:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600";
   d="scan'208";a="506142080"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 15 Dec 2021 21:59:43 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mxjnn-0002oY-IL; Thu, 16 Dec 2021 05:59:39 +0000
Date: Thu, 16 Dec 2021 13:58:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61bad59f.DvT915NBPrMwrPVN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: HP23QJ237IC7YGUYGFIXBU43MOSCE6HR
X-Message-ID-Hash: HP23QJ237IC7YGUYGFIXBU43MOSCE6HR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS aaa3a53c4b473a78e8cc8682c22030674d48fe5f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HP23QJ237IC7YGUYGFIXBU43MOSCE6HR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: aaa3a53c4b473a78e8cc8682c22030674d48fe5f  Merge branch 'acpi-tables' into bleeding-edge

elapsed time: 728m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
powerpc                      pasemi_defconfig
arm                          exynos_defconfig
arm                          lpd270_defconfig
powerpc                      cm5200_defconfig
m68k                       m5275evb_defconfig
arm                            dove_defconfig
powerpc                        cell_defconfig
m68k                        stmark2_defconfig
sh                          lboxre2_defconfig
m68k                        m5407c3_defconfig
mips                           jazz_defconfig
powerpc                     asp8347_defconfig
m68k                        mvme147_defconfig
xtensa                  nommu_kc705_defconfig
arm                         shannon_defconfig
sh                          landisk_defconfig
powerpc                    adder875_defconfig
mips                      pic32mzda_defconfig
arm                            mmp2_defconfig
arm                  randconfig-c002-20211214
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a001-20211214
x86_64               randconfig-a002-20211214
x86_64               randconfig-a003-20211214
x86_64               randconfig-a004-20211214
x86_64               randconfig-a006-20211214
x86_64               randconfig-a005-20211214
i386                 randconfig-a001-20211214
i386                 randconfig-a002-20211214
i386                 randconfig-a005-20211214
i386                 randconfig-a003-20211214
i386                 randconfig-a006-20211214
i386                 randconfig-a004-20211214
arc                  randconfig-r043-20211214
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a011-20211214
x86_64               randconfig-a014-20211214
x86_64               randconfig-a012-20211214
x86_64               randconfig-a013-20211214
x86_64               randconfig-a016-20211214
x86_64               randconfig-a015-20211214
i386                 randconfig-a013-20211214
i386                 randconfig-a011-20211214
i386                 randconfig-a016-20211214
i386                 randconfig-a014-20211214
i386                 randconfig-a015-20211214
i386                 randconfig-a012-20211214
hexagon              randconfig-r045-20211214
s390                 randconfig-r044-20211214
riscv                randconfig-r042-20211214
hexagon              randconfig-r041-20211214

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
