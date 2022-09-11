Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B39725B4C47
	for <lists+devel-acpica@lfdr.de>; Sun, 11 Sep 2022 08:02:47 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6E47A100EAAE8;
	Sat, 10 Sep 2022 23:02:44 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2D145100EAB56
	for <devel@acpica.org>; Sat, 10 Sep 2022 23:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662876162; x=1694412162;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=X3nGh2deOmHXffMmBLBZLiWJ36kF5JOTAJZQciA1cg8=;
  b=Lakgo28FTYJYsatzHI3GJc4bHeX5fym0aiNFNrsGK8qajzNGHrBDtup8
   KB1Z/PQYEyxRCLGrRWESANAbkhR9IIsnlg7hxT4pvNmksYOsscQuFGBr/
   lEqavM8+yox9S9MfYIRZYnUnDdQeq0BtO0DNUCimjsutT8JwiYndDxd8G
   Rd1ydSgdroXXgJbF3KwnlxbBlj8yclM2NazdRfcIyt7/e4iqFnNQcx6Rl
   EImu92f5tA6otCP0PYQ9naeygBzEif55dSXQPrlQQiIY1bypSH4epGddb
   mOqHf/pvfudaP2SmBWz9hYmqf0mEI93yIeUmwszhDxHwh40G4Kl7vVZ6c
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10466"; a="383992868"
X-IronPort-AV: E=Sophos;i="5.93,307,1654585200";
   d="scan'208";a="383992868"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2022 23:02:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,307,1654585200";
   d="scan'208";a="758039261"
Received: from lkp-server02.sh.intel.com (HELO 4011df4f4fd3) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 10 Sep 2022 23:02:39 -0700
Received: from kbuild by 4011df4f4fd3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oXG3C-00012t-2V;
	Sun, 11 Sep 2022 06:02:38 +0000
Date: Sun, 11 Sep 2022 14:02:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <631d79e8.yiStyYaa6aEvt0eJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 3UXYKWUE4PWXRBW5Q66HN6BQO7JDTUAP
X-Message-ID-Hash: 3UXYKWUE4PWXRBW5Q66HN6BQO7JDTUAP
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 58968b7be786652f48f712147e6f71831cfe684e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3UXYKWUE4PWXRBW5Q66HN6BQO7JDTUAP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 58968b7be786652f48f712147e6f71831cfe684e  Merge branch 'pm-cpufreq' into bleeding-edge

elapsed time: 723m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a002
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
x86_64                        randconfig-a006
i386                          randconfig-a005
x86_64                           allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                              allyesconfig
arc                  randconfig-r043-20220911
alpha                            allyesconfig
i386                          randconfig-a014
s390                 randconfig-r044-20220911
riscv                randconfig-r042-20220911
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
x86_64                        randconfig-a013
m68k                             allyesconfig
powerpc                           allnoconfig
x86_64                        randconfig-a011
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
powerpc                          allmodconfig
m68k                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
mips                             allyesconfig
x86_64                           rhel-8.3-syz
sh                               allmodconfig
ia64                             allmodconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a005
i386                          randconfig-a006
hexagon              randconfig-r041-20220911
i386                          randconfig-a013
hexagon              randconfig-r045-20220911
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
