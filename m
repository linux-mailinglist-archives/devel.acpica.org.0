Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A90AC60ECEC
	for <lists+devel-acpica@lfdr.de>; Thu, 27 Oct 2022 02:18:30 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 772C5100EA127;
	Wed, 26 Oct 2022 17:18:27 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A8850100EA125
	for <devel@acpica.org>; Wed, 26 Oct 2022 17:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666829905; x=1698365905;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=oB6nTDCMqGB4bl603Y+aNjuJYpKdztso9dayg7OlEFk=;
  b=Ocxbbs426mwShuJp2yPEUZgmF6HxNUm3LAuUxGIuG2Y90VPeVwEmXawX
   Ubk3da4tO0zc3r+sbNmCsa5jJjpeAklCZ+tB3N/lP7SQo/tkRPq/w9+u1
   1ETsHxh6ve4eqG7gATBCgy341saGuYq34WsS4GKF7w08DISN83OfQf0mT
   lPQnJ7QwrdOgBQ66EbN9LIjKlDXWnBMDfubQnSIeS70eaOB5NUyGd8qfC
   Ciy9gVhCHGxG4AK/NOAL0O16sPP/Wonww5N0Zrcj/oQK75h0ZZHax7Fql
   3qjrgf0nEHxCSD+udeUup7QholKNPPlg/CrqnO72jM+VQvUqVMKlDfO5V
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="288490083"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800";
   d="scan'208";a="288490083"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2022 17:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="663414342"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800";
   d="scan'208";a="663414342"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 26 Oct 2022 17:18:22 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1onqbF-00081D-1M;
	Thu, 27 Oct 2022 00:18:21 +0000
Date: Thu, 27 Oct 2022 08:18:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6359ce46.UUtBc51qx8f6Watx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: FKZ3V22NMHAD4O4KUFLRBTAVGQZ3KQW2
X-Message-ID-Hash: FKZ3V22NMHAD4O4KUFLRBTAVGQZ3KQW2
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 1de66fcb380ec2ea6ad56911061c65ba1928a94c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FKZ3V22NMHAD4O4KUFLRBTAVGQZ3KQW2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 1de66fcb380ec2ea6ad56911061c65ba1928a94c  Merge branch 'acpi-scan' into bleeding-edge

elapsed time: 721m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
arc                               allnoconfig
alpha                               defconfig
powerpc                           allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
s390                                defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
s390                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
sh                               allmodconfig
s390                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
riscv                randconfig-r042-20221026
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20221026
ia64                             allmodconfig
s390                 randconfig-r044-20221026
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a013
arm64                            allyesconfig
x86_64                        randconfig-a011
arm                              allyesconfig
i386                          randconfig-a014
m68k                             allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a015
arc                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
alpha                            allyesconfig
x86_64                        randconfig-a006
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20221026
hexagon              randconfig-r045-20221026
i386                          randconfig-a013
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a014
i386                          randconfig-a015
x86_64                        randconfig-a016
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
