Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4079D5EF019
	for <lists+devel-acpica@lfdr.de>; Thu, 29 Sep 2022 10:13:33 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E5056100EA934;
	Thu, 29 Sep 2022 01:13:29 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 18A35100EA930
	for <devel@acpica.org>; Thu, 29 Sep 2022 01:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664439207; x=1695975207;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=pkAcdd9WCoqbv6rQwZvQp7KdEX0nNmUATk0UEump9s8=;
  b=R8Z4Lg9EU6A6XLvHcYJzu5A1Ohxs3BeoObMjfcD8aLf9PrYKEoSW5TjK
   LwjhCC9tC8+FrTpcH9YpxP2s+Lj30hC3Kc0Tngo/fwjOHImN52Mq6HxUz
   ZUEHyn5HM560pfuxMftf4n1ajAXAwUfrbyn82cTBrf1vnDhFdfixRK5N7
   kFchBWEnqkKvx0g7q7Exfuu+UZ5yS2MKrOziVPm5GgKhVktI8abAsUOQJ
   obk1mVWFD6Hro/NCKaWxuCnA6mjmIQdAzdfDW2sZO4i2NoAgFz0UJCHye
   wKJePRjHOMf/gdw4K95D4/au1qBy5Dob6EmGkb0UnxL3fUM8j1Xli6BDb
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="388109637"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200";
   d="scan'208";a="388109637"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2022 01:13:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="797466372"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200";
   d="scan'208";a="797466372"
Received: from lkp-server01.sh.intel.com (HELO 6126f2790925) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 29 Sep 2022 01:13:16 -0700
Received: from kbuild by 6126f2790925 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1odofT-0000sS-1W;
	Thu, 29 Sep 2022 08:13:15 +0000
Date: Thu, 29 Sep 2022 16:12:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <63355385.9bVHW41B8Q1HuRkz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 4V4YVD4NMU6SHLKGMXDKM2MSNYO2JL3N
X-Message-ID-Hash: 4V4YVD4NMU6SHLKGMXDKM2MSNYO2JL3N
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 99546c51c86d8f9e56d2f9e2252b05b84d89c2ea
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4V4YVD4NMU6SHLKGMXDKM2MSNYO2JL3N/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 99546c51c86d8f9e56d2f9e2252b05b84d89c2ea  Merge branch 'acpi-pm' into bleeding-edge

elapsed time: 721m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
mips                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
x86_64                              defconfig
arc                                 defconfig
s390                             allmodconfig
x86_64               randconfig-a004-20220926
i386                                defconfig
alpha                               defconfig
arc                  randconfig-r043-20220925
s390                             allyesconfig
s390                                defconfig
x86_64                               rhel-8.3
i386                 randconfig-a001-20220926
arm64                            allyesconfig
x86_64                        randconfig-a013
x86_64               randconfig-a006-20220926
i386                 randconfig-a002-20220926
arm                              allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a014
riscv                randconfig-r042-20220925
i386                 randconfig-a003-20220926
x86_64               randconfig-a001-20220926
x86_64                           allyesconfig
x86_64               randconfig-a003-20220926
i386                          randconfig-a012
x86_64               randconfig-a002-20220926
x86_64               randconfig-a005-20220926
i386                          randconfig-a016
x86_64                        randconfig-a015
i386                 randconfig-a004-20220926
arc                  randconfig-r043-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a006-20220926
s390                 randconfig-r044-20220925
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
i386                             allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a014
i386                          randconfig-a013
hexagon              randconfig-r045-20220925
i386                          randconfig-a015
hexagon              randconfig-r041-20220926
i386                          randconfig-a011
hexagon              randconfig-r045-20220926
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220925
x86_64                        randconfig-a012
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
