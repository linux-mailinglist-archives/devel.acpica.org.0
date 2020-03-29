Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01818196DD0
	for <lists+devel-acpica@lfdr.de>; Sun, 29 Mar 2020 16:08:13 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B2E9E10FC362C;
	Sun, 29 Mar 2020 07:09:00 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=79.96.170.134; helo=cloudserver094114.home.pl; envelope-from=rjw@rjwysocki.net; receiver=<UNKNOWN> 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl [79.96.170.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 297AC10097F3D
	for <devel@acpica.org>; Sun, 29 Mar 2020 07:08:57 -0700 (PDT)
Received: from 185.80.35.16 (185.80.35.16) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.341)
 id f063bb686b1bb6c4; Sun, 29 Mar 2020 16:08:05 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Erik Kaneda <erik.kaneda@intel.com>
Date: Sun, 29 Mar 2020 16:08:04 +0200
Message-ID: <3863805.FxIobF6Dnx@kreacher>
In-Reply-To: <5e7fb83b.mzs1XRDjQiEqx806%lkp@intel.com>
References: <5e7fb83b.mzs1XRDjQiEqx806%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID-Hash: DMEO5TXPKPJTYLL2CWPWUXFNRTQ43HSG
X-Message-ID-Hash: DMEO5TXPKPJTYLL2CWPWUXFNRTQ43HSG
X-MailFrom: rjw@rjwysocki.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: kbuild test robot <lkp@intel.com>, linux-pm@vger.kernel.org, devel@acpica.org, linux-acpi@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [pm:bleeding-edge] BUILD REGRESSION b50a778aa5b714166355ef7f4a1992e4073393fc
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DMEO5TXPKPJTYLL2CWPWUXFNRTQ43HSG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

On Saturday, March 28, 2020 9:48:59 PM CEST kbuild test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git  bleeding-edge
> branch HEAD: b50a778aa5b714166355ef7f4a1992e4073393fc  Merge branch 'acpica-next' into bleeding-edge
> 
> Regressions in current branch:
> 
> drivers/acpi/acpica/dswload2.c:476:3: warning: syntax error [syntaxError]
> 
> Error ids grouped by kconfigs:
> 
> recent_errors
> `-- x86_64-allyesconfig
>     `-- drivers-acpi-acpica-dswload2.c:warning:syntax-error-syntaxError

This looks like a script went south.

It should be fixed in my tree now.


_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
