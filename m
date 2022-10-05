Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 510815F5014
	for <lists+devel-acpica@lfdr.de>; Wed,  5 Oct 2022 09:02:22 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 81B82100F224E;
	Wed,  5 Oct 2022 00:02:13 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D6109100EB34A
	for <devel@acpica.org>; Wed,  5 Oct 2022 00:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664953331; x=1696489331;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=AJ7ixBozYaycEaVpvF0s2Vu8NVpTQl0khy4R+AEjEcM=;
  b=BsfTRfuAkcFA0uLwyUBzXAAPQisa6erJrhTYGgMV+HlvXyVxnKFeAWuC
   IYrgmiY45eRLqZ9iE/ZXJUekGx+BasgdxdLzz16AoySMg2R71p3kVlVKI
   4X0rftSmvAb6I5pDXXsyfrh+Ou/Vzm7GKB1k3kSza9VgnOpBI0QEr1uBT
   HhBQ0MnaQlCHUYHH08BJkHopSjYhLYOEKrm3i2fQuOrfH/moYwjM4j26H
   OWPqSgChs43ftKQne0F2uzF5p/zvTJoCXViKdUS3Mx8REW+178VsnX3HI
   TQyGUqgW3JcTHR2dRGs49lRIXZTj0D8Yy1toT6ge7RFhibu+15b01kQ3N
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301819076"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800";
   d="scan'208";a="301819076"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2022 00:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="601928264"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800";
   d="scan'208";a="601928264"
Received: from lkp-server01.sh.intel.com (HELO d4f44333118a) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 00:01:59 -0700
Received: from kbuild by d4f44333118a with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ofyPm-00010f-2l;
	Wed, 05 Oct 2022 07:01:58 +0000
Date: Wed, 05 Oct 2022 15:01:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <633d2bd5.OuzscAmXVyRw+SIQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: JSBANZKY7NTIE5R3V2S4JTUG2YADNFOG
X-Message-ID-Hash: JSBANZKY7NTIE5R3V2S4JTUG2YADNFOG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 5bf0ef249e8750233e1a19c5d45724a7fcbed2e7
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JSBANZKY7NTIE5R3V2S4JTUG2YADNFOG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 5bf0ef249e8750233e1a19c5d45724a7fcbed2e7  Merge branch 'pm-core' into bleeding-edge

elapsed time: 725m

configs tested: 29
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                           allyesconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
ia64                             allmodconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
