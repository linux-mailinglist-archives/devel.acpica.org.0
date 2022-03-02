Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 146324C9B83
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Mar 2022 03:51:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 62621100F3934;
	Tue,  1 Mar 2022 18:51:53 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4BDBC100EA110
	for <devel@acpica.org>; Tue,  1 Mar 2022 18:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646189512; x=1677725512;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=Tm4+8lizUr2xgEpaQ+EdlRF/QIwp9cOAif5S+psZgdk=;
  b=RgrCb3Lkj5lJJpLWTxwwvEhEQvQ4CAPgZevhBfs9JLzJeTYIn35nKQY3
   a0SiyF21krjmgljMBhhkaM0t84J6YzKxz1QAlIGDh1RWVOmEKYD8lMab9
   srK/xT8wXneaLn7deAYzT7LaGXRG0toYNVJT3D/ArATLuuIXq7+KCjUcw
   wFC7qVVRtAMSmq1SMWlMOz12PGzXmCJryzl3jsigtnpmUAw18Jrbj7d8L
   bUfpcNcnuIcEbke/4EB0AfVq1jZlDArATMu2iW4RY57bwAWsPEAx8Y0vB
   o6zDAtDryVtnkrLj5jmP1BW4OAdyC+l3xIDBAGO9bdyO2+zVZGEFVm6lP
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="252126455"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400";
   d="scan'208";a="252126455"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2022 18:51:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400";
   d="scan'208";a="510826971"
Received: from lkp-server02.sh.intel.com (HELO e9605edfa585) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 01 Mar 2022 18:51:34 -0800
Received: from kbuild by e9605edfa585 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nPF5R-0000wI-Ga; Wed, 02 Mar 2022 02:51:33 +0000
Date: Wed, 2 Mar 2022 10:51:10 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Cilissen <mark@yotsuba.nl>
Message-ID: <202203020750.Uq6hGay2-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: S6EYMWYC3OC4EWEZI2ER2TZZFVGKJASH
X-Message-ID-Hash: S6EYMWYC3OC4EWEZI2ER2TZZFVGKJASH
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Hans de Goede <hdegoede@redhat.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 113/118] include/linux/mod_devicetable.h:587:25: warning: excess elements in array initializer
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/S6EYMWYC3OC4EWEZI2ER2TZZFVGKJASH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   f7307721a01f4f14d21c699b270a870370cf34b9
commit: ed00b2b8d737f87a2437d7bd7c7f90124b50da05 [113/118] x86 / ACPI: Work around broken XSDT on SEGA AALE board
config: i386-randconfig-a003 (https://download.01.org/0day-ci/archive/20220302/202203020750.Uq6hGay2-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=ed00b2b8d737f87a2437d7bd7c7f90124b50da05
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout ed00b2b8d737f87a2437d7bd7c7f90124b50da05
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash arch/x86/kernel/acpi/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/of.h:18,
                    from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13,
                    from arch/x86/kernel/acpi/boot.c:11:
>> include/linux/mod_devicetable.h:587:25: warning: excess elements in array initializer
     587 | #define DMI_MATCH(a, b) { .slot = a, .substr = b }
         |                         ^
   arch/x86/kernel/acpi/boot.c:1476:8: note: in expansion of macro 'DMI_MATCH'
    1476 |        DMI_MATCH(DMI_BIOS_DATE, "02/01/2011"),
         |        ^~~~~~~~~
   include/linux/mod_devicetable.h:587:25: note: (near initialization for 'acpi_dmi_table[6].matches')
     587 | #define DMI_MATCH(a, b) { .slot = a, .substr = b }
         |                         ^
   arch/x86/kernel/acpi/boot.c:1476:8: note: in expansion of macro 'DMI_MATCH'
    1476 |        DMI_MATCH(DMI_BIOS_DATE, "02/01/2011"),
         |        ^~~~~~~~~


vim +587 include/linux/mod_devicetable.h

d945b697d0eea5 David Woodhouse 2008-09-16  586  
5017b2851373ee Jani Nikula     2013-07-03 @587  #define DMI_MATCH(a, b)	{ .slot = a, .substr = b }
5017b2851373ee Jani Nikula     2013-07-03  588  #define DMI_EXACT_MATCH(a, b)	{ .slot = a, .substr = b, .exact_match = 1 }
d2653e92732bd3 Jean Delvare    2008-04-29  589  

:::::: The code at line 587 was first introduced by commit
:::::: 5017b2851373ee15c7035151853bb1448800cae2 dmi: add support for exact DMI matches in addition to substring matching

:::::: TO: Jani Nikula <jani.nikula@intel.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
