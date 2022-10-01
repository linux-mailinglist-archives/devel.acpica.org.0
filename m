Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADEF5F1BDB
	for <lists+devel-acpica@lfdr.de>; Sat,  1 Oct 2022 12:45:43 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 721B5100EAB51;
	Sat,  1 Oct 2022 03:45:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6637F100EBB7F
	for <devel@acpica.org>; Sat,  1 Oct 2022 03:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664621137; x=1696157137;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=xiVJXuR8P1pRABToUvIhXZW5iUyJHHHG80SpQQPDLxI=;
  b=ZFAwPAbzzWovgOoapRQu5hYv4BEZlBDzNIcOTBL/j48L136uCJrNK9CX
   hav5XSYRdzG4tbjjJDyKPcNz0Nrgo/0wUp+7hhXAxjJtuEoCnDom5ruOZ
   b/R+LlbSZfmc5fcsCO6ypkjFmQeyDGD8tTWs9WLGtzU04MLyI3byXMOZ2
   nKUXSGogi1Vsrl8AEwZ0G4sy/nX1QvsS3EYZ0C5MQxv8q4ps9cv2eklYb
   lDhtjrIvr/U0YbHMLHvJKKMzMDhCb35jmB+x/AD/PRlFkwn+el3GQd6uA
   OiQrAOvWPMUVOPf3mHtjeuNcX4g6eNUTH5AqGlG271vo5c2/ztZ5THEoL
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="366416538"
X-IronPort-AV: E=Sophos;i="5.93,360,1654585200";
   d="scan'208";a="366416538"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2022 03:45:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="653835538"
X-IronPort-AV: E=Sophos;i="5.93,360,1654585200";
   d="scan'208";a="653835538"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 01 Oct 2022 03:45:26 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oeZzq-00029L-0o;
	Sat, 01 Oct 2022 10:45:26 +0000
Date: Sat, 01 Oct 2022 18:44:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <63381a1d.1RMK5Xirt7dxFPZ9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: MXOJGUAKCVKEKSKFEPY4WSJISPFLYZN6
X-Message-ID-Hash: MXOJGUAKCVKEKSKFEPY4WSJISPFLYZN6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 816cee8cb69ed35afedc0a1011493e5f8c6aeead
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MXOJGUAKCVKEKSKFEPY4WSJISPFLYZN6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 816cee8cb69ed35afedc0a1011493e5f8c6aeead  Merge branch 'thermal-core' into bleeding-edge

elapsed time: 979m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
powerpc                          allmodconfig
x86_64                         rhel-8.3-kunit
arc                                 defconfig
mips                             allyesconfig
x86_64                          rhel-8.3-func
i386                                defconfig
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
s390                             allmodconfig
arm                                 defconfig
m68k                             allmodconfig
s390                                defconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                             allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
arc                  randconfig-r043-20220925
arm64                            allyesconfig
riscv                randconfig-r042-20220925
arm                              allyesconfig
i386                 randconfig-a001-20220926
arc                  randconfig-r043-20220926
x86_64               randconfig-a002-20220926
s390                 randconfig-r044-20220925
i386                 randconfig-a002-20220926
x86_64               randconfig-a005-20220926
x86_64                               rhel-8.3
i386                 randconfig-a003-20220926
x86_64               randconfig-a004-20220926
x86_64                        randconfig-a013
x86_64               randconfig-a006-20220926
x86_64                        randconfig-a011
i386                 randconfig-a004-20220926
i386                             allyesconfig
x86_64               randconfig-a001-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a006-20220926
x86_64               randconfig-a003-20220926
x86_64                        randconfig-a015
x86_64                           allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a015-20220926
x86_64                        randconfig-a012
i386                 randconfig-a014-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a016-20220926
x86_64                        randconfig-a014
i386                 randconfig-a012-20220926
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
