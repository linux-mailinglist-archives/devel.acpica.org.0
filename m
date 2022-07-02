Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AD0563EF9
	for <lists+devel-acpica@lfdr.de>; Sat,  2 Jul 2022 09:58:50 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 85B4B100EB349;
	Sat,  2 Jul 2022 00:58:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D2E77100EB341
	for <devel@acpica.org>; Sat,  2 Jul 2022 00:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656748724; x=1688284724;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=PXpVorr2auvjcaIIfiCOXy7tYNRLs/7xW67DFYCSrYw=;
  b=bJB/3boDrG15g578DOHAOfkbMSI6yMl7QTctGE/vngAoCnAleuSP7sGS
   wZufKTkiuAFp0VuuWpFHH9v5rDIsUdod7BTNYCtT7frCTBMOaCMXpjiHh
   GsMwjXNx4VQIK8n26Lrs110XUIIgWO2UraZvlv1BlnimvWIlBk//tYJOR
   OlIDGF6SrfqwyHToGT7taqd2WnpbpohK5Rcl3vYxBlOfoGsQUOH10ci0g
   vap/ur1B3iwwzhlFV/HXKIP9G9powGhYPdb7AyQCPd/iIj/zlt92SwE9a
   2axE8kMcS/IFTVWXrCmhtRbe6CxqtgQ4T4voJp9EIjSRUuX21oDwyALaT
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="344491142"
X-IronPort-AV: E=Sophos;i="5.92,239,1650956400";
   d="scan'208";a="344491142"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2022 00:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,239,1650956400";
   d="scan'208";a="589576604"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 02 Jul 2022 00:58:42 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o7Y1Z-000Eyt-F6;
	Sat, 02 Jul 2022 07:58:41 +0000
Date: Sat, 02 Jul 2022 15:57:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62bffa83.Quzpfq4WZvRV/Glq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: SWVPFTFI5TCJFQDF7ZCOAFTUUSLOHU7F
X-Message-ID-Hash: SWVPFTFI5TCJFQDF7ZCOAFTUUSLOHU7F
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 80e9ad7b085d13f8a9964111e917fc7afb732b8e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SWVPFTFI5TCJFQDF7ZCOAFTUUSLOHU7F/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 80e9ad7b085d13f8a9964111e917fc7afb732b8e  Merge branch 'acpi-bus' into bleeding-edge

elapsed time: 725m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220629
s390                 randconfig-r044-20220629
riscv                randconfig-r042-20220629
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r045-20220629
hexagon              randconfig-r041-20220629
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
