Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2620294865
	for <lists+devel-acpica@lfdr.de>; Wed, 21 Oct 2020 08:35:26 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6D0151606A2F6;
	Tue, 20 Oct 2020 23:35:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 041C01594D2B6
	for <devel@acpica.org>; Tue, 20 Oct 2020 23:35:21 -0700 (PDT)
IronPort-SDR: NsDE3unOHSkUgGND0yDJMyn0iIOHbpPnnjwvHevWg2aFnV6IFQ12cTXaYcz1/pPIyEB9VUmjPj
 StPTML+VBE/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="163831784"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400";
   d="scan'208";a="163831784"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2020 23:35:21 -0700
IronPort-SDR: /9N1i2KD4BKs5GXi0nyMB4qjkjPuhmdnaNSYwXsuROeM/Zkngw5Ny+EUcboi9fqRDCZBXsnzti
 O2Xr76wDiIUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400";
   d="scan'208";a="301926330"
Received: from lkp-server01.sh.intel.com (HELO 2c14ddb8ab9c) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 20 Oct 2020 23:35:19 -0700
Received: from kbuild by 2c14ddb8ab9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kV7iR-00000e-83; Wed, 21 Oct 2020 06:35:19 +0000
Date: Wed, 21 Oct 2020 14:34:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f8fd682.W/nA/YzJWu3Epz3j%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: R2HMA4BTQKTVDYP5RAEUZVWADNDPDKZR
X-Message-ID-Hash: R2HMA4BTQKTVDYP5RAEUZVWADNDPDKZR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS c4fc26703dbdd40a48d67bdb9fefd5b1607278a6
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/R2HMA4BTQKTVDYP5RAEUZVWADNDPDKZR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: c4fc26703dbdd40a48d67bdb9fefd5b1607278a6  Merge branch 'pm-core' into bleeding-edge

elapsed time: 722m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                         tb0219_defconfig
powerpc                          g5_defconfig
m68k                        mvme147_defconfig
arm                  colibri_pxa270_defconfig
mips                  decstation_64_defconfig
mips                         db1xxx_defconfig
mips                           mtx1_defconfig
arm                       netwinder_defconfig
arm                          ep93xx_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7722_defconfig
m68k                        mvme16x_defconfig
mips                     cu1000-neo_defconfig
powerpc                      bamboo_defconfig
arc                            hsdk_defconfig
powerpc                     mpc83xx_defconfig
arm                            zeus_defconfig
xtensa                         virt_defconfig
xtensa                          iss_defconfig
xtensa                  cadence_csp_defconfig
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
i386                 randconfig-a002-20201020
i386                 randconfig-a005-20201020
i386                 randconfig-a003-20201020
i386                 randconfig-a001-20201020
i386                 randconfig-a006-20201020
i386                 randconfig-a004-20201020
x86_64               randconfig-a011-20201020
x86_64               randconfig-a013-20201020
x86_64               randconfig-a016-20201020
x86_64               randconfig-a015-20201020
x86_64               randconfig-a012-20201020
x86_64               randconfig-a014-20201020
i386                 randconfig-a016-20201020
i386                 randconfig-a014-20201020
i386                 randconfig-a015-20201020
i386                 randconfig-a013-20201020
i386                 randconfig-a012-20201020
i386                 randconfig-a011-20201020
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
x86_64               randconfig-a001-20201020
x86_64               randconfig-a002-20201020
x86_64               randconfig-a003-20201020
x86_64               randconfig-a006-20201020
x86_64               randconfig-a005-20201020
x86_64               randconfig-a004-20201020

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
