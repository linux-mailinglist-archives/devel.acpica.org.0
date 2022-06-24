Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D74CB559755
	for <lists+devel-acpica@lfdr.de>; Fri, 24 Jun 2022 12:07:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9551E100EA2B7;
	Fri, 24 Jun 2022 03:07:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B0686100EA2AA
	for <devel@acpica.org>; Fri, 24 Jun 2022 03:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656065229; x=1687601229;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=owCO81vPyQw261oLlCMFQ3bvjpzNn/rVeycTtucQfrs=;
  b=OFBY6GQn2IxgO3ndbLHP+9BwsWJpu6e63PtdE6JaZc66ulQzrx1Z52Ii
   GXi8CUXxM4rFZ4NjsCRgJ4oeOU/AUDmZruT0HWJst1p+Fx8Ks09ofWPaN
   Xv7M5IJ1JUNe+8Mo4Ll2irA9Ba8WVgoIzvZ6SLp9XHNaQA4WWxrqdydrD
   991S3M/gW1WyNAWJwDlF+g7jyq4Opz/bap6/+eUYE5nJfF4cO5PXNogh8
   mf1dfjYSkM3prj1nz7cc7ZhOB+Jwuc2LVeT4d2pEIGrzI6iTX2LDhTHyG
   hy/bMuDtVA13fAH7ngndQm8hG+nw2z8C9xLV9h25cp3k3b8ono9d/qZd9
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="306435572"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400";
   d="scan'208";a="306435572"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2022 03:06:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400";
   d="scan'208";a="691464763"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2022 03:06:53 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o4gDE-0003yJ-Om;
	Fri, 24 Jun 2022 10:06:52 +0000
Date: Fri, 24 Jun 2022 18:06:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62b58c99.yhqqU9hi6tHhKIwb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 5KM5EKSYD2UOXWY4IJ2EOKT3F3SAHNK6
X-Message-ID-Hash: 5KM5EKSYD2UOXWY4IJ2EOKT3F3SAHNK6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 98ab5127f6cfed6a3cffe752b2ce80eb3bdc1da8
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5KM5EKSYD2UOXWY4IJ2EOKT3F3SAHNK6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 98ab5127f6cfed6a3cffe752b2ce80eb3bdc1da8  Merge branch 'pm-cpufreq-fixes' into bleeding-edge

elapsed time: 722m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                              debian-10.3
i386                                defconfig
i386                   debian-10.3-kselftests
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220622
arc                  randconfig-r043-20220623
riscv                randconfig-r042-20220623
s390                 randconfig-r044-20220623
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220623
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622
hexagon              randconfig-r045-20220623

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
