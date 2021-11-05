Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD8F446309
	for <lists+devel-acpica@lfdr.de>; Fri,  5 Nov 2021 12:55:52 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 79072100F2253;
	Fri,  5 Nov 2021 04:55:50 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6F255100EB835
	for <devel@acpica.org>; Fri,  5 Nov 2021 04:55:47 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="295329140"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800";
   d="scan'208";a="295329140"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2021 04:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800";
   d="scan'208";a="490300478"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 05 Nov 2021 04:55:45 -0700
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mixou-0007d0-Da; Fri, 05 Nov 2021 11:55:44 +0000
Date: Fri, 05 Nov 2021 19:55:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61851b9d.8faa51Pnt3pJfROV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: DJEKP2DNRGUFISYRV7D66FH2D24X6JSP
X-Message-ID-Hash: DJEKP2DNRGUFISYRV7D66FH2D24X6JSP
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS c00ddaa2e79ed178db8f6c06a77ddc41adc06d9e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DJEKP2DNRGUFISYRV7D66FH2D24X6JSP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: c00ddaa2e79ed178db8f6c06a77ddc41adc06d9e  Merge branch 'thermal-int340x' into bleeding-edge

elapsed time: 924m

configs tested: 95
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211105
m68k                          hp300_defconfig
arm                            qcom_defconfig
ia64                          tiger_defconfig
s390                             allmodconfig
arm                       versatile_defconfig
mips                       lemote2f_defconfig
powerpc                      walnut_defconfig
riscv                            allyesconfig
sh                           se7712_defconfig
powerpc                     asp8347_defconfig
arm                            mmp2_defconfig
sh                   sh7770_generic_defconfig
arm                        oxnas_v6_defconfig
sh                        sh7757lcr_defconfig
arm                    vt8500_v6_v7_defconfig
sh                          r7785rp_defconfig
arm                        cerfcube_defconfig
mips                      maltasmvp_defconfig
arm                  randconfig-c002-20211105
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a012-20211105
x86_64               randconfig-a016-20211105
x86_64               randconfig-a015-20211105
x86_64               randconfig-a013-20211105
x86_64               randconfig-a011-20211105
x86_64               randconfig-a014-20211105
i386                 randconfig-a016-20211105
i386                 randconfig-a014-20211105
i386                 randconfig-a015-20211105
i386                 randconfig-a013-20211105
i386                 randconfig-a011-20211105
i386                 randconfig-a012-20211105
arc                  randconfig-r043-20211105
riscv                randconfig-r042-20211105
s390                 randconfig-r044-20211105
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a004-20211105
i386                 randconfig-a005-20211105
i386                 randconfig-a001-20211105
i386                 randconfig-a003-20211105
i386                 randconfig-a004-20211105
i386                 randconfig-a006-20211105
i386                 randconfig-a002-20211105
hexagon              randconfig-r041-20211105
hexagon              randconfig-r045-20211105

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
