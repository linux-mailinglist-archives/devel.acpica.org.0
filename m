Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 767222C5F6A
	for <lists+devel-acpica@lfdr.de>; Fri, 27 Nov 2020 06:08:41 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 324DF100EBBB4;
	Thu, 26 Nov 2020 21:08:40 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 89C17100ED4BE
	for <devel@acpica.org>; Thu, 26 Nov 2020 21:08:37 -0800 (PST)
IronPort-SDR: HAB0L9g7WpQPjmKvPN5gMQx8IxCkkNk2FbWa+Pcsj91W6HlkHr34LNw5zn3ZOlI7Kb5N6Cd4R2
 X/KZP9S2yZIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168850462"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400";
   d="scan'208";a="168850462"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2020 21:08:36 -0800
IronPort-SDR: mGbRks6uP/ToKFZIBlX7StXZ2TX6GXKIhwKCbm5MGHTRUqmtHUENnwxyC9fnx20l2n0r1KEcFQ
 8EqCk2s7oB9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400";
   d="scan'208";a="333561546"
Received: from lkp-server01.sh.intel.com (HELO fe15a1cd36f8) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 26 Nov 2020 21:08:35 -0800
Received: from kbuild by fe15a1cd36f8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kiVzm-00001o-IU; Fri, 27 Nov 2020 05:08:34 +0000
Date: Fri, 27 Nov 2020 13:08:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fc089b7.WCm6iz3bFhgqDrlJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: N2EGBVTAYVME4KXGFQKAIBFXOMEJVVP7
X-Message-ID-Hash: N2EGBVTAYVME4KXGFQKAIBFXOMEJVVP7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS dda536829065b24b80296e5df9b57dfe3ae57c91
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/N2EGBVTAYVME4KXGFQKAIBFXOMEJVVP7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: dda536829065b24b80296e5df9b57dfe3ae57c91  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 723m

configs tested: 77
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      ep88xc_defconfig
powerpc                        fsp2_defconfig
powerpc                      acadia_defconfig
powerpc                     mpc5200_defconfig
powerpc                      chrp32_defconfig
arm                      tct_hammer_defconfig
powerpc                     rainier_defconfig
m68k                        mvme147_defconfig
mips                         tb0219_defconfig
powerpc                     tqm8555_defconfig
mips                    maltaup_xpa_defconfig
mips                        bcm47xx_defconfig
mips                           ip28_defconfig
powerpc                      katmai_defconfig
powerpc                       eiger_defconfig
powerpc                      ppc44x_defconfig
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
i386                 randconfig-a004-20201127
i386                 randconfig-a003-20201127
i386                 randconfig-a002-20201127
i386                 randconfig-a005-20201127
i386                 randconfig-a001-20201127
i386                 randconfig-a006-20201127
i386                 randconfig-a012-20201127
i386                 randconfig-a013-20201127
i386                 randconfig-a011-20201127
i386                 randconfig-a016-20201127
i386                 randconfig-a014-20201127
i386                 randconfig-a015-20201127
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
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
