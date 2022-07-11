Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BABF561306
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Jun 2022 09:14:40 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 76672100EA2C1;
	Thu, 30 Jun 2022 00:14:38 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CA5B3100EA2BD
	for <devel@acpica.org>; Thu, 30 Jun 2022 00:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656573276; x=1688109276;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=u3UlWiOglfArxWVJc0ESMunrSVWGhs3Xh8fs1/f9ouw=;
  b=D3VJrQPnwDJjaQexNylzkil71cFMlqr1w0n7DgIP4SC+Wwd4iliyPdr0
   ktslEPoHRobGgctxDSGPq4bxhTZYE7+laOMYH8Sltkt1G0Kqwe2mxyQb6
   wVJRwAbZufjd3BI/3b0E5ASvPTs4FWEqjGI+u3iTfyjhH5TmgWTx9tFo/
   +W7sw7NTFshXTs8gnQheuRUGnzwc/dY0DyqRj6iOJwbS/zz5y3ckCU2Y/
   g86qDKouKhpHMv/8QDSO4jj46TR5NYcYQaHB309YWwVU/WgrjMo9ppy9M
   o9CFGlp68Rup0DUxyEovv2Vk6m4KzTdXrOUgLy+kbroqMCiebQC8kk0ch
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="343955850"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400";
   d="scan'208";a="343955850"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2022 00:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400";
   d="scan'208";a="680860041"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2022 00:14:34 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o6oNl-000CNO-Mv;
	Thu, 30 Jun 2022 07:14:33 +0000
Date: Thu, 30 Jun 2022 15:13:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62bd4d29.JCwObo7lyXJuQtt0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: NFBDAXQLTBU7L645ELXNACLTE5KVKBBR
X-Message-ID-Hash: NFBDAXQLTBU7L645ELXNACLTE5KVKBBR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD REGRESSION 7451d4b13852834afd17b629fb7d4410cefba74c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NFBDAXQLTBU7L645ELXNACLTE5KVKBBR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 7451d4b13852834afd17b629fb7d4410cefba74c  Merge branch 'acpi-apei' into bleeding-edge

Error/Warning reports:

https://lore.kernel.org/linux-acpi/202206281146.iWj1cpqY-lkp@intel.com
https://lore.kernel.org/linux-acpi/202206301543.JpCxX65V-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/hisi_lpc.c:511:41: error: 'struct acpi_device' has no member named 'children'
drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
include/linux/compiler_types.h:293:27: error: expression in static assertion is not an integer

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-allyesconfig
|   |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-children
|   `-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-node
|-- ia64-allmodconfig
|   |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-children
|   |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-node
|   `-- include-linux-compiler_types.h:error:expression-in-static-assertion-is-not-an-integer
`-- ia64-allyesconfig
    |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-children
    `-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-node

elapsed time: 722m

configs tested: 52
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220629
s390                 randconfig-r044-20220629
riscv                randconfig-r042-20220629
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r045-20220629
hexagon              randconfig-r041-20220629

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
