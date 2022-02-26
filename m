Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC614C55F0
	for <lists+devel-acpica@lfdr.de>; Sat, 26 Feb 2022 13:54:59 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E4C32100EAB65;
	Sat, 26 Feb 2022 04:54:56 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 81B75100EAB5F
	for <devel@acpica.org>; Sat, 26 Feb 2022 04:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645880094; x=1677416094;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=S+EXp80RPbZsZvoDlUMfsZhHkuO+dmZhNNQYuzSkbx0=;
  b=dTkk5eWQvZBfaedr4r/BZpdNTQw4yzi9/tK2L1TqUrVbmBW2quJZGp1B
   EO/7uGGCV76pnnw+z5MCRWiK8WmMWoMaoejE48r/ZZ5CFCRqQYyVy0myT
   F2ZJ5lN5kPBr2wHtd3k6IZF5WbrQHw2w/sWNQOdk0dh2iap71ih1PYbvc
   jhpf+6CTJTFQc0JHzBevggQGK848rNaA5ZpTRoDncNw+JdYmRFH8lm1Hi
   AlkCcygSOrGvuE/QxAqs+9LmFKjmAnaVTmLC0Px+vbTtIef1LZX4z5udM
   GaYoQALYJD5xtUNUu6ZGCVfBuxJ08mkDrvRXt2TFeEDMqJgsPEHfrb3lC
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="233279012"
X-IronPort-AV: E=Sophos;i="5.90,139,1643702400";
   d="scan'208";a="233279012"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2022 04:54:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,139,1643702400";
   d="scan'208";a="708152006"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 26 Feb 2022 04:54:51 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nNwb5-0005U1-06; Sat, 26 Feb 2022 12:54:51 +0000
Date: Sat, 26 Feb 2022 20:54:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <621a230b.BgEEdIca0UOh8Jck%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: IPIP5DMROP2FJFC7Z4KDB5YMXJ2TQ3YC
X-Message-ID-Hash: IPIP5DMROP2FJFC7Z4KDB5YMXJ2TQ3YC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 203eb3b975f961128ac00226afd60fbf7ceb2dfb
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IPIP5DMROP2FJFC7Z4KDB5YMXJ2TQ3YC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 203eb3b975f961128ac00226afd60fbf7ceb2dfb  Merge branch 'acpi-fan' into bleeding-edge

elapsed time: 721m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220225
mips                         tb0226_defconfig
sh                          kfr2r09_defconfig
arc                      axs103_smp_defconfig
powerpc                     pq2fads_defconfig
arm                           sama5_defconfig
parisc                generic-64bit_defconfig
microblaze                      mmu_defconfig
arm                           h5000_defconfig
sh                           se7750_defconfig
h8300                       h8s-sim_defconfig
mips                          rb532_defconfig
sh                        sh7757lcr_defconfig
arm                  randconfig-c002-20220225
arm                  randconfig-c002-20220226
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220225
s390                 randconfig-r044-20220226
riscv                randconfig-r042-20220226
arc                  randconfig-r043-20220226
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                 mpc8315_rdb_defconfig
mips                     loongson2k_defconfig
riscv                    nommu_virt_defconfig
mips                           ip28_defconfig
powerpc                     ppa8548_defconfig
arm                           sama7_defconfig
mips                      malta_kvm_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220225
hexagon              randconfig-r041-20220226
hexagon              randconfig-r045-20220226
s390                 randconfig-r044-20220225
hexagon              randconfig-r041-20220225
riscv                randconfig-r042-20220225

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
