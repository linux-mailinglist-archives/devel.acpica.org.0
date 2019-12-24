Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2E512A44C
	for <lists+devel-acpica@lfdr.de>; Tue, 24 Dec 2019 23:19:11 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1914A1011369B;
	Tue, 24 Dec 2019 14:22:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2061610113672
	for <devel@acpica.org>; Tue, 24 Dec 2019 14:22:28 -0800 (PST)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Dec 2019 14:19:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,353,1571727600";
   d="scan'208";a="417663535"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 24 Dec 2019 14:19:05 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1ijsW9-000GhO-8K; Wed, 25 Dec 2019 06:19:05 +0800
Date: Wed, 25 Dec 2019 06:18:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Niklas Cassel <niklas.cassel@linaro.org>
Message-ID: <201912250622.SScsrif7%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Message-ID-Hash: VR2PYPHPDSBP7OMVLBLHJVSW2JXRGPRD
X-Message-ID-Hash: VR2PYPHPDSBP7OMVLBLHJVSW2JXRGPRD
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [pm:bleeding-edge 59/60] drivers/power/avs/qcom-cpr.c:1081:15: sparse: sparse: symbol 'cpr_get_opp_hz_for_req' was not declared. Should it be static?
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VR2PYPHPDSBP7OMVLBLHJVSW2JXRGPRD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   89eba9e38dc4ed4576eaf7711c60403568663291
commit: bf6910abf54871b0e976e52f56fb3b3dd1b90e48 [59/60] power: avs: Add support for CPR (Core Power Reduction)
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        git checkout bf6910abf54871b0e976e52f56fb3b3dd1b90e48
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/power/avs/qcom-cpr.c:1081:15: sparse: sparse: symbol 'cpr_get_opp_hz_for_req' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
