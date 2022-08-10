Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7651C58E767
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Aug 2022 08:49:51 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D7A0F100EB323;
	Tue,  9 Aug 2022 23:49:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C1F1D100EB83B
	for <devel@acpica.org>; Tue,  9 Aug 2022 23:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660114185; x=1691650185;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=ng4aUm4odUinFQNAnLjcT37l1NPbArZDHokfS3Y2qgo=;
  b=CnY3yczirE47P6qijD4x+XXeyNxMsKKpNVf0rY9vcijJva0jwBeL/wfj
   yPA70sAqP9B9yizXSTgfLWupY9NA693/rexjJPGdQupYwlUoIFd/2yqU+
   EOXO3bsuWOAkJdbub0HmDYLgClC5I7OgXDzhxfsz0+mlhu5VmbDiG6EV0
   h/dGfTqqzDJPQjCO3XsellNqd7ueuG8IEhFCw/ZFdaHcvfQLPXZGzXSCk
   swGEi2O4YsDgpsKmJobfQP99RU24m6VrJtJv5x8suNQTx6uKQLlWEn5qY
   FVqtuNEG+R+aTugHABHv3Ri1IoQPnb5ngnDtKja0+/tPXLHgPu9GMrv/t
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="274065572"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200";
   d="scan'208";a="274065572"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2022 23:49:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200";
   d="scan'208";a="932777087"
Received: from lkp-server02.sh.intel.com (HELO 5d6b42aa80b8) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 09 Aug 2022 23:49:42 -0700
Received: from kbuild by 5d6b42aa80b8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oLfXC-00001P-03;
	Wed, 10 Aug 2022 06:49:42 +0000
Date: Wed, 10 Aug 2022 14:49:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62f354e5.j4wVK1ptuDBGM6vU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: GN6N6QEGZWEHAJJFAN33AES2UDSMHJMG
X-Message-ID-Hash: GN6N6QEGZWEHAJJFAN33AES2UDSMHJMG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS ad393690b235f40d3b4dc72d84e6fab3960edf9f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GN6N6QEGZWEHAJJFAN33AES2UDSMHJMG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: ad393690b235f40d3b4dc72d84e6fab3960edf9f  Merge branch 'acpi-properties' into linux-next

elapsed time: 729m

configs tested: 27
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a006
x86_64                           allyesconfig
x86_64                               rhel-8.3
arc                  randconfig-r043-20220810
riscv                randconfig-r042-20220810
s390                 randconfig-r044-20220810
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
mips                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220810
hexagon              randconfig-r045-20220810

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
