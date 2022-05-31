Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 812BB538AC2
	for <lists+devel-acpica@lfdr.de>; Tue, 31 May 2022 06:53:04 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7FE69100EA91C;
	Mon, 30 May 2022 21:53:01 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 348D8100EAB18
	for <devel@acpica.org>; Mon, 30 May 2022 21:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653972780; x=1685508780;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=76fY8Ek9YA85m7Sn8y5UyEEJ6MnFoPwGlkuOWG/vkBg=;
  b=GOKqD5yZMrrfLYtIS3yg3GUXrh0Q2+LyWpbZ9IxJcnzqztAj+6SfKWY6
   2ou+9AF3QS7U2WWaF5MS+tOwOJ9DwlIqpWfvwvbfqb8HdgphOeP28eRjL
   knN2dOxnvchkxhq2Jwx2KXcO/u8Avg+zDRj9S78XE01nm3hQAl1hR8yNn
   ghuOqW6rdyzWuVXP2gRWKKMVeDgMhhzwmJCmJwBhGN8T2QjdiDIYvm86r
   asSH57PWmEj9toQRoRcTfyLLBxnRncZEVuPRimeXNCDIdnV6kJ+4c+JL+
   MTyZdVtqm9veqbRGgayJJOgAz2WzsiquwEOjuLytSusfBxlNtlYvF6KRx
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="361513991"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600";
   d="scan'208";a="361513991"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2022 21:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600";
   d="scan'208";a="632865999"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 30 May 2022 21:52:56 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nvtsF-0002LA-Px;
	Tue, 31 May 2022 04:52:55 +0000
Date: Tue, 31 May 2022 12:51:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62959eee.s3Cftj/5JE61nbEP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: OZW744ILI7R2LCI6JJ3VFTS4SSW5IPBH
X-Message-ID-Hash: OZW744ILI7R2LCI6JJ3VFTS4SSW5IPBH
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 2517a0ba026a90d717f7bd9ee51098c10e93904d
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OZW744ILI7R2LCI6JJ3VFTS4SSW5IPBH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 2517a0ba026a90d717f7bd9ee51098c10e93904d  Merge branch 'acpi-osl' into linux-next

Unverified Warning (likely false positive, please contact us if interested):

kernel/reboot.c:554:43: warning: Parameter 'power_off' can be declared with const [constParameter]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-randconfig-p002-20220530
|   `-- kernel-reboot.c:warning:Parameter-power_off-can-be-declared-with-const-constParameter
`-- x86_64-randconfig-p001-20220530
    `-- kernel-reboot.c:warning:Parameter-power_off-can-be-declared-with-const-constParameter

elapsed time: 722m

configs tested: 128
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
mips                             allyesconfig
riscv                            allmodconfig
um                             i386_defconfig
mips                             allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
i386                 randconfig-c001-20220530
m68k                       m5249evb_defconfig
arm                       omap2plus_defconfig
mips                       capcella_defconfig
sh                   sh7770_generic_defconfig
m68k                          hp300_defconfig
h8300                            alldefconfig
powerpc                      mgcoge_defconfig
arm                         nhk8815_defconfig
sh                        sh7763rdp_defconfig
mips                     loongson1b_defconfig
arm                            lart_defconfig
s390                       zfcpdump_defconfig
powerpc64                           defconfig
x86_64                        randconfig-c001
i386                          randconfig-c001
arm                  randconfig-c002-20220531
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
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
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64               randconfig-a003-20220530
x86_64               randconfig-a006-20220530
x86_64               randconfig-a004-20220530
x86_64               randconfig-a001-20220530
x86_64               randconfig-a002-20220530
x86_64               randconfig-a005-20220530
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                 randconfig-a002-20220530
i386                 randconfig-a003-20220530
i386                 randconfig-a004-20220530
i386                 randconfig-a005-20220530
i386                 randconfig-a001-20220530
i386                 randconfig-a006-20220530
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220530
arc                  randconfig-r043-20220531
s390                 randconfig-r044-20220531
riscv                randconfig-r042-20220531
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                     pseries_defconfig
mips                       lemote2f_defconfig
powerpc                      pmac32_defconfig
powerpc                      walnut_defconfig
mips                         tb0219_defconfig
powerpc                     kmeter1_defconfig
mips                malta_qemu_32r6_defconfig
arm                       imx_v4_v5_defconfig
arm                    vt8500_v6_v7_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220530
x86_64               randconfig-a013-20220530
x86_64               randconfig-a012-20220530
x86_64               randconfig-a014-20220530
x86_64               randconfig-a015-20220530
x86_64               randconfig-a016-20220530
i386                 randconfig-a012-20220530
i386                 randconfig-a011-20220530
i386                 randconfig-a014-20220530
i386                 randconfig-a016-20220530
i386                 randconfig-a013-20220530
i386                 randconfig-a015-20220530
hexagon              randconfig-r045-20220530
s390                 randconfig-r044-20220530
hexagon              randconfig-r041-20220530
riscv                randconfig-r042-20220530

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
