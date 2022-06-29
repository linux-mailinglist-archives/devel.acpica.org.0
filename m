Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E4055F4D2
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Jun 2022 06:04:55 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5D6E8100EAB79;
	Tue, 28 Jun 2022 21:04:51 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 57DBC100EAB51
	for <devel@acpica.org>; Tue, 28 Jun 2022 21:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656475489; x=1688011489;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=cQ9/dgTUHz+6F1S0ByxMyzLZK/xRRhC6qkIAcWuWLXM=;
  b=Jd9wHcxULgI+zawLFxOjAkKD+gjnkHYvJS1k7xvUzWaZEC5EXeRWIRUW
   B4hh0IqSBsVjTrqPzTJW4OhDmKEfwsocoIgZjBPALVPzTr4gUNNoesn1A
   U+uBN+3HBl4CmA1rN0R38tqgXMp0crAT1GDVfRjiT6QE778Ba0KKyIL0n
   2Dq2PGY1ZAzR67Kk++QULZoSOYLaoQ5Sx4AMKx5vmKY8lSUrglUjJV7b5
   eo0CaDcO8GDXUCHqZMjCeRzGkXE+uH1Fqt09k09g2jLICnJYqhnNIFgOB
   xObdGzEV9asky0JM1q5mq9tpLdUO38msLPM+NmtEf5w3KXfcCTKPwhNIF
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="279459938"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400";
   d="scan'208";a="279459938"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2022 21:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400";
   d="scan'208";a="693399191"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 21:04:46 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o6OwY-000AtE-Ao;
	Wed, 29 Jun 2022 04:04:46 +0000
Date: Wed, 29 Jun 2022 12:04:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62bbcf36.pFBdqnxFoqglQFOC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: XK36TJCVVMGJWHFOSHHKK7HWI6HN26E7
X-Message-ID-Hash: XK36TJCVVMGJWHFOSHHKK7HWI6HN26E7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD REGRESSION 4035647418c1b31bcc12e6cfafc01f61f0c649ea
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XK36TJCVVMGJWHFOSHHKK7HWI6HN26E7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 4035647418c1b31bcc12e6cfafc01f61f0c649ea  Merge branch 'acpi-bus' into linux-next

Error/Warning reports:

https://lore.kernel.org/linux-acpi/202206281146.iWj1cpqY-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/hisi_lpc.c:488:41: error: 'struct acpi_device' has no member named 'children'
drivers/bus/hisi_lpc.c:488:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-allyesconfig
|   |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-children
|   `-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-node
`-- ia64-allmodconfig
    |-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-children
    `-- drivers-bus-hisi_lpc.c:error:struct-acpi_device-has-no-member-named-node

elapsed time: 722m

configs tested: 70
configs skipped: 2

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220627
powerpc                      ppc40x_defconfig
arm                        realview_defconfig
arm                            pleb_defconfig
parisc64                            defconfig
arm                          pxa910_defconfig
ia64                         bigsur_defconfig
arm                       aspeed_g5_defconfig
sh                   sh7770_generic_defconfig
arc                            hsdk_defconfig
arm                         cm_x300_defconfig
riscv                            allyesconfig
ia64                             allmodconfig
x86_64               randconfig-k001-20220627
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64               randconfig-a012-20220627
x86_64               randconfig-a016-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a013-20220627
x86_64               randconfig-a014-20220627
x86_64               randconfig-a015-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func

clang tested configs:
arm                      pxa255-idp_defconfig
arm                            dove_defconfig
x86_64               randconfig-a004-20220627
x86_64               randconfig-a006-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
i386                 randconfig-a002-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a005-20220627
i386                 randconfig-a006-20220627
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
