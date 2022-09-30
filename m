Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E535F07FB
	for <lists+devel-acpica@lfdr.de>; Fri, 30 Sep 2022 11:50:42 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9F4DD100EA11A;
	Fri, 30 Sep 2022 02:50:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 001A5100EA116
	for <devel@acpica.org>; Fri, 30 Sep 2022 02:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664531436; x=1696067436;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=1wg7CA05LIEooOAq3MIE1pmjiNA5DsimMXjeordC+To=;
  b=DtdAQpF4HNQPYYgB2PTe3ovMLq6Q24rcdYy0rrgc6lGCUc6fNIMkZ8Vu
   Sm1iaGlDOyJyRWffXa0lsVb04YVolaOSxSoWS3cqfj+RhlpKFaukf80w3
   ck7uXZ0VAf16pRbOJPUxM8sj4QDpJkJX7JHtS1bAuJFJnrlHJVxSAI8nU
   MiN5xqAu1mbl8WRzlJLOxtYqLhwYqjiyHkRgG8YPgkZaJDYZLzrjxlYBV
   ChPsV3uQ8aLTEbIi4dUqyk06MQazjy6B4G8dJRQlNy3bXByQnE+t3x+2u
   llbVh1F2HHglxwozeCwScLxPjUNoaw8Q3MIqPhavSbBbwwSYdh3Y4Ac18
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="299755471"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200";
   d="scan'208";a="299755471"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2022 02:50:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655901493"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200";
   d="scan'208";a="655901493"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 30 Sep 2022 02:50:24 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oeCf2-0000s6-06;
	Fri, 30 Sep 2022 09:50:24 +0000
Date: Fri, 30 Sep 2022 17:49:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6336bbc0.9jrW43t4lioyUFMR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: RW4BZRNM3AI6NQ6E4YDZYXDIZZZ3OZY3
X-Message-ID-Hash: RW4BZRNM3AI6NQ6E4YDZYXDIZZZ3OZY3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS fa117123159976b3799c5738677e0489f8537abc
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RW4BZRNM3AI6NQ6E4YDZYXDIZZZ3OZY3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: fa117123159976b3799c5738677e0489f8537abc  Merge branches 'acpi-pm', 'acpi-docs' and 'acpi-misc' into linux-next

elapsed time: 833m

configs tested: 86
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
s390                             allmodconfig
um                           x86_64_defconfig
alpha                               defconfig
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
x86_64                           rhel-8.3-syz
s390                                defconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
x86_64                               rhel-8.3
i386                                defconfig
sh                               allmodconfig
i386                             allyesconfig
x86_64               randconfig-a002-20220926
x86_64                           allyesconfig
mips                             allyesconfig
x86_64               randconfig-a001-20220926
i386                 randconfig-a001-20220926
powerpc                          allmodconfig
x86_64               randconfig-a003-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a006-20220926
i386                 randconfig-a002-20220926
x86_64               randconfig-a005-20220926
i386                 randconfig-a003-20220926
arc                  randconfig-r043-20220925
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
riscv                randconfig-r042-20220925
i386                 randconfig-a006-20220926
arm                                 defconfig
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arm64                            allyesconfig
m68k                             allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                        edosk7760_defconfig
m68k                        mvme147_defconfig
x86_64                           alldefconfig
m68k                        m5307c3_defconfig
i386                          randconfig-c001
powerpc                        cell_defconfig
m68k                                defconfig
arm                          gemini_defconfig
mips                     decstation_defconfig
sh                         apsh4a3a_defconfig
sh                             shx3_defconfig
sh                     magicpanelr2_defconfig
mips                      fuloong2e_defconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                   microwatt_defconfig
mips                      malta_kvm_defconfig
powerpc                  mpc885_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
