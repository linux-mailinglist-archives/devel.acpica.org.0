Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CC231A9FB
	for <lists+devel-acpica@lfdr.de>; Sat, 13 Feb 2021 06:20:27 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 67BE2100EBB82;
	Fri, 12 Feb 2021 21:20:25 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3FBD6100ED4BA
	for <devel@acpica.org>; Fri, 12 Feb 2021 21:20:24 -0800 (PST)
IronPort-SDR: 3Y7/iTE7AYik4Ux/drZJ652KslHZ7yW7JlQ7dQ8EWxABNEG5hibRGSfW0ZF61k8avyOMqnUa6A
 C0Iv/fiF97Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="170176669"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400";
   d="scan'208";a="170176669"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2021 21:20:23 -0800
IronPort-SDR: msHkmpLTcHzk37VPWxKzSUv9Z6dp1WBd4QKpXsb7UvD7dXbKxerFJ+J4VVxfuB1aZnqd/U5j8S
 xxdnHhguVKcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400";
   d="scan'208";a="376619855"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 12 Feb 2021 21:20:21 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lAnLw-00057R-PE; Sat, 13 Feb 2021 05:20:20 +0000
Date: Sat, 13 Feb 2021 13:19:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6027617c.nGthyZv+GpWotTIg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ITJEZBY4GFUFKKANNZEGXEY42P6NXBEM
X-Message-ID-Hash: ITJEZBY4GFUFKKANNZEGXEY42P6NXBEM
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 95abaaccf8453a965f85402a03848cd82489e7a6
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ITJEZBY4GFUFKKANNZEGXEY42P6NXBEM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 95abaaccf8453a965f85402a03848cd82489e7a6  Merge branch 'pm-cpuidle' into bleeding-edge

elapsed time: 723m

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
arm                         axm55xx_defconfig
arm                        clps711x_defconfig
sh                          landisk_defconfig
sh                        edosk7760_defconfig
arm                        realview_defconfig
arm                      integrator_defconfig
powerpc64                           defconfig
arc                              alldefconfig
microblaze                      mmu_defconfig
powerpc                 mpc834x_mds_defconfig
mips                        nlm_xlp_defconfig
mips                           jazz_defconfig
arm                             rpc_defconfig
arm                         lpc32xx_defconfig
arm                          badge4_defconfig
mips                      maltaaprp_defconfig
openrisc                            defconfig
powerpc                      ppc6xx_defconfig
powerpc                     mpc83xx_defconfig
h8300                               defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210209
x86_64               randconfig-a001-20210209
x86_64               randconfig-a005-20210209
x86_64               randconfig-a004-20210209
x86_64               randconfig-a002-20210209
x86_64               randconfig-a003-20210209
i386                 randconfig-a003-20210212
i386                 randconfig-a005-20210212
i386                 randconfig-a002-20210212
i386                 randconfig-a001-20210212
i386                 randconfig-a004-20210212
i386                 randconfig-a006-20210212
i386                 randconfig-a016-20210209
i386                 randconfig-a013-20210209
i386                 randconfig-a012-20210209
i386                 randconfig-a014-20210209
i386                 randconfig-a011-20210209
i386                 randconfig-a015-20210209
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210209
x86_64               randconfig-a014-20210209
x86_64               randconfig-a015-20210209
x86_64               randconfig-a012-20210209
x86_64               randconfig-a016-20210209
x86_64               randconfig-a011-20210209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
