Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F5A547993
	for <lists+devel-acpica@lfdr.de>; Sun, 12 Jun 2022 11:24:12 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id ADCB5100EAB7C;
	Sun, 12 Jun 2022 02:24:09 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E06F7100EBB7F
	for <devel@acpica.org>; Sun, 12 Jun 2022 02:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655025846; x=1686561846;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=AZ7mggDiFLFbnIeSvVBeEcXdi7rY8NniC+pdp5dUaTM=;
  b=LTXqqIcirchnF6AfrqAcgO/0IhuRtktb4fVEzJjTirojZh8yfJpdlyJW
   kkpDQOHcQ5VQGl8TXQflOlExWT8lw5Q35uC+xINV0hkGnesHvZIXHLnvT
   t97yYd/2vhQzZYQgOpUifEf744uJ5lN0Yq+Sc6ft0gRa0eBW3fNKjZdI/
   7iSqXRX7N2LQfD3ulwgoEtEbpSoFg8SBZWXGP3vyhAKv8egL/GhDYwsA/
   IoASzerPuCP2LkpeKQ8XmDUXDTkr28HOQvygf72lcc8sp70F0uFVbRVwy
   2XrPDUUC+5QrW7QQXexla6hfdXf0bTJJI6ZBSmHXCoxf4b3FN1bYQ8/0k
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10375"; a="266736253"
X-IronPort-AV: E=Sophos;i="5.91,294,1647327600";
   d="scan'208";a="266736253"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2022 02:24:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,294,1647327600";
   d="scan'208";a="829136140"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 12 Jun 2022 02:24:04 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o0JpD-000JpJ-FR;
	Sun, 12 Jun 2022 09:24:03 +0000
Date: Sun, 12 Jun 2022 17:23:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <62a5b09c.CRPUejZ0iQexaqQC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: DOWBDSGCBDONVKZW3QYPB6P3OMN3SOPH
X-Message-ID-Hash: DOWBDSGCBDONVKZW3QYPB6P3OMN3SOPH
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS eacc9b3f283169f1e5426664dfad3ba6e02e75fd
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DOWBDSGCBDONVKZW3QYPB6P3OMN3SOPH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: eacc9b3f283169f1e5426664dfad3ba6e02e75fd  Merge branch 'acpi-apei' into bleeding-edge

elapsed time: 3745m

configs tested: 88
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
m68k                          atari_defconfig
arc                          axs101_defconfig
sh                             espt_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
xtensa                           allyesconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc64                            defconfig
s390                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220609
riscv                             allnoconfig
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3

clang tested configs:
powerpc                     tqm8560_defconfig
powerpc                     mpc5200_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220609
s390                 randconfig-r044-20220609
hexagon              randconfig-r041-20220609
riscv                randconfig-r042-20220609

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
