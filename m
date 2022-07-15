Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5B2576452
	for <lists+devel-acpica@lfdr.de>; Fri, 15 Jul 2022 17:19:03 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A5BF0100EA910;
	Fri, 15 Jul 2022 08:19:00 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E55A3100EA90D
	for <devel@acpica.org>; Fri, 15 Jul 2022 08:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657898337; x=1689434337;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=GzvdUNK0/elu+0B9zVMsBMPuRFb0YyLLTorGkbmlvI8=;
  b=JSy6SydEvGPdd6ODKpXXaM2+sWtC+3jBQR90EzLRuz7FUJJjaAAKnqwu
   WM2QWG+9msgEACAbwAxalPjbhaeUUZt2fC4wa/JGJHE0E21RMQ5k3WI5x
   a2OnES3mtJJs5J+gvJvKRvKe6BUl2fII9j9MvHkyGTXGx4ELqWf7PSwkp
   sKIZfwURzvRKAJPXMqiCKvpEePgErapJz6yGqvFK4jiFEMUtVXNCS1qzV
   LzeVBkhaH796F9YPsFz83O+mXHgG8I2K1deF4G3W94U9BKsO20QxCU2Ua
   viXk97X8X+L++ja9R9SLd6k/PW5hFQ3SsObURsLZ3UlWrKH0jh/YGK75m
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="286955626"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400";
   d="scan'208";a="286955626"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2022 08:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400";
   d="scan'208";a="723110016"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 15 Jul 2022 08:18:55 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1oCN5i-0000HJ-IN;
	Fri, 15 Jul 2022 15:18:54 +0000
Date: Fri, 15 Jul 2022 19:01:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62d1491d.sEAKmtLmVIxvS4zB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 2T3DWMSNJYLFACW2GLHWXYYK6YDAUJG7
X-Message-ID-Hash: 2T3DWMSNJYLFACW2GLHWXYYK6YDAUJG7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS bab5a415e184710d01c37547f706a0e85873bb74
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2T3DWMSNJYLFACW2GLHWXYYK6YDAUJG7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: bab5a415e184710d01c37547f706a0e85873bb74  Merge branch 'pm-domains' into bleeding-edge

elapsed time: 896m

configs tested: 48
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
m68k                       m5275evb_defconfig
arm                        oxnas_v6_defconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
i386                                defconfig
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
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
powerpc                 mpc8560_ads_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220714
hexagon              randconfig-r041-20220714

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
