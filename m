Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC075B2D9A
	for <lists+devel-acpica@lfdr.de>; Fri,  9 Sep 2022 06:41:07 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DAF8D100EA108;
	Thu,  8 Sep 2022 21:41:04 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.24; helo=mga09.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3D7E4100EA106
	for <devel@acpica.org>; Thu,  8 Sep 2022 21:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662698463; x=1694234463;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Z7Rs8lhlcJ9YDKjRHMhTc3a79d2eq/2qbz9DECfRlhs=;
  b=cFFRBCIc782kENuUs3JJbpiLs2fG5tpIzsOX197CvgKKMs02V1kPjTHZ
   QI1B4oBL21WyIAIXxx+ver/EkshDvJhhZXBAwlEmz/Gu0YvPaOVE/XaNO
   ZUzjYSRE2RdqDbPbuS5AHrlq3zRKzd41Q+wADlElTbQGhNU+WhA61iy/v
   7zWEyH3mO8+u0GvN/WU6sbktjLJcdXQ6dqmQpvp34q6jbi1uzgMjZcYw6
   hZPXHoiFtXTLAok0TnwJLh2EiPYecXikE3yHMatQWuBku6k9kZRWB1ak4
   thhK4KM66GvFuVpNu4OirrsmQx1VUPcaXMV9O0T5Z7qpx/FAqD/AiRDzL
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298198272"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200";
   d="scan'208";a="298198272"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2022 21:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200";
   d="scan'208";a="704277458"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 08 Sep 2022 21:40:47 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oWVos-0000jJ-3D;
	Fri, 09 Sep 2022 04:40:47 +0000
Date: Fri, 9 Sep 2022 12:40:36 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Hans de Goede <hdegoede@redhat.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org, devel@acpica.org
Message-ID: <202209091254.rIFedxQL-lkp@intel.com>
References: <20220908132910.62122-7-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220908132910.62122-7-andriy.shevchenko@linux.intel.com>
Message-ID-Hash: EFVCRA2JZHKEBDGOXIQ7TAYHZXTE54YG
X-Message-ID-Hash: EFVCRA2JZHKEBDGOXIQ7TAYHZXTE54YG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, Elie Morisse <syniurge@gmail.com>, Nehal Shah <nehal-bakulchandra.shah@amd.com>, Shyam Sundar S K <shyam-sundar.s-k@amd.com>, Khalil Blaiech <kblaiech@nvidia.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, Wolfram Sang <wsa-dev@sang-engineering.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 6/8] perf: qcom_l2_pmu: Refactor _UID handling to use acpi_dev_uid_to_integer()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EFVCRA2JZHKEBDGOXIQ7TAYHZXTE54YG/>
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
[also build test WARNING on wsa/i2c/for-next broonie-spi/for-next efi/next linus/master v6.0-rc4 next-20220908]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Shevchenko/ACPI-unify-_UID-handling-as-integer/20220908-213543
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220909/202209091254.rIFedxQL-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/9441434beecbf7fcd74ca58adbb06cc53c874179
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Andy-Shevchenko/ACPI-unify-_UID-handling-as-integer/20220908-213543
        git checkout 9441434beecbf7fcd74ca58adbb06cc53c874179
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/perf/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/acpi.h:15,
                    from drivers/perf/qcom_l2_pmu.c:4:
   drivers/perf/qcom_l2_pmu.c: In function 'l2_cache_pmu_probe_cluster':
>> drivers/perf/qcom_l2_pmu.c:882:17: warning: format '%ld' expects argument of type 'long int', but argument 3 has type 'u64' {aka 'long long unsigned int'} [-Wformat=]
     882 |                 "Registered L2 cache PMU cluster %ld\n", fw_cluster_id);
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:150:58: note: in expansion of macro 'dev_fmt'
     150 |         dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                          ^~~~~~~
   drivers/perf/qcom_l2_pmu.c:881:9: note: in expansion of macro 'dev_info'
     881 |         dev_info(&pdev->dev,
         |         ^~~~~~~~
   drivers/perf/qcom_l2_pmu.c:882:52: note: format string is defined here
     882 |                 "Registered L2 cache PMU cluster %ld\n", fw_cluster_id);
         |                                                  ~~^
         |                                                    |
         |                                                    long int
         |                                                  %lld


vim +882 drivers/perf/qcom_l2_pmu.c

21bdbb7102edea Neil Leeder     2017-02-07  838  
21bdbb7102edea Neil Leeder     2017-02-07  839  static int l2_cache_pmu_probe_cluster(struct device *dev, void *data)
21bdbb7102edea Neil Leeder     2017-02-07  840  {
21bdbb7102edea Neil Leeder     2017-02-07  841  	struct platform_device *pdev = to_platform_device(dev->parent);
21bdbb7102edea Neil Leeder     2017-02-07  842  	struct platform_device *sdev = to_platform_device(dev);
21bdbb7102edea Neil Leeder     2017-02-07  843  	struct l2cache_pmu *l2cache_pmu = data;
21bdbb7102edea Neil Leeder     2017-02-07  844  	struct cluster_pmu *cluster;
9441434beecbf7 Andy Shevchenko 2022-09-08  845  	u64 fw_cluster_id;
21bdbb7102edea Neil Leeder     2017-02-07  846  	int err;
21bdbb7102edea Neil Leeder     2017-02-07  847  	int irq;
21bdbb7102edea Neil Leeder     2017-02-07  848  
9441434beecbf7 Andy Shevchenko 2022-09-08  849  	err = acpi_dev_uid_to_integer(ACPI_COMPANION(dev), &fw_cluster_id);
9441434beecbf7 Andy Shevchenko 2022-09-08  850  	if (err) {
21bdbb7102edea Neil Leeder     2017-02-07  851  		dev_err(&pdev->dev, "unable to read ACPI uid\n");
9441434beecbf7 Andy Shevchenko 2022-09-08  852  		return err;
21bdbb7102edea Neil Leeder     2017-02-07  853  	}
21bdbb7102edea Neil Leeder     2017-02-07  854  
21bdbb7102edea Neil Leeder     2017-02-07  855  	cluster = devm_kzalloc(&pdev->dev, sizeof(*cluster), GFP_KERNEL);
21bdbb7102edea Neil Leeder     2017-02-07  856  	if (!cluster)
21bdbb7102edea Neil Leeder     2017-02-07  857  		return -ENOMEM;
21bdbb7102edea Neil Leeder     2017-02-07  858  
21bdbb7102edea Neil Leeder     2017-02-07  859  	INIT_LIST_HEAD(&cluster->next);
21bdbb7102edea Neil Leeder     2017-02-07  860  	list_add(&cluster->next, &l2cache_pmu->clusters);
21bdbb7102edea Neil Leeder     2017-02-07  861  	cluster->cluster_id = fw_cluster_id;
21bdbb7102edea Neil Leeder     2017-02-07  862  
21bdbb7102edea Neil Leeder     2017-02-07  863  	irq = platform_get_irq(sdev, 0);
228f855fb57ae2 Stephen Boyd    2019-07-30  864  	if (irq < 0)
21bdbb7102edea Neil Leeder     2017-02-07  865  		return irq;
21bdbb7102edea Neil Leeder     2017-02-07  866  	cluster->irq = irq;
21bdbb7102edea Neil Leeder     2017-02-07  867  
21bdbb7102edea Neil Leeder     2017-02-07  868  	cluster->l2cache_pmu = l2cache_pmu;
21bdbb7102edea Neil Leeder     2017-02-07  869  	cluster->on_cpu = -1;
21bdbb7102edea Neil Leeder     2017-02-07  870  
21bdbb7102edea Neil Leeder     2017-02-07  871  	err = devm_request_irq(&pdev->dev, irq, l2_cache_handle_irq,
0d0f144a8f5f98 Tian Tao        2021-06-02  872  			       IRQF_NOBALANCING | IRQF_NO_THREAD |
0d0f144a8f5f98 Tian Tao        2021-06-02  873  			       IRQF_NO_AUTOEN,
21bdbb7102edea Neil Leeder     2017-02-07  874  			       "l2-cache-pmu", cluster);
21bdbb7102edea Neil Leeder     2017-02-07  875  	if (err) {
21bdbb7102edea Neil Leeder     2017-02-07  876  		dev_err(&pdev->dev,
21bdbb7102edea Neil Leeder     2017-02-07  877  			"Unable to request IRQ%d for L2 PMU counters\n", irq);
21bdbb7102edea Neil Leeder     2017-02-07  878  		return err;
21bdbb7102edea Neil Leeder     2017-02-07  879  	}
21bdbb7102edea Neil Leeder     2017-02-07  880  
21bdbb7102edea Neil Leeder     2017-02-07  881  	dev_info(&pdev->dev,
21bdbb7102edea Neil Leeder     2017-02-07 @882  		"Registered L2 cache PMU cluster %ld\n", fw_cluster_id);
21bdbb7102edea Neil Leeder     2017-02-07  883  
21bdbb7102edea Neil Leeder     2017-02-07  884  	spin_lock_init(&cluster->pmu_lock);
21bdbb7102edea Neil Leeder     2017-02-07  885  
21bdbb7102edea Neil Leeder     2017-02-07  886  	l2cache_pmu->num_pmus++;
21bdbb7102edea Neil Leeder     2017-02-07  887  
21bdbb7102edea Neil Leeder     2017-02-07  888  	return 0;
21bdbb7102edea Neil Leeder     2017-02-07  889  }
21bdbb7102edea Neil Leeder     2017-02-07  890  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
