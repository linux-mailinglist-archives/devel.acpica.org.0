Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F689508022
	for <lists+devel-acpica@lfdr.de>; Wed, 20 Apr 2022 06:33:10 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 77DDE100EA927;
	Tue, 19 Apr 2022 21:33:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 40342100EA922
	for <devel@acpica.org>; Tue, 19 Apr 2022 21:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650429185; x=1681965185;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=0Swg8Fj5tNL0EuUxxXtCxT3rXCvYjGGLFsk/WfnqY8Q=;
  b=G6b3b0NCEJ1BjBEUR7aB+zM/Q6LFJTx+7XtNwkiBDmjhCC8GmgoFciV6
   s8gECbvpELFDiHnA/9LzR1rQo5NljdbN08y5cw1XjtB9hzwhPLqBPiHTR
   8kiGdtYZ2n+IY4leU4y1Cy4TnKo3N5rpM23ijfH6ildicfj2h39o4a+wO
   FYpDVzHo7QiA4M8xGvbU65vV8kd+fA4RYn+yiQBqfhO2li4N1L5NxVWI9
   BZLr/SoP309AV06WsSeGLgPO0ISoxzDHQcyGjd/EdqUsNv9e+Smjz+io6
   yExqcyyycoG6qK8Dj9xWcxhU1JodT1Txc/m8FoKYfAp6bF0oub/ynZNdk
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="289039323"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400";
   d="scan'208";a="289039323"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2022 21:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400";
   d="scan'208";a="667709800"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 19 Apr 2022 21:33:02 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nh21V-0006YO-OK;
	Wed, 20 Apr 2022 04:33:01 +0000
Date: Wed, 20 Apr 2022 12:32:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <625f8cc4.yxYXrt09ppdZa9T2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NPMSG4F6GLF4KB3KSFNYTZNGJTC2XDFG
X-Message-ID-Hash: NPMSG4F6GLF4KB3KSFNYTZNGJTC2XDFG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS a8a4f8e63bdfeac9fafe43dcafabc27d8f2e8b8e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NPMSG4F6GLF4KB3KSFNYTZNGJTC2XDFG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: a8a4f8e63bdfeac9fafe43dcafabc27d8f2e8b8e  Merge branch 'pm-tools' into linux-next

elapsed time: 724m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc                       eiger_defconfig
nios2                         10m50_defconfig
arm                          pxa910_defconfig
arm                        cerfcube_defconfig
arm                         at91_dt_defconfig
sh                          sdk7786_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                 linkstation_defconfig
sh                            hp6xx_defconfig
mips                           jazz_defconfig
arc                           tb10x_defconfig
arm                          gemini_defconfig
mips                         cobalt_defconfig
microblaze                          defconfig
sh                           se7722_defconfig
mips                            ar7_defconfig
i386                                defconfig
xtensa                       common_defconfig
sh                            titan_defconfig
sh                             shx3_defconfig
sh                        sh7757lcr_defconfig
csky                                defconfig
sh                        apsh4ad0a_defconfig
ia64                             alldefconfig
sh                          r7785rp_defconfig
arm                        shmobile_defconfig
m68k                        m5307c3_defconfig
arm                         axm55xx_defconfig
arm                        mvebu_v7_defconfig
powerpc                       holly_defconfig
s390                          debug_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220419
arm                  randconfig-c002-20220420
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220419
s390                 randconfig-r044-20220419
arc                  randconfig-r043-20220419
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220419
arm                  randconfig-c002-20220419
i386                          randconfig-c001
riscv                randconfig-c006-20220419
mips                 randconfig-c004-20220419
s390                 randconfig-c005-20220419
mips                           ip28_defconfig
arm                       netwinder_defconfig
arm                     davinci_all_defconfig
mips                       lemote2f_defconfig
powerpc                     ksi8560_defconfig
arm                       mainstone_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      ppc64e_defconfig
arm                         bcm2835_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220420
riscv                randconfig-r042-20220420
hexagon              randconfig-r045-20220420
hexagon              randconfig-r041-20220419
hexagon              randconfig-r045-20220419

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
