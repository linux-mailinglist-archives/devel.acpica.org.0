Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C83655BE98
	for <lists+devel-acpica@lfdr.de>; Tue, 28 Jun 2022 08:06:45 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 880F7100EA93B;
	Mon, 27 Jun 2022 23:06:13 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3F769100EAB7D
	for <devel@acpica.org>; Mon, 27 Jun 2022 23:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656396370; x=1687932370;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=2n/5vn8rOoyELei0tsqkTQhJvHu4rRiriyqzIYLuJ8k=;
  b=XLghro0v7Ml1oUPdqv6RT6fGPhfwGS+Tv2aDO1tfPI1IqK5ErdAOcH+5
   6pxiWwLcEYKHvbx222RNjoBkW3S1XPiw8J/yj2b47tWBeVvNnTG8HTLBB
   biQFgBqOK0O1TXweC0C+qd7SgJcSMNV6hAQPKTCOcJQEqvFzfrkhB+Ab+
   N2x9ip66wnntftWmujvc+5nRFjbsrKp9it6pBP+Gj2NF2qtaxy1I7jnPE
   adYG+PvvQcGFc7uOaVGJj/JhUw9XIvw+CNcq+TTRMDMkuk07MLk2xJpAe
   NTPVpC0g2JwcD+mz6LpKEnrJB1EV38Lhs07GDyad2oIBC3np/Q18CTOB6
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="307124145"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400";
   d="scan'208";a="307124145"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2022 23:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400";
   d="scan'208";a="594633503"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2022 23:06:08 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o64MR-0009aI-QX;
	Tue, 28 Jun 2022 06:06:07 +0000
Date: Tue, 28 Jun 2022 14:05:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62ba9a43.2Ijs96enQ2O4Tcxl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: EPZTSMAKLNQTUORUGEFHS4QGFV4Z2KWL
X-Message-ID-Hash: EPZTSMAKLNQTUORUGEFHS4QGFV4Z2KWL
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD REGRESSION 3ea94b067c49378a574fc477647ece5c2f41dccb
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EPZTSMAKLNQTUORUGEFHS4QGFV4Z2KWL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3ea94b067c49378a574fc477647ece5c2f41dccb  Merge branch 'acpi-bus' into bleeding-edge

Error/Warning reports:

https://lore.kernel.org/linux-acpi/202206281146.iWj1cpqY-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/hisi_lpc.c:488:41: error: 'struct acpi_device' has no member named 'children'
drivers/bus/hisi_lpc.c:488:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm64-allyesconfig
    |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-children
    `-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-node

elapsed time: 726m

configs tested: 52
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64               randconfig-a012-20220627
x86_64               randconfig-a016-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a013-20220627
x86_64               randconfig-a014-20220627
x86_64               randconfig-a015-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
i386                 randconfig-a014-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
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
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a006-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a004-20220627
i386                 randconfig-a002-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a005-20220627
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
