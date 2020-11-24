Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AC22C1DB5
	for <lists+devel-acpica@lfdr.de>; Tue, 24 Nov 2020 06:46:25 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6CC01100EBB7F;
	Mon, 23 Nov 2020 21:46:23 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2DA03100EBB6A
	for <devel@acpica.org>; Mon, 23 Nov 2020 21:46:21 -0800 (PST)
IronPort-SDR: D8H6OgsDbcU5vr9msa7m1MFU3dXXmzu5EnTRWNDdyrTA5KRLXiLf5IGtrYRifCvz4fa2aleRhV
 bL8zPm/dlHxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="169330666"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400";
   d="scan'208";a="169330666"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 21:46:20 -0800
IronPort-SDR: f1L03443mLhFCE5IMa4PVemiLqXQolKijOFjbSHMpAmpoYoSdztE7+ihBet5Q5S+Ipl1QjI67q
 PNx2koYN02Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400";
   d="scan'208";a="343043405"
Received: from lkp-server01.sh.intel.com (HELO d32bb8956768) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Nov 2020 21:46:18 -0800
Received: from kbuild by d32bb8956768 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1khR9e-00002W-8o; Tue, 24 Nov 2020 05:46:18 +0000
Date: Tue, 24 Nov 2020 13:45:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5fbc9e00.idUAeXu/AgjkU5Mn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: LVAATEVPXDDDQSXDS6BD3SQGFRKXDHHF
X-Message-ID-Hash: LVAATEVPXDDDQSXDS6BD3SQGFRKXDHHF
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 0a94f3d0100bc7c20ce09d014a9e7dd3cc29e5c9
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/LVAATEVPXDDDQSXDS6BD3SQGFRKXDHHF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 0a94f3d0100bc7c20ce09d014a9e7dd3cc29e5c9  Merge branch 'pm-domains' into bleeding-edge

elapsed time: 720m

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
powerpc                      tqm8xx_defconfig
m68k                        mvme16x_defconfig
powerpc                  storcenter_defconfig
powerpc                      acadia_defconfig
powerpc                     mpc512x_defconfig
mips                        vocore2_defconfig
mips                           ip27_defconfig
powerpc                    mvme5100_defconfig
arm                  colibri_pxa270_defconfig
m68k                           sun3_defconfig
nds32                            alldefconfig
arm                         cm_x300_defconfig
arm                        shmobile_defconfig
mips                        jmr3927_defconfig
ia64                      gensparse_defconfig
arm                           corgi_defconfig
powerpc                       ppc64_defconfig
powerpc                     taishan_defconfig
mips                           ci20_defconfig
arc                     nsimosci_hs_defconfig
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
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201123
i386                 randconfig-a003-20201123
i386                 randconfig-a002-20201123
i386                 randconfig-a005-20201123
i386                 randconfig-a001-20201123
i386                 randconfig-a006-20201123
x86_64               randconfig-a015-20201123
x86_64               randconfig-a011-20201123
x86_64               randconfig-a014-20201123
x86_64               randconfig-a016-20201123
x86_64               randconfig-a012-20201123
x86_64               randconfig-a013-20201123
i386                 randconfig-a012-20201123
i386                 randconfig-a013-20201123
i386                 randconfig-a011-20201123
i386                 randconfig-a016-20201123
i386                 randconfig-a014-20201123
i386                 randconfig-a015-20201123
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
x86_64               randconfig-a006-20201123
x86_64               randconfig-a003-20201123
x86_64               randconfig-a004-20201123
x86_64               randconfig-a005-20201123
x86_64               randconfig-a002-20201123
x86_64               randconfig-a001-20201123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
