Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECB2600534
	for <lists+devel-acpica@lfdr.de>; Mon, 17 Oct 2022 04:22:28 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6F0E0100F226A;
	Sun, 16 Oct 2022 19:22:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E4CE1100EBB98
	for <devel@acpica.org>; Sun, 16 Oct 2022 19:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665973341; x=1697509341;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=cWkYhAdLuaSiTRewBbelfEEc6QGMlFnrQcbUtDRBuGc=;
  b=AJazEuYa79PRnuCFkSZCdpSvJGfGYlKryBQFl4kF9Ohb0nbMQnMNYMrx
   bRAVk6F6ecMot1MHr1li4WLmbhxuf0C8CmKC3esuWprOfq3YqBdhIF4g1
   mCK3PzU+Pkp40kGEOd9Y1woId9qSa1UxGR8+DHS+rhn4ZeRKIPU4OHp+G
   drODCRAoEV6WiPV1puyPM4oE8D3sVk2iiTEd47wSyWhhls/XMzXUsFjn0
   WbsqKjfSijY3J5c/rNfqB2PMBEBvo4dlhvk6fDZVhBhSppxxXhmyErncg
   Vk4ygwY0AlfaDDh7BtFBW0/mETb5F6aPehEKR+Fg4lZ530uKi5Z/uN1rB
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="367711435"
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800";
   d="scan'208";a="367711435"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Oct 2022 19:22:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="753479061"
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800";
   d="scan'208";a="753479061"
Received: from lkp-server02.sh.intel.com (HELO 8556ec0e0fdc) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 16 Oct 2022 19:22:19 -0700
Received: from kbuild by 8556ec0e0fdc with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1okFli-000049-35;
	Mon, 17 Oct 2022 02:22:18 +0000
Date: Mon, 17 Oct 2022 10:21:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <634cbc1f.dw1aXk2jHDx35OSX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 55K6VFSPAME7QQFYPUWQ555ZOTT4LL2M
X-Message-ID-Hash: 55K6VFSPAME7QQFYPUWQ555ZOTT4LL2M
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 134eb444363b548c34b7bf79d231a1ab7690cfb6
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/55K6VFSPAME7QQFYPUWQ555ZOTT4LL2M/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 134eb444363b548c34b7bf79d231a1ab7690cfb6  Merge branch 'acpi-resource' into bleeding-edge

elapsed time: 4611m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20221012
riscv                randconfig-r042-20221012
s390                 randconfig-r044-20221012
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
m68k                             allmodconfig
x86_64                          rhel-8.3-func
arc                              allyesconfig
powerpc                           allnoconfig
alpha                            allyesconfig
s390                                defconfig
x86_64                    rhel-8.3-kselftests
m68k                             allyesconfig
s390                             allyesconfig
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a004
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a002
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a006
x86_64                           allyesconfig
arm                                 defconfig
sh                               allmodconfig
x86_64                        randconfig-a015
mips                             allyesconfig
powerpc                          allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a013
i386                          randconfig-a014
x86_64                        randconfig-a011
i386                          randconfig-a005
i386                          randconfig-a012
i386                             allyesconfig
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig

clang tested configs:
hexagon              randconfig-r041-20221012
hexagon              randconfig-r045-20221012
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a002
i386                          randconfig-a011
x86_64                        randconfig-a012
i386                          randconfig-a006
x86_64                        randconfig-a016
i386                          randconfig-a004
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
