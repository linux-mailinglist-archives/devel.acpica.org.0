Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A66A35E5BFB
	for <lists+devel-acpica@lfdr.de>; Thu, 22 Sep 2022 09:12:41 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B0934100EAB15;
	Thu, 22 Sep 2022 00:12:38 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 09101100EAB0F
	for <devel@acpica.org>; Thu, 22 Sep 2022 00:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663830757; x=1695366757;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=hrFEGOOTR5E0lv2UWJquhx4Tlo3vC0i+tTZYOkAGxZo=;
  b=muHwRgiXr8PJoe6Rr0ZXIvTS34dzBDe+k7bqdx/ARXiRHHYW4ozsKPKO
   lGYQ0l15enNJe6SOtiKXIXIHBbto1R6ft8sLlO3n/Zr4SAs25Qi6Xl0q7
   TtROu0zJUXTHJEBsiRn1qFnrBm6OiWFFC+pPwE38MkLLIqrebfk+ATDpT
   xABkcaEFnDQPWWUdF879273FolveTHsMaXkYW2OzKa9Kbuz6iO7iBOPuq
   wJWOsWZaE7I2WxuwjtOARDt16cDwqbVaU5QrOqVnN9ezPFw+g1TIO19bV
   gJ1a2QlRk8s6kH4XoiSyzDMCMNgOv6WnLRqaeG4NYsb/7KlxHxDQoOMpP
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="300205801"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200";
   d="scan'208";a="300205801"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2022 00:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200";
   d="scan'208";a="652855234"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 22 Sep 2022 00:12:05 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1obGNQ-0004Pi-1h;
	Thu, 22 Sep 2022 07:12:04 +0000
Date: Thu, 22 Sep 2022 15:11:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <632c0a9b.Uy4+mGNx8fBFsycG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 47ZNM5EHPV7RD625MQXCCEDEBQMSYHWJ
X-Message-ID-Hash: 47ZNM5EHPV7RD625MQXCCEDEBQMSYHWJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 65dc2656226949bc594ef5367dd29b7cb8ca27eb
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/47ZNM5EHPV7RD625MQXCCEDEBQMSYHWJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 65dc2656226949bc594ef5367dd29b7cb8ca27eb  Merge branch 'pm-cpuidle' into bleeding-edge

elapsed time: 721m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
alpha                            allyesconfig
arc                              allyesconfig
arc                  randconfig-r043-20220921
m68k                             allyesconfig
riscv                randconfig-r042-20220921
m68k                             allmodconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
i386                                defconfig
powerpc                          allmodconfig
s390                 randconfig-r044-20220921
sh                               allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
i386                          randconfig-a001
x86_64                        randconfig-a011
x86_64                              defconfig
arm                                 defconfig
i386                             allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a015
x86_64                               rhel-8.3
i386                          randconfig-a014
x86_64                           allyesconfig
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
