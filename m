Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A8D5AC36D
	for <lists+devel-acpica@lfdr.de>; Sun,  4 Sep 2022 10:27:00 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C8C88100EB829;
	Sun,  4 Sep 2022 01:26:57 -0700 (PDT)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7B7CF100EBB94
	for <devel@acpica.org>; Sun,  4 Sep 2022 01:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662280016; x=1693816016;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=Ju+KKLx57zu2A9etoqVou1Lket7t8L7FHT+HvTOQKf8=;
  b=LfgeDjnmpsPGN8lqD+8cxi88Ptsfo5sSrjspSKWF5KA919d4jtWOyYjj
   1Ad5XVd+TxJau5me734P119hLcZ/SpchWm9CSSvcljQp5OfANd9zCeDIc
   T8MWEgYQJoWTZMi5ZSDHva3tvHlKt5W3nMQEB+Ixcdr84oXOGC54bSNOR
   w1/C2ISXHYfe5ciSdLEUldvVuQIRc3WAkJo6UPEOl5Biyi78jjCOdpCfb
   wx3vKMDqJASygVU4B8MrfHR1Dm86xHrRvqtfPPCbIUHXD+lxl3lryqP4L
   xySzp8nLKmHzzs/n2YSWJatSYbfMqEP9wW+v5UFsSdwua52SznXtp9UIy
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="293809819"
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200";
   d="scan'208";a="293809819"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2022 01:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200";
   d="scan'208";a="858654103"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 04 Sep 2022 01:26:40 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oUkxj-0002oi-1o;
	Sun, 04 Sep 2022 08:26:39 +0000
Date: Sun, 04 Sep 2022 16:26:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <63146128.Wj6a7OWDbwzShZ3i%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: WZI6RNIQCA53GWRLDQYNJAIEOLN7WRSL
X-Message-ID-Hash: WZI6RNIQCA53GWRLDQYNJAIEOLN7WRSL
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS bbc77c8d9661c790806ca96ca01a356275b6a684
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WZI6RNIQCA53GWRLDQYNJAIEOLN7WRSL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: bbc77c8d9661c790806ca96ca01a356275b6a684  Merge branch 'acpi-properties' into bleeding-edge

elapsed time: 724m

configs tested: 80
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
arm                                 defconfig
i386                                defconfig
powerpc                           allnoconfig
x86_64                        randconfig-a013
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
arc                              allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
alpha                            allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a014
x86_64                    rhel-8.3-kselftests
arm                              allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a002
x86_64                        randconfig-a015
m68k                             allyesconfig
arm64                            allyesconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a012
m68k                             allmodconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a016
x86_64                         rhel-8.3-kunit
arm                           u8500_defconfig
x86_64                        randconfig-a006
m68k                       m5475evb_defconfig
mips                      fuloong2e_defconfig
x86_64                        randconfig-a004
csky                              allnoconfig
i386                             allyesconfig
sparc64                          alldefconfig
arm                         assabet_defconfig
sh                           se7722_defconfig
ia64                             allmodconfig
microblaze                      mmu_defconfig
sh                           se7712_defconfig
arm                         lpc18xx_defconfig
mips                       bmips_be_defconfig
sparc                               defconfig
alpha                             allnoconfig
arm                      integrator_defconfig
riscv                             allnoconfig
arc                  randconfig-r043-20220904
parisc64                         alldefconfig
sh                            shmin_defconfig
ia64                      gensparse_defconfig
arc                               allnoconfig
riscv                randconfig-r042-20220904
s390                 randconfig-r044-20220904
loongarch                         allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
loongarch                           defconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a014
i386                          randconfig-a013
x86_64                        randconfig-a016
i386                          randconfig-a002
x86_64                        randconfig-a012
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
i386                          randconfig-a015
x86_64                        randconfig-a003
arm                   milbeaut_m10v_defconfig
x86_64                        randconfig-a005
powerpc                 mpc8272_ads_defconfig
hexagon              randconfig-r045-20220904
powerpc                          g5_defconfig
hexagon              randconfig-r041-20220904
riscv                          rv32_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
