Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5332796FB
	for <lists+devel-acpica@lfdr.de>; Sat, 26 Sep 2020 06:40:31 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5484A15543FCE;
	Fri, 25 Sep 2020 21:40:30 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1E1FF15543FCA
	for <devel@acpica.org>; Fri, 25 Sep 2020 21:40:25 -0700 (PDT)
IronPort-SDR: LKa14tvrPZv0ng6BJq5dDxn0v766ss+qhtrkr5+8uRxwYoQSpIqvwngs1bcnMkJ9F/BkMP1z/l
 NDRPCceYkVFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="141724111"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400";
   d="scan'208";a="141724111"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 21:40:25 -0700
IronPort-SDR: lBolHQXCN+uTf5Ovg09dLCNqq/rPEFe+C3NHSGNMN3KvKycIJ5m/4Ua+tegdRZgVNjE3YHm9hh
 9N1sgd9SBTxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400";
   d="scan'208";a="348865877"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 25 Sep 2020 21:40:23 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kM20V-0000Na-5Y; Sat, 26 Sep 2020 04:40:23 +0000
Date: Sat, 26 Sep 2020 12:40:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f6ec634.prqVnwLaN9rRUYrE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: CN6SLFG7AGMIH3DVE5IB2APFFR5WLQPQ
X-Message-ID-Hash: CN6SLFG7AGMIH3DVE5IB2APFFR5WLQPQ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 39d54892be91e1df9d45a5eb813e766035f07e90
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CN6SLFG7AGMIH3DVE5IB2APFFR5WLQPQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 39d54892be91e1df9d45a5eb813e766035f07e90  Merge branch 'acpi-battery' into bleeding-edge

elapsed time: 723m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                       holly_defconfig
arm                        multi_v5_defconfig
sh                         ecovec24_defconfig
mips                        jmr3927_defconfig
sparc                       sparc64_defconfig
arm                       aspeed_g4_defconfig
powerpc                     ksi8560_defconfig
arm                            mps2_defconfig
um                            kunit_defconfig
sh                          landisk_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                    socrates_defconfig
arm                         vf610m4_defconfig
arm                       versatile_defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20200925
i386                 randconfig-a006-20200925
i386                 randconfig-a003-20200925
i386                 randconfig-a004-20200925
i386                 randconfig-a005-20200925
i386                 randconfig-a001-20200925
x86_64               randconfig-a011-20200925
x86_64               randconfig-a013-20200925
x86_64               randconfig-a014-20200925
x86_64               randconfig-a015-20200925
x86_64               randconfig-a012-20200925
x86_64               randconfig-a016-20200925
i386                 randconfig-a012-20200925
i386                 randconfig-a014-20200925
i386                 randconfig-a016-20200925
i386                 randconfig-a013-20200925
i386                 randconfig-a011-20200925
i386                 randconfig-a015-20200925
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20200925
x86_64               randconfig-a003-20200925
x86_64               randconfig-a004-20200925
x86_64               randconfig-a002-20200925
x86_64               randconfig-a006-20200925
x86_64               randconfig-a001-20200925

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
