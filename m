Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C1E53F6F7
	for <lists+devel-acpica@lfdr.de>; Tue,  7 Jun 2022 09:14:00 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AB496100EAAFD;
	Tue,  7 Jun 2022 00:13:57 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A5454100EAAED
	for <devel@acpica.org>; Tue,  7 Jun 2022 00:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1654586035; x=1686122035;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=llF76QcHw+Aho1/ZKoPV8jVpAedMYUR11m5/d7d1+Fc=;
  b=m3ygPxB997elET5O3xxrFMSZ1spKqvQ6SWrbBaNVvMjCMiCgYCRUDu/u
   ygRXzenZxmnuQscSYo2lmLn6Lxd1A6VHpswsHDhN9YobPhpdtLbX04/Zd
   DdtA7uRLkyPQEBrCt5OIZ21+f7PQoJWoN4g8Be5CEtZtS1e85/2XopnBm
   14vwzTRP3PNabeXlye4YdHEvCkirPadgOMcCJHAlbyM+bWxZ9roNLH7ep
   5uehWUtpkiVWsikL1iKkJ0Zz4bd9/NeXLEH6wWczrr8OA1XXiB+UHQCMN
   l/if1fQJqKS+LPO+zs5v3Cd2bCowVcX+1WqqL7TNXX0tvbrTfAq1yc9qm
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="340337405"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600";
   d="scan'208";a="340337405"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2022 00:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600";
   d="scan'208";a="682621079"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2022 00:13:46 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nyTPN-000DSf-KW;
	Tue, 07 Jun 2022 07:13:45 +0000
Date: Tue, 07 Jun 2022 15:13:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <629efa90.l8uapqHJf1Su+u23%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 7ZS7QTX2XQWL7VAIB6DEINIWJZIG2RRJ
X-Message-ID-Hash: 7ZS7QTX2XQWL7VAIB6DEINIWJZIG2RRJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 6a8964e282382ab8f2e64355d2ce8eda80e8fe30
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7ZS7QTX2XQWL7VAIB6DEINIWJZIG2RRJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 6a8964e282382ab8f2e64355d2ce8eda80e8fe30  Merge branch 'pm-sysoff' into linux-next

elapsed time: 723m

configs tested: 132
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-c001
m68k                         amcore_defconfig
arm                          pxa3xx_defconfig
arc                                 defconfig
sh                   rts7751r2dplus_defconfig
sh                         ap325rxa_defconfig
arc                     haps_hs_smp_defconfig
xtensa                generic_kc705_defconfig
arc                      axs103_smp_defconfig
mips                        vocore2_defconfig
arm                      jornada720_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     taishan_defconfig
sh                            shmin_defconfig
sh                           se7750_defconfig
sh                          sdk7786_defconfig
arm                        mvebu_v7_defconfig
ia64                        generic_defconfig
powerpc                    sam440ep_defconfig
powerpc                      chrp32_defconfig
nios2                         10m50_defconfig
arc                          axs103_defconfig
powerpc                     rainier_defconfig
arc                            hsdk_defconfig
arm                            qcom_defconfig
openrisc                    or1ksim_defconfig
m68k                                defconfig
mips                     decstation_defconfig
arm                           u8500_defconfig
sh                          rsk7264_defconfig
mips                         db1xxx_defconfig
arm                           tegra_defconfig
sh                             shx3_defconfig
sh                             espt_defconfig
arm                          iop32x_defconfig
sh                            migor_defconfig
mips                 decstation_r4k_defconfig
ia64                                defconfig
nios2                            alldefconfig
m68k                        m5307c3_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220605
riscv                             allnoconfig
h8300                            allyesconfig
m68k                             allyesconfig
xtensa                           allyesconfig
m68k                             allmodconfig
csky                                defconfig
mips                             allyesconfig
nios2                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
alpha                            allyesconfig
mips                             allmodconfig
sh                               allmodconfig
s390                                defconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                             allmodconfig
riscv                          rv32_defconfig
parisc                              defconfig
parisc64                            defconfig
riscv                    nommu_k210_defconfig
parisc                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
s390                             allyesconfig
sparc                               defconfig
powerpc                          allyesconfig
i386                             allyesconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
sparc                            allyesconfig
powerpc                          allmodconfig
i386                                defconfig
um                             i386_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
ia64                             allmodconfig
arm64                               defconfig
ia64                             allyesconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a010
i386                          randconfig-a012
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a008
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a007
i386                          randconfig-a005
i386                          randconfig-a009
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
powerpc              randconfig-c003-20220606
riscv                randconfig-c006-20220606
s390                 randconfig-c005-20220606
i386                 randconfig-c001-20220606
mips                 randconfig-c004-20220606
x86_64               randconfig-c007-20220606
arm                  randconfig-c002-20220606
arm                             mxs_defconfig
mips                        qi_lb60_defconfig
mips                            e55_defconfig
arm                     am200epdkit_defconfig
mips                      maltaaprp_defconfig
arm                        mvebu_v5_defconfig
powerpc                     powernv_defconfig
i386                          randconfig-a002
x86_64                        randconfig-a009
x86_64                        randconfig-a007
x86_64                        randconfig-a010
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a008
i386                          randconfig-a004
x86_64                        randconfig-a012
i386                          randconfig-a006
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
