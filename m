Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B05A233FFD
	for <lists+devel-acpica@lfdr.de>; Fri, 31 Jul 2020 09:32:19 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C832C128958F6;
	Fri, 31 Jul 2020 00:32:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E528A128958F1
	for <devel@acpica.org>; Fri, 31 Jul 2020 00:32:15 -0700 (PDT)
IronPort-SDR: MDT8akzFHHv3CDFMZpvbIu9PlrP+97BLpZ0AGpHqPqAUNiip6fc0y29JyeUC0qmt8Ylcb4STjN
 OZLzleKTdNjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="216197536"
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800";
   d="scan'208";a="216197536"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2020 00:32:15 -0700
IronPort-SDR: +nUl9EM4FpqMaXI9kosk4hQ5eO8b4A/7exNMNeS/Ko6sPoId+ajjntrO3gzlmsw3RppFhNDo6Y
 6zoSi7kuTWVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800";
   d="scan'208";a="304864548"
Received: from lkp-server02.sh.intel.com (HELO d4d86dd808e0) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 31 Jul 2020 00:32:13 -0700
Received: from kbuild by d4d86dd808e0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k1PWX-0000TR-0E; Fri, 31 Jul 2020 07:32:13 +0000
Date: Fri, 31 Jul 2020 15:31:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f23c8ea.PWJ3lFt9FGpnoBxp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: VNUD35EDLSU5DPG7FTRC2S6ZI3FVGJSU
X-Message-ID-Hash: VNUD35EDLSU5DPG7FTRC2S6ZI3FVGJSU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS WITH WARNING 97987ea7f86a35284fd54efc7412db246f178666
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VNUD35EDLSU5DPG7FTRC2S6ZI3FVGJSU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 97987ea7f86a35284fd54efc7412db246f178666  Merge branch 'pm-devfreq' into linux-next

Warning in current branch:

drivers/acpi/processor_idle.c:666:4: warning: 'return' with no value, in function returning non-void [-Wreturn-type]

Warning ids grouped by kconfigs:

recent_errors
|-- i386-allyesconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-defconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-a011-20200731
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-a012-20200731
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-a013-20200731
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-a014-20200731
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-a015-20200731
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-a016-20200731
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-c001-20200730
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- i386-randconfig-r003-20200730
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- ia64-allmodconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- ia64-allyesconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- ia64-defconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- ia64-randconfig-r025-20200730
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- x86_64-allmodconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- x86_64-allyesconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- x86_64-defconfig
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- x86_64-kexec
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- x86_64-rhel
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
|-- x86_64-rhel-7.6-kselftests
|   `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void
`-- x86_64-rhel-8.3
    `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void

elapsed time: 840m

configs tested: 66
configs skipped: 1

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200731
i386                 randconfig-a004-20200731
i386                 randconfig-a006-20200731
i386                 randconfig-a002-20200731
i386                 randconfig-a001-20200731
i386                 randconfig-a003-20200731
x86_64               randconfig-a015-20200731
x86_64               randconfig-a014-20200731
x86_64               randconfig-a016-20200731
x86_64               randconfig-a012-20200731
x86_64               randconfig-a013-20200731
x86_64               randconfig-a011-20200731
i386                 randconfig-a016-20200731
i386                 randconfig-a012-20200731
i386                 randconfig-a014-20200731
i386                 randconfig-a015-20200731
i386                 randconfig-a011-20200731
i386                 randconfig-a013-20200731
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
