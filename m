Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A74953CCC4C
	for <lists+devel-acpica@lfdr.de>; Mon, 19 Jul 2021 04:35:05 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8FBD6100EBBC0;
	Sun, 18 Jul 2021 19:35:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CB4B4100EBBBB
	for <devel@acpica.org>; Sun, 18 Jul 2021 19:35:01 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="209080429"
X-IronPort-AV: E=Sophos;i="5.84,250,1620716400";
   d="scan'208";a="209080429"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2021 19:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,250,1620716400";
   d="scan'208";a="430481754"
Received: from lkp-server01.sh.intel.com (HELO a467b34d8c10) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 18 Jul 2021 19:34:56 -0700
Received: from kbuild by a467b34d8c10 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m5J7P-0000XJ-HO; Mon, 19 Jul 2021 02:34:55 +0000
Date: Mon, 19 Jul 2021 10:33:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60f4e497.n2VraPPFxD2R/wAJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 3BPPTKN5G6J2MRX4ZQDUMVGKIG5ZYPR6
X-Message-ID-Hash: 3BPPTKN5G6J2MRX4ZQDUMVGKIG5ZYPR6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS ad6b2cc93f8149a12b9603e3bbb8a14d7d2b3ac7
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3BPPTKN5G6J2MRX4ZQDUMVGKIG5ZYPR6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: ad6b2cc93f8149a12b9603e3bbb8a14d7d2b3ac7  Merge branch 'pm-pci' into bleeding-edge

elapsed time: 1467m

configs tested: 93
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       mainstone_defconfig
sh                          landisk_defconfig
arm                            lart_defconfig
mips                            ar7_defconfig
sh                               allmodconfig
mips                           jazz_defconfig
m68k                            mac_defconfig
sh                        sh7757lcr_defconfig
powerpc                      chrp32_defconfig
sh                           se7206_defconfig
arm                        mini2440_defconfig
powerpc                 mpc837x_mds_defconfig
sh                          polaris_defconfig
powerpc                      ep88xc_defconfig
mips                          rb532_defconfig
powerpc                     tqm8560_defconfig
x86_64                            allnoconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
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
x86_64               randconfig-a005-20210718
x86_64               randconfig-a004-20210718
x86_64               randconfig-a002-20210718
x86_64               randconfig-a003-20210718
x86_64               randconfig-a006-20210718
x86_64               randconfig-a001-20210718
i386                 randconfig-a005-20210718
i386                 randconfig-a004-20210718
i386                 randconfig-a006-20210718
i386                 randconfig-a001-20210718
i386                 randconfig-a003-20210718
i386                 randconfig-a002-20210718
i386                 randconfig-a014-20210718
i386                 randconfig-a015-20210718
i386                 randconfig-a011-20210718
i386                 randconfig-a013-20210718
i386                 randconfig-a016-20210718
i386                 randconfig-a012-20210718
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
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210718
x86_64               randconfig-a013-20210718
x86_64               randconfig-a015-20210718
x86_64               randconfig-a012-20210718
x86_64               randconfig-a014-20210718
x86_64               randconfig-a011-20210718
x86_64               randconfig-a016-20210718

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
