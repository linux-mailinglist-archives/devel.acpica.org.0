Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D21BF270BE2
	for <lists+devel-acpica@lfdr.de>; Sat, 19 Sep 2020 10:39:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C6AF51528718E;
	Sat, 19 Sep 2020 01:39:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 639281528718A
	for <devel@acpica.org>; Sat, 19 Sep 2020 01:39:03 -0700 (PDT)
IronPort-SDR: WeUikgQSln0CcaEo7uX3Jrn3XHzK9t0NV8nzU0HPhqK6ZyS3E6frkjzs3K7UY6EkejuH8Cf8Hk
 QjvluPCgS/+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="224252422"
X-IronPort-AV: E=Sophos;i="5.77,278,1596524400";
   d="scan'208";a="224252422"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2020 01:39:02 -0700
IronPort-SDR: 8h85PW6gp1UBxYJWKn05/Rgao5ekP2q/a6OMnVoj1D70+aJSxX6QmgSA3UpXshwIXH0jGj7SVD
 XPFmGxdIymNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,278,1596524400";
   d="scan'208";a="308223673"
Received: from lkp-server01.sh.intel.com (HELO a05db971c861) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 19 Sep 2020 01:39:00 -0700
Received: from kbuild by a05db971c861 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kJYOZ-0000xH-9j; Sat, 19 Sep 2020 08:38:59 +0000
Date: Sat, 19 Sep 2020 16:38:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f65c39a.QSLKQ8dJlMfnUISE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: C2SKR73MXBOR76HZ23WFYWLKXPK3FTDF
X-Message-ID-Hash: C2SKR73MXBOR76HZ23WFYWLKXPK3FTDF
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS e7c1299a01a05159cf7702e019ff910d8996a1dc
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/C2SKR73MXBOR76HZ23WFYWLKXPK3FTDF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: e7c1299a01a05159cf7702e019ff910d8996a1dc  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 723m

configs tested: 86
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          pxa3xx_defconfig
powerpc                      mgcoge_defconfig
parisc                generic-32bit_defconfig
m68k                        m5272c3_defconfig
sh                     magicpanelr2_defconfig
arm                         nhk8815_defconfig
nios2                         3c120_defconfig
powerpc                      pcm030_defconfig
sh                        sh7763rdp_defconfig
arm                  colibri_pxa300_defconfig
mips                  maltasmvp_eva_defconfig
sh                         microdev_defconfig
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
i386                 randconfig-a004-20200917
i386                 randconfig-a006-20200917
i386                 randconfig-a003-20200917
i386                 randconfig-a001-20200917
i386                 randconfig-a002-20200917
i386                 randconfig-a005-20200917
x86_64               randconfig-a014-20200917
x86_64               randconfig-a011-20200917
x86_64               randconfig-a016-20200917
x86_64               randconfig-a012-20200917
x86_64               randconfig-a015-20200917
x86_64               randconfig-a013-20200917
i386                 randconfig-a015-20200917
i386                 randconfig-a014-20200917
i386                 randconfig-a011-20200917
i386                 randconfig-a013-20200917
i386                 randconfig-a016-20200917
i386                 randconfig-a012-20200917
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
x86_64               randconfig-a006-20200917
x86_64               randconfig-a004-20200917
x86_64               randconfig-a003-20200917
x86_64               randconfig-a002-20200917
x86_64               randconfig-a001-20200917
x86_64               randconfig-a005-20200917

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
