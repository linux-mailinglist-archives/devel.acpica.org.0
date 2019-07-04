Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A316E5F0D9
	for <lists+devel-acpica@lfdr.de>; Thu,  4 Jul 2019 02:52:40 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5ECEE212AF0C8;
	Wed,  3 Jul 2019 17:52:39 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=lkp@intel.com;
 receiver=devel@acpica.org 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 6550C212AF0B0
 for <devel@acpica.org>; Wed,  3 Jul 2019 17:52:37 -0700 (PDT)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 17:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,449,1557212400"; 
 d="gz'50?scan'50,208,50";a="169305743"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 03 Jul 2019 17:52:34 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hipzG-00068n-02; Thu, 04 Jul 2019 08:52:33 +0800
Date: Thu, 4 Jul 2019 08:52:22 +0800
From: kbuild test robot <lkp@intel.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Message-ID: <201907040847.xfwo8JCv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Devel] [pm:linux-next 89/102] include/linux/pm_qos.h:209:4: error:
 expected identifier or '(' before '{' token
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Matthias Kaehlcke <mka@chromium.org>, kbuild-all@01.org, devel@acpica.org
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
head:   267eacd79cadd5e2d6307320497d66119907c411
commit: 024a47a2732d5f9cd9c039c52074912c6982d786 [89/102] PM / QOS: Pass request type to dev_pm_qos_{add|remove}_notifier()
config: riscv-allnoconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 024a47a2732d5f9cd9c039c52074912c6982d786
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel//power/qos.c:33:0:
>> include/linux/pm_qos.h:209:4: error: expected identifier or '(' before '{' token
       { return 0; }
       ^
   include/linux/pm_qos.h:206:19: warning: 'dev_pm_qos_add_notifier' declared 'static' but never defined [-Wunused-function]
    static inline int dev_pm_qos_add_notifier(struct device *dev,
                      ^~~~~~~~~~~~~~~~~~~~~~~

vim +209 include/linux/pm_qos.h

6dbf5cea Rafael J. Wysocki 2017-02-24  178  
6dbf5cea Rafael J. Wysocki 2017-02-24  179  static inline s32 dev_pm_qos_raw_read_value(struct device *dev)
6dbf5cea Rafael J. Wysocki 2017-02-24  180  {
6dbf5cea Rafael J. Wysocki 2017-02-24  181  	return IS_ERR_OR_NULL(dev->power.qos) ?
0759e80b Rafael J. Wysocki 2017-11-07  182  		PM_QOS_RESUME_LATENCY_NO_CONSTRAINT :
0759e80b Rafael J. Wysocki 2017-11-07  183  		pm_qos_read_value(&dev->power.qos->resume_latency);
6dbf5cea Rafael J. Wysocki 2017-02-24  184  }
e8db0be1 Jean Pihet        2011-08-25  185  #else
ae0fb4b7 Rafael J. Wysocki 2012-10-23  186  static inline enum pm_qos_flags_status __dev_pm_qos_flags(struct device *dev,
ae0fb4b7 Rafael J. Wysocki 2012-10-23  187  							  s32 mask)
ae0fb4b7 Rafael J. Wysocki 2012-10-23  188  			{ return PM_QOS_FLAGS_UNDEFINED; }
ae0fb4b7 Rafael J. Wysocki 2012-10-23  189  static inline enum pm_qos_flags_status dev_pm_qos_flags(struct device *dev,
ae0fb4b7 Rafael J. Wysocki 2012-10-23  190  							s32 mask)
ae0fb4b7 Rafael J. Wysocki 2012-10-23  191  			{ return PM_QOS_FLAGS_UNDEFINED; }
00dc9ad1 Rafael J. Wysocki 2011-12-01  192  static inline s32 __dev_pm_qos_read_value(struct device *dev)
0759e80b Rafael J. Wysocki 2017-11-07  193  			{ return PM_QOS_RESUME_LATENCY_NO_CONSTRAINT; }
1a9a9152 Rafael J. Wysocki 2011-09-29  194  static inline s32 dev_pm_qos_read_value(struct device *dev)
0759e80b Rafael J. Wysocki 2017-11-07  195  			{ return PM_QOS_RESUME_LATENCY_NO_CONSTRAINT; }
91ff4cb8 Jean Pihet        2011-08-25  196  static inline int dev_pm_qos_add_request(struct device *dev,
91ff4cb8 Jean Pihet        2011-08-25  197  					 struct dev_pm_qos_request *req,
ae0fb4b7 Rafael J. Wysocki 2012-10-23  198  					 enum dev_pm_qos_req_type type,
91ff4cb8 Jean Pihet        2011-08-25  199  					 s32 value)
91ff4cb8 Jean Pihet        2011-08-25  200  			{ return 0; }
91ff4cb8 Jean Pihet        2011-08-25  201  static inline int dev_pm_qos_update_request(struct dev_pm_qos_request *req,
91ff4cb8 Jean Pihet        2011-08-25  202  					    s32 new_value)
91ff4cb8 Jean Pihet        2011-08-25  203  			{ return 0; }
91ff4cb8 Jean Pihet        2011-08-25  204  static inline int dev_pm_qos_remove_request(struct dev_pm_qos_request *req)
91ff4cb8 Jean Pihet        2011-08-25  205  			{ return 0; }
91ff4cb8 Jean Pihet        2011-08-25  206  static inline int dev_pm_qos_add_notifier(struct device *dev,
024a47a2 Viresh Kumar      2019-07-01  207  					  struct notifier_block *notifier,
024a47a2 Viresh Kumar      2019-07-01  208  					  enum dev_pm_qos_req_type type);
91ff4cb8 Jean Pihet        2011-08-25 @209  			{ return 0; }
91ff4cb8 Jean Pihet        2011-08-25  210  static inline int dev_pm_qos_remove_notifier(struct device *dev,
024a47a2 Viresh Kumar      2019-07-01  211  					     struct notifier_block *notifier,
024a47a2 Viresh Kumar      2019-07-01  212  					     enum dev_pm_qos_req_type type)
91ff4cb8 Jean Pihet        2011-08-25  213  			{ return 0; }
91ff4cb8 Jean Pihet        2011-08-25  214  static inline void dev_pm_qos_constraints_init(struct device *dev)
1a9a9152 Rafael J. Wysocki 2011-09-29  215  {
1a9a9152 Rafael J. Wysocki 2011-09-29  216  	dev->power.power_state = PMSG_ON;
1a9a9152 Rafael J. Wysocki 2011-09-29  217  }
91ff4cb8 Jean Pihet        2011-08-25  218  static inline void dev_pm_qos_constraints_destroy(struct device *dev)
1a9a9152 Rafael J. Wysocki 2011-09-29  219  {
1a9a9152 Rafael J. Wysocki 2011-09-29  220  	dev->power.power_state = PMSG_INVALID;
1a9a9152 Rafael J. Wysocki 2011-09-29  221  }
40a5f8be Rafael J. Wysocki 2011-12-23  222  static inline int dev_pm_qos_add_ancestor_request(struct device *dev,
71d821fd Rafael J. Wysocki 2014-02-11  223  						  struct dev_pm_qos_request *req,
71d821fd Rafael J. Wysocki 2014-02-11  224  						  enum dev_pm_qos_req_type type,
71d821fd Rafael J. Wysocki 2014-02-11  225  						  s32 value)
40a5f8be Rafael J. Wysocki 2011-12-23  226  			{ return 0; }
85dc0b8a Rafael J. Wysocki 2012-03-13  227  static inline int dev_pm_qos_expose_latency_limit(struct device *dev, s32 value)
85dc0b8a Rafael J. Wysocki 2012-03-13  228  			{ return 0; }
85dc0b8a Rafael J. Wysocki 2012-03-13  229  static inline void dev_pm_qos_hide_latency_limit(struct device *dev) {}
e39473d0 Rafael J. Wysocki 2012-10-24  230  static inline int dev_pm_qos_expose_flags(struct device *dev, s32 value)
e39473d0 Rafael J. Wysocki 2012-10-24  231  			{ return 0; }
e39473d0 Rafael J. Wysocki 2012-10-24  232  static inline void dev_pm_qos_hide_flags(struct device *dev) {}
e39473d0 Rafael J. Wysocki 2012-10-24  233  static inline int dev_pm_qos_update_flags(struct device *dev, s32 m, bool set)
e39473d0 Rafael J. Wysocki 2012-10-24  234  			{ return 0; }
2d984ad1 Rafael J. Wysocki 2014-02-11  235  static inline s32 dev_pm_qos_get_user_latency_tolerance(struct device *dev)
2d984ad1 Rafael J. Wysocki 2014-02-11  236  			{ return PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT; }
2d984ad1 Rafael J. Wysocki 2014-02-11  237  static inline int dev_pm_qos_update_user_latency_tolerance(struct device *dev, s32 val)
2d984ad1 Rafael J. Wysocki 2014-02-11  238  			{ return 0; }
13b2c4a0 Mika Westerberg   2015-07-27  239  static inline int dev_pm_qos_expose_latency_tolerance(struct device *dev)
13b2c4a0 Mika Westerberg   2015-07-27  240  			{ return 0; }
13b2c4a0 Mika Westerberg   2015-07-27  241  static inline void dev_pm_qos_hide_latency_tolerance(struct device *dev) {}
e39473d0 Rafael J. Wysocki 2012-10-24  242  

:::::: The code at line 209 was first introduced by commit
:::::: 91ff4cb803df6de9114351b9f2f0f39f397ee03e PM QoS: Implement per-device PM QoS constraints

:::::: TO: Jean Pihet <j-pihet@ti.com>
:::::: CC: Rafael J. Wysocki <rjw@sisk.pl>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--VbJkn9YxBvnuCH5J
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel

--VbJkn9YxBvnuCH5J--
