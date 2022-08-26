Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D62285A227E
	for <lists+devel-acpica@lfdr.de>; Fri, 26 Aug 2022 09:59:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 90FE4100EAB67;
	Fri, 26 Aug 2022 00:59:21 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C4F22100EAB63
	for <devel@acpica.org>; Fri, 26 Aug 2022 00:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661500759; x=1693036759;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=gY1t62Dh1/1E5AbJkxKEBER/k9+hXi1zG813UEJ1pKA=;
  b=eeqcE6rJuPg7LfAcQDQn6Otyj9wMAf0y0myhAgGSc7vLc/3cu76F40Lg
   0tHxV+0W+xDWCFYX3vFH3CVpNlgHp+y7Mv5ODgAAFcf/wVjZVc+INbz20
   +3L/zxGLAgMG8UQk/i6ZywlxSqyPyazX+g0xQDZU3YXIEcvRNjmH66ygI
   v5cesrGNTsoj3aW/bfGvXBEQK3taCp/+IJikM3TO4tAe0k8CWv2wwy2U2
   5N3+IRmFFHN0Uu2z0wsZ1al9WRg3tfWzzrCTzxBur2u/6TI1pjL7ZkSC+
   FrXfOt2a1LVyzsy6toND9KOwCGMVehtWWp1iY8J72X+iQhYvAuoxNC5Zq
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="293193320"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200";
   d="scan'208";a="293193320"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Aug 2022 00:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200";
   d="scan'208";a="938666564"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 26 Aug 2022 00:59:07 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oRUF9-0003eM-16;
	Fri, 26 Aug 2022 07:59:07 +0000
Date: Fri, 26 Aug 2022 15:58:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <63087d1d.nDmDFLxcgW+VpczK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: LWBSZIBZROVKE742C7YZ3RLV3LGXGNJX
X-Message-ID-Hash: LWBSZIBZROVKE742C7YZ3RLV3LGXGNJX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 3da4255837efe5d8ae47e0cf88e27e86d912c54e
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/LWBSZIBZROVKE742C7YZ3RLV3LGXGNJX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3da4255837efe5d8ae47e0cf88e27e86d912c54e  Merge branch 'acpi-bus' into bleeding-edge

elapsed time: 720m

configs tested: 70
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                                defconfig
um                             i386_defconfig
arc                                 defconfig
um                           x86_64_defconfig
x86_64                              defconfig
powerpc                           allnoconfig
loongarch                         allnoconfig
loongarch                           defconfig
alpha                               defconfig
x86_64                        randconfig-a004
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                        randconfig-a002
s390                                defconfig
x86_64                        randconfig-a006
s390                             allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                             allyesconfig
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a003
i386                          randconfig-a012
sh                               allmodconfig
i386                          randconfig-a016
x86_64                        randconfig-a015
i386                          randconfig-a005
mips                             allyesconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a001
m68k                             allyesconfig
arm                              allyesconfig
powerpc                          allmodconfig
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
x86_64                           rhel-8.3-kvm
riscv                randconfig-r042-20220824
arm64                            allyesconfig
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20220824
alpha                            allyesconfig
s390                 randconfig-r044-20220824
arc                  randconfig-r043-20220823
arc                  randconfig-r043-20220825
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a015
x86_64                        randconfig-a014
i386                          randconfig-a004
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220825
hexagon              randconfig-r045-20220825
i386                          randconfig-a006
hexagon              randconfig-r041-20220823
riscv                randconfig-r042-20220825
hexagon              randconfig-r041-20220824
hexagon              randconfig-r045-20220824
s390                 randconfig-r044-20220823
s390                 randconfig-r044-20220825
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220823

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
