Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7725A12A44E
	for <lists+devel-acpica@lfdr.de>; Tue, 24 Dec 2019 23:19:12 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 208A110097F06;
	Tue, 24 Dec 2019 14:22:31 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4986710113672
	for <devel@acpica.org>; Tue, 24 Dec 2019 14:22:28 -0800 (PST)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Dec 2019 14:19:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,353,1571727600";
   d="scan'208";a="214256959"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 24 Dec 2019 14:19:06 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1ijsW9-000GjQ-CF; Wed, 25 Dec 2019 06:19:05 +0800
Date: Wed, 25 Dec 2019 06:18:34 +0800
From: kbuild test robot <lkp@intel.com>
To: Niklas Cassel <niklas.cassel@linaro.org>
Message-ID: <20191224221834.qtzuikxnnfh7twji@4978f4969bb8>
References: <201912250622.SScsrif7%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201912250622.SScsrif7%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Message-ID-Hash: RMYFM5LHQUTTPR5FC4RADVXMWLMTEZLW
X-Message-ID-Hash: RMYFM5LHQUTTPR5FC4RADVXMWLMTEZLW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [RFC PATCH pm] power: avs: cpr_get_opp_hz_for_req() can be static
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RMYFM5LHQUTTPR5FC4RADVXMWLMTEZLW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Fixes: bf6910abf548 ("power: avs: Add support for CPR (Core Power Reduction)")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 qcom-cpr.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/power/avs/qcom-cpr.c b/drivers/power/avs/qcom-cpr.c
index a3187973bbb5fd..98c9ee4075ae9d 100644
--- a/drivers/power/avs/qcom-cpr.c
+++ b/drivers/power/avs/qcom-cpr.c
@@ -1078,8 +1078,8 @@ static unsigned int cpr_get_fuse_corner(struct dev_pm_opp *opp)
 	return fuse_corner;
 }
 
-unsigned long cpr_get_opp_hz_for_req(struct dev_pm_opp *ref,
-				     struct device *cpu_dev)
+static unsigned long cpr_get_opp_hz_for_req(struct dev_pm_opp *ref,
+					    struct device *cpu_dev)
 {
 	u64 rate = 0;
 	struct device_node *ref_np;
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
