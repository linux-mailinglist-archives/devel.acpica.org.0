Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 503305A09B6
	for <lists+devel-acpica@lfdr.de>; Thu, 25 Aug 2022 09:16:38 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A798F100EB32A;
	Thu, 25 Aug 2022 00:16:34 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3C22D100EB85C
	for <devel@acpica.org>; Thu, 25 Aug 2022 00:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661411792; x=1692947792;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=Nwp6Cji46dnwi4Sj4t8zoF/G6jVn4T/F1m727vVwp3g=;
  b=TZajrgNfOhhASr6eOMOuWUefuiz1v3ks2n89NZr1o0OT/KJSNfUyIcwh
   c7yjZjIY/oiBygXYmC9g5E44ld9vTjFQNDkKePtqCx/yGI+fQqcCye5/0
   7qcxuqM9s2twXU2cENfGZYoaVX/eGjr/OOKgTV1Q+8GstbDge70T/M7gK
   Xew6XfUty5waYmkFu/OBG0WlZxcmMll4arRCa/Pb6ygifP4ty0YuA8OtF
   FxBV9kKqIzOKICuClsMPBmxnlSxR2vvffABZJnWxPmpEk5cFoSqrXty24
   ljuS5oRt/UhrINQCv4aR6Ec/lSv6s4SPYCPG3L26YRZ9f30hJo3/w/DSW
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="355892447"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200";
   d="scan'208";a="355892447"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2022 00:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200";
   d="scan'208";a="938218217"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 25 Aug 2022 00:16:30 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oR76L-0001rq-2O;
	Thu, 25 Aug 2022 07:16:29 +0000
Date: Thu, 25 Aug 2022 15:15:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <630721a3.Ckrtddp0YFN/Y6zl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: CDUBFPEOTIYP2FSFAWI2QG4TS4R6MCET
X-Message-ID-Hash: CDUBFPEOTIYP2FSFAWI2QG4TS4R6MCET
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 47c90d37e626efa4e7925e8e306993b9cbdada30
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CDUBFPEOTIYP2FSFAWI2QG4TS4R6MCET/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 47c90d37e626efa4e7925e8e306993b9cbdada30  Merge branch 'acpi-dev' into bleeding-edge

elapsed time: 722m

configs tested: 64
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                                defconfig
i386                          randconfig-a001
arc                  randconfig-r043-20220824
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a003
i386                          randconfig-a014
riscv                randconfig-r042-20220824
x86_64                        randconfig-a013
x86_64                        randconfig-a011
m68k                             allmodconfig
powerpc                           allnoconfig
m68k                             allyesconfig
i386                          randconfig-a005
s390                 randconfig-r044-20220824
i386                          randconfig-a012
x86_64                        randconfig-a015
i386                          randconfig-a016
arm                                 defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
loongarch                         allnoconfig
arc                                 defconfig
loongarch                           defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
ia64                             allmodconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig

clang tested configs:
i386                          randconfig-a013
hexagon              randconfig-r041-20220824
i386                          randconfig-a011
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r045-20220824
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a015
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
