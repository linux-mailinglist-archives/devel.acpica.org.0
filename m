Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE52E6781
	for <lists+devel-acpica@lfdr.de>; Mon, 28 Dec 2020 17:26:11 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CF728100EBBDD;
	Mon, 28 Dec 2020 08:26:03 -0800 (PST)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 805A5100EBBDC
	for <devel@acpica.org>; Mon, 28 Dec 2020 02:14:33 -0800 (PST)
IronPort-SDR: WuOBkMXyjDELDM+MmSDfGoqNz9wIXz3VJ2oYU6D7sJ3NcDl4C4OKWZv5bbp++Vltym/d4gP63N
 TIefpykOtrLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9847"; a="237922498"
X-IronPort-AV: E=Sophos;i="5.78,454,1599548400";
   d="scan'208";a="237922498"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 02:14:32 -0800
IronPort-SDR: 2o4QrVc5rt8K5snm4jNOP8DVG+i65S6cUj1QRCuntb4Jlr6nOgSwGZOxSK/8GtFxZXGVM90fgy
 5VWJOoopVeow==
X-IronPort-AV: E=Sophos;i="5.78,454,1599548400";
   d="scan'208";a="384530659"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 02:14:25 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andy.shevchenko@gmail.com>)
	id 1ktpYk-000CE8-13; Mon, 28 Dec 2020 12:15:26 +0200
Date: Mon, 28 Dec 2020 12:15:26 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: David Laight <David.Laight@aculab.com>
Message-ID: <20201228101526.GV4077@smile.fi.intel.com>
References: <20201224010907.263125-1-djrscally@gmail.com>
 <20201224010907.263125-6-djrscally@gmail.com>
 <CAHp75VdF5NdjrSxcOafh7KNNDteYEUDk9otA0HKX-iks7G0D4g@mail.gmail.com>
 <de478ef0-0b4d-df1d-2651-9cc35bf2f45b@gmail.com>
 <CAHp75VdWuowLenNPQRNc+QXeyuvwKqh_bjw=1WvmFrzoygXFRw@mail.gmail.com>
 <2b415312-fe30-c73b-0077-4ec2a07116df@gmail.com>
 <fcb07dea193b4b99b11f2a8e684d8acf@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fcb07dea193b4b99b11f2a8e684d8acf@AcuMS.aculab.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: OQH6WKG6ELCNRVPDFOHOTX2B5HKRHIVB
X-Message-ID-Hash: OQH6WKG6ELCNRVPDFOHOTX2B5HKRHIVB
X-Mailman-Approved-At: Mon, 28 Dec 2020 16:26:01 -0800
CC: 'Daniel Scally' <djrscally@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, "kieran.bingham+renesas@ideasonboard.com" <kieran.bingham+renesas@ideasonboard.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutron
 ix.de>, "niklas.soderlund+renesas@ragnatech.se" <niklas.soderlund+renesas@ragnatech.se>, Steve Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, kernel test robot <lkp@intel.com>, Dan Carpenter <dan.carpenter@oracle.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 05/14] software_node: unregister software_nodes in reverse order
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OQH6WKG6ELCNRVPDFOHOTX2B5HKRHIVB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 06:36:10PM +0000, David Laight wrote:
> From: Daniel Scally 
> > Sent: 24 December 2020 14:14
> ...
> > >> The array will be unwound in reverse order (i.e. last entry first). If
> > >> any member of the array is a child of another member then the child must
> > > children ?
> > 
> > Yes, you are right of course.
> 
> The second 'child' is a back-reference to 'any member' so is singular
> so 'child' is correct.
> 'the child' could be replaced by 'it'
> 
> You could have:
>    If any members of the array are children of another member then the
>    children must appear later in the list.

Works for me!
Dan, can you consider David's proposal?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
