Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 822A53A4D12
	for <lists+devel-acpica@lfdr.de>; Sat, 12 Jun 2021 08:07:50 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 05060100EBBAF;
	Fri, 11 Jun 2021 23:07:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 926CD100EC1DA
	for <devel@acpica.org>; Fri, 11 Jun 2021 23:07:43 -0700 (PDT)
IronPort-SDR: BmtniNw9U5SU2fMhBRX6rLvfguz1J640GwlSB19fc50Zp3tpLcpGeyI9AD4ingo8nsJud0dZX7
 OHfuQ4bihKHw==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="185340839"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800";
   d="scan'208";a="185340839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2021 23:07:42 -0700
IronPort-SDR: pSN8dmRFGJiKQX5eqDiiXWw+tl8m+YMMU5uzqT3970zUdu/I5gWJ9D3yiTY2RXyWLNzvWcXGVU
 XKvK2MwUNO/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800";
   d="scan'208";a="449329385"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 11 Jun 2021 23:07:41 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lrwo1-0000qP-Bw; Sat, 12 Jun 2021 06:07:41 +0000
Date: Sat, 12 Jun 2021 14:07:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <60c44f14.t3H+iJZK/X31Hjjq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: RRXT3RPLI6TNS5IT726EUP2FWUE6YSO4
X-Message-ID-Hash: RRXT3RPLI6TNS5IT726EUP2FWUE6YSO4
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS 2be4aa8aed4de696f2741f8aef751b0da3292184
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RRXT3RPLI6TNS5IT726EUP2FWUE6YSO4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 2be4aa8aed4de696f2741f8aef751b0da3292184  Merge branch 'pm-core' into bleeding-edge

elapsed time: 727m

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
sh                          rsk7264_defconfig
mips                         bigsur_defconfig
sh                              ul2_defconfig
arm                          pxa910_defconfig
sh                          lboxre2_defconfig
powerpc                     sequoia_defconfig
powerpc                      acadia_defconfig
arm                      jornada720_defconfig
mips                  maltasmvp_eva_defconfig
mips                malta_qemu_32r6_defconfig
mips                      loongson3_defconfig
powerpc                     kmeter1_defconfig
mips                           ci20_defconfig
arc                          axs103_defconfig
arm                  colibri_pxa300_defconfig
m68k                       m5249evb_defconfig
powerpc                          g5_defconfig
mips                           rs90_defconfig
arm                            mps2_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20210611
i386                 randconfig-a006-20210611
i386                 randconfig-a004-20210611
i386                 randconfig-a001-20210611
i386                 randconfig-a005-20210611
i386                 randconfig-a003-20210611
x86_64               randconfig-a002-20210611
x86_64               randconfig-a001-20210611
x86_64               randconfig-a004-20210611
x86_64               randconfig-a003-20210611
x86_64               randconfig-a006-20210611
x86_64               randconfig-a005-20210611
i386                 randconfig-a015-20210611
i386                 randconfig-a013-20210611
i386                 randconfig-a016-20210611
i386                 randconfig-a014-20210611
i386                 randconfig-a012-20210611
i386                 randconfig-a011-20210611
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210611
x86_64               randconfig-a011-20210611
x86_64               randconfig-a012-20210611
x86_64               randconfig-a014-20210611
x86_64               randconfig-a016-20210611
x86_64               randconfig-a013-20210611

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
