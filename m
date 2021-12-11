Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B55094712A2
	for <lists+devel-acpica@lfdr.de>; Sat, 11 Dec 2021 08:55:43 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3EBFB100F3FB5;
	Fri, 10 Dec 2021 23:55:41 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 08432100F226A
	for <devel@acpica.org>; Fri, 10 Dec 2021 23:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639209339; x=1670745339;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=k7mHAt/wDQCOV5jAvPtg3s8ULcf7c4EYgnHsKQMp6HY=;
  b=ZgXoZlGPTB4bW4SPpTSekDby+Gl4TuY2opHL5+SZilcxUiKXETB5W2PS
   vmwalPUIIIUmYw8VDHCS1iRfLePStOk5A5g9VzPFOc9ZGp98mHqeC7kPU
   du9lXT1p9QhycKQ9FhwIvA5ukbJqA8BU7I8/dbNctdZW+qXrgYGD9HD80
   CXQxF1oeBLc0e0jYYut3sH0ERDM15vdh1GC1Gn8PrX9TT30b/b4azt26C
   J0P8s40mAQhK9pAbC9lUcAZomDcr/K/H//uzEjT1cp1S8iQ51bUF04k2X
   5xJmARGQaBBZKh1Zhva1OR5qQRgqqrtPVxv0I1RXlpF+ZS3eDE9E6WpEL
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="238323414"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600";
   d="scan'208";a="238323414"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2021 23:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600";
   d="scan'208";a="462818009"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 10 Dec 2021 23:55:34 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mvxED-0004Ja-SI; Sat, 11 Dec 2021 07:55:33 +0000
Date: Sat, 11 Dec 2021 15:55:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61b45955.K5i5g4HKe9BjKT+Y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: CUQFRLYIEWIIT3AE7GYNCGEEDBVYSSFN
X-Message-ID-Hash: CUQFRLYIEWIIT3AE7GYNCGEEDBVYSSFN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS f1f42573b6f39aa35a5d07079189c5c242180687
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CUQFRLYIEWIIT3AE7GYNCGEEDBVYSSFN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: f1f42573b6f39aa35a5d07079189c5c242180687  Merge branch 'pm-sleep' into linux-next

elapsed time: 721m

configs tested: 170
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211210
mips                 randconfig-c004-20211210
sh                          r7780mp_defconfig
powerpc                          g5_defconfig
arm                  colibri_pxa270_defconfig
m68k                                defconfig
openrisc                         alldefconfig
powerpc                       ebony_defconfig
arm                           h5000_defconfig
mips                         tb0287_defconfig
mips                  decstation_64_defconfig
sh                      rts7751r2d1_defconfig
arm                       aspeed_g5_defconfig
sparc64                             defconfig
arm                          ixp4xx_defconfig
sh                           se7780_defconfig
powerpc                   currituck_defconfig
powerpc                     tqm8540_defconfig
powerpc                     ppa8548_defconfig
sh                          rsk7264_defconfig
powerpc                     tqm5200_defconfig
mips                     cu1830-neo_defconfig
powerpc                 xes_mpc85xx_defconfig
ia64                        generic_defconfig
arm                           sama7_defconfig
powerpc                       holly_defconfig
powerpc                   motionpro_defconfig
powerpc                    mvme5100_defconfig
sh                   sh7770_generic_defconfig
powerpc                        icon_defconfig
mips                       rbtx49xx_defconfig
arm                      footbridge_defconfig
mips                        workpad_defconfig
sh                          sdk7786_defconfig
powerpc                      bamboo_defconfig
h8300                       h8s-sim_defconfig
i386                             alldefconfig
arc                    vdk_hs38_smp_defconfig
mips                    maltaup_xpa_defconfig
mips                         cobalt_defconfig
mips                        bcm63xx_defconfig
xtensa                generic_kc705_defconfig
m68k                            q40_defconfig
arc                           tb10x_defconfig
arc                     nsimosci_hs_defconfig
nios2                         3c120_defconfig
arm                       multi_v4t_defconfig
sh                           se7619_defconfig
arm                      integrator_defconfig
mips                     loongson2k_defconfig
um                             i386_defconfig
powerpc                     sequoia_defconfig
arm                         lpc32xx_defconfig
microblaze                      mmu_defconfig
sh                        edosk7705_defconfig
m68k                         amcore_defconfig
parisc                generic-32bit_defconfig
powerpc                     kmeter1_defconfig
arm                        trizeps4_defconfig
sh                             sh03_defconfig
ia64                                defconfig
arm64                            alldefconfig
arm                       imx_v4_v5_defconfig
powerpc                  mpc866_ads_defconfig
m68k                          amiga_defconfig
m68k                          sun3x_defconfig
parisc                           allyesconfig
powerpc                 mpc8540_ads_defconfig
m68k                       bvme6000_defconfig
powerpc                      ppc40x_defconfig
arm                  colibri_pxa300_defconfig
arm                         socfpga_defconfig
sparc                       sparc64_defconfig
x86_64                           allyesconfig
mips                  cavium_octeon_defconfig
powerpc                      chrp32_defconfig
m68k                        m5407c3_defconfig
arc                            hsdk_defconfig
openrisc                  or1klitex_defconfig
powerpc                     pq2fads_defconfig
alpha                            alldefconfig
arm                       netwinder_defconfig
powerpc                     tqm8541_defconfig
arm                          pxa3xx_defconfig
riscv                            alldefconfig
m68k                       m5275evb_defconfig
xtensa                          iss_defconfig
arm                  randconfig-c002-20211210
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
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
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
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
x86_64               randconfig-a006-20211210
x86_64               randconfig-a005-20211210
x86_64               randconfig-a001-20211210
x86_64               randconfig-a002-20211210
x86_64               randconfig-a003-20211210
x86_64               randconfig-a004-20211210
i386                 randconfig-a001-20211210
i386                 randconfig-a002-20211210
i386                 randconfig-a005-20211210
i386                 randconfig-a003-20211210
i386                 randconfig-a006-20211210
i386                 randconfig-a004-20211210
arc                  randconfig-r043-20211210
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20211210
x86_64               randconfig-c007-20211210
riscv                randconfig-c006-20211210
mips                 randconfig-c004-20211210
i386                 randconfig-c001-20211210
s390                 randconfig-c005-20211210
powerpc              randconfig-c003-20211210
x86_64               randconfig-a011-20211210
x86_64               randconfig-a012-20211210
x86_64               randconfig-a014-20211210
x86_64               randconfig-a013-20211210
x86_64               randconfig-a016-20211210
x86_64               randconfig-a015-20211210
i386                 randconfig-a013-20211210
i386                 randconfig-a011-20211210
i386                 randconfig-a016-20211210
i386                 randconfig-a014-20211210
i386                 randconfig-a015-20211210
i386                 randconfig-a012-20211210
hexagon              randconfig-r045-20211210
riscv                randconfig-r042-20211210
s390                 randconfig-r044-20211210
hexagon              randconfig-r041-20211210

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
