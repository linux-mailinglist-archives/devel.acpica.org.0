Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CB96016CA
	for <lists+devel-acpica@lfdr.de>; Mon, 17 Oct 2022 21:00:42 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EB8F9100EAB71;
	Mon, 17 Oct 2022 12:00:38 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AEAD0100EAB63
	for <devel@acpica.org>; Mon, 17 Oct 2022 12:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666033236; x=1697569236;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=UYwqn8lfrfS9iaOUz7zhvOyKhScwE6zhaTGCrMNhQhE=;
  b=SCov5Z6uvlGqMCH6w49coz4xuq2AeTbsBeixfnMN4u/E87W+40ie4iyI
   GjfzeiVHqdrjs5aHrNR93iKrvnp6kkFovr9/ji56OvzjRI+z9zGxDbEms
   O5MfxSYyRvcy1cqbSE/rkuMy4drtbVoyk6B4CKhL2rL+EOOw8EampzfkC
   btEEZrlHgnLhZhlElDHx/BR87lO5vDv3fTwUMzkWd5t7QvvOFVeDcWahI
   zLfFMWbDUe5Grf4bTflF4zy+UlosHjCzxITJdFEKoKx0S0vMNcLfx/4io
   DSTg7UA6Mh+3kKGDhzT/Wf6nqCnnaMl6daqhylpALMhDHjqo/X2os1U48
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="370092563"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800";
   d="scan'208";a="370092563"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2022 12:00:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="579483303"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800";
   d="scan'208";a="579483303"
Received: from lkp-server01.sh.intel.com (HELO 8381f64adc98) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 17 Oct 2022 12:00:34 -0700
Received: from kbuild by 8381f64adc98 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1okVLl-0000oO-3C;
	Mon, 17 Oct 2022 19:00:33 +0000
Date: Tue, 18 Oct 2022 02:59:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <634da62f.Xx2C68NeB/s3GHYl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: HRC5VM4OIXUMM4W5NAD665MHBNTHU3DR
X-Message-ID-Hash: HRC5VM4OIXUMM4W5NAD665MHBNTHU3DR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS da137aba6fe2ba43809c68e882d41e0a2bb3a774
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HRC5VM4OIXUMM4W5NAD665MHBNTHU3DR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: da137aba6fe2ba43809c68e882d41e0a2bb3a774  Merge branch 'thermal-intel' into bleeding-edge

elapsed time: 957m

configs tested: 43
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                              defconfig
s390                             allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221017
i386                                defconfig
i386                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
i386                 randconfig-a001-20221017
i386                 randconfig-a002-20221017
i386                 randconfig-a003-20221017
i386                 randconfig-a005-20221017
i386                 randconfig-a004-20221017

clang tested configs:
hexagon              randconfig-r045-20221017
hexagon              randconfig-r041-20221017
riscv                randconfig-r042-20221017
s390                 randconfig-r044-20221017

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
