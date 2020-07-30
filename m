Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 399E4232B74
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Jul 2020 07:41:14 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B56C012713EAA;
	Wed, 29 Jul 2020 22:41:12 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A83EF125ACBA9
	for <devel@acpica.org>; Wed, 29 Jul 2020 22:41:10 -0700 (PDT)
IronPort-SDR: FiQXuy4qalfo7VhUuMBBFQ+QX2zgdTo1txXCojjQtuh0QoCzv7Ylbmica/dwThXm09dEwui3cj
 PNVRpUAgow6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="131610434"
X-IronPort-AV: E=Sophos;i="5.75,413,1589266800";
   d="scan'208";a="131610434"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2020 22:41:10 -0700
IronPort-SDR: PnLfqCgFEpyMbbtgqFEc4X4mTMYdL4HHMtU6yz5+D7BBfRLZZDtdxCb/ut5zWnCw34nuAPkC06
 iDwhL7nj0nTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,413,1589266800";
   d="scan'208";a="491007089"
Received: from lkp-server01.sh.intel.com (HELO aff35d61a1e5) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 29 Jul 2020 22:41:08 -0700
Received: from kbuild by aff35d61a1e5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k11JT-00006A-M4; Thu, 30 Jul 2020 05:41:07 +0000
Date: Thu, 30 Jul 2020 13:40:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5f225d61.YfXWCartLr/vi0w8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: WD2UPDOF65HRA4ATEL66GFZ6PGGURPEK
X-Message-ID-Hash: WD2UPDOF65HRA4ATEL66GFZ6PGGURPEK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS WITH WARNING 5bff8c754ebfc08b9cead967f38ebc0152d2076f
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WD2UPDOF65HRA4ATEL66GFZ6PGGURPEK/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: 5bff8c754ebfc08b9cead967f38ebc0152d2076f  Merge branch 'pm-cpufreq' into bleeding-edge

Warning in current branch:

drivers/acpi/processor_idle.c:667:4: warning: 'return' with no value, in function returning non-void [-Wreturn-type]

Warning ids grouped by kconfigs:

recent_errors
`-- ia64-randconfig-r024-20200729
    `-- drivers-acpi-processor_idle.c:warning:return-with-no-value-in-function-returning-non-void

elapsed time: 722m

configs tested: 48
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
