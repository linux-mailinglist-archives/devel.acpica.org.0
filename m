Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 542F853014A
	for <lists+devel-acpica@lfdr.de>; Sun, 22 May 2022 08:43:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DABB7100EB331;
	Sat, 21 May 2022 23:43:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 22B01100EB848
	for <devel@acpica.org>; Sat, 21 May 2022 23:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653201795; x=1684737795;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=4w46qxfNSVssfa7fbKnGNmQEU8ePKVCiB2XwRuFc7as=;
  b=Uk/wm4kT2I9q/8Y39AlyoiSh9xmBDdDLmYYTnL0wkwkPbZnU3icgj0w3
   DIZgpBFoq1fXIuj20c2vuf8EgjJJphfVZG+AbFo4yHpBIdDPUbo4h92xN
   6MqshrA2HBVbKGMoG5bSQ/gKM+5GSWsUxAau25/XOE2wMN4QRIEjFRCGE
   Oa2h7RgdCmvBv8cOa28KuYA6V+hJpRI4uvC5Gmt2xBQyl90zoltX/94uX
   DtAisldeyIisavevc+HjYl2BgeFYl4lIa133ptowSeo2TjbMx3GGaaIjM
   saesxPTPx3efMhFYR+SV2XR4knVE4YIekiloj63X2JEXeaEtBfKkl47MO
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10354"; a="359356265"
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600";
   d="scan'208";a="359356265"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2022 23:43:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600";
   d="scan'208";a="547342991"
Received: from lkp-server01.sh.intel.com (HELO db63a1be7222) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 21 May 2022 23:43:12 -0700
Received: from kbuild by db63a1be7222 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nsfJ1-00006p-H8;
	Sun, 22 May 2022 06:43:11 +0000
Date: Sun, 22 May 2022 14:42:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6289db57.CKTfld2m2iPjA4xf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: FGJZ32KLFMAG7P4MYBG2FM7CE3R5JHGG
X-Message-ID-Hash: FGJZ32KLFMAG7P4MYBG2FM7CE3R5JHGG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 3d22e39d225d7adb6c670065f4ae016e759171ed
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FGJZ32KLFMAG7P4MYBG2FM7CE3R5JHGG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 3d22e39d225d7adb6c670065f4ae016e759171ed  Merge branch 'acpica' into linux-next

elapsed time: 829m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm64                            allyesconfig
mips                             allyesconfig
riscv                            allyesconfig
um                           x86_64_defconfig
riscv                            allmodconfig
um                             i386_defconfig
mips                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
nios2                            allyesconfig
arm                           imxrt_defconfig
arm                       imx_v6_v7_defconfig
mips                     loongson1b_defconfig
parisc                           alldefconfig
arm                         assabet_defconfig
xtensa                generic_kc705_defconfig
s390                       zfcpdump_defconfig
arm                       omap2plus_defconfig
powerpc64                           defconfig
mips                 decstation_r4k_defconfig
arm                            qcom_defconfig
arm                        realview_defconfig
powerpc                     sequoia_defconfig
arm                           sama5_defconfig
arc                           tb10x_defconfig
h8300                     edosk2674_defconfig
nios2                            alldefconfig
arm                           h5000_defconfig
m68k                          multi_defconfig
arc                          axs101_defconfig
alpha                               defconfig
ia64                                defconfig
sh                         microdev_defconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
csky                                defconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220522
s390                 randconfig-r044-20220522
riscv                randconfig-r042-20220522
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                          ep93xx_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                   lite5200b_defconfig
powerpc                 mpc8560_ads_defconfig
arm                           omap1_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220522
hexagon              randconfig-r045-20220522

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
