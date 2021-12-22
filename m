Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D757847CC75
	for <lists+devel-acpica@lfdr.de>; Wed, 22 Dec 2021 06:21:44 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C5E4A100EAB62;
	Tue, 21 Dec 2021 21:21:42 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0BEA5100EB34F
	for <devel@acpica.org>; Tue, 21 Dec 2021 21:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640150501; x=1671686501;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=VwNmXX+4BJ1AN/HJF6sCMc+Q1DizaL01l6oxT4tLGYQ=;
  b=TTYn/77E1jeMjsN76VFu2eSmM9CMyLYK074TvS7LmjhXyWY6lmepTLcR
   FG6MhIeMMX764n/mkTvhqDn1L5vVQW+i2IjC6cSCsZL7o35xhzeWFQEfi
   SQ9dFJNfriPLIRvojWupIcyW3+m61sS4WMOoHY4A/8VxaTPhcvf2xvFDS
   YhNKW28S8QjO6LxTOn54aZRSWuiHHRW+7p6vZyDrhNw6fGtNfadw82nIg
   WwbWJNxiNgzwS+yd85RiLXQyTtqUC0+wCXxZi4XbS3G7sytH/cm3y3hvH
   h0HYUSPA9uDf9nHYNGmzqOHpCd4Je3Goq6XQIvEcZC1EeaQaf0VQpqCex
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220559141"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600";
   d="scan'208";a="220559141"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Dec 2021 21:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600";
   d="scan'208";a="617014112"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 21 Dec 2021 21:21:35 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mzu4E-00009I-VD; Wed, 22 Dec 2021 05:21:34 +0000
Date: Wed, 22 Dec 2021 13:21:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61c2b5c5.9H1FqZT2VbxijcVs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: XMGVUBOP2QDJNDOKTYMWG6HIRFDGPMBO
X-Message-ID-Hash: XMGVUBOP2QDJNDOKTYMWG6HIRFDGPMBO
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS bd982f30deb7baab86095fc89f33954f10dcc387
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XMGVUBOP2QDJNDOKTYMWG6HIRFDGPMBO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: bd982f30deb7baab86095fc89f33954f10dcc387  Merge branches 'thermal-tools' and 'thermal-int340x' into linux-next

elapsed time: 722m

configs tested: 137
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       imx_v4_v5_defconfig
arm                          exynos_defconfig
riscv                               defconfig
powerpc                 mpc837x_mds_defconfig
arm                          pxa910_defconfig
mips                        bcm63xx_defconfig
sh                             espt_defconfig
mips                     loongson1c_defconfig
arm                        realview_defconfig
powerpc                  storcenter_defconfig
sh                        edosk7705_defconfig
arm                         cm_x300_defconfig
mips                malta_qemu_32r6_defconfig
sh                           se7712_defconfig
m68k                       m5275evb_defconfig
powerpc                      ppc44x_defconfig
arm                              alldefconfig
mips                         rt305x_defconfig
mips                           gcw0_defconfig
mips                       bmips_be_defconfig
powerpc                     skiroot_defconfig
mips                      maltaaprp_defconfig
arm                          ixp4xx_defconfig
mips                      bmips_stb_defconfig
sh                            shmin_defconfig
um                               alldefconfig
nds32                             allnoconfig
sh                           se7206_defconfig
mips                        jmr3927_defconfig
mips                       capcella_defconfig
powerpc                 canyonlands_defconfig
sh                        dreamcast_defconfig
mips                           ci20_defconfig
m68k                            q40_defconfig
powerpc                   lite5200b_defconfig
arm                          pcm027_defconfig
powerpc                      katmai_defconfig
arm                         assabet_defconfig
arm                             pxa_defconfig
powerpc                     pseries_defconfig
m68k                          sun3x_defconfig
sparc64                             defconfig
powerpc                     tqm8540_defconfig
um                                  defconfig
sh                          urquell_defconfig
sh                         microdev_defconfig
arm                            mps2_defconfig
sh                         ecovec24_defconfig
arm                      jornada720_defconfig
arm                            zeus_defconfig
powerpc                    amigaone_defconfig
s390                             alldefconfig
powerpc                     mpc83xx_defconfig
openrisc                    or1ksim_defconfig
sh                           se7721_defconfig
arm                  randconfig-c002-20211220
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
i386                 randconfig-a006-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a005-20211220
i386                 randconfig-a001-20211220
arc                  randconfig-r043-20211220
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20211220
x86_64               randconfig-a015-20211220
x86_64               randconfig-a014-20211220
x86_64               randconfig-a012-20211220
x86_64               randconfig-a011-20211220
x86_64               randconfig-a016-20211220
i386                 randconfig-a012-20211220
i386                 randconfig-a011-20211220
i386                 randconfig-a014-20211220
i386                 randconfig-a016-20211220
i386                 randconfig-a015-20211220
i386                 randconfig-a013-20211220
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
