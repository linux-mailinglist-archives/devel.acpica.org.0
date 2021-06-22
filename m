Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1FE3AFCC9
	for <lists+devel-acpica@lfdr.de>; Tue, 22 Jun 2021 07:55:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2B075100EBB6A;
	Mon, 21 Jun 2021 22:55:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 70BE8100EBB61
	for <devel@acpica.org>; Mon, 21 Jun 2021 22:55:53 -0700 (PDT)
IronPort-SDR: UhRLqbu3r7lSy6XAlq0L6DRtGyLiXkarZ50GhGzQ95E6yxy0Eh8XyqVCi1LUbw4vq5zHfQcYpt
 NXapiQYXiFig==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="207030879"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800";
   d="scan'208";a="207030879"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 22:55:52 -0700
IronPort-SDR: 7hFnf1qoslTTGHd8ClT4nUyagIkCjmzPI5u2tTfD4Cq5MEf8HteoSwEAWSt2v20VpPlhTIbJWg
 iHeAfmOiwUPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800";
   d="scan'208";a="623352700"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 21 Jun 2021 22:55:51 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvZO2-0004yM-Cc; Tue, 22 Jun 2021 05:55:50 +0000
Date: Tue, 22 Jun 2021 13:55:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60d17b5e.8mi8BhZCJqJyUlzM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: TG2I3UVYCLVWBZOTKAVIJJY2ZEOTWDR3
X-Message-ID-Hash: TG2I3UVYCLVWBZOTKAVIJJY2ZEOTWDR3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS be017033bc1a3c2373e1266c4934de79097da694
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TG2I3UVYCLVWBZOTKAVIJJY2ZEOTWDR3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: be017033bc1a3c2373e1266c4934de79097da694  Merge branches 'acpi-ec' and 'acpi-scan' into bleeding-edge

elapsed time: 721m

configs tested: 97
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
mips                      pic32mzda_defconfig
arm                   milbeaut_m10v_defconfig
arm                         lpc32xx_defconfig
nios2                         10m50_defconfig
arm                             mxs_defconfig
powerpc                     sequoia_defconfig
mips                          ath79_defconfig
sh                 kfr2r09-romimage_defconfig
sh                ecovec24-romimage_defconfig
ia64                        generic_defconfig
powerpc                      ppc44x_defconfig
arm                            qcom_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                        jmr3927_defconfig
mips                       bmips_be_defconfig
arm                          badge4_defconfig
mips                            e55_defconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
x86_64               randconfig-a002-20210621
x86_64               randconfig-a001-20210621
x86_64               randconfig-a005-20210621
x86_64               randconfig-a003-20210621
x86_64               randconfig-a004-20210621
x86_64               randconfig-a006-20210621
i386                 randconfig-a002-20210621
i386                 randconfig-a001-20210621
i386                 randconfig-a003-20210621
i386                 randconfig-a006-20210621
i386                 randconfig-a005-20210621
i386                 randconfig-a004-20210621
i386                 randconfig-a011-20210621
i386                 randconfig-a014-20210621
i386                 randconfig-a013-20210621
i386                 randconfig-a015-20210621
i386                 randconfig-a012-20210621
i386                 randconfig-a016-20210621
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
x86_64               randconfig-b001-20210621
x86_64               randconfig-a012-20210621
x86_64               randconfig-a016-20210621
x86_64               randconfig-a015-20210621
x86_64               randconfig-a014-20210621
x86_64               randconfig-a013-20210621
x86_64               randconfig-a011-20210621

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
