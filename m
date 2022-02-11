Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E40B54B268E
	for <lists+devel-acpica@lfdr.de>; Fri, 11 Feb 2022 13:57:56 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C92C1100DEFD1;
	Fri, 11 Feb 2022 04:57:54 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3D135100EAB47
	for <devel@acpica.org>; Fri, 11 Feb 2022 04:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644584273; x=1676120273;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=H7hr8Tb0BcEtWSXOSLmmpsuGSrqeWSlH/gYsWFpNPdo=;
  b=LSfwTcXb2todyo62NSU1iwaOeYWr+ghTH1f73MvT8sgkBtVTWwzxnLAv
   87jtg2LBhq715J/6r18A3pk52E0Oci4L2E0nCKINB92SOwCcKRrME53EO
   2YcDip4t4HZrwFzwuoz2P3eTd187NSINi8KZzsUoKxFWx1wCzgXIXzhrZ
   WPHRATKttJ8BJrZgLV8SdgQ0cCAhfF4taKxufhb773hpKwyBNfcqRqfCw
   41/atYCj7mtsH1rQP7NSzZae+BZameDl26tLGP4LHXDxhMIIfyVuuDyk/
   SmQ4Var9tftWnMy9GMFIrhMR4vqPIbpUcYX+xGPEZGKAH/+EMOaZ4qfeN
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="230368655"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600";
   d="scan'208";a="230368655"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2022 04:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600";
   d="scan'208";a="772089668"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 11 Feb 2022 04:57:50 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nIVUk-0004bZ-0u; Fri, 11 Feb 2022 12:57:50 +0000
Date: Fri, 11 Feb 2022 20:57:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62065d3d.Ya6trq6Nc15wfeQf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: EKKLCCCQW6ONX7KFE7MMK6OA7IVD3JDD
X-Message-ID-Hash: EKKLCCCQW6ONX7KFE7MMK6OA7IVD3JDD
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS a24b2df244afcb80fcb7c12537b3c86a5be3e1f9
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EKKLCCCQW6ONX7KFE7MMK6OA7IVD3JDD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: a24b2df244afcb80fcb7c12537b3c86a5be3e1f9  Merge branch 'thermal-hfi' into bleeding-edge

elapsed time: 769m

configs tested: 90
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
arm                           h3600_defconfig
powerpc                       eiger_defconfig
xtensa                          iss_defconfig
openrisc                 simple_smp_defconfig
arm                          simpad_defconfig
mips                  maltasmvp_eva_defconfig
m68k                          atari_defconfig
xtensa                       common_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                 mpc8540_ads_defconfig
arm                  randconfig-c002-20220209
arm                  randconfig-c002-20220211
arm                  randconfig-c002-20220210
ia64                             allyesconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
nds32                             allnoconfig
nios2                               defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220211
arm                  randconfig-c002-20220211
i386                          randconfig-c001
mips                 randconfig-c004-20220211
s390                 randconfig-c005-20220211
riscv                randconfig-c006-20220211
arm                     am200epdkit_defconfig
arm                         orion5x_defconfig
powerpc                   lite5200b_defconfig
powerpc                     ksi8560_defconfig
mips                       lemote2f_defconfig
arm                                 defconfig
mips                           rs90_defconfig
powerpc                  mpc885_ads_defconfig
i386                          randconfig-a002
x86_64                        randconfig-a012
riscv                randconfig-r042-20220211
s390                 randconfig-r044-20220211

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
