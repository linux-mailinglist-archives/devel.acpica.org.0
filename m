Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 004D456C7BC
	for <lists+devel-acpica@lfdr.de>; Sat,  9 Jul 2022 09:49:37 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 250EA100EAB71;
	Sat,  9 Jul 2022 00:49:35 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C736C100EB84F
	for <devel@acpica.org>; Sat,  9 Jul 2022 00:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657352972; x=1688888972;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=6WJoZVk75dNFJXda9XH+6JTKF3UWIiSuwtfl/PGMrOA=;
  b=EQIWxopXiBtqATtITIXufGnH+9KYHgGxQrtIZ63PoBx/Mf1VP+YMms6T
   yGVhuMmEof58Fvy2ZpMfX0dgY419knoSKPPqLxMsGvcuh2qrZLX4zlmDj
   lMgbR0/VExVtb7oa6gQsNrMADY9xtzH8b8T9dYbDKWD9W3FbDv1UJqEYw
   zpMZ2ZxXu3+GrVtIEcLaIn8WuQSfo+hz645WP3oXAd0P7Ll4GHJ3gqF0+
   v4mxkBDCW9DPkTUAvb38xO/3J/PRGOR3jYOU/vTB3JZh6oqPmyG2W8L+Y
   Jz7KsHUrSxstXYZ9ZM4pbWHWWQ/GyJIJoHqnP4jYaWcfew80u97qZ/zlF
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="285543339"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400";
   d="scan'208";a="285543339"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2022 00:49:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400";
   d="scan'208";a="626946662"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 09 Jul 2022 00:49:29 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1oA5DV-000ORz-9d;
	Sat, 09 Jul 2022 07:49:29 +0000
Date: Sat, 09 Jul 2022 15:48:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62c932d0.icFRZQKJxHBI2M1R%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: HMT4F2MB5MYHIFHIJUFMN6EOUXWIOK22
X-Message-ID-Hash: HMT4F2MB5MYHIFHIJUFMN6EOUXWIOK22
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 3420be34050b75d68043c73c30ad950166ba05a7
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HMT4F2MB5MYHIFHIJUFMN6EOUXWIOK22/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3420be34050b75d68043c73c30ad950166ba05a7  Merge branch 'pm-core-next' into bleeding-edge

elapsed time: 722m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
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
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a014
arc                  randconfig-r043-20220707
riscv                randconfig-r042-20220707
s390                 randconfig-r044-20220707
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220707
hexagon              randconfig-r045-20220707

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
