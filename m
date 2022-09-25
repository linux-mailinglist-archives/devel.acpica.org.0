Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D66F5E9177
	for <lists+devel-acpica@lfdr.de>; Sun, 25 Sep 2022 09:37:50 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4858B100EB855;
	Sun, 25 Sep 2022 00:37:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 58AFA100EB84D
	for <devel@acpica.org>; Sun, 25 Sep 2022 00:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664091461; x=1695627461;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=rQNy2xgvmhhAdYWJ2bjD8oJFB1DlxIHW7xpHRLF75zo=;
  b=KgPzjHg/6xV0HZ8C593PRLJXnfu5/o1tAPsDmHLzJlhAlwGo7jbFe3Ph
   2BsUSG6lLviizBMdD3L+Yg9By27Dej2ubetkOAqdKpiy4bsJjBaWcaVB5
   V/qSBlaDe7SmsH7HeygxwKt3x4Fz1fV9M1MH8I2DB1hTa4KGDtlv6nOjP
   w5qGOSDaa1HAfb34qlthw09GIZSBrhRhf3sDlr07L8OeLTPfAWQurPzI+
   qDghuiwNytOVov6xVZql10A0bAjIKmJOYeh8voWyUDio7zXUhw4I6366B
   gZuIR8yFJ76YzFBISTnAabOqH7a2rSScciusJ7BiBI/1ka5WfTjp2ttc8
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="281207790"
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200";
   d="scan'208";a="281207790"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2022 00:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200";
   d="scan'208";a="763080918"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2022 00:37:37 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ocMCn-0007dz-0u;
	Sun, 25 Sep 2022 07:37:37 +0000
Date: Sun, 25 Sep 2022 15:37:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6330051e.S6XR1bK2uaiN/0Gq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: FM2CMKH7WCUNQVNQPNNIU4PN6QF4M66D
X-Message-ID-Hash: FM2CMKH7WCUNQVNQPNNIU4PN6QF4M66D
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD REGRESSION ecfa396ef37aea5cf4b20db57585af16b110ac6b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FM2CMKH7WCUNQVNQPNNIU4PN6QF4M66D/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: ecfa396ef37aea5cf4b20db57585af16b110ac6b  Merge branch 'powercap' into bleeding-edge

Error/Warning reports:

https://lore.kernel.org/linux-acpi/202209250438.1vajrE1K-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/acpi/sleep.c:1096:28: error: use of undeclared identifier 'SYS_OFF_MODE_RESTART_PREPARE'
drivers/acpi/sleep.c:1096:42: error: 'SYS_OFF_MODE_RESTART_PREPARE' undeclared (first use in this function); did you mean 'SYS_OFF_MODE_RESTART'?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-allyesconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-defconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a001
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a003
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a005
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a012
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a014
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a016
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- ia64-allmodconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- ia64-randconfig-r014-20220925
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- loongarch-allyesconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-allmodconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-allyesconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-defconfig
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a002
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a004
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a006
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a011
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a013
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a015
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-rhel-8.3
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-rhel-8.3-kunit
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
|-- x86_64-rhel-8.3-kvm
|   `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
`-- x86_64-rhel-8.3-syz
    `-- drivers-acpi-sleep.c:error:SYS_OFF_MODE_RESTART_PREPARE-undeclared-(first-use-in-this-function)
clang_recent_errors
|-- i386-randconfig-a002
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- i386-randconfig-a004
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- i386-randconfig-a006
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- i386-randconfig-a011
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- i386-randconfig-a013
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- i386-randconfig-a015
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- x86_64-randconfig-a001
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- x86_64-randconfig-a003
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- x86_64-randconfig-a005
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- x86_64-randconfig-a012
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
|-- x86_64-randconfig-a014
|   `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE
`-- x86_64-randconfig-a016
    `-- drivers-acpi-sleep.c:error:use-of-undeclared-identifier-SYS_OFF_MODE_RESTART_PREPARE

elapsed time: 725m

configs tested: 58
configs skipped: 2

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
arm64                            allyesconfig
arc                  randconfig-r043-20220925
arm                              allyesconfig
riscv                randconfig-r042-20220925
s390                 randconfig-r044-20220925
i386                                defconfig
i386                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
um                             i386_defconfig
alpha                               defconfig
um                           x86_64_defconfig
s390                                defconfig
powerpc                          allmodconfig
mips                             allyesconfig
s390                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a006
x86_64                           rhel-8.3-kvm
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                               rhel-8.3
x86_64                        randconfig-a013
i386                          randconfig-a005
x86_64                        randconfig-a011
i386                          randconfig-a014
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220925
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a006
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
