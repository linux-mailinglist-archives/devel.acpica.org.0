Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3095BDBED
	for <lists+devel-acpica@lfdr.de>; Tue, 20 Sep 2022 06:59:09 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 037AE100EA2BE;
	Mon, 19 Sep 2022 21:59:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 90777100EA2B8
	for <devel@acpica.org>; Mon, 19 Sep 2022 21:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663649944; x=1695185944;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=Kw/JAzCNF3Bxk/Te19GankQAl43gnCtPpBaVCx9KK1o=;
  b=jg7jK+ZgEerVonhq+pabCn0QlkrBPWEeZFF1JzNsNyvncrWiDLo5dXi5
   cG6i+02QexC6EHYJ0WrusGHxiL56yEHpax50seyCQAe7RNo2L3Jv0Vj0P
   sRIElDJC9EGmDCrNTdDaheuvpnadmSxgvdUWuLyNed+J5nBPQL8OxYD6x
   JOqxb5xg4VvohDkV+k4pcyYYPDwanw9B+NPbRqhuQnMUGzXlV/qfB0Ex5
   hhWS4VPZCbA/vpaYAjafNLrBGGw6nwjEk1ol0Edct67QdPgEhge1Oo8UQ
   NqmMJH7XJEO9n4Jht76E0jVqTXEOtLQE6PshH/QwRYamb8YKlE2/MdBNY
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286644085"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200";
   d="scan'208";a="286644085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 21:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200";
   d="scan'208";a="596369690"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 19 Sep 2022 21:59:01 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oaVLZ-0002U3-11;
	Tue, 20 Sep 2022 04:59:01 +0000
Date: Tue, 20 Sep 2022 12:58:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <63294881.atNR2OrfynAXfdXb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 2H3CE3WTPD2KYHCY7JAAK2W6SZP2UK2Z
X-Message-ID-Hash: 2H3CE3WTPD2KYHCY7JAAK2W6SZP2UK2Z
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 8764db2bd7113df506f85a6dc6cbfb24459f241a
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2H3CE3WTPD2KYHCY7JAAK2W6SZP2UK2Z/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 8764db2bd7113df506f85a6dc6cbfb24459f241a  Merge branch 'acpi-uuid' into bleeding-edge

elapsed time: 726m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                 randconfig-a011-20220919
powerpc                           allnoconfig
i386                 randconfig-a016-20220919
i386                 randconfig-a015-20220919
powerpc                          allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-a013-20220919
m68k                             allyesconfig
m68k                             allmodconfig
i386                 randconfig-a012-20220919
arc                  randconfig-r043-20220919
i386                 randconfig-a014-20220919
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
arm                                 defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                                defconfig
s390                 randconfig-r044-20220919
riscv                randconfig-r042-20220919
x86_64               randconfig-a012-20220919
arc                                 defconfig
x86_64               randconfig-a011-20220919
alpha                               defconfig
arm                              allyesconfig
x86_64               randconfig-a013-20220919
arm64                            allyesconfig
s390                             allmodconfig
x86_64               randconfig-a014-20220919
x86_64               randconfig-a015-20220919
x86_64               randconfig-a016-20220919
s390                                defconfig
i386                             allyesconfig
s390                             allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64               randconfig-a003-20220919
x86_64               randconfig-a001-20220919
x86_64               randconfig-a002-20220919
x86_64               randconfig-a004-20220919
hexagon              randconfig-r041-20220919
x86_64               randconfig-a006-20220919
i386                 randconfig-a001-20220919
hexagon              randconfig-r045-20220919
i386                 randconfig-a002-20220919
x86_64               randconfig-a005-20220919
i386                 randconfig-a003-20220919
i386                 randconfig-a004-20220919
i386                 randconfig-a005-20220919
i386                 randconfig-a006-20220919

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
