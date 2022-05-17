Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 619DA529B5C
	for <lists+devel-acpica@lfdr.de>; Tue, 17 May 2022 09:48:21 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 193E5100EBB97;
	Tue, 17 May 2022 00:48:19 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5BF17100EBB94
	for <devel@acpica.org>; Tue, 17 May 2022 00:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652773696; x=1684309696;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=qVIpKTaKVVZpRK2k3PZiIKe0MQF+IrOdNEK5O+jBR8I=;
  b=cc1Sn/7Z3KdqEJtecXwFlMdX5W21Qzd7G295il3MEBF3OUrjTms9/mIk
   RFA52uVswZVGaxumkDR4F9Lg9Ng7Q3VsAzbwgfRJqpKj8L4rr/RNEfngp
   uGqYeap4xmM0v7I36968HAVSoUUHcyRePZjr15CHpBLk6e0Gu6YFszIcu
   Uc1xr+FnP8B6fgw6yfb9PJBnD7ZPS5Sa7/Uu6uo9qUhhsKn6aptJWiZya
   ezMYEVjQDA5x3UGYO41n75HQRQ+RuU0fD9fyNuIFJZ8i4bqh+TdwspSZy
   iTo4YpnCUI0oUHme7fxX6BUJtjlYczETXSXdv93KTdtyXq+R/mwoy3LJT
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10349"; a="270792804"
X-IronPort-AV: E=Sophos;i="5.91,232,1647327600";
   d="scan'208";a="270792804"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2022 00:48:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,232,1647327600";
   d="scan'208";a="660496147"
Received: from lkp-server02.sh.intel.com (HELO 242b25809ac7) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 17 May 2022 00:48:12 -0700
Received: from kbuild by 242b25809ac7 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nqrwB-0000jd-PE;
	Tue, 17 May 2022 07:48:11 +0000
Date: Tue, 17 May 2022 15:47:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <6283530e.S0T7WGEIa66R66vL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: QPX26C52GW5KX2FWDJWPXAKJ7IPCHDVJ
X-Message-ID-Hash: QPX26C52GW5KX2FWDJWPXAKJ7IPCHDVJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 6b601767c503e2488f8e4ce6ce06ad67573797dd
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QPX26C52GW5KX2FWDJWPXAKJ7IPCHDVJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 6b601767c503e2488f8e4ce6ce06ad67573797dd  Merge branch 'thermal-int340x-fixes' into linux-next

elapsed time: 848m

configs tested: 93
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm64                               defconfig
i386                 randconfig-c001-20220516
sh                           se7780_defconfig
sh                           se7705_defconfig
powerpc                     sequoia_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
sh                               allmodconfig
arc                                 defconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
parisc64                            defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a012-20220516
x86_64               randconfig-a011-20220516
x86_64               randconfig-a013-20220516
x86_64               randconfig-a014-20220516
x86_64               randconfig-a016-20220516
x86_64               randconfig-a015-20220516
i386                 randconfig-a014-20220516
i386                 randconfig-a011-20220516
i386                 randconfig-a013-20220516
i386                 randconfig-a015-20220516
i386                 randconfig-a012-20220516
i386                 randconfig-a016-20220516
arc                  randconfig-r043-20220516
riscv                randconfig-r042-20220516
s390                 randconfig-r044-20220516
riscv                             allnoconfig
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz

clang tested configs:
mips                  cavium_octeon_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                   microwatt_defconfig
powerpc                     akebono_defconfig
powerpc                    mvme5100_defconfig
i386                 randconfig-a005-20220516
i386                 randconfig-a003-20220516
i386                 randconfig-a001-20220516
i386                 randconfig-a004-20220516
i386                 randconfig-a006-20220516
i386                 randconfig-a002-20220516
hexagon              randconfig-r045-20220516
hexagon              randconfig-r041-20220516
x86_64               randconfig-a002-20220516
x86_64               randconfig-a001-20220516
x86_64               randconfig-a003-20220516
x86_64               randconfig-a005-20220516
x86_64               randconfig-a004-20220516
x86_64               randconfig-a006-20220516

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
