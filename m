Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D699D241475
	for <lists+devel-acpica@lfdr.de>; Tue, 11 Aug 2020 03:15:05 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 63A2512EDC527;
	Mon, 10 Aug 2020 18:15:04 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D213212B7E17E
	for <devel@acpica.org>; Mon, 10 Aug 2020 18:15:02 -0700 (PDT)
IronPort-SDR: M/LjVBDXInVxrMVmqNRhf/0gCgwEbB97I7UQBQmKUChJH+ThMTcs8+gGWBv0fXj+08RhUvkx83
 GW3xrM0N/N3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="215160281"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800";
   d="scan'208";a="215160281"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2020 18:15:02 -0700
IronPort-SDR: 0CIfP7TD2K4trAC0Kbgml7/6PWtJoRmZCwDt06U/E1Yw7e8o5A1Tsnpe9rWl/oRfXUVtS2rWwE
 bUZdmY3oypag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800";
   d="scan'208";a="290538784"
Received: from lkp-server01.sh.intel.com (HELO 71729f5ca340) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 10 Aug 2020 18:15:00 -0700
Received: from kbuild by 71729f5ca340 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k5IsW-0000IG-2V; Tue, 11 Aug 2020 01:15:00 +0000
Date: Tue, 11 Aug 2020 09:14:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f31f0e1.beJga6jjAQLhVagJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: RRVWCPQT4U5SCKG62LBNQ55C3TF7ALO5
X-Message-ID-Hash: RRVWCPQT4U5SCKG62LBNQ55C3TF7ALO5
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 7cd29e47553a773f54727d0756a57d0a3dcb3ab0
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RRVWCPQT4U5SCKG62LBNQ55C3TF7ALO5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 7cd29e47553a773f54727d0756a57d0a3dcb3ab0  Merge branches 'pm-cpufreq' and 'acpi-soc' into linux-next

elapsed time: 722m

configs tested: 70
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          r7780mp_defconfig
arm                           stm32_defconfig
arm                             ezx_defconfig
arm                        multi_v7_defconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200810
i386                 randconfig-a001-20200810
i386                 randconfig-a002-20200810
i386                 randconfig-a003-20200810
i386                 randconfig-a006-20200810
i386                 randconfig-a004-20200810
x86_64               randconfig-a013-20200810
x86_64               randconfig-a012-20200810
x86_64               randconfig-a016-20200810
x86_64               randconfig-a011-20200810
x86_64               randconfig-a014-20200810
x86_64               randconfig-a015-20200810
i386                 randconfig-a011-20200810
i386                 randconfig-a013-20200810
i386                 randconfig-a012-20200810
i386                 randconfig-a016-20200810
i386                 randconfig-a015-20200810
i386                 randconfig-a014-20200810
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
