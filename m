Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9B74D192C
	for <lists+devel-acpica@lfdr.de>; Tue,  8 Mar 2022 14:30:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3F4F6100EA126;
	Tue,  8 Mar 2022 05:30:29 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6987B100EB842
	for <devel@acpica.org>; Tue,  8 Mar 2022 05:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646746227; x=1678282227;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=G0hKG25g9et/AdWP/FKZ/bsA5yCXu3qpFDQrW0hJLhc=;
  b=hDEkomO1uuwNga2QheRy6hEsGV/KqUG2n6T5PThQmopM/vhsbbqLGHbK
   uYDl8CJ4B9AdhjHtjla3dNUBBmYE5OE9+b0Zpc+AN3VvVcFRonr8f0wVh
   1Q7i/aubbulF8kPKWz838SxzBsz2fXlohkd5UEmRh4MiF9CgUvPK15YjI
   CTTplBlSM/vUA8L3+XQ1M8SpUYUdGODkc2fFwHR0Lqq/guiBdG3dKitIV
   wuBQS53acuUPBXPHP6xpUGqDHcnXloqNY5mDxcwx10CElJn2mFpxLHx+b
   ouUfllGXt2FHm+s/LXAzkq0Sc7Ugj8LGjbh+QxSh9qONC1DHE0PjQzQMM
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="315396302"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400";
   d="scan'208";a="315396302"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2022 05:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400";
   d="scan'208";a="687918823"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 08 Mar 2022 05:30:24 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nRZuy-0001SQ-0K; Tue, 08 Mar 2022 13:30:24 +0000
Date: Tue, 08 Mar 2022 21:29:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62275a57.3dDihesTVN0ZrdNn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 37A6EAYR2B5N6DNVINRWMDPZDPSZGN3G
X-Message-ID-Hash: 37A6EAYR2B5N6DNVINRWMDPZDPSZGN3G
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS e8f79f1bdea6a6a50337fe86e79e651a699352ca
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/37A6EAYR2B5N6DNVINRWMDPZDPSZGN3G/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: e8f79f1bdea6a6a50337fe86e79e651a699352ca  Merge branch 'acpica' into bleeding-edge

elapsed time: 990m

configs tested: 107
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220307
arm                      footbridge_defconfig
alpha                            alldefconfig
m68k                           sun3_defconfig
sh                           se7722_defconfig
sh                          urquell_defconfig
arm                         nhk8815_defconfig
powerpc                      ep88xc_defconfig
arm                         assabet_defconfig
arm                          simpad_defconfig
m68k                       m5475evb_defconfig
powerpc                     taishan_defconfig
arm                           viper_defconfig
powerpc                      arches_defconfig
arm                  randconfig-c002-20220308
arm                  randconfig-c002-20220307
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
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
nds32                             allnoconfig
nios2                               defconfig
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
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a003-20220307
i386                 randconfig-a001-20220307
i386                 randconfig-a004-20220307
i386                 randconfig-a002-20220307
i386                 randconfig-a005-20220307
i386                 randconfig-a006-20220307
x86_64                        randconfig-a015
x86_64               randconfig-a003-20220307
x86_64               randconfig-a001-20220307
x86_64               randconfig-a002-20220307
x86_64               randconfig-a006-20220307
x86_64               randconfig-a004-20220307
x86_64               randconfig-a005-20220307
riscv                randconfig-r042-20220308
arc                  randconfig-r043-20220307
arc                  randconfig-r043-20220308
s390                 randconfig-r044-20220308
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                   milbeaut_m10v_defconfig
mips                      maltaaprp_defconfig
arm                         shannon_defconfig
mips                     loongson1c_defconfig
powerpc                        fsp2_defconfig
x86_64                        randconfig-a016
i386                 randconfig-a013-20220307
i386                 randconfig-a012-20220307
i386                 randconfig-a011-20220307
i386                 randconfig-a016-20220307
i386                 randconfig-a015-20220307
i386                 randconfig-a014-20220307
hexagon              randconfig-r041-20220307
riscv                randconfig-r042-20220307
s390                 randconfig-r044-20220307
hexagon              randconfig-r045-20220308
hexagon              randconfig-r041-20220308
hexagon              randconfig-r045-20220307

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
