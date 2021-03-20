Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7A2342AAD
	for <lists+devel-acpica@lfdr.de>; Sat, 20 Mar 2021 06:24:10 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EE683100EB348;
	Fri, 19 Mar 2021 22:24:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 357CD100EF271
	for <devel@acpica.org>; Fri, 19 Mar 2021 22:24:06 -0700 (PDT)
IronPort-SDR: woxUOW9qPyGUHx9KMZ3pxK/StWXqGzK9b3Z5Ks0d/9P9dX8Zyo41IwgzmGdMOLFUTD/IN/WUuD
 3Oj1bFLqHJRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="169317776"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400";
   d="scan'208";a="169317776"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2021 22:24:05 -0700
IronPort-SDR: 1eWxtw/TGRQsWxMRldtkTTaxbXE3OCeG78P6HgwIiOAtn2Ja7PAUAg0DfS+JDD3pUmXr44/k6n
 +jp6BcB5//Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400";
   d="scan'208";a="440335447"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2021 22:24:03 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNU5i-0002Mr-S0; Sat, 20 Mar 2021 05:24:02 +0000
Date: Sat, 20 Mar 2021 13:23:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <605586e9.DRaeL5h7iBbvMZpn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: MF4LXT3Y7COUEJVIMHHOVVENF56PG5V6
X-Message-ID-Hash: MF4LXT3Y7COUEJVIMHHOVVENF56PG5V6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS d2e6cdcbaeb304fff490aa7e0fd814e3bbeb0b6a
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MF4LXT3Y7COUEJVIMHHOVVENF56PG5V6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: d2e6cdcbaeb304fff490aa7e0fd814e3bbeb0b6a  Merge branch 'acpi-misc' into bleeding-edge

elapsed time: 727m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
riscv                            allyesconfig
s390                          debug_defconfig
sh                        sh7763rdp_defconfig
arm                            pleb_defconfig
arm                        vexpress_defconfig
arm                        trizeps4_defconfig
m68k                        mvme16x_defconfig
mips                          malta_defconfig
sparc                       sparc64_defconfig
powerpc                     tqm8560_defconfig
s390                                defconfig
sh                          landisk_defconfig
parisc                           alldefconfig
arc                      axs103_smp_defconfig
powerpc                      pmac32_defconfig
sh                   rts7751r2dplus_defconfig
mips                        workpad_defconfig
arm                         axm55xx_defconfig
arm64                            alldefconfig
arm                        neponset_defconfig
mips                      maltaaprp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                 randconfig-a001-20210318
i386                 randconfig-a005-20210318
i386                 randconfig-a003-20210318
i386                 randconfig-a002-20210318
i386                 randconfig-a006-20210318
i386                 randconfig-a004-20210318
x86_64               randconfig-a011-20210318
x86_64               randconfig-a016-20210318
x86_64               randconfig-a013-20210318
x86_64               randconfig-a015-20210318
x86_64               randconfig-a014-20210318
x86_64               randconfig-a012-20210318
i386                 randconfig-a013-20210318
i386                 randconfig-a016-20210318
i386                 randconfig-a011-20210318
i386                 randconfig-a014-20210318
i386                 randconfig-a015-20210318
i386                 randconfig-a012-20210318
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210318
x86_64               randconfig-a001-20210318
x86_64               randconfig-a005-20210318
x86_64               randconfig-a002-20210318
x86_64               randconfig-a003-20210318
x86_64               randconfig-a004-20210318

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
