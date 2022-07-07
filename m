Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE74569A26
	for <lists+devel-acpica@lfdr.de>; Thu,  7 Jul 2022 08:00:34 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 82754100EBB94;
	Wed,  6 Jul 2022 23:00:31 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6F532100EBB7F
	for <devel@acpica.org>; Wed,  6 Jul 2022 23:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657173628; x=1688709628;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=iHzgjgvR53KzV2jnlzVatUj4/qLCd2yhwDfS/pN1Fto=;
  b=U2GayMS1v3ttd/RZjjjhYrS25qpDOLa0Zi7dJoARDRCl6hPVt8TUVZ7T
   M7pgErGLUILTinGzT/jI1GsdP2+c25c++JAwqK9UweHt/Vi3pazl/ZrQ8
   lUqSnStPc1VgCfHPvlceAYFlA9tJsJAjEMM13wHnYG+d8LczJEwYp4I2P
   LOE0vgzhsWCZp5Jk1c5LcQqPXwfUZ6oSUmEpS+21xy+QUFsLWRDiYtxTj
   eM8JvJL2+49ARzd1YaDRH1ogJct4JKz+0+0f6S/3CF1ome0nlbfzL2+FR
   Pj2JgxVyBzmeQhyQIZpReAbQicRYR8mnFkUq0bW7PkfZ112uC/obbIxmz
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="281487162"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400";
   d="scan'208";a="281487162"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2022 23:00:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400";
   d="scan'208";a="770309014"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 06 Jul 2022 23:00:25 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o9KYq-000Lcg-Ve;
	Thu, 07 Jul 2022 06:00:24 +0000
Date: Thu, 07 Jul 2022 13:59:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62c67649.QhtTSNFmuf+RtSLa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: THWZWNEVNMXTELTT6RDP6HX4D3IOT3HT
X-Message-ID-Hash: THWZWNEVNMXTELTT6RDP6HX4D3IOT3HT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS f97e5813664c9631f3890f316cc9c8da611719ea
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/THWZWNEVNMXTELTT6RDP6HX4D3IOT3HT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: f97e5813664c9631f3890f316cc9c8da611719ea  Merge branches 'pm-sleep' and 'powercap' into linux-next

elapsed time: 972m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220706
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
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r041-20220706
hexagon              randconfig-r045-20220706
riscv                randconfig-r042-20220706
s390                 randconfig-r044-20220706

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
