Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B1E60DB9B
	for <lists+devel-acpica@lfdr.de>; Wed, 26 Oct 2022 08:52:00 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9A9A8100F2255;
	Tue, 25 Oct 2022 23:51:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8C71F100EB323
	for <devel@acpica.org>; Tue, 25 Oct 2022 23:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666767113; x=1698303113;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=48A3whc/JIcid0pEpadUw/To0jFtvo9Q0V16FOxTKTI=;
  b=Nqy7CFC/cEaMq9Nz2aBzxCsJOfD5H3XpJTbERxVhz84MEUkXMRKGstW6
   TgfoZ6beuV8jE/MyRu8Ho35fde1GImGS+bKB3qGiUH3COYYgr3HOTgiol
   dSSgXNRhzY/VN4dJFG7fkJX0JtLjtFaYbwnrQ2zd8a5iMS38xgMp/fvA/
   oObbx6R0gK2idenlgayqaH1VKbNJQU5LYChLVRImHDSxh6NMvXCLW/6zf
   9opsVbKKjansvcn4FsOdx1ka/4cULO0zrXoFrwKgLGloFBjgJUsSE+ONH
   CpVZr64z4PuRP53YVZTiroRAzbf8A0fy49WmocLxjiqFQ7WDDFTPf9iqm
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369941653"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800";
   d="scan'208";a="369941653"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2022 23:51:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="583052818"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800";
   d="scan'208";a="583052818"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 25 Oct 2022 23:51:42 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1onaGL-000779-2r;
	Wed, 26 Oct 2022 06:51:41 +0000
Date: Wed, 26 Oct 2022 14:51:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6358d8f0.B/F75SsPK28VY6gy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: KQADEHH2GQHKGYMQAQCHQCI2T6XNPIFJ
X-Message-ID-Hash: KQADEHH2GQHKGYMQAQCHQCI2T6XNPIFJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 4731015a0f0468e1ab6c2c0b417eac166f1a6d24
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KQADEHH2GQHKGYMQAQCHQCI2T6XNPIFJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 4731015a0f0468e1ab6c2c0b417eac166f1a6d24  Merge branch 'devprop' into bleeding-edge

elapsed time: 723m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
arc                              allyesconfig
um                           x86_64_defconfig
arc                               allnoconfig
alpha                            allyesconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
m68k                             allyesconfig
arc                                 defconfig
m68k                             allmodconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
mips                             allyesconfig
x86_64                              defconfig
powerpc                          allmodconfig
x86_64                               rhel-8.3
sh                               allmodconfig
x86_64                           allyesconfig
ia64                             allmodconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arc                  randconfig-r043-20221025
x86_64                        randconfig-a013
i386                 randconfig-a011-20221024
x86_64                        randconfig-a011
i386                 randconfig-a015-20221024
i386                 randconfig-a014-20221024
i386                 randconfig-a013-20221024
i386                 randconfig-a012-20221024
i386                 randconfig-a016-20221024
i386                             allyesconfig
x86_64                        randconfig-a015
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
sh                          kfr2r09_defconfig
arc                              alldefconfig
sh                           sh2007_defconfig
sh                        edosk7760_defconfig
sh                          r7780mp_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64               randconfig-a001-20221024
x86_64               randconfig-a005-20221024
x86_64               randconfig-a003-20221024
i386                          randconfig-a006
x86_64               randconfig-a004-20221024
x86_64               randconfig-a002-20221024
hexagon              randconfig-r041-20221025
riscv                randconfig-r042-20221025
hexagon              randconfig-r045-20221025
x86_64               randconfig-a006-20221024
s390                 randconfig-r044-20221025
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                        maltaup_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
