Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A281A576C32
	for <lists+devel-acpica@lfdr.de>; Sat, 16 Jul 2022 08:31:10 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8A6BB100EA2A5;
	Fri, 15 Jul 2022 23:31:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3B2F6100EA2A5
	for <devel@acpica.org>; Fri, 15 Jul 2022 23:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657953064; x=1689489064;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=f1+wvjfXxGXpf3L37oJl18eujoMaSMdPMFUctu6Zo0A=;
  b=ND+lnoSj+7TqBX/jNkU3WRdq3d1zP7YABvouYYDwYG5q7aj38vsDBGT/
   KxEKVJ+QThStNDAfE3OrHfRyG7W7BOX0ScWHvhvvmNlr+GSUhEbcRLTF1
   Jf/8jLnJ72FCGDpInItw5yxDdr157MCEGd/iH/4gRJGoOoLlNR6h3fcpI
   oIMUbwmOrsIj9ALK8j8BB1udMMSTjji4YXHY/JKPgHXq9lwvJMM8l+q1h
   QRYJilrUF9uXuRrdjQKGtXIUYwE339Mv1z3VxAB6G8vq0NU8FPIs9iqO6
   E7UUcJS6d+vbxALMwHEAHUy99K54hPFHlIEnM6cUlxggnIR8bURW5VseW
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="265741785"
X-IronPort-AV: E=Sophos;i="5.92,275,1650956400";
   d="scan'208";a="265741785"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2022 23:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,275,1650956400";
   d="scan'208";a="629360092"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 15 Jul 2022 23:31:00 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1oCbKO-0001E0-8n;
	Sat, 16 Jul 2022 06:31:00 +0000
Date: Sat, 16 Jul 2022 14:30:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62d25b1e.6LLu6+/fikrj8XaM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: ITNORN4TYUS4YZRQPUELUC2GH5ZEUKEJ
X-Message-ID-Hash: ITNORN4TYUS4YZRQPUELUC2GH5ZEUKEJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 940a7197e7544d2c88df2826b84fc324dd54ba47
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ITNORN4TYUS4YZRQPUELUC2GH5ZEUKEJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 940a7197e7544d2c88df2826b84fc324dd54ba47  Merge branch 'acpi-video' into bleeding-edge

elapsed time: 721m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
powerpc                 mpc85xx_cds_defconfig
arm                        mvebu_v7_defconfig
parisc                generic-32bit_defconfig
mips                           jazz_defconfig
arm                          simpad_defconfig
arm                       multi_v4t_defconfig
ia64                             allmodconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220715
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
arm                       versatile_defconfig
arm                          pcm027_defconfig
powerpc                      acadia_defconfig
powerpc                     mpc5200_defconfig
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
hexagon              randconfig-r045-20220715
hexagon              randconfig-r041-20220715
riscv                randconfig-r042-20220715
s390                 randconfig-r044-20220715

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
