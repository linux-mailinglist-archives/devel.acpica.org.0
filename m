Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780E4D4CCA
	for <lists+devel-acpica@lfdr.de>; Thu, 10 Mar 2022 16:36:33 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7EF11100F4861;
	Thu, 10 Mar 2022 07:36:31 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C364D100F47AC
	for <devel@acpica.org>; Thu, 10 Mar 2022 07:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646926588; x=1678462588;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=lJ5Cjh+JeR7liQibb2uJs/arPekdnTIXNvyos/z1XqY=;
  b=KbBHJIGf9W+QEq6HCabQLeGNyIRg9KNs6Bt+8pT4s1WtevugMszN9Ybb
   ufJm1OdoKXmn02wkP0TL8nQ5z42fRy1yx1JPV63Vn3ZNneDm2QbW0QU38
   bo/pZdcKawTsTt0NZlCn/wKyTIydURh+338EDIgyXikvj53CJt7yQOW9+
   7Il5QFWEcOcEK8VZEWtPK95k11rDuBF5vnPiNa5fgwHhFPj6Tdq3xLqc5
   6BeJNAFc95KmOt5P2n9hVjAGd9p0WknO/DVn4qyI6/JX3dzAXVj0cAucP
   T2akS8sR7Hw4sOjewuWRY0b34wQxAsgft99goE2Twfc0EzJaVlpY9lzSN
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255226078"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400";
   d="scan'208";a="255226078"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2022 07:36:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400";
   d="scan'208";a="611776322"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 10 Mar 2022 07:36:26 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nSKq1-00054H-QU; Thu, 10 Mar 2022 15:36:25 +0000
Date: Thu, 10 Mar 2022 23:35:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <622a1acd.VINPe2inLy5LvRRA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: KC3XLBO4HUVBY74BV674G2DMNM6NK2DT
X-Message-ID-Hash: KC3XLBO4HUVBY74BV674G2DMNM6NK2DT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 08069bcb94baf171692d281725123b239e4000fe
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KC3XLBO4HUVBY74BV674G2DMNM6NK2DT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 08069bcb94baf171692d281725123b239e4000fe  Merge branch 'pm-cpuidle' into bleeding-edge

elapsed time: 730m

configs tested: 94
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        realview_defconfig
mips                      fuloong2e_defconfig
sh                          kfr2r09_defconfig
h8300                    h8300h-sim_defconfig
powerpc                  storcenter_defconfig
sh                           se7722_defconfig
sh                     magicpanelr2_defconfig
xtensa                    xip_kc705_defconfig
riscv                            allmodconfig
h8300                               defconfig
arm                  randconfig-c002-20220309
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
alpha                            allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                              allyesconfig
nios2                               defconfig
parisc                              defconfig
s390                                defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
arc                  randconfig-r043-20220309
arc                  randconfig-r043-20220310
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                         orion5x_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     ppa8548_defconfig
powerpc                      ppc44x_defconfig
powerpc                        fsp2_defconfig
mips                        qi_lb60_defconfig
arm                       spear13xx_defconfig
powerpc                      obs600_defconfig
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220309
hexagon              randconfig-r045-20220309
s390                 randconfig-r044-20220309
hexagon              randconfig-r041-20220310
hexagon              randconfig-r045-20220310
s390                 randconfig-r044-20220310
riscv                randconfig-r042-20220310

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
