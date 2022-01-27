Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8557049DD27
	for <lists+devel-acpica@lfdr.de>; Thu, 27 Jan 2022 10:01:00 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2954F100EAAFF;
	Thu, 27 Jan 2022 01:00:58 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C3C57100EAB47
	for <devel@acpica.org>; Thu, 27 Jan 2022 01:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643274056; x=1674810056;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=7X23wUjUs5gSMEbHelHFNELXRMxchFsv6s8l1+8QO2I=;
  b=A73RrTeheoqDRPnVRcDXqxuDG3ZZyPIC/4B4/mAH7ijI7p5kkzQhaVQh
   UxKkqXll2QpzMefWxxyd6dxRmc2cPwB2+rke0Jpqjx4chszb36ooHjM5g
   +9PEVdBTbZuxPg1VbWDJ63zeBpiMhJhtHwugz376VMhFr9OhFTZHilSSd
   tjJWeaF5oYXDrt5esu8PrdGnEnnhjWv+V6stApv4cwX3S0A/cCAoppxll
   lD0JkU2jidK2hOa0JYCHgRc6c75a/7bHxZV5Srvh8/MrPZi7l0dd137WL
   ao+UoZrmMc9j9tTOuPKLAWFEcwuvnpcZA7cLYgwvyvPe/RdMKXQQ8/bwi
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234166180"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="234166180"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 01:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="477790634"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Jan 2022 01:00:49 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nD0e8-000MNY-Rw; Thu, 27 Jan 2022 09:00:48 +0000
Date: Thu, 27 Jan 2022 16:59:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61f25f06.2XSiawKFk/Sx+a6G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: Z76D2NU5GGFZBNF6YOAWHJCYWJRVTOPB
X-Message-ID-Hash: Z76D2NU5GGFZBNF6YOAWHJCYWJRVTOPB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 52d883c7bbae11e5f06311eae7778db69bc4806e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Z76D2NU5GGFZBNF6YOAWHJCYWJRVTOPB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 52d883c7bbae11e5f06311eae7778db69bc4806e  Merge branches 'acpica', 'acpi-osl' and 'acpi-properties' into linux-next

elapsed time: 728m

configs tested: 192
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
m68k                            q40_defconfig
powerpc                 linkstation_defconfig
arm                         s3c6400_defconfig
m68k                           sun3_defconfig
arm                        oxnas_v6_defconfig
m68k                          multi_defconfig
sparc64                          alldefconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
sh                          rsk7203_defconfig
parisc                generic-32bit_defconfig
powerpc                      ppc6xx_defconfig
xtensa                  nommu_kc705_defconfig
sparc                            allyesconfig
powerpc                       ppc64_defconfig
m68k                        stmark2_defconfig
mips                         rt305x_defconfig
arm                            zeus_defconfig
nios2                         10m50_defconfig
xtensa                              defconfig
sh                ecovec24-romimage_defconfig
mips                       capcella_defconfig
arm                          pxa910_defconfig
arm                          simpad_defconfig
m68k                          hp300_defconfig
m68k                       m5249evb_defconfig
arm                             rpc_defconfig
mips                        bcm47xx_defconfig
xtensa                  audio_kc705_defconfig
mips                         cobalt_defconfig
powerpc                      makalu_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      mgcoge_defconfig
arm                        keystone_defconfig
mips                           ip32_defconfig
arm                         lubbock_defconfig
sh                           se7722_defconfig
m68k                          amiga_defconfig
arm                             ezx_defconfig
arm                          pxa3xx_defconfig
powerpc                      pasemi_defconfig
m68k                       m5208evb_defconfig
sh                   sh7724_generic_defconfig
arc                            hsdk_defconfig
arm                            hisi_defconfig
sh                             espt_defconfig
sh                        edosk7705_defconfig
i386                             alldefconfig
m68k                         amcore_defconfig
mips                 decstation_r4k_defconfig
sh                            migor_defconfig
openrisc                 simple_smp_defconfig
powerpc                      tqm8xx_defconfig
h8300                            alldefconfig
arm                           corgi_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220124
arm                  randconfig-c002-20220127
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
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
sh                               allmodconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220124
riscv                randconfig-r042-20220125
arc                  randconfig-r043-20220125
s390                 randconfig-r044-20220125
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
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220125
mips                 randconfig-c004-20220125
i386                          randconfig-c001
s390                 randconfig-c005-20220125
arm                  randconfig-c002-20220125
riscv                randconfig-c006-20220125
arm                  colibri_pxa300_defconfig
arm                          imote2_defconfig
powerpc                      obs600_defconfig
arm                            mmp2_defconfig
mips                   sb1250_swarm_defconfig
arm                            dove_defconfig
arm                              alldefconfig
arm                      pxa255-idp_defconfig
hexagon                             defconfig
mips                     loongson2k_defconfig
arm                        neponset_defconfig
powerpc                     kmeter1_defconfig
powerpc                    socrates_defconfig
arm                           omap1_defconfig
powerpc                     skiroot_defconfig
powerpc                      walnut_defconfig
i386                             allyesconfig
arm                          ixp4xx_defconfig
powerpc                     kilauea_defconfig
powerpc                        fsp2_defconfig
powerpc                      katmai_defconfig
riscv                          rv32_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220124
x86_64               randconfig-a012-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a016-20220124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
riscv                randconfig-r042-20220124
s390                 randconfig-r044-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r041-20220124
hexagon              randconfig-r045-20220125
hexagon              randconfig-r041-20220125

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
