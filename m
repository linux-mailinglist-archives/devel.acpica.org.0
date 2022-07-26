Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1EF58166F
	for <lists+devel-acpica@lfdr.de>; Tue, 26 Jul 2022 17:31:39 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F1557100EA917;
	Tue, 26 Jul 2022 08:31:36 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B8960100EF27E
	for <devel@acpica.org>; Tue, 26 Jul 2022 08:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658849489; x=1690385489;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=hl+u7USFyWlFOxUxd5I+dkiqpw0PVDQT5ymfIrpcXZU=;
  b=L1071/d6lvqiHLNyFwwGg/+rXhAbeggQ68bHATwS2STwK6SgDkCYXKCc
   mcqmwSwU9XrGfxcfXQUp1UgPprItz3fQSVH1waoMyZJDq/Gzwxvvzxnij
   Qh+uY031mt4cl6PQ41eC/p3b7ZssMwy0I8tlodpxtEnCTRHsulPbHsaKG
   sS89vLlsJFXpZ6T919R3mv81aXBKfL/VU6EvUQRbZrq/uCS7P5COmLhUR
   iRWNHik6HPmXcKWkoMuEvSVAHNBmiHfa+A9nllB1HMII/oWdApdhbs/77
   N+Okj6eEAE4A+gnjt7MRaolvPBvJMLglAtxUZe6+2W4O7o9H6hi++x+1o
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="268371093"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200";
   d="scan'208";a="268371093"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2022 08:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200";
   d="scan'208";a="927377453"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2022 08:31:27 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oGMWs-00073o-2g;
	Tue, 26 Jul 2022 15:31:26 +0000
Date: Tue, 26 Jul 2022 23:30:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62e008aa.hGXu5TSEWwXQkLxD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: BND6NLEZP7CBXZPMEOHKQWV2QJAZPB2R
X-Message-ID-Hash: BND6NLEZP7CBXZPMEOHKQWV2QJAZPB2R
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS e399ae3422730fa46abf97b3563c23274ecb8ceb
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BND6NLEZP7CBXZPMEOHKQWV2QJAZPB2R/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: e399ae3422730fa46abf97b3563c23274ecb8ceb  Merge branch 'pm-cpuidle' into bleeding-edge

elapsed time: 1191m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
sh                        sh7763rdp_defconfig
mips                     loongson1b_defconfig
powerpc                     ep8248e_defconfig
ia64                             allmodconfig
csky                              allnoconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
m68k                             allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
s390                 randconfig-r044-20220724
arc                  randconfig-r043-20220724
riscv                randconfig-r042-20220724
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
mips                         tb0287_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220724
hexagon              randconfig-r045-20220724

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
