Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E83984AD5A6
	for <lists+devel-acpica@lfdr.de>; Tue,  8 Feb 2022 11:45:51 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C994D100E5D86;
	Tue,  8 Feb 2022 02:45:49 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 734E7100F2250
	for <devel@acpica.org>; Tue,  8 Feb 2022 02:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644317142; x=1675853142;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=+KO4sF4k8MB+WmyP2JsU+xI5l1gssY/zGbTiH6WguDQ=;
  b=G1SGNUdPdvg8GGA3KimhK3ia8SUcBuoB4MJ24lj8tUZjot02p94B1vFg
   itS2aaLFi8aFNCImG/rn6M+IaYem3LjYDZ4Pp2gO1+jYs9hinhLCx+G99
   9Su+RCwYPK903cAPu3L/A8VKqyglB2EMMeh8SHk995rVm878zqSG8ZnMw
   uIlOU9IaU+zDCOtocB8kbAuKgluLjCz9F/nh089ZufLwBoKbmEYIDUPPM
   VP/iVkiSfWReyMW7BbCOJAy5OPGn2yXarXMp1a6ULpkoBxyTS92UL2XuP
   mDiQn8QHZSBPxLW4QPRrvV7WOU3tAE+t/1+TLWJqSHyGNcGPs8T9O2Y8S
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="229572146"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600";
   d="scan'208";a="229572146"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Feb 2022 02:45:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600";
   d="scan'208";a="481901913"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 08 Feb 2022 02:45:20 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nHNzr-00003Y-Sq; Tue, 08 Feb 2022 10:45:19 +0000
Date: Tue, 08 Feb 2022 18:44:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6202498e.hDHNVPWL/oPrDzPj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 5QHOHHTVMOAHLIKI6RCE3ZLZKR42NJNW
X-Message-ID-Hash: 5QHOHHTVMOAHLIKI6RCE3ZLZKR42NJNW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 963096e03c9e753d00dd0a04bcf4699b5a05b816
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5QHOHHTVMOAHLIKI6RCE3ZLZKR42NJNW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 963096e03c9e753d00dd0a04bcf4699b5a05b816  Merge branch 'acpi-pm' into bleeding-edge

elapsed time: 723m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220207
sh                               alldefconfig
sh                           se7751_defconfig
mips                            ar7_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                        cell_defconfig
sh                         ecovec24_defconfig
arm                        clps711x_defconfig
sh                        edosk7760_defconfig
arm                        keystone_defconfig
sparc                       sparc32_defconfig
m68k                       m5475evb_defconfig
m68k                        m5407c3_defconfig
sh                           se7343_defconfig
h8300                       h8s-sim_defconfig
powerpc                      ep88xc_defconfig
arm                  randconfig-c002-20220207
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a013-20220207
x86_64               randconfig-a016-20220207
x86_64               randconfig-a015-20220207
x86_64               randconfig-a012-20220207
x86_64               randconfig-a014-20220207
x86_64               randconfig-a011-20220207
i386                 randconfig-a012-20220207
i386                 randconfig-a013-20220207
i386                 randconfig-a015-20220207
i386                 randconfig-a014-20220207
i386                 randconfig-a011-20220207
i386                 randconfig-a016-20220207
arc                  randconfig-r043-20220207
s390                 randconfig-r044-20220207
riscv                randconfig-r042-20220207
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220208
i386                          randconfig-c001
mips                 randconfig-c004-20220208
arm                  randconfig-c002-20220208
s390                 randconfig-c005-20220208
riscv                randconfig-c006-20220208
mips                           mtx1_defconfig
arm                            dove_defconfig
arm                       versatile_defconfig
powerpc                     pseries_defconfig
x86_64               randconfig-a004-20220207
x86_64               randconfig-a003-20220207
x86_64               randconfig-a002-20220207
x86_64               randconfig-a001-20220207
x86_64               randconfig-a005-20220207
x86_64               randconfig-a006-20220207
i386                 randconfig-a003-20220207
i386                 randconfig-a001-20220207
i386                 randconfig-a002-20220207
i386                 randconfig-a005-20220207
i386                 randconfig-a004-20220207
i386                 randconfig-a006-20220207
hexagon              randconfig-r045-20220207
hexagon              randconfig-r041-20220207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
