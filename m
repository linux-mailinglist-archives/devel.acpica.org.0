Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB945849FB
	for <lists+devel-acpica@lfdr.de>; Fri, 29 Jul 2022 04:56:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3E6F3100F3FB3;
	Thu, 28 Jul 2022 19:56:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 524B8100F3FAB
	for <devel@acpica.org>; Thu, 28 Jul 2022 19:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1659063375; x=1690599375;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=E/Uyyb+h/AV7J/aT5ZRju9JhnFkYi1/BQWx3o8jvrNM=;
  b=cqIbm7GE27ZMUqQnt2fs02BLskFwSS83kCdN+vkeSg+EtisXrTNh0Ox3
   8aAfWKE9VJtkLCwiuF9u9XwZljx5ypihrgPmQKHZHW4mlY+SRoJVcyTyy
   WEHuaYkObKOVvcgbuNjMQIL6FFy3TeDmkU3mNqv8Kqojro6Hi0O4AokA5
   +J0BUe9y4rdO1mPU/0/llUSlDedqmVCjzs25XpUPnSt8kACDqPEYf4U4j
   GtzuiMU8QE2XQLarYyTqu7KVtBTYjRAMq3otaaFlDv6z5xsC+IQh9VUTO
   NOTCjNqN20ryR4tiOONjR5WOQ1q4jPmDnxyBZjrh1YKYAjPahO5/FVcIZ
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="268440540"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200";
   d="scan'208";a="268440540"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jul 2022 19:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200";
   d="scan'208";a="928578998"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 28 Jul 2022 19:56:11 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oHGAd-000Ay1-05;
	Fri, 29 Jul 2022 02:56:11 +0000
Date: Fri, 29 Jul 2022 10:55:12 +0800
From: kernel test robot <lkp@intel.com>
To: Jeremy Linton <jeremy.linton@arm.com>, linux-pm@vger.kernel.org
Message-ID: <202207291003.Wk3c06eH-lkp@intel.com>
References: <20220726145948.2194684-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220726145948.2194684-1-jeremy.linton@arm.com>
Message-ID-Hash: UVLNADWKGBSB5SYDIDRBERGPK3XMCYJN
X-Message-ID-Hash: UVLNADWKGBSB5SYDIDRBERGPK3XMCYJN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, rafael@kernel.org, viresh.kumar@linaro.org, devel@acpica.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UVLNADWKGBSB5SYDIDRBERGPK3XMCYJN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jeremy,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rafael-pm/linux-next]
[also build test ERROR on linus/master v5.19-rc8 next-20220728]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jeremy-Linton/ACPI-CPPC-Disable-FIE-if-registers-in-PCC-regions/20220726-230217
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: x86_64-randconfig-a011 (https://download.01.org/0day-ci/archive/20220729/202207291003.Wk3c06eH-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/a4dd80cfc857eef429f60e999bdc9479179d495e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jeremy-Linton/ACPI-CPPC-Disable-FIE-if-registers-in-PCC-regions/20220726-230217
        git checkout a4dd80cfc857eef429f60e999bdc9479179d495e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from drivers/cpufreq/acpi-cpufreq.c:29:
>> include/acpi/cppc_acpi.h:177:12: warning: no previous prototype for 'cppc_perf_ctrs_in_pcc' [-Wmissing-prototypes]
     177 | extern int cppc_perf_ctrs_in_pcc(void)
         |            ^~~~~~~~~~~~~~~~~~~~~
--
   ld: drivers/cpufreq/intel_pstate.o: in function `cppc_perf_ctrs_in_pcc':
>> include/acpi/cppc_acpi.h:178: multiple definition of `cppc_perf_ctrs_in_pcc'; drivers/cpufreq/acpi-cpufreq.o:include/acpi/cppc_acpi.h:178: first defined here


vim +178 include/acpi/cppc_acpi.h

   135	
   136	#ifdef CONFIG_ACPI_CPPC_LIB
   137	extern int cppc_get_desired_perf(int cpunum, u64 *desired_perf);
   138	extern int cppc_get_nominal_perf(int cpunum, u64 *nominal_perf);
   139	extern int cppc_get_perf_ctrs(int cpu, struct cppc_perf_fb_ctrs *perf_fb_ctrs);
   140	extern int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls);
   141	extern int cppc_set_enable(int cpu, bool enable);
   142	extern int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps);
   143	extern int cppc_perf_ctrs_in_pcc(void);
   144	extern bool acpi_cpc_valid(void);
   145	extern bool cppc_allow_fast_switch(void);
   146	extern int acpi_get_psd_map(unsigned int cpu, struct cppc_cpudata *cpu_data);
   147	extern unsigned int cppc_get_transition_latency(int cpu);
   148	extern bool cpc_ffh_supported(void);
   149	extern bool cpc_supported_by_cpu(void);
   150	extern int cpc_read_ffh(int cpunum, struct cpc_reg *reg, u64 *val);
   151	extern int cpc_write_ffh(int cpunum, struct cpc_reg *reg, u64 val);
   152	#else /* !CONFIG_ACPI_CPPC_LIB */
   153	static inline int cppc_get_desired_perf(int cpunum, u64 *desired_perf)
   154	{
   155		return -ENOTSUPP;
   156	}
   157	static inline int cppc_get_nominal_perf(int cpunum, u64 *nominal_perf)
   158	{
   159		return -ENOTSUPP;
   160	}
   161	static inline int cppc_get_perf_ctrs(int cpu, struct cppc_perf_fb_ctrs *perf_fb_ctrs)
   162	{
   163		return -ENOTSUPP;
   164	}
   165	static inline int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls)
   166	{
   167		return -ENOTSUPP;
   168	}
   169	static inline int cppc_set_enable(int cpu, bool enable)
   170	{
   171		return -ENOTSUPP;
   172	}
   173	static inline int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps)
   174	{
   175		return -ENOTSUPP;
   176	}
 > 177	extern int cppc_perf_ctrs_in_pcc(void)
 > 178	{
   179		return false;
   180	}
   181	static inline bool acpi_cpc_valid(void)
   182	{
   183		return false;
   184	}
   185	static inline bool cppc_allow_fast_switch(void)
   186	{
   187		return false;
   188	}
   189	static inline unsigned int cppc_get_transition_latency(int cpu)
   190	{
   191		return CPUFREQ_ETERNAL;
   192	}
   193	static inline bool cpc_ffh_supported(void)
   194	{
   195		return false;
   196	}
   197	static inline int cpc_read_ffh(int cpunum, struct cpc_reg *reg, u64 *val)
   198	{
   199		return -ENOTSUPP;
   200	}
   201	static inline int cpc_write_ffh(int cpunum, struct cpc_reg *reg, u64 val)
   202	{
   203		return -ENOTSUPP;
   204	}
   205	#endif /* !CONFIG_ACPI_CPPC_LIB */
   206	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
