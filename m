Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CD1252B2B
	for <lists+devel-acpica@lfdr.de>; Wed, 26 Aug 2020 12:12:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 03378123CECEF;
	Wed, 26 Aug 2020 03:12:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4A19211154CAA
	for <devel@acpica.org>; Wed, 26 Aug 2020 03:12:45 -0700 (PDT)
IronPort-SDR: Fcba7Kr9SEB3HTvZc53tcXrhPxPEopT5CWUxsRMcFB2Y+RkE+fJvEohaXtt1P3Qdf06A1uLZk3
 cg0LZ0B3c2LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="220525364"
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600";
   d="scan'208";a="220525364"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Aug 2020 03:12:45 -0700
IronPort-SDR: RtEC8g9zf8RAbiGUrMMyNvXPDm6MvvrpEvtzOfgsZFBCb2z+5bhMy7KCNY9bf4fleiNpu4AMGZ
 uZ8BS9ac/fIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600";
   d="scan'208";a="336793744"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 26 Aug 2020 03:12:43 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kAsQ7-0001OF-1P; Wed, 26 Aug 2020 10:12:43 +0000
Date: Wed, 26 Aug 2020 18:12:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f463594.OY5tAiGY2Itzo0xd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: MESYID5CJ7MAUNZM6ALVKM7RMKXEK4O7
X-Message-ID-Hash: MESYID5CJ7MAUNZM6ALVKM7RMKXEK4O7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS a64f0b6a746f0133e361f4c99e4c17a1e481f6d8
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MESYID5CJ7MAUNZM6ALVKM7RMKXEK4O7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: a64f0b6a746f0133e361f4c99e4c17a1e481f6d8  Merge branch 'pm-sleep' into bleeding-edge

elapsed time: 720m

configs tested: 75
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                      tct_hammer_defconfig
mips                  maltasmvp_eva_defconfig
arm                            dove_defconfig
mips                          ath79_defconfig
arm                           sunxi_defconfig
arm                    vt8500_v6_v7_defconfig
arc                        vdk_hs38_defconfig
mips                         bigsur_defconfig
arm                           omap1_defconfig
arm                           h5000_defconfig
arm                  colibri_pxa300_defconfig
arm                          moxart_defconfig
nios2                         3c120_defconfig
powerpc                    amigaone_defconfig
sh                             shx3_defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a015-20200826
x86_64               randconfig-a016-20200826
x86_64               randconfig-a012-20200826
x86_64               randconfig-a014-20200826
x86_64               randconfig-a011-20200826
x86_64               randconfig-a013-20200826
i386                 randconfig-a013-20200826
i386                 randconfig-a012-20200826
i386                 randconfig-a011-20200826
i386                 randconfig-a016-20200826
i386                 randconfig-a015-20200826
i386                 randconfig-a014-20200826
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
