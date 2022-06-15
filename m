Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E368B54C2DF
	for <lists+devel-acpica@lfdr.de>; Wed, 15 Jun 2022 09:49:16 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E9AA4100F3FB4;
	Wed, 15 Jun 2022 00:49:13 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 79DAD100F3FB3
	for <devel@acpica.org>; Wed, 15 Jun 2022 00:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655279351; x=1686815351;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=TsvfqySFBOOtkbcV9wmU48iaSI7/s1Hm9iaZc/71HFc=;
  b=RcdCwEQ1zeZCVEiNXwCzNNh9kNwMiSKmo4X4W67iTaSXIXloMRHMSDYy
   8207UrLBQFWw+eUiAzKF4ixjJOJVCzq72kIm3QEtuPzV3cIaYFUkfzEOJ
   qkrYGdx4lZe1lexKCzTw+4nGcFwbv6ZX93MW00yce58McQVCi5hRTKnXK
   GFKrWcI+v/b/zb515ebGsdDC2OlHpacqU0R/v4EzMbTZR0r2EeAukWt74
   jmnsQX5FhLpnERsKvp8x1aStRqIqwtH/g94uwOIddz92rC3u7g5J3rWPN
   eqo+vwCP+wNaBoOibijZz3hLxdHERya7hW1orIzYuGfZZg+ogRtmZigff
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279912159"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600";
   d="scan'208";a="279912159"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2022 00:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600";
   d="scan'208";a="535934298"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 15 Jun 2022 00:49:06 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o1Nlx-000Mg3-Bb;
	Wed, 15 Jun 2022 07:49:05 +0000
Date: Wed, 15 Jun 2022 15:48:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62a98eb9.R+wTNppuvg2Y8zxN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ND4QEFG2A66VZW3VJBNC6CXKDOR7TDAI
X-Message-ID-Hash: ND4QEFG2A66VZW3VJBNC6CXKDOR7TDAI
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 3904c06c5e7dd1494d2feb6cdcd850cf2e832432
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ND4QEFG2A66VZW3VJBNC6CXKDOR7TDAI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3904c06c5e7dd1494d2feb6cdcd850cf2e832432  Merge branch 'thermal-core' into bleeding-edge

elapsed time: 721m

configs tested: 83
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
parisc64                            defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a014-20220613
x86_64               randconfig-a012-20220613
x86_64               randconfig-a011-20220613
x86_64               randconfig-a013-20220613
x86_64               randconfig-a016-20220613
x86_64               randconfig-a015-20220613
i386                 randconfig-a013-20220613
i386                 randconfig-a011-20220613
i386                 randconfig-a014-20220613
i386                 randconfig-a012-20220613
i386                 randconfig-a016-20220613
i386                 randconfig-a015-20220613
arc                  randconfig-r043-20220613
riscv                randconfig-r042-20220613
s390                 randconfig-r044-20220613
riscv                             allnoconfig
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-a002-20220613
x86_64               randconfig-a004-20220613
x86_64               randconfig-a001-20220613
x86_64               randconfig-a003-20220613
x86_64               randconfig-a005-20220613
x86_64               randconfig-a006-20220613
i386                 randconfig-a002-20220613
i386                 randconfig-a003-20220613
i386                 randconfig-a001-20220613
i386                 randconfig-a005-20220613
i386                 randconfig-a004-20220613
i386                 randconfig-a006-20220613
hexagon              randconfig-r041-20220613
hexagon              randconfig-r045-20220613

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
