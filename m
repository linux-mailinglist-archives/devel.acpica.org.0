Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B69A58D3FF
	for <lists+devel-acpica@lfdr.de>; Tue,  9 Aug 2022 08:44:59 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9313E100EB842;
	Mon,  8 Aug 2022 23:44:56 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B38D7100EBB7F
	for <devel@acpica.org>; Mon,  8 Aug 2022 23:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660027494; x=1691563494;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=dExwSIWLQG4fAZxi/foT2PEZFM/JrpjVCycSyFAiDhc=;
  b=G47hhP/qcCvev6LQkXtTLzwvOfp1GltHvGGUzW7HUpYwlbQLxH+F2QWy
   bjm8YNbV7d7SsyqlNALIgxkhpcRYR2N+J2pny6/2YQ+oJROERN5xynK4i
   /vvUcdUNlXY9kkYvK2gNpKR2A4LB7r6Cm7CEiyWI/lF35xuk8a0QdCtbu
   F2HlPKJb49KNkXFjIfymu/sxXimdVvljAxsdeNZ4j7JZ/vnGuu1aNyTFr
   jmxQyeJ5eg0H6nxDImCshb9R5pF/T3Fdr67JYq/K14bZADGTzZIHvTAQo
   7vdV2Abi+n8Cv1Fo0zp8XvsQweA/P1+a+B7pdClsC1juPpLzT7+53poIQ
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="288332568"
X-IronPort-AV: E=Sophos;i="5.93,223,1654585200";
   d="scan'208";a="288332568"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Aug 2022 23:44:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,223,1654585200";
   d="scan'208";a="731029611"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 08 Aug 2022 23:44:43 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oLIyo-000Mo9-1g;
	Tue, 09 Aug 2022 06:44:42 +0000
Date: Tue, 09 Aug 2022 14:43:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62f2022d.h43xFjfErjTiFA43%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NFKQQATI6BFQZIOWB7RIR6WRHK7GD4CT
X-Message-ID-Hash: NFKQQATI6BFQZIOWB7RIR6WRHK7GD4CT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 2c461d8f205740fbdcbb8f7c72ea3468d89c7b1e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NFKQQATI6BFQZIOWB7RIR6WRHK7GD4CT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 2c461d8f205740fbdcbb8f7c72ea3468d89c7b1e  Merge branch 'acpi-tables' into bleeding-edge

elapsed time: 721m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                 randconfig-a001-20220808
i386                 randconfig-a002-20220808
i386                 randconfig-a003-20220808
i386                 randconfig-a004-20220808
i386                 randconfig-a005-20220808
i386                 randconfig-a006-20220808
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
powerpc                           allnoconfig
i386                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64               randconfig-a003-20220808
arc                              allyesconfig
x86_64               randconfig-a004-20220808
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20220808
alpha                            allyesconfig
x86_64               randconfig-a001-20220808
x86_64                           rhel-8.3-syz
x86_64               randconfig-a005-20220808
x86_64               randconfig-a002-20220808
x86_64               randconfig-a006-20220808
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                              allyesconfig
ia64                             allmodconfig
arm64                            allyesconfig

clang tested configs:
hexagon              randconfig-r045-20220808
riscv                randconfig-r042-20220808
hexagon              randconfig-r041-20220808
s390                 randconfig-r044-20220808
x86_64               randconfig-a013-20220808
x86_64               randconfig-a015-20220808
x86_64               randconfig-a016-20220808
x86_64               randconfig-a012-20220808
x86_64               randconfig-a011-20220808
x86_64               randconfig-a014-20220808
i386                 randconfig-a013-20220808
i386                 randconfig-a012-20220808
i386                 randconfig-a014-20220808
i386                 randconfig-a011-20220808
i386                 randconfig-a016-20220808
i386                 randconfig-a015-20220808

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
