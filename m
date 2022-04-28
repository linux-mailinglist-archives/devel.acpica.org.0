Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EBB512F27
	for <lists+devel-acpica@lfdr.de>; Thu, 28 Apr 2022 10:57:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0960B100EB331;
	Thu, 28 Apr 2022 01:57:23 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 84959100EB856
	for <devel@acpica.org>; Thu, 28 Apr 2022 01:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1651136240; x=1682672240;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=Vb+Obz4SOBsiUFxFTmlKUeqpzWqk5SoR/ePiSeY24G4=;
  b=U08bNFfxDGLs/0AFCP358PafuBN3rqwft0N6jnDOgzdyBs/6uA92opAy
   2Yk8xfEeT/7a1j9U9w53huxGxIRA//5Tvtr1WQRM2hN+OsPtUaYcMIkW4
   t5oXOow93qB/zqFTB27QwpyMrMs8OHUtoB3Tc/hLb8ppcFL7pI+U66E9S
   VVE+aN3X+kQdrUJfwd21tby1WstU4vDJwXT3+GGoVP+wlkFtIF549fN1/
   2RWuWm1O3URPTG9/Xe+0gUSWRV7bH8FInjApaDDnhfTf2Wmxww3V/ru1Q
   OisdwmyQ/XIv9Vx/E5qBFY9o6ib5fpCCBa3iDF16HsYuInz3yRQJPIa5d
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="329158619"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400";
   d="scan'208";a="329158619"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2022 01:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400";
   d="scan'208";a="682291748"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 28 Apr 2022 01:57:16 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1njzxb-0005DT-KZ;
	Thu, 28 Apr 2022 08:57:15 +0000
Date: Thu, 28 Apr 2022 16:56:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <202204281634.Ho3eVKJ7-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: 7YUUAVV4PSQ4FHMJ3SJYMOJVH7UYSLHA
X-Message-ID-Hash: 7YUUAVV4PSQ4FHMJ3SJYMOJVH7UYSLHA
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:testing 12/12] drivers/idle/intel_idle.c:1701:17: error: 'disable_promotion_to_c1e' undeclared
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7YUUAVV4PSQ4FHMJ3SJYMOJVH7UYSLHA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git testing
head:   55ecda6f25ef6de769ae64f162828aee4812c313
commit: 55ecda6f25ef6de769ae64f162828aee4812c313 [12/12] Merge branch 'intel-idle' into linux-next
config: x86_64-randconfig-c001 (https://download.01.org/0day-ci/archive/20220428/202204281634.Ho3eVKJ7-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.2.0-20) 11.2.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=55ecda6f25ef6de769ae64f162828aee4812c313
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm testing
        git checkout 55ecda6f25ef6de769ae64f162828aee4812c313
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/idle/intel_idle.c: In function 'adl_idle_state_table_update':
>> drivers/idle/intel_idle.c:1701:17: error: 'disable_promotion_to_c1e' undeclared (first use in this function)
    1701 |                 disable_promotion_to_c1e = true;
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/idle/intel_idle.c:1701:17: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/idle/intel_idle.c:1706:9: error: implicit declaration of function 'c1e_promotion_enable' [-Werror=implicit-function-declaration]
    1706 |         c1e_promotion_enable();
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/idle/intel_idle.c: At top level:
   drivers/idle/intel_idle.c:1854:13: warning: conflicting types for 'c1e_promotion_enable'; have 'void(void)'
    1854 | static void c1e_promotion_enable(void)
         |             ^~~~~~~~~~~~~~~~~~~~
   drivers/idle/intel_idle.c:1854:13: error: static declaration of 'c1e_promotion_enable' follows non-static declaration
   drivers/idle/intel_idle.c:1706:9: note: previous implicit declaration of 'c1e_promotion_enable' with type 'void(void)'
    1706 |         c1e_promotion_enable();
         |         ^~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/disable_promotion_to_c1e +1701 drivers/idle/intel_idle.c

64233338499126 Chen Yu   2021-05-28  1685  
cc6e234b826408 Zhang Rui 2022-04-15  1686  /**
cc6e234b826408 Zhang Rui 2022-04-15  1687   * adl_idle_state_table_update - Adjust AlderLake idle states table.
cc6e234b826408 Zhang Rui 2022-04-15  1688   */
cc6e234b826408 Zhang Rui 2022-04-15  1689  static void __init adl_idle_state_table_update(void)
cc6e234b826408 Zhang Rui 2022-04-15  1690  {
cc6e234b826408 Zhang Rui 2022-04-15  1691  	/* Check if user prefers C1 over C1E. */
cc6e234b826408 Zhang Rui 2022-04-15  1692  	if (preferred_states_mask & BIT(1)) {
cc6e234b826408 Zhang Rui 2022-04-15  1693  		if (preferred_states_mask & BIT(2))
cc6e234b826408 Zhang Rui 2022-04-15  1694  			/* Both can't be enabled, stick to the defaults. */
cc6e234b826408 Zhang Rui 2022-04-15  1695  			goto end;
cc6e234b826408 Zhang Rui 2022-04-15  1696  
cc6e234b826408 Zhang Rui 2022-04-15  1697  		cpuidle_state_table[0].flags &= ~CPUIDLE_FLAG_UNUSABLE;
cc6e234b826408 Zhang Rui 2022-04-15  1698  		cpuidle_state_table[1].flags |= CPUIDLE_FLAG_UNUSABLE;
cc6e234b826408 Zhang Rui 2022-04-15  1699  
cc6e234b826408 Zhang Rui 2022-04-15  1700  		/* Disable C1E by clearing the "C1E promotion" bit. */
cc6e234b826408 Zhang Rui 2022-04-15 @1701  		disable_promotion_to_c1e = true;
cc6e234b826408 Zhang Rui 2022-04-15  1702  		return;
cc6e234b826408 Zhang Rui 2022-04-15  1703  	}
cc6e234b826408 Zhang Rui 2022-04-15  1704  end:
cc6e234b826408 Zhang Rui 2022-04-15  1705  	/* Make sure C1E is enabled by default */
cc6e234b826408 Zhang Rui 2022-04-15 @1706  	c1e_promotion_enable();
cc6e234b826408 Zhang Rui 2022-04-15  1707  }
cc6e234b826408 Zhang Rui 2022-04-15  1708  

:::::: The code at line 1701 was first introduced by commit
:::::: cc6e234b8264089d11c34f82d6be925281ca52ba intel_idle: Add AlderLake support

:::::: TO: Zhang Rui <rui.zhang@intel.com>
:::::: CC: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
