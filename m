Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4D51D24B8
	for <lists+devel-acpica@lfdr.de>; Thu, 14 May 2020 03:32:36 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D224B11AEAB79;
	Wed, 13 May 2020 18:29:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CA98911A692DE
	for <devel@acpica.org>; Wed, 13 May 2020 18:29:51 -0700 (PDT)
IronPort-SDR: jvehGo/+IItGSNLh3xJ6GNZano7A1tAlwkvDCr77XwI1/NcWjrXgeLNEETCNbb5WVV4ZRUGBjp
 tz1EiGe6lIcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2020 18:32:31 -0700
IronPort-SDR: rDPfITWhGuHuS82A5qBo+61be/o1PDF3AH4183Ah4L9S+SdYJM2TidAYalhSNSFOlen6UI9/2/
 uMA/DECljETQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,389,1583222400";
   d="scan'208";a="341445682"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 13 May 2020 18:32:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jZ2jd-000HiF-ED; Thu, 14 May 2020 09:32:29 +0800
Date: Thu, 14 May 2020 09:31:42 +0800
From: kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <5ebc9f7e.sgT17YkFQuXh+FGG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: FLAQY3OMSNLXAL4N2ASYE3OU5GPP7KFZ
X-Message-ID-Hash: FLAQY3OMSNLXAL4N2ASYE3OU5GPP7KFZ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge] BUILD SUCCESS fbe093dd16f4eb35746ca73c063d6290a494a93a
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FLAQY3OMSNLXAL4N2ASYE3OU5GPP7KFZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
branch HEAD: fbe093dd16f4eb35746ca73c063d6290a494a93a  Merge branch 'pm-cpufreq' into linux-next

elapsed time: 484m

configs tested: 154
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
sparc                            allyesconfig
m68k                             allyesconfig
h8300                     edosk2674_defconfig
mips                     decstation_defconfig
sh                          rsk7201_defconfig
parisc                              defconfig
m68k                          amiga_defconfig
mips                malta_qemu_32r6_defconfig
i386                              allnoconfig
sh                          sdk7786_defconfig
arm                            hisi_defconfig
arm                          exynos_defconfig
arm                            mps2_defconfig
s390                       zfcpdump_defconfig
m68k                       m5249evb_defconfig
m68k                          sun3x_defconfig
sh                           se7619_defconfig
mips                        qi_lb60_defconfig
arc                        nsim_700_defconfig
arm                         lubbock_defconfig
arm                          tango4_defconfig
sh                            shmin_defconfig
mips                           mtx1_defconfig
riscv                    nommu_virt_defconfig
mips                        nlm_xlr_defconfig
arm                         s3c2410_defconfig
xtensa                           allyesconfig
powerpc                      chrp32_defconfig
arm                     eseries_pxa_defconfig
xtensa                    xip_kc705_defconfig
arm                           h3600_defconfig
arm                         nhk8815_defconfig
powerpc                    adder875_defconfig
mips                 pnx8335_stb225_defconfig
sh                   sh7770_generic_defconfig
arm                            dove_defconfig
mips                 decstation_r4k_defconfig
arm                          moxart_defconfig
sh                               allmodconfig
sh                             espt_defconfig
arm                            xcep_defconfig
microblaze                          defconfig
arm                         orion5x_defconfig
mips                      pic32mzda_defconfig
mips                  mips_paravirt_defconfig
riscv                          rv32_defconfig
powerpc                      ppc44x_defconfig
arm                         at91_dt_defconfig
sh                           se7724_defconfig
arc                             nps_defconfig
arm                             rpc_defconfig
powerpc                       holly_defconfig
arm                           h5000_defconfig
arm                          pxa910_defconfig
sh                          rsk7203_defconfig
arm                         assabet_defconfig
m68k                                defconfig
arm                           sama5_defconfig
sh                        sh7785lcr_defconfig
arm                         shannon_defconfig
nios2                            alldefconfig
sh                   secureedge5410_defconfig
arm                      footbridge_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200513
i386                 randconfig-a005-20200513
i386                 randconfig-a003-20200513
i386                 randconfig-a001-20200513
i386                 randconfig-a004-20200513
i386                 randconfig-a002-20200513
x86_64               randconfig-a005-20200513
x86_64               randconfig-a003-20200513
x86_64               randconfig-a006-20200513
x86_64               randconfig-a004-20200513
x86_64               randconfig-a001-20200513
x86_64               randconfig-a002-20200513
i386                 randconfig-a012-20200513
i386                 randconfig-a016-20200513
i386                 randconfig-a014-20200513
i386                 randconfig-a011-20200513
i386                 randconfig-a013-20200513
i386                 randconfig-a015-20200513
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
