Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD33582157
	for <lists+devel-acpica@lfdr.de>; Wed, 27 Jul 2022 09:42:05 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A07D8100EA93A;
	Wed, 27 Jul 2022 00:42:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 39181100EB84F
	for <devel@acpica.org>; Wed, 27 Jul 2022 00:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658907722; x=1690443722;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=d4iM8TIPJXWTotJ3yhXeNZkv/L1xvQZLzpOWaWEW7hM=;
  b=Iu3aQIn0x71PpaXU+r7MGayj6IlfHG9MgIW+1SezRPSRBvtQZ4lWzyX2
   Gutc3VKGEtUa9YoBCpWTp0j/L2RfDBeWvZ/mbBQ5mIQ76MU6Bsfd8+3vf
   sDszvPWpYFnPOGHej1Ek+cS7RmrrmHIOtbo1tRplvoHQbNSs7Wg35CnnQ
   daCMaqvXvi0NXmks0JUdl6ohJHWyMvsXmmdtm/UbRdouA8BGqdn8I7Yx6
   qm/BexplELiNgzSoL4PfVnrlhrL1w0mfDA0Jn7xdSzkVrQBgLsH94Lz93
   h/ntIkw+fNiqk4ACiUP/WnpAVeNVJydiIOkRejT79QPLEzo4qXKZv5nN9
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="349874126"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200";
   d="scan'208";a="349874126"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2022 00:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200";
   d="scan'208";a="689777665"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 27 Jul 2022 00:41:59 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oGbg6-0008U4-0z;
	Wed, 27 Jul 2022 07:41:58 +0000
Date: Wed, 27 Jul 2022 15:41:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62e0ec2a.kV9Im9JHkpRPiLTo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: SU7RKMOQDGO2FGXWFAKDJRVBA2VLYWES
X-Message-ID-Hash: SU7RKMOQDGO2FGXWFAKDJRVBA2VLYWES
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS f11001f2dd7ec311162f0faaa6c2839f313cda41
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SU7RKMOQDGO2FGXWFAKDJRVBA2VLYWES/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: f11001f2dd7ec311162f0faaa6c2839f313cda41  Merge branch 'powercap' into bleeding-edge

elapsed time: 724m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220724
riscv                randconfig-r042-20220724
s390                 randconfig-r044-20220724
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220724
hexagon              randconfig-r045-20220724
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
