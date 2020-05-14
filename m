Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C6C1D3F1E
	for <lists+devel-acpica@lfdr.de>; Thu, 14 May 2020 22:45:48 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2673911B86F2D;
	Thu, 14 May 2020 13:43:00 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1DE0611B86F2B
	for <devel@acpica.org>; Thu, 14 May 2020 13:42:57 -0700 (PDT)
IronPort-SDR: ULXmsuum3VeGE3STkNVTBlQpF4b3Ya83+bas0ZlZi0uKCftL75goF/jvNYMRvXMvGApRGqvJG8
 XGmMPon8pgbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 May 2020 13:45:43 -0700
IronPort-SDR: SqjabU3d0I7i1wVwLpZI2PVllTYoY6eUg2Tzv2WmIKm64FJ284CxYAyk0rouTSSf6x13saIGt7
 W3mX3Si1JKcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400";
   d="scan'208";a="252181531"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 14 May 2020 13:45:41 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jZKjd-000BlF-4j; Fri, 15 May 2020 04:45:41 +0800
Date: Fri, 15 May 2020 04:45:38 +0800
From: kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5ebdadf2.z4onqpv5DJ3IISc4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: QOQFQAKZL2ZUJCT4XDXMTKOXQHDUBXS2
X-Message-ID-Hash: QOQFQAKZL2ZUJCT4XDXMTKOXQHDUBXS2
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS f6a95d1e7ba3e9abbffe4285627dd68e14613373
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QOQFQAKZL2ZUJCT4XDXMTKOXQHDUBXS2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: f6a95d1e7ba3e9abbffe4285627dd68e14613373  Merge branch 'acpi-misc' into bleeding-edge

elapsed time: 531m

configs tested: 112
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
m68k                             allyesconfig
mips                           ip27_defconfig
sparc                            alldefconfig
mips                  decstation_64_defconfig
mips                            e55_defconfig
m68k                          multi_defconfig
s390                       zfcpdump_defconfig
powerpc                       maple_defconfig
sh                           se7722_defconfig
sh                          r7785rp_defconfig
h8300                            alldefconfig
ia64                             allmodconfig
sh                 kfr2r09-romimage_defconfig
c6x                        evmc6678_defconfig
sh                            shmin_defconfig
arm                        neponset_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200514
i386                 randconfig-a005-20200514
i386                 randconfig-a003-20200514
i386                 randconfig-a001-20200514
i386                 randconfig-a004-20200514
i386                 randconfig-a002-20200514
x86_64               randconfig-a012-20200514
x86_64               randconfig-a016-20200514
x86_64               randconfig-a015-20200514
x86_64               randconfig-a013-20200514
x86_64               randconfig-a014-20200514
x86_64               randconfig-a011-20200514
i386                 randconfig-a012-20200514
i386                 randconfig-a016-20200514
i386                 randconfig-a014-20200514
i386                 randconfig-a011-20200514
i386                 randconfig-a013-20200514
i386                 randconfig-a015-20200514
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
