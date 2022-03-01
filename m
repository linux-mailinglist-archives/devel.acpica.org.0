Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C87B4C8850
	for <lists+devel-acpica@lfdr.de>; Tue,  1 Mar 2022 10:44:21 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BC161100EA10F;
	Tue,  1 Mar 2022 01:44:18 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B2AAC100EA10D
	for <devel@acpica.org>; Tue,  1 Mar 2022 01:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646127856; x=1677663856;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=kXru06/IOIGyvmWQpJlCO6LXdwoif1r6qFgNVJS0Gu4=;
  b=CVIxo4binM7oB9VVuVlQ62MBWTG3dJ3FBXn8EoA2kGfvJPpHLeAACfTZ
   PKYtkLT9q5hmTAsnraQ1NH3k3cjbR1Zl7u7A92NPDj/Q/t6aIm2oNnIIN
   b0ocfEw+3VSA1kgBRqbbQnq16BmlN1mS2JvM0KgrtwCxDkKPzU7Wadd+W
   /SArnlxKiJYmEGP+DgZDR/HEvJqbWS8yOwWWYZk6w9bXtQ9t/WvdKwsh7
   ajlDHEh0dBkkJZuNVkac4IBjGPV9yXzS03d8v8dZALtDwt3XgdZ13dljE
   HGnp3svk1LsNoDuCpJCno/0ZAsSK6DJk3XJprL0QtEqPytjoRsdMWcNza
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="236608014"
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400";
   d="scan'208";a="236608014"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2022 01:44:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400";
   d="scan'208";a="507743365"
Received: from lkp-server01.sh.intel.com (HELO 2146afe809fb) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 01 Mar 2022 01:44:14 -0800
Received: from kbuild by 2146afe809fb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nOz3F-0000Fk-EQ; Tue, 01 Mar 2022 09:44:13 +0000
Date: Tue, 01 Mar 2022 17:43:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <621deac6.naqZhUKaeXm2KwZO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: RNW6FF45PQVMP6OKVOSSHOA627VJTXBP
X-Message-ID-Hash: RNW6FF45PQVMP6OKVOSSHOA627VJTXBP
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS ac62facbd440da5ba31f5b4b137c234815b6c2d2
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RNW6FF45PQVMP6OKVOSSHOA627VJTXBP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: ac62facbd440da5ba31f5b4b137c234815b6c2d2  Merge branch 'acpi-fan' into linux-next

elapsed time: 739m

configs tested: 157
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
arc                        vdk_hs38_defconfig
powerpc                      pasemi_defconfig
m68k                       m5249evb_defconfig
parisc                              defconfig
arc                 nsimosci_hs_smp_defconfig
mips                             allyesconfig
h8300                       h8s-sim_defconfig
nios2                         10m50_defconfig
mips                           jazz_defconfig
sh                ecovec24-romimage_defconfig
m68k                            mac_defconfig
mips                         db1xxx_defconfig
sh                     sh7710voipgw_defconfig
powerpc                      bamboo_defconfig
arc                        nsim_700_defconfig
arm                        keystone_defconfig
mips                            gpr_defconfig
arm                       omap2plus_defconfig
arm                        cerfcube_defconfig
powerpc                     tqm8555_defconfig
mips                         mpc30x_defconfig
mips                       bmips_be_defconfig
sh                          landisk_defconfig
sh                          r7785rp_defconfig
arc                            hsdk_defconfig
sh                               alldefconfig
powerpc                   motionpro_defconfig
powerpc                      ppc6xx_defconfig
arc                          axs103_defconfig
arm                        realview_defconfig
arm                          iop32x_defconfig
powerpc                         ps3_defconfig
arm                  randconfig-c002-20220228
arm                  randconfig-c002-20220227
arm                  randconfig-c002-20220301
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64               randconfig-a011-20220228
x86_64               randconfig-a015-20220228
x86_64               randconfig-a014-20220228
x86_64               randconfig-a013-20220228
x86_64               randconfig-a016-20220228
x86_64               randconfig-a012-20220228
i386                 randconfig-a016-20220228
i386                 randconfig-a012-20220228
i386                 randconfig-a015-20220228
i386                 randconfig-a011-20220228
i386                 randconfig-a013-20220228
i386                 randconfig-a014-20220228
arc                  randconfig-r043-20220228
riscv                randconfig-r042-20220228
s390                 randconfig-r044-20220228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                 randconfig-c004-20220301
powerpc              randconfig-c003-20220301
arm                  randconfig-c002-20220301
s390                 randconfig-c005-20220301
riscv                randconfig-c006-20220301
arm                  colibri_pxa300_defconfig
powerpc                     powernv_defconfig
mips                           rs90_defconfig
arm                         orion5x_defconfig
mips                           mtx1_defconfig
powerpc                     pseries_defconfig
powerpc                     tqm8560_defconfig
mips                           ip28_defconfig
arm                        mvebu_v5_defconfig
arm                          imote2_defconfig
powerpc                   lite5200b_defconfig
mips                           ip22_defconfig
arm                       versatile_defconfig
arm                        vexpress_defconfig
mips                          malta_defconfig
arm                         hackkit_defconfig
x86_64               randconfig-a001-20220228
x86_64               randconfig-a004-20220228
x86_64               randconfig-a003-20220228
x86_64               randconfig-a005-20220228
x86_64               randconfig-a002-20220228
x86_64               randconfig-a006-20220228
i386                 randconfig-a002-20220228
i386                 randconfig-a001-20220228
i386                 randconfig-a005-20220228
i386                 randconfig-a003-20220228
i386                 randconfig-a006-20220228
i386                 randconfig-a004-20220228
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220301
hexagon              randconfig-r041-20220301
riscv                randconfig-r042-20220301
hexagon              randconfig-r041-20220228
hexagon              randconfig-r045-20220228
hexagon              randconfig-r045-20220227
hexagon              randconfig-r041-20220227
riscv                randconfig-r042-20220227

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
