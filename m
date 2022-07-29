Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC41584B02
	for <lists+devel-acpica@lfdr.de>; Fri, 29 Jul 2022 07:17:29 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5D7E5100F3FBB;
	Thu, 28 Jul 2022 22:17:27 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 46748100F3FB4
	for <devel@acpica.org>; Thu, 28 Jul 2022 22:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1659071845; x=1690607845;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=xUxX15pZtSECEOF2hlI0jHwjsyiBPIivBMlq619fnT8=;
  b=Yl74PHw7fWw4aZF2a9zCfTuSnL544B7g6EP+7+lHbNpFD/pq9P4Dn7le
   X6QO9uIL8jzJaL0Optbu8+5Vj1QjZkmzUlu1tHRcXHizvJ6CG1d7Menr3
   UmdFo+bxLgYp+XG9081FWCyZq5Tc35x2y1CroNqBY1G9wmWmyrc6X/K5E
   MeaxYK0O2iKNrhAb83TWIn2XXD44mLJOGmioCRx9F2acyKXgXO74EN5ly
   lY+7w72PEZh3I77WdtDgYqF4J1LYATRXvqEsm3cztQD/zIduUEsqwrkIt
   PgQPRlILuAEzvRkDWumL1QB9W5oPsQ80zxSoVWdP2HqgWM0lWTlPLCUXa
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="288706915"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200";
   d="scan'208";a="288706915"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jul 2022 22:17:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200";
   d="scan'208";a="928613260"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 28 Jul 2022 22:17:23 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oHING-000B8Q-1o;
	Fri, 29 Jul 2022 05:17:22 +0000
Date: Fri, 29 Jul 2022 13:16:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62e36d33.+CG5CmxllbfwfCnC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: H2WU7YJKZ3NSS34I5BOIA6JOZ6QOZLSH
X-Message-ID-Hash: H2WU7YJKZ3NSS34I5BOIA6JOZ6QOZLSH
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 584787d16c07afa9d691dd2ee09a630b874d725e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/H2WU7YJKZ3NSS34I5BOIA6JOZ6QOZLSH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 584787d16c07afa9d691dd2ee09a630b874d725e  Merge branch 'acpi-pci' into bleeding-edge

elapsed time: 704m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                                defconfig
arm                                 defconfig
x86_64                        randconfig-a015
i386                             allyesconfig
powerpc                           allnoconfig
x86_64                        randconfig-a002
x86_64                          rhel-8.3-func
x86_64                        randconfig-a013
x86_64                         rhel-8.3-kunit
i386                          randconfig-a014
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a011
i386                          randconfig-a012
powerpc                          allmodconfig
arm64                            allyesconfig
i386                          randconfig-a016
sh                               allmodconfig
arm                              allyesconfig
mips                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a006
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a004
arc                  randconfig-r043-20220728
riscv                randconfig-r042-20220728
s390                 randconfig-r044-20220728
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
ia64                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
x86_64                        randconfig-a014
i386                          randconfig-a015
x86_64                        randconfig-a005
i386                          randconfig-a011
hexagon              randconfig-r045-20220728
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220728
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
