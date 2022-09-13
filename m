Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6FF5B64D8
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Sep 2022 03:00:51 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E185C100EA2A7;
	Mon, 12 Sep 2022 18:00:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 04BA2100EA2A5
	for <devel@acpica.org>; Mon, 12 Sep 2022 18:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663030846; x=1694566846;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ezLCKwkUBdNCoq39097eIEjcGDCqTdmZcynP14rPVWY=;
  b=boFgztUkuvSbYBRLTDbT1ls43Gm1xYiw2/KN5P7eAALjzWSZZMJ/B5Kv
   7NtE5pkL1+EqA3+QPGXnQTW3bAflDumm3hp0P6QU1nbvc4LUMzBWKnV0I
   JJ7jaxx8+QIXUbgu1gHVbBRp7RNPDJHfIF5nUnep6+pKAhSu84/PCIDx1
   rMkiolI/vgC0muR8MW+k7vnnSD17t+UGaKUy62U6c1UKhltY2ofVL+sMv
   FV7qpeNmZQVHGtaJg9nViQd6sjeREF3BnKxpf5ZW6onfckbwQ43+4aJfz
   AGMWwecbJcOwheAW/2v4qJaT7VQ/dDKQxThfvYP4mwADNSk0KAAz6mfn7
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="285026885"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200";
   d="scan'208";a="285026885"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2022 18:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200";
   d="scan'208";a="684652243"
Received: from lkp-server02.sh.intel.com (HELO 4011df4f4fd3) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 12 Sep 2022 18:00:38 -0700
Received: from kbuild by 4011df4f4fd3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oXuI1-00032x-2a;
	Tue, 13 Sep 2022 01:00:37 +0000
Date: Tue, 13 Sep 2022 09:00:06 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Hans de Goede <hdegoede@redhat.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org, devel@acpica.org
Message-ID: <202209130810.dgrshDMB-lkp@intel.com>
References: <20220908132910.62122-8-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220908132910.62122-8-andriy.shevchenko@linux.intel.com>
Message-ID-Hash: CNFPWZXQUJ5ZG7LVMNDO6Q7SA2BB3QVN
X-Message-ID-Hash: CNFPWZXQUJ5ZG7LVMNDO6Q7SA2BB3QVN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, Elie Morisse <syniurge@gmail.com>, Nehal Shah <nehal-bakulchandra.shah@amd.com>, Shyam Sundar S K <shyam-sundar.s-k@amd.com>, Khalil Blaiech <kblaiech@nvidia.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, Wolfram Sang <wsa-dev@sang-engineering.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 7/8] spi: pxa2xx: Refactor _UID handling to use acpi_dev_uid_to_integer()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CNFPWZXQUJ5ZG7LVMNDO6Q7SA2BB3QVN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Andy,

I love your patch! Perhaps something to improve:

[auto build test WARNING on rafael-pm/linux-next]
[also build test WARNING on wsa/i2c/for-next broonie-spi/for-next efi/next linus/master v6.0-rc5 next-20220912]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Shevchenko/ACPI-unify-_UID-handling-as-integer/20220908-213543
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: x86_64-buildonly-randconfig-r006-20220912 (https://download.01.org/0day-ci/archive/20220913/202209130810.dgrshDMB-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-5) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/ea7999676bc9f75bb4165358cda640b340fe34d0
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Andy-Shevchenko/ACPI-unify-_UID-handling-as-integer/20220908-213543
        git checkout ea7999676bc9f75bb4165358cda640b340fe34d0
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/spi/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/spi/spi-pxa2xx.c: In function 'pxa2xx_spi_init_pdata':
>> drivers/spi/spi-pxa2xx.c:1457:24: warning: unused variable 'dev' [-Wunused-variable]
    1457 |         struct device *dev = &pdev->dev;
         |                        ^~~


vim +/dev +1457 drivers/spi/spi-pxa2xx.c

  1452	
  1453	static struct pxa2xx_spi_controller *
  1454	pxa2xx_spi_init_pdata(struct platform_device *pdev)
  1455	{
  1456		struct pxa2xx_spi_controller *pdata;
> 1457		struct device *dev = &pdev->dev;
  1458		struct ssp_device *ssp;
  1459		struct resource *res;
  1460		struct device *parent = pdev->dev.parent;
  1461		struct pci_dev *pcidev = dev_is_pci(parent) ? to_pci_dev(parent) : NULL;
  1462		const struct pci_device_id *pcidev_id = NULL;
  1463		enum pxa_ssp_type type;
  1464		const void *match;
  1465		int status;
  1466		u64 uid;
  1467	
  1468		if (pcidev)
  1469			pcidev_id = pci_match_id(pxa2xx_spi_pci_compound_match, pcidev);
  1470	
  1471		match = device_get_match_data(&pdev->dev);
  1472		if (match)
  1473			type = (enum pxa_ssp_type)match;
  1474		else if (pcidev_id)
  1475			type = (enum pxa_ssp_type)pcidev_id->driver_data;
  1476		else
  1477			return ERR_PTR(-EINVAL);
  1478	
  1479		pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
  1480		if (!pdata)
  1481			return ERR_PTR(-ENOMEM);
  1482	
  1483		ssp = &pdata->ssp;
  1484	
  1485		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  1486		ssp->mmio_base = devm_ioremap_resource(&pdev->dev, res);
  1487		if (IS_ERR(ssp->mmio_base))
  1488			return ERR_CAST(ssp->mmio_base);
  1489	
  1490		ssp->phys_base = res->start;
  1491	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
