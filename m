Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DF347E0C7
	for <lists+devel-acpica@lfdr.de>; Thu, 23 Dec 2021 10:18:49 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8ADCE100EA92E;
	Thu, 23 Dec 2021 01:18:47 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DB5D3100EA92B
	for <devel@acpica.org>; Thu, 23 Dec 2021 01:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640251121; x=1671787121;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=KgTzfJuw1PWM0ANJHJO8QFp8w9NyND/kbpTu0eJK1qo=;
  b=ezxOOdwnfJW/zIG/JqdDiBszM6XjukIgilJrHrV+F4p+tK2UjvdcnNWh
   ri+y4voMHGzxNSHRBodiQiufs3vNkk+s92mL35CF9NgO4KQ3mZST0Nx9V
   PLc83du2qZjO77/N30404iwrS51ZfX/picZIeC0cmcGBGGbAj9ucHK8IA
   AsLXq7kH+pUiZkixg84LogrSxa0mt9m1D4Gu2UxvS5WTYDJ4DqrcYDeNX
   sUfNwMg2vqT7U170qLaR8L3BfjOUcXkJqxGlJsPaHvb8XmoGtrPFK+KAw
   QOKr7Bt6GtwACfsBt7jqp5eDYgnc2IcJ+K8FL66DF9oevt8TSWR/ltiLy
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="238328374"
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600";
   d="scan'208";a="238328374"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Dec 2021 01:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600";
   d="scan'208";a="550632087"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 23 Dec 2021 01:18:35 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1n0KF8-0001cz-GF; Thu, 23 Dec 2021 09:18:34 +0000
Date: Thu, 23 Dec 2021 17:17:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <61c43ec2.2mtTOn0Hn5ex2OIE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: IMCYJAUVPWYQGPAGHA7AWUW6QKSHL5FM
X-Message-ID-Hash: IMCYJAUVPWYQGPAGHA7AWUW6QKSHL5FM
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS 58d53ba537f27d9ddcf2c94f5f5bd52b63246b95
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IMCYJAUVPWYQGPAGHA7AWUW6QKSHL5FM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: 58d53ba537f27d9ddcf2c94f5f5bd52b63246b95  Merge branch 'pm-core' into bleeding-edge

elapsed time: 854m

configs tested: 96
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211223
arm                      pxa255-idp_defconfig
arc                        nsimosci_defconfig
sh                          sdk7786_defconfig
mips                          ath25_defconfig
mips                         tb0287_defconfig
arm                       aspeed_g4_defconfig
arm                          pxa3xx_defconfig
sh                           se7722_defconfig
mips                     cu1000-neo_defconfig
powerpc                         wii_defconfig
mips                            e55_defconfig
arm                  randconfig-c002-20211223
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a001-20211222
x86_64               randconfig-a003-20211222
x86_64               randconfig-a005-20211222
x86_64               randconfig-a006-20211222
x86_64               randconfig-a004-20211222
x86_64               randconfig-a002-20211222
i386                 randconfig-a002-20211222
i386                 randconfig-a003-20211222
i386                 randconfig-a001-20211222
i386                 randconfig-a005-20211222
i386                 randconfig-a006-20211222
i386                 randconfig-a004-20211222
x86_64               randconfig-a015-20211223
x86_64               randconfig-a014-20211223
x86_64               randconfig-a011-20211223
x86_64               randconfig-a012-20211223
x86_64               randconfig-a013-20211223
x86_64               randconfig-a016-20211223
i386                 randconfig-a012-20211223
i386                 randconfig-a011-20211223
i386                 randconfig-a013-20211223
i386                 randconfig-a014-20211223
i386                 randconfig-a015-20211223
i386                 randconfig-a016-20211223
arc                  randconfig-r043-20211222
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests

clang tested configs:
hexagon              randconfig-r045-20211222
riscv                randconfig-r042-20211222
s390                 randconfig-r044-20211222
hexagon              randconfig-r041-20211222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
