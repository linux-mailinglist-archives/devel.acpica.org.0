Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE0C5F605B
	for <lists+devel-acpica@lfdr.de>; Thu,  6 Oct 2022 06:59:58 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DB8BB100F227A;
	Wed,  5 Oct 2022 21:59:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4A1E6100F2248
	for <devel@acpica.org>; Wed,  5 Oct 2022 21:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665032393; x=1696568393;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=81T7mOufefJg+2V/mGzWoXzQ4hLKKY86R/Gbl3MzZyc=;
  b=dJBVcI0oTYFfjwSbAqr43CQjao6THWXDHgMIcx4R3di1TnMEEezM8ou0
   tSWcnn7c5K96UgeJ30S7mYngOyZ/yLw7fU65ZPKzK9SOAwryODHSycs66
   QQgX6W/ncNZpx7HDUxkB1d/+EZBXpCoWHo1HzwOqVfwygyvOoLjPXI/R2
   mElwyKjAuduxPWt6inKgseopy3XRipNyrtDDW5y4GTAIwISSrkFCrPMJ7
   X4U0uf37Ubb+Auu7Iyq1W0BC2MmCf0yEhyBle8SuuJNNJS9OAPB+SO1Jg
   BkHfhKZB+hDFcb2y4hdX+Lm+XFsQTWnOsShlPgYhRqxsNuQg0lCZoxxFX
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="329765770"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800";
   d="scan'208";a="329765770"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2022 21:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="713698744"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800";
   d="scan'208";a="713698744"
Received: from lkp-server01.sh.intel.com (HELO d4f44333118a) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Oct 2022 21:59:49 -0700
Received: from kbuild by d4f44333118a with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ogIz7-0001wK-0F;
	Thu, 06 Oct 2022 04:59:49 +0000
Date: Thu, 06 Oct 2022 12:59:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <633e60af.oQiPOSi/yUwfHpaP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: Z3A55CG2U223NRNUPH7OTHJB75NZFMRU
X-Message-ID-Hash: Z3A55CG2U223NRNUPH7OTHJB75NZFMRU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS b4d88401f829fc76ec736ec9ce44cdf4820629cf
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Z3A55CG2U223NRNUPH7OTHJB75NZFMRU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
branch HEAD: b4d88401f829fc76ec736ec9ce44cdf4820629cf  Merge branch 'acpi-thermal' into bleeding-edge

elapsed time: 726m

configs tested: 72
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
x86_64                              defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                               rhel-8.3
sh                               allmodconfig
x86_64                           allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
x86_64               randconfig-a011-20221003
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64               randconfig-a014-20221003
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a012-20221003
arc                  randconfig-r043-20221003
arm                                 defconfig
x86_64                           rhel-8.3-kvm
i386                 randconfig-a011-20221003
x86_64               randconfig-a013-20221003
i386                 randconfig-a013-20221003
i386                 randconfig-a012-20221003
s390                             allyesconfig
x86_64               randconfig-a015-20221003
x86_64               randconfig-a016-20221003
arc                  randconfig-r043-20221002
i386                 randconfig-a015-20221003
s390                 randconfig-r044-20221003
i386                 randconfig-a016-20221003
i386                             allyesconfig
i386                 randconfig-a014-20221003
arm64                            allyesconfig
arm                              allyesconfig
riscv                randconfig-r042-20221003
ia64                             allmodconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
arm                           viper_defconfig
powerpc                      cm5200_defconfig

clang tested configs:
hexagon              randconfig-r041-20221003
hexagon              randconfig-r041-20221002
hexagon              randconfig-r045-20221002
i386                 randconfig-a004-20221003
i386                 randconfig-a003-20221003
hexagon              randconfig-r045-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
x86_64               randconfig-a003-20221003
i386                 randconfig-a006-20221003
x86_64               randconfig-a005-20221003
riscv                randconfig-r042-20221002
x86_64               randconfig-a002-20221003
i386                 randconfig-a005-20221003
s390                 randconfig-r044-20221002
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
powerpc                    mvme5100_defconfig
powerpc                     ppa8548_defconfig
powerpc                     akebono_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
