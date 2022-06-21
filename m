Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDB0552CB1
	for <lists+devel-acpica@lfdr.de>; Tue, 21 Jun 2022 10:19:17 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B2521100EA10E;
	Tue, 21 Jun 2022 01:19:14 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8027C100F2248
	for <devel@acpica.org>; Tue, 21 Jun 2022 01:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655799553; x=1687335553;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=VnOb25EE+Xbwm3fJVJkXzX3ptStChGTjWuHiXzYZZDY=;
  b=QB7lOHkzWuOEZ+iaupmbrNbPzv6b1y1EhZjA6SokBDPzv3VpkhXzI3fm
   LKPp62uSbAVon4IwQjj2GTo+7EfddRlNECpdUU/Wlm/7H2e4Y8SwTiHqm
   iWGFhf48Po0fIGzYz3zJIVCDXaK3gqkNyjZHzzJVcU2B/JWghGjqcm/lK
   GnNYexfSlRbR+/30ylxZFSGQaAwheSkPkCdVGpetnzIMdfUA6dHAMyPdd
   bd8ctU/30uyOxxF5hkhx/nNk0r5/K/WDu5rWh56Y3//Nez43gPD6LcV+K
   g/zC+2LfgGg1xgQlY4NvxfZDB9URwP3kchHTgZK26LMCyffImSIEYw6rt
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366385245"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400";
   d="scan'208";a="366385245"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2022 01:19:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400";
   d="scan'208";a="676894865"
Received: from lkp-server01.sh.intel.com (HELO e0735e231192) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 21 Jun 2022 01:19:09 -0700
Received: from kbuild by e0735e231192 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o3Z6L-00004d-1e;
	Tue, 21 Jun 2022 08:19:09 +0000
Date: Tue, 21 Jun 2022 16:18:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <202206211629.ncqadywd-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: 65EJDMMMF2KTPAFCKY2K4X4NDJJQTBXR
X-Message-ID-Hash: 65EJDMMMF2KTPAFCKY2K4X4NDJJQTBXR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 20/24] drivers/acpi/scan.c:2449:5: warning: no previous prototype for function 'acpi_bus_trim_one'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/65EJDMMMF2KTPAFCKY2K4X4NDJJQTBXR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   ef9088c776e0c49411bfb413ad43d110a9de1519
commit: e511ff6b4174fa81ca7ee16f8c17f7362c08fadf [20/24] ACPI: scan: Walk ACPI device's children using driver core
config: x86_64-randconfig-a013-20220620 (https://download.01.org/0day-ci/archive/20220621/202206211629.ncqadywd-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project af6d2a0b6825e71965f3e2701a63c239fa0ad70f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=e511ff6b4174fa81ca7ee16f8c17f7362c08fadf
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout e511ff6b4174fa81ca7ee16f8c17f7362c08fadf
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/acpi/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/acpi/scan.c:2449:5: warning: no previous prototype for function 'acpi_bus_trim_one' [-Wmissing-prototypes]
   int acpi_bus_trim_one(struct acpi_device *adev, void *not_used)
       ^
   drivers/acpi/scan.c:2449:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int acpi_bus_trim_one(struct acpi_device *adev, void *not_used)
   ^
   static 
   1 warning generated.


vim +/acpi_bus_trim_one +2449 drivers/acpi/scan.c

  2448	
> 2449	int acpi_bus_trim_one(struct acpi_device *adev, void *not_used)
  2450	{
  2451		struct acpi_scan_handler *handler = adev->handler;
  2452	
  2453		acpi_dev_for_each_child_reverse(adev, acpi_bus_trim_one, NULL);
  2454	
  2455		adev->flags.match_driver = false;
  2456		if (handler) {
  2457			if (handler->detach)
  2458				handler->detach(adev);
  2459	
  2460			adev->handler = NULL;
  2461		} else {
  2462			device_release_driver(&adev->dev);
  2463		}
  2464		/*
  2465		 * Most likely, the device is going away, so put it into D3cold before
  2466		 * that.
  2467		 */
  2468		acpi_device_set_power(adev, ACPI_STATE_D3_COLD);
  2469		adev->flags.initialized = false;
  2470		acpi_device_clear_enumerated(adev);
  2471	
  2472		return 0;
  2473	}
  2474	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
