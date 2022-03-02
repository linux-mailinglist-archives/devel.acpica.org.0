Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF074C9B7D
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Mar 2022 03:51:42 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5385F100F3937;
	Tue,  1 Mar 2022 18:51:40 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C4CBB100EA110
	for <devel@acpica.org>; Tue,  1 Mar 2022 18:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646189497; x=1677725497;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=4TVRDlGuWG1v9pJVrGckNUyb52RV2GcXzSymg9LWOg8=;
  b=R1WNxkOwdamVj1HVIy8cll0erSzBYqlgTqRRvMl/7RRRt60008q1E1Hw
   /1zE3q1dXQbYJJK4KNELV6JOq/gZCpyzjrt7cfLe6HsV3Q2Tl+O2Jf0o5
   79qEIud3JVFogaJ87+eUMqonWjZ0Yis4ERgRZQzosR2irX3M+35ZY2QQm
   l4L3OcprnfiYcVLFIjke3DjJVKEbM8Uc0hZBXdo/yCnS8nrqSek8HHhQ4
   Vuop6fIEbt6B/WyjBQO93iuzK102GWou8RLnPYQWXg2ewqnIuq/MFJY0Z
   rFTOJtodWRrb7Jao5Kw/CKD8GS1z73WSAdkLM6Z926fYBEbdJj5nQAs2N
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="236803768"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400";
   d="scan'208";a="236803768"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2022 18:51:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400";
   d="scan'208";a="508043161"
Received: from lkp-server02.sh.intel.com (HELO e9605edfa585) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 01 Mar 2022 18:51:34 -0800
Received: from kbuild by e9605edfa585 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nPF5R-0000wY-KS; Wed, 02 Mar 2022 02:51:33 +0000
Date: Wed, 2 Mar 2022 10:51:19 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Cilissen <mark@yotsuba.nl>
Message-ID: <202203020737.wa9uc4gW-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: SANIUDRFIA3SDSIQ2WFJV3B4X3X7P35O
X-Message-ID-Hash: SANIUDRFIA3SDSIQ2WFJV3B4X3X7P35O
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Hans de Goede <hdegoede@redhat.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 113/118] arch/x86/kernel/acpi/boot.c:1476:8: warning: excess elements in array initializer
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SANIUDRFIA3SDSIQ2WFJV3B4X3X7P35O/>
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
config: i386-randconfig-a011 (https://download.01.org/0day-ci/archive/20220302/202203020737.wa9uc4gW-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project d271fc04d5b97b12e6b797c6067d3c96a8d7470e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=ed00b2b8d737f87a2437d7bd7c7f90124b50da05
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout ed00b2b8d737f87a2437d7bd7c7f90124b50da05
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash arch/x86/kernel/acpi/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/x86/kernel/acpi/boot.c:1476:8: warning: excess elements in array initializer [-Wexcess-initializers]
                        DMI_MATCH(DMI_BIOS_DATE, "02/01/2011"),
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mod_devicetable.h:587:25: note: expanded from macro 'DMI_MATCH'
   #define DMI_MATCH(a, b) { .slot = a, .substr = b }
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +1476 arch/x86/kernel/acpi/boot.c

  1389	
  1390	/*
  1391	 * If your system is blacklisted here, but you find that acpi=force
  1392	 * works for you, please contact linux-acpi@vger.kernel.org
  1393	 */
  1394	static const struct dmi_system_id acpi_dmi_table[] __initconst = {
  1395		/*
  1396		 * Boxes that need ACPI disabled
  1397		 */
  1398		{
  1399		 .callback = dmi_disable_acpi,
  1400		 .ident = "IBM Thinkpad",
  1401		 .matches = {
  1402			     DMI_MATCH(DMI_BOARD_VENDOR, "IBM"),
  1403			     DMI_MATCH(DMI_BOARD_NAME, "2629H1G"),
  1404			     },
  1405		 },
  1406	
  1407		/*
  1408		 * Boxes that need ACPI PCI IRQ routing disabled
  1409		 */
  1410		{
  1411		 .callback = disable_acpi_irq,
  1412		 .ident = "ASUS A7V",
  1413		 .matches = {
  1414			     DMI_MATCH(DMI_BOARD_VENDOR, "ASUSTeK Computer INC"),
  1415			     DMI_MATCH(DMI_BOARD_NAME, "<A7V>"),
  1416			     /* newer BIOS, Revision 1011, does work */
  1417			     DMI_MATCH(DMI_BIOS_VERSION,
  1418				       "ASUS A7V ACPI BIOS Revision 1007"),
  1419			     },
  1420		 },
  1421		{
  1422			/*
  1423			 * Latest BIOS for IBM 600E (1.16) has bad pcinum
  1424			 * for LPC bridge, which is needed for the PCI
  1425			 * interrupt links to work. DSDT fix is in bug 5966.
  1426			 * 2645, 2646 model numbers are shared with 600/600E/600X
  1427			 */
  1428		 .callback = disable_acpi_irq,
  1429		 .ident = "IBM Thinkpad 600 Series 2645",
  1430		 .matches = {
  1431			     DMI_MATCH(DMI_BOARD_VENDOR, "IBM"),
  1432			     DMI_MATCH(DMI_BOARD_NAME, "2645"),
  1433			     },
  1434		 },
  1435		{
  1436		 .callback = disable_acpi_irq,
  1437		 .ident = "IBM Thinkpad 600 Series 2646",
  1438		 .matches = {
  1439			     DMI_MATCH(DMI_BOARD_VENDOR, "IBM"),
  1440			     DMI_MATCH(DMI_BOARD_NAME, "2646"),
  1441			     },
  1442		 },
  1443		/*
  1444		 * Boxes that need ACPI PCI IRQ routing and PCI scan disabled
  1445		 */
  1446		{			/* _BBN 0 bug */
  1447		 .callback = disable_acpi_pci,
  1448		 .ident = "ASUS PR-DLS",
  1449		 .matches = {
  1450			     DMI_MATCH(DMI_BOARD_VENDOR, "ASUSTeK Computer INC."),
  1451			     DMI_MATCH(DMI_BOARD_NAME, "PR-DLS"),
  1452			     DMI_MATCH(DMI_BIOS_VERSION,
  1453				       "ASUS PR-DLS ACPI BIOS Revision 1010"),
  1454			     DMI_MATCH(DMI_BIOS_DATE, "03/21/2003")
  1455			     },
  1456		 },
  1457		{
  1458		 .callback = disable_acpi_pci,
  1459		 .ident = "Acer TravelMate 36x Laptop",
  1460		 .matches = {
  1461			     DMI_MATCH(DMI_SYS_VENDOR, "Acer"),
  1462			     DMI_MATCH(DMI_PRODUCT_NAME, "TravelMate 360"),
  1463			     },
  1464		 },
  1465		/*
  1466		 * Boxes that need ACPI XSDT use disabled due to corrupted tables
  1467		 */
  1468		{
  1469		 .callback = disable_acpi_xsdt,
  1470		 .ident = "SEGA AALE",
  1471		 .matches = {
  1472			     DMI_MATCH(DMI_SYS_VENDOR, "NEC"),
  1473			     DMI_MATCH(DMI_PRODUCT_NAME, "Bearlake CRB Board"),
  1474			     DMI_MATCH(DMI_BIOS_VENDOR, "Phoenix Technologies LTD"),
  1475			     DMI_MATCH(DMI_BIOS_VERSION, "V1.12"),
> 1476			     DMI_MATCH(DMI_BIOS_DATE, "02/01/2011"),
  1477			     },
  1478		},
  1479		{}
  1480	};
  1481	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
