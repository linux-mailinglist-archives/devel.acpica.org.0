Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB3857129B
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jul 2022 08:57:11 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7435B100EB84D;
	Mon, 11 Jul 2022 23:57:08 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6F4E0100EBB97
	for <devel@acpica.org>; Mon, 11 Jul 2022 23:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657609026; x=1689145026;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=XiX0tAoOsmukuEMZ85nx4bGEwQxa5zwVfKa1CMZ4aRs=;
  b=Q4/7tXWcTSR+7nrQLo7oib3eh3jeScDRU7PrUg4DsMCH7C8F4BZlkRDC
   Xbu3tbHN5GxIvUePDlDnFSlZHVDw4XewELTmuiiWO7h3Tspjkn+DF9M21
   CwQGVBj2zC4eVSJf7yX/xL9ut5lku8/6EFH9W68PHragfAtrAu9hZOPgG
   IRKE2adnwcOl9T2oHhoOVpt3uZRReUMXJFDASPt0dHOWL1cNdv3mYKI6u
   Y2h2Up6L7IJYGxEidpYedUutDWcsirywwL/Rdw2ZAo1d2Y0AHPz3OjLRv
   UfydGxCSMVz9Ie0gJnnpsBaAALISjE+fPJMaqXxITiu4smRqqeida0KaP
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="371163997"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400";
   d="scan'208";a="371163997"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2022 23:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400";
   d="scan'208";a="922087011"
Received: from lkp-server02.sh.intel.com (HELO 8708c84be1ad) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 11 Jul 2022 23:57:03 -0700
Received: from kbuild by 8708c84be1ad with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1oB9pP-0001qv-8W;
	Tue, 12 Jul 2022 06:57:03 +0000
Date: Tue, 12 Jul 2022 14:56:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62cd1b0a.0xr7VHPcLploJ134%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: FBPZLRSCPWSMOBWPKJ63WUWWE225UMA3
X-Message-ID-Hash: FBPZLRSCPWSMOBWPKJ63WUWWE225UMA3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS e71c5921cc5005d866e7acd0b501faff1f548897
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FBPZLRSCPWSMOBWPKJ63WUWWE225UMA3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: e71c5921cc5005d866e7acd0b501faff1f548897  Merge branch 'thermal-core' into linux-next

elapsed time: 724m

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
m68k                             allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
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
arc                  randconfig-r043-20220710
s390                 randconfig-r044-20220710
riscv                randconfig-r042-20220710
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r041-20220710
hexagon              randconfig-r045-20220710

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
