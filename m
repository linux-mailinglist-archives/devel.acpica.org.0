Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8154B57948E
	for <lists+devel-acpica@lfdr.de>; Tue, 19 Jul 2022 09:50:54 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9E7AB100F394C;
	Tue, 19 Jul 2022 00:50:50 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6D739100F3949
	for <devel@acpica.org>; Tue, 19 Jul 2022 00:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658217048; x=1689753048;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=f5B7I15nH+XgLc0qgVLlVZ13NYHCNK62nx8dUX5Z29I=;
  b=ZBqPCm3PYmesmHIjrTrFZML0Z9Wt2okKsBgDAvFG+MCWp5kLte83UkNL
   uymmGt37l5s35sIT0YuVZvIWKjvkwKzvDIqO9DN7qlTMLODJk9rvAUaOz
   z4n34LYYYW5de608JtEnDK/w1mAI9DQAtieSkkUWqueBXtCwBa+NZ7czx
   FdBVzP62xrFE6fq0cuLbBF0/i5TTa8RZTP39HazpDHXobfIy7RFu5oCcc
   u86nbnGT/GUo5upMu2MqLl/rcrobZhUmyzu0//zgLP9xoXhPPCN0Q2ppu
   AFReu1bHwh19CeolOnw44i6ZX1XW/KKuHoSRqu+YpcOMF3RIijvBovpNz
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="350387627"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400";
   d="scan'208";a="350387627"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2022 00:50:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400";
   d="scan'208";a="655641472"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2022 00:50:40 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1oDi07-0005P8-Ar;
	Tue, 19 Jul 2022 07:50:39 +0000
Date: Tue, 19 Jul 2022 15:50:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62d66243.bIOQls4SY8FBE0Wg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: AZ2CB5CGSVG7QOHCTAJNDA4WW2HILB2J
X-Message-ID-Hash: AZ2CB5CGSVG7QOHCTAJNDA4WW2HILB2J
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 54ae2293921fc535ed38a0511bf2c96f7f28cf57
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AZ2CB5CGSVG7QOHCTAJNDA4WW2HILB2J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 54ae2293921fc535ed38a0511bf2c96f7f28cf57  Merge branch 'acpi-cppc' into bleeding-edge

elapsed time: 721m

configs tested: 54
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
powerpc                           allnoconfig
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64               randconfig-a013-20220718
x86_64               randconfig-a012-20220718
x86_64               randconfig-a014-20220718
x86_64               randconfig-a011-20220718
x86_64               randconfig-a015-20220718
x86_64               randconfig-a016-20220718
i386                 randconfig-a011-20220718
i386                 randconfig-a013-20220718
i386                 randconfig-a012-20220718
i386                 randconfig-a016-20220718
i386                 randconfig-a015-20220718
i386                 randconfig-a014-20220718
arc                  randconfig-r043-20220718
riscv                randconfig-r042-20220718
s390                 randconfig-r044-20220718
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                 randconfig-a003-20220718
i386                 randconfig-a001-20220718
i386                 randconfig-a002-20220718
i386                 randconfig-a006-20220718
i386                 randconfig-a004-20220718
i386                 randconfig-a005-20220718
hexagon              randconfig-r041-20220718
hexagon              randconfig-r045-20220718

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
