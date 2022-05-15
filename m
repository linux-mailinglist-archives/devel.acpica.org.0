Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEAA527705
	for <lists+devel-acpica@lfdr.de>; Sun, 15 May 2022 12:34:22 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D72C0100EAB1C;
	Sun, 15 May 2022 03:34:19 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 974D2100EAB09
	for <devel@acpica.org>; Sun, 15 May 2022 03:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652610857; x=1684146857;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=D2zM/NOEft1xXBFaRL/87t/mkHUG/94CxpYCSdy6ZDc=;
  b=eW1/3Pxe2sOnatj7KjLhy9XbAfUNUJK03Oc80NRFGC2vHRuDA7hb1WvW
   /tNsxtwgxKZLZMPiPEKB5Y3jRGvE5xxW95sOmIkLfyJPfslx5N3bHIgPJ
   CSIVMRZM+Rwy9qz2ZsMgfqHX8v9ZG2Sgs89rtOkkBH3ScE1SgnejjRFP1
   UGIhDgABXGzTkoQO7KB1JrnlarsnkJ+tufSDIz8YmnWOFgnqml6sKiCkj
   ddJv1EcvEsd2WJoJwquUD0BBDGpqAWQNdaMxdcQXCULF6xRNUXsRr4cg0
   305/6uIIEJCC8P3PrAn8p2gWM08F2VkObExaIMnZUsdRygpBEETrlL3QE
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10347"; a="270569373"
X-IronPort-AV: E=Sophos;i="5.91,228,1647327600";
   d="scan'208";a="270569373"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 May 2022 03:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,228,1647327600";
   d="scan'208";a="740814903"
Received: from lkp-server01.sh.intel.com (HELO d1462bc4b09b) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 15 May 2022 03:34:11 -0700
Received: from kbuild by d1462bc4b09b with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nqBZi-0001X7-Nn;
	Sun, 15 May 2022 10:34:10 +0000
Date: Sun, 15 May 2022 18:34:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6280d718.XFcnVdyqKBjMBerm%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: O2GDI4EQWR7AQN3TAZKKPKU5WRUTCWMK
X-Message-ID-Hash: O2GDI4EQWR7AQN3TAZKKPKU5WRUTCWMK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 60c4d1a7db661a73f444de5563a84e57ce78dc76
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O2GDI4EQWR7AQN3TAZKKPKU5WRUTCWMK/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 60c4d1a7db661a73f444de5563a84e57ce78dc76  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 4002m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                         bigsur_defconfig
powerpc                 mpc837x_mds_defconfig
arm                        trizeps4_defconfig
mips                         tb0226_defconfig
arm                         lpc18xx_defconfig
m68k                          atari_defconfig
ia64                         bigsur_defconfig
arc                     haps_hs_smp_defconfig
arc                        nsim_700_defconfig
sh                           se7343_defconfig
parisc                generic-32bit_defconfig
sh                            hp6xx_defconfig
sh                           se7751_defconfig
sh                          rsk7264_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220512
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
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
nios2                               defconfig
arc                              allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220512
s390                 randconfig-r044-20220512
riscv                randconfig-r042-20220512
riscv                             allnoconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220512
arm                  randconfig-c002-20220512
s390                 randconfig-c005-20220512
i386                          randconfig-c001
riscv                randconfig-c006-20220512
mips                 randconfig-c004-20220512
arm                         orion5x_defconfig
powerpc                      ppc64e_defconfig
powerpc                     tqm5200_defconfig
x86_64                           allyesconfig
powerpc                          allmodconfig
mips                      pic32mzda_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220512
hexagon              randconfig-r041-20220512

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
