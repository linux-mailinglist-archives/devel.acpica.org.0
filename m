Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A625A915D
	for <lists+devel-acpica@lfdr.de>; Thu,  1 Sep 2022 09:57:37 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C4C17100EAB0F;
	Thu,  1 Sep 2022 00:57:33 -0700 (PDT)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DD7C4100F2274
	for <devel@acpica.org>; Thu,  1 Sep 2022 00:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662019051; x=1693555051;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=aM7RmM5oLdR57n0tmAUEZLSoOLEkDuToJf2Jbm2ZbqU=;
  b=PEoeX/fg/q8ZVSeoXcVGYfzJHIVLmFuMnsocGDrxj4288S+AzEZOJvGZ
   b4LzMNTkHcGwaBNIddfayzLpHgKcI4YkZ9VxGQ66F+nuo8jcBrVLCei1K
   +0iN5nYpLxaV1DlR5GprVqJwQ+2Tb/5YMud37CofncO/szkgC5g4Y9U4w
   9TPGrPYjERL+cOyFQ8bT3b4Tgwj8GkBs5l0E079R+TG0Xqs7eMlXus3aQ
   Kxv6/W70Z0f7peC8H32NnGkbBOv3MTfh6jYVBNgsaracSCArJ1D41XOz4
   TkQ9RNFKMlfq/apVzPB3Yxw10QBtZMDjem5pJEMKiad3RPlbveLTtVYKS
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="293226071"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200";
   d="scan'208";a="293226071"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2022 00:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200";
   d="scan'208";a="738399823"
Received: from lkp-server02.sh.intel.com (HELO b138c9e8658c) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 01 Sep 2022 00:57:16 -0700
Received: from kbuild by b138c9e8658c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oTf4e-00005o-0U;
	Thu, 01 Sep 2022 07:57:16 +0000
Date: Thu, 01 Sep 2022 15:56:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <631065a0.1f0caBq0YvTQRxgc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: QYPASUD5MCEA6GUD6J6DCMQ7R3YYFD5E
X-Message-ID-Hash: QYPASUD5MCEA6GUD6J6DCMQ7R3YYFD5E
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS f569faad1ef4d4f88432e6d5efba2562e0d1bc1f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QYPASUD5MCEA6GUD6J6DCMQ7R3YYFD5E/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: f569faad1ef4d4f88432e6d5efba2562e0d1bc1f  Merge branch 'thermal-core' into bleeding-edge

elapsed time: 722m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220831
s390                 randconfig-r044-20220831
riscv                randconfig-r042-20220831
x86_64                              defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                               rhel-8.3
x86_64                        randconfig-a015
alpha                            allyesconfig
arc                              allyesconfig
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                           allyesconfig
i386                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
i386                          randconfig-a014
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                                 defconfig
x86_64                        randconfig-a006
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220831
hexagon              randconfig-r045-20220831
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
