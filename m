Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D1824245C
	for <lists+devel-acpica@lfdr.de>; Wed, 12 Aug 2020 05:40:01 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 26F3312F2DB24;
	Tue, 11 Aug 2020 20:39:59 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id ACDA212F27BAF
	for <devel@acpica.org>; Tue, 11 Aug 2020 20:39:56 -0700 (PDT)
IronPort-SDR: /BCWjn3Zqo7CbIpZuvnlQ5wBbkK/v8b0O2DsW0zi5X45skLrlqk5ufEJFocjZl7hilENs7wYYh
 oym1f6ZxKYHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="155006305"
X-IronPort-AV: E=Sophos;i="5.76,302,1592895600";
   d="scan'208";a="155006305"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2020 20:39:51 -0700
IronPort-SDR: rZDHZBGjVC7OHBZV2rTceKoMaTlsW7VXNJ1VX2TU+Hu8UGt0dKzDeTB7R/aST1I2s+9sq6fYa8
 7jTkyPJNiqFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,302,1592895600";
   d="scan'208";a="317949444"
Received: from lkp-server01.sh.intel.com (HELO e03a785590b8) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2020 20:39:38 -0700
Received: from kbuild by e03a785590b8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k5hc2-00003w-2D; Wed, 12 Aug 2020 03:39:38 +0000
Date: Wed, 12 Aug 2020 11:39:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f33646d.7huDtKfgZy6XYDCZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 2IQPEG2EHGG6BJROH2LK4NZQZGZQJWND
X-Message-ID-Hash: 2IQPEG2EHGG6BJROH2LK4NZQZGZQJWND
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 395313eda1534576fc2440ea8907fb8ff9097485
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2IQPEG2EHGG6BJROH2LK4NZQZGZQJWND/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 395313eda1534576fc2440ea8907fb8ff9097485  Merge branches 'acpi-soc' and 'pm-cpufreq' into linux-next

elapsed time: 725m

configs tested: 84
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                            xcep_defconfig
mips                          ath25_defconfig
sh                           se7619_defconfig
powerpc                        cell_defconfig
m68k                          multi_defconfig
i386                             alldefconfig
c6x                         dsk6455_defconfig
mips                          malta_defconfig
m68k                       bvme6000_defconfig
arm                          iop32x_defconfig
powerpc                       maple_defconfig
sh                          urquell_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                         wii_defconfig
sh                         ecovec24_defconfig
m68k                          hp300_defconfig
sh                           se7206_defconfig
arm                           stm32_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                            allyesconfig
nds32                               defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20200811
x86_64               randconfig-a005-20200811
x86_64               randconfig-a001-20200811
x86_64               randconfig-a003-20200811
x86_64               randconfig-a004-20200811
x86_64               randconfig-a002-20200811
i386                 randconfig-a005-20200811
i386                 randconfig-a001-20200811
i386                 randconfig-a002-20200811
i386                 randconfig-a003-20200811
i386                 randconfig-a006-20200811
i386                 randconfig-a004-20200811
i386                 randconfig-a016-20200811
i386                 randconfig-a011-20200811
i386                 randconfig-a015-20200811
i386                 randconfig-a013-20200811
i386                 randconfig-a012-20200811
i386                 randconfig-a014-20200811
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
