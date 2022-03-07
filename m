Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F25134D082B
	for <lists+devel-acpica@lfdr.de>; Mon,  7 Mar 2022 21:11:09 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D8736100EB32F;
	Mon,  7 Mar 2022 12:11:07 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 66644100EB847
	for <devel@acpica.org>; Mon,  7 Mar 2022 12:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646683865; x=1678219865;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=tGwgDlH9PPA5nTATEJHR9cOY/CDSl2ETLaBxt7WWT2M=;
  b=YaR3s7yHwHCORkCy/LodQgCsIIH/OVA68HJ7Z9VtxxoLxQ0gjAx+QTnm
   NzRoiSeP1+Gs9PLsuAbMTsmfiNm/iLlUW7H9uFfkdEmJOC6RtCdV4/dej
   kNnCiFZDVXs022/cCUZtre+bf0KL55uJPgGmnqkvV8f1q0DfCGthfcbXu
   lWELu/LbQxN0RyFKoXc8FimHMXUyF1JjwG+YSRFOYCKZP/1Slcs08sQ4I
   BvGn9bolDH6Ct549ju/igxdTXxvMV1vtEpKbfvOk3dpMknnJ003CO5rc9
   L77JEB91HoHL8YYy4hix7VFnKzkCYqZVaf6sjX24MtTj8fDj44tlU/Hq2
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="340927009"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400";
   d="scan'208";a="340927009"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 12:11:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400";
   d="scan'208";a="512817397"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 07 Mar 2022 12:11:02 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nRJh7-0000g4-RM; Mon, 07 Mar 2022 20:11:01 +0000
Date: Tue, 08 Mar 2022 04:10:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <622666a9.bPAUfFhMqYIlzNDe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: C6YWFB24XZQXXJZ4SCEYGH2P2C4AWWNY
X-Message-ID-Hash: C6YWFB24XZQXXJZ4SCEYGH2P2C4AWWNY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 61de6fd32880fd2b7ca0c26a299df6af054aa286
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/C6YWFB24XZQXXJZ4SCEYGH2P2C4AWWNY/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 61de6fd32880fd2b7ca0c26a299df6af054aa286  Merge branch 'pm-cpuidle' into bleeding-edge

elapsed time: 783m

configs tested: 89
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220307
mips                 randconfig-c004-20220307
arm                           sama5_defconfig
sh                            migor_defconfig
arm                          gemini_defconfig
parisc                generic-32bit_defconfig
openrisc                            defconfig
sh                          rsk7201_defconfig
powerpc                    amigaone_defconfig
sh                           se7724_defconfig
arm                      integrator_defconfig
sh                        sh7763rdp_defconfig
powerpc                 canyonlands_defconfig
sh                   rts7751r2dplus_defconfig
s390                          debug_defconfig
arm                  randconfig-c002-20220307
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
arc                  randconfig-r043-20220307
x86_64               randconfig-a003-20220307
x86_64               randconfig-a001-20220307
x86_64               randconfig-a002-20220307
x86_64               randconfig-a004-20220307
x86_64               randconfig-a006-20220307
x86_64               randconfig-a005-20220307
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                      walnut_defconfig
mips                      bmips_stb_defconfig
mips                          ath79_defconfig
mips                           ip22_defconfig
i386                 randconfig-a016-20220307
i386                 randconfig-a015-20220307
hexagon              randconfig-r041-20220307
riscv                randconfig-r042-20220307
hexagon              randconfig-r045-20220307
s390                 randconfig-r044-20220307

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
