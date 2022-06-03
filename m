Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC63C53C5FF
	for <lists+devel-acpica@lfdr.de>; Fri,  3 Jun 2022 09:24:10 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 50016100EAB4C;
	Fri,  3 Jun 2022 00:24:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 58DB7100F2255
	for <devel@acpica.org>; Fri,  3 Jun 2022 00:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1654241045; x=1685777045;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=7Yciyx7VAW/zJpcHuy8/gsTy1zy7JoOWU2t1hPiCBEk=;
  b=IHRutndjt7un5PB2URRMGYFWzy+r67RN77EDOLZypunRcKPhMSgaUfRO
   DyqP622AEGpfSsVdsrmAooXM3z9eVFxr1PiSm/BTxAVBYHEXKbQ2uDuWT
   OV+t9FIMQx5tJTX5SbcUZFiJG+rP3V+cshWG2VLOsq9PkZ5T0eN3SHOGS
   VaIeWTpUeOHl1mOEcgJWxBUl/P51Zg3+bYgBsIr8VTVcTIHkMn+v6YRMU
   VlbZK6C7agaeQIpR7KRCGSUQS6nly0QTyIwUqtFP/1iJ991cihGTsaZ8Z
   WJOmYeo5gQyAmSI5+g1SJjOEC8o+X7gCSSz0Qv9ZK276vlh7ZZLQWkOLs
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362562658"
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600";
   d="scan'208";a="362562658"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2022 00:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600";
   d="scan'208";a="707927252"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 03 Jun 2022 00:24:03 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nx1f8-0006m7-9e;
	Fri, 03 Jun 2022 07:24:02 +0000
Date: Fri, 03 Jun 2022 15:23:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6299b6f6.ajGGF30FBwNQpUxF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: WHA7OXH3UIMD4JAS7JFOMPDDI2YSGERV
X-Message-ID-Hash: WHA7OXH3UIMD4JAS7JFOMPDDI2YSGERV
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 473d7985fed12e32bd979fc32b1c910f51d396bd
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WHA7OXH3UIMD4JAS7JFOMPDDI2YSGERV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 473d7985fed12e32bd979fc32b1c910f51d396bd  Merge branch 'pm-sysoff' into linux-next

elapsed time: 723m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
sh                   secureedge5410_defconfig
arm64                            alldefconfig
sh                         microdev_defconfig
xtensa                generic_kc705_defconfig
powerpc                      cm5200_defconfig
sh                ecovec24-romimage_defconfig
arm                       aspeed_g5_defconfig
arm                           sama5_defconfig
mips                         mpc30x_defconfig
openrisc                 simple_smp_defconfig
x86_64                        randconfig-c001
i386                          randconfig-c001
arm                  randconfig-c002-20220531
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
arc                              allyesconfig
nios2                               defconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc64                            defconfig
s390                                defconfig
s390                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220531
riscv                randconfig-r042-20220531
s390                 randconfig-r044-20220531
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
mips                 randconfig-c004-20220531
x86_64                        randconfig-c007
i386                          randconfig-c001
s390                 randconfig-c005-20220531
arm                  randconfig-c002-20220531
powerpc              randconfig-c003-20220531
riscv                randconfig-c006-20220531
mips                malta_qemu_32r6_defconfig
mips                        workpad_defconfig
arm                             mxs_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     tqm8540_defconfig
arm                       cns3420vb_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220531
hexagon              randconfig-r045-20220531

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
