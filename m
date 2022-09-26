Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF9F5E9854
	for <lists+devel-acpica@lfdr.de>; Mon, 26 Sep 2022 05:56:38 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A0F38100EAB54;
	Sun, 25 Sep 2022 20:56:35 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B1228100EAB51
	for <devel@acpica.org>; Sun, 25 Sep 2022 20:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664164592; x=1695700592;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=eh086qVFucH8dlz3eoG8NObR7R6ezc7PKEErDjfY2vM=;
  b=VKU1ZNX11VC93qCvjytI8jVC+XZAGyrFDWHeIjhj+BIAtgB+sBS13iMd
   8uifgISUHdCFX0HIdFsnAmQ7Fn60SUcMWVq/XVl6izhOr4KS1TePGBpo0
   b7wVlDgTnO9dk3c3gu+HYvfpdf6tLSdVlrIERMIKCpBOwwiH9YAHlcYZg
   zuS5llktPd/1+icx03slL7eh2+CapEVxavlFdqrxfhxgUaKS4MVdr9aZX
   G9IQ3Ns62rbbD2WZcHbELQqBOmsQNqYBuUtFfJQ7FIsC8OZVVnmrH6v7Q
   PR+Oo3eK23rIQeKtgZyXUbWnEfuUNmuqqOzKVCdcba8eL/lHafsJsrA1q
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="298532862"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200";
   d="scan'208";a="298532862"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2022 20:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="572064473"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200";
   d="scan'208";a="572064473"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 25 Sep 2022 20:56:29 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ocfEK-0008f8-0l;
	Mon, 26 Sep 2022 03:56:28 +0000
Date: Mon, 26 Sep 2022 11:56:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <633122d8.gE3EroSeVgRKEsTv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: YXKHCNTX56EBJ5XTEH7UOZQ6AWYTHDCB
X-Message-ID-Hash: YXKHCNTX56EBJ5XTEH7UOZQ6AWYTHDCB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 392b72b87ef168779f8651662155dc60e723d491
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YXKHCNTX56EBJ5XTEH7UOZQ6AWYTHDCB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 392b72b87ef168779f8651662155dc60e723d491  Merge branches 'pm-core' and 'powercap' into bleeding-edge

elapsed time: 725m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
i386                                defconfig
arc                  randconfig-r043-20220925
i386                          randconfig-a001
i386                          randconfig-a003
arc                                 defconfig
powerpc                          allmodconfig
arm                                 defconfig
i386                          randconfig-a005
sh                               allmodconfig
x86_64                           rhel-8.3-syz
s390                 randconfig-r044-20220925
x86_64                         rhel-8.3-kunit
alpha                               defconfig
riscv                randconfig-r042-20220925
mips                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a002
x86_64                        randconfig-a015
powerpc                           allnoconfig
x86_64                        randconfig-a013
x86_64                               rhel-8.3
arm                              allyesconfig
s390                             allmodconfig
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
x86_64                        randconfig-a004
arm64                            allyesconfig
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                           allyesconfig
s390                                defconfig
m68k                             allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
s390                             allyesconfig
alpha                            allyesconfig

clang tested configs:
hexagon              randconfig-r045-20220925
i386                          randconfig-a002
hexagon              randconfig-r041-20220925
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a011
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
