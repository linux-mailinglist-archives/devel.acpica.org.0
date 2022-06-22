Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E3D5549DB
	for <lists+devel-acpica@lfdr.de>; Wed, 22 Jun 2022 14:18:53 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F27CC100F3948;
	Wed, 22 Jun 2022 05:18:50 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 9F140100EB32A
	for <devel@acpica.org>; Wed, 22 Jun 2022 05:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655900328; x=1687436328;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=mR40RNTUMjCQ478CK8Zd1sWFPAqPydu8In9LHm/65dY=;
  b=ZGlJH5YsQofq26S+iqDgIj/ICf5ug8tDlbCVTwG+1Go+NH6Uh+kdS6BS
   XRZSoUgceyiAZ6zi+fi29UE6e3D+3NwdOWSEWBEQV3ER/AqeMbP/D0euv
   8X+kJ7Z36CrYY1xY/GH8Cnwc7ahJFlSaYGTmwKf2QRs2kUUq8u6JmBfWO
   1p/RqbkiHg79/Ta/LvODemMS7gPO3A9jfiq2sOt+DxJr0p/xFNTwSXQk/
   Uk/D8AzDynZNGDloXw4dRVjRObayQ9UkTIdEd5FhLtODdEhVOc9T5LQ6s
   SuGfMz4oaPUmydyQVQp1GNCnalXGkQle5F2R+l77PTmKRJ85YkSBNyoyj
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="277948201"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400";
   d="scan'208";a="277948201"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2022 05:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400";
   d="scan'208";a="690472618"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2022 05:18:46 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o3zJl-0001FT-RA;
	Wed, 22 Jun 2022 12:18:45 +0000
Date: Wed, 22 Jun 2022 20:17:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62b3086d.odJv5l8iAlTSexUE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: EUZBCAQLWUVVFCLGMDJOJ27BQQH5BGR6
X-Message-ID-Hash: EUZBCAQLWUVVFCLGMDJOJ27BQQH5BGR6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS e99b82b65ff24df6e5c2d1403251e82ef9971ec6
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EUZBCAQLWUVVFCLGMDJOJ27BQQH5BGR6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: e99b82b65ff24df6e5c2d1403251e82ef9971ec6  Merge branch 'pm-sleep' into bleeding-edge

elapsed time: 990m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
m68k                       m5249evb_defconfig
ia64                         bigsur_defconfig
openrisc                 simple_smp_defconfig
powerpc                      bamboo_defconfig
arm                           stm32_defconfig
mips                            ar7_defconfig
ia64                      gensparse_defconfig
powerpc                      ppc6xx_defconfig
riscv                               defconfig
ia64                             allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                              debian-10.3
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz

clang tested configs:
arm                       cns3420vb_defconfig
s390                             alldefconfig
arm                           sama7_defconfig
arm                          moxart_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                      acadia_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622
s390                 randconfig-r044-20220622

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
