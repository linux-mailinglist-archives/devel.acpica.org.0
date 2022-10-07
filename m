Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 975015F7537
	for <lists+devel-acpica@lfdr.de>; Fri,  7 Oct 2022 10:21:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 93A51100EAAE8;
	Fri,  7 Oct 2022 01:21:21 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A0A26100EAB71
	for <devel@acpica.org>; Fri,  7 Oct 2022 01:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665130878; x=1696666878;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=nIFSOQ0AeD8J+eyw5v6soPd9iUsTxrc8o6p2KfkLkDI=;
  b=S0I39iGQcTeZJOPZsnjHDRxE6DCt1uhsEoBMlx/7LIHVWcX5qSGJepLi
   nl6rGqr0/rtuekn1FWB5XFKWh/759iywObUL8DdwfSHi5ZP7mom5bta9z
   7hsNseyGjLcwJ98hRSLVhjQWXzsXMRCXUuDqt/8c9L7w7S3ZJW58BijCu
   S5QRYTynvGCO0dhS063SIKrn+i7CoRXUCYmh2g9RU/L+A6Af+qZc5BaOS
   K1UZNuPrSOt9DwkyyqlS/S08FhIjX3si3EfG8VvWxRtL2i0S+toJCs/EX
   Qu//M2AGs75zgVDdPtdmlK89e03XxDrFGmw7ls57vRlQmn/Ch+SUJQl5L
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="290946702"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800";
   d="scan'208";a="290946702"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2022 01:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="800226070"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800";
   d="scan'208";a="800226070"
Received: from lkp-server01.sh.intel.com (HELO 3c15167049b7) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 07 Oct 2022 01:21:16 -0700
Received: from kbuild by 3c15167049b7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ogibb-0000vn-2V;
	Fri, 07 Oct 2022 08:21:15 +0000
Date: Fri, 07 Oct 2022 16:20:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <633fe141.cfECPPSqPYg7Z/F8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: T5XDBJLDZPY6XM3UPCSMYBND7NBWXGXB
X-Message-ID-Hash: T5XDBJLDZPY6XM3UPCSMYBND7NBWXGXB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS fa158c045ecf464a6b553980e461db469dc0392f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/T5XDBJLDZPY6XM3UPCSMYBND7NBWXGXB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: fa158c045ecf464a6b553980e461db469dc0392f  Merge branch 'acpi-thermal' into linux-next

elapsed time: 725m

configs tested: 123
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
um                             i386_defconfig
s390                             allmodconfig
um                           x86_64_defconfig
alpha                               defconfig
s390                                defconfig
x86_64                              defconfig
sh                               allmodconfig
x86_64                               rhel-8.3
x86_64               randconfig-a011-20221003
s390                             allyesconfig
mips                             allyesconfig
x86_64               randconfig-a012-20221003
i386                                defconfig
x86_64                           rhel-8.3-syz
powerpc                          allmodconfig
x86_64               randconfig-a013-20221003
x86_64                         rhel-8.3-kunit
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
i386                 randconfig-a011-20221003
x86_64               randconfig-a015-20221003
i386                 randconfig-a012-20221003
arc                  randconfig-r043-20221006
x86_64                          rhel-8.3-func
x86_64               randconfig-a014-20221003
i386                 randconfig-a013-20221003
x86_64               randconfig-a016-20221003
arm                                 defconfig
i386                 randconfig-a015-20221003
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a016-20221003
i386                 randconfig-a014-20221003
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
m68k                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
alpha                            allyesconfig
arc                              allyesconfig
ia64                             allmodconfig
m68k                             allyesconfig
powerpc                  iss476-smp_defconfig
sparc                            alldefconfig
m68k                        stmark2_defconfig
mips                        bcm47xx_defconfig
sparc64                             defconfig
mips                      loongson3_defconfig
microblaze                          defconfig
arm64                            alldefconfig
openrisc                    or1ksim_defconfig
powerpc                        warp_defconfig
powerpc                      makalu_defconfig
csky                             alldefconfig
arc                      axs103_smp_defconfig
mips                            gpr_defconfig
i386                          randconfig-c001
powerpc                 mpc85xx_cds_defconfig
powerpc                      tqm8xx_defconfig
nios2                            alldefconfig
sh                            migor_defconfig
powerpc                     tqm8555_defconfig
powerpc                       eiger_defconfig
sh                           se7619_defconfig
m68k                          hp300_defconfig
arm                        keystone_defconfig
sh                           se7751_defconfig
sh                         ap325rxa_defconfig
mips                          rb532_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                         3c120_defconfig
powerpc                  storcenter_defconfig
powerpc                     mpc83xx_defconfig
mips                  maltasmvp_eva_defconfig
mips                         rt305x_defconfig
xtensa                         virt_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                    adder875_defconfig
powerpc                      pcm030_defconfig
riscv                            allmodconfig
mips                       bmips_be_defconfig
sh                              ul2_defconfig
arc                          axs101_defconfig
xtensa                              defconfig
openrisc                 simple_smp_defconfig
parisc                           allyesconfig
arm                      integrator_defconfig
parisc64                            defconfig

clang tested configs:
hexagon              randconfig-r045-20221006
hexagon              randconfig-r041-20221006
riscv                randconfig-r042-20221006
s390                 randconfig-r044-20221006
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a004-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a006-20221003
hexagon              randconfig-r041-20221003
hexagon              randconfig-r045-20221003
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a006-20221003
x86_64                        randconfig-k001
arm                       cns3420vb_defconfig
powerpc                   microwatt_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      obs600_defconfig
arm                          collie_defconfig
powerpc                 xes_mpc85xx_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
