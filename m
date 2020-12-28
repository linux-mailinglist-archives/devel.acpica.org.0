Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF1A4A7915
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:00 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CB5E6100E5DA7;
	Wed,  2 Feb 2022 11:58:47 -0800 (PST)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0E92F100EF271
	for <devel@acpica.org>; Mon, 28 Dec 2020 14:54:50 -0800 (PST)
IronPort-SDR: bYm8d10SbPuoP88dEJfPalnHuj+Mvy3sv15fKUnzMGtj+Awuqhcu1/u98sxWR9ivh72MILj48a
 c6gHpA8WxNUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="155637337"
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400";
   d="scan'208";a="155637337"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 14:54:50 -0800
IronPort-SDR: P8pRkp4r4hleaTdW98lANxtwRf91Y1VewUXny3A6f5SumEy48JGwSfyQyqMDBPQcqmziskMV8e
 WeEiLzDvAsLQ==
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400";
   d="scan'208";a="400097145"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 14:54:44 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andy.shevchenko@gmail.com>)
	id 1ku1QX-000IqD-09; Tue, 29 Dec 2020 00:55:45 +0200
Date: Tue, 29 Dec 2020 00:55:44 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID: <20201228225544.GH4077@smile.fi.intel.com>
References: <20201224010907.263125-1-djrscally@gmail.com>
 <20201224010907.263125-15-djrscally@gmail.com>
 <CAHp75VeXN6PnV7Mzz6UMpD+m-yjPi6XK0kx1=+-M5mci=Vb=YQ@mail.gmail.com>
 <20201228170521.GZ26370@paasikivi.fi.intel.com>
 <2d37df3d-f04c-6679-6e27-6c7f82e9b158@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d37df3d-f04c-6679-6e27-6c7f82e9b158@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: TFYVQ2E35C3GEVXMWKLVI3QJ2TFUYUQW
X-Message-ID-Hash: TFYVQ2E35C3GEVXMWKLVI3QJ2TFUYUQW
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: Sakari Ailus <sakari.ailus@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Steve Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heik
 ki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Jordan Hand <jorhand@linux.microsoft.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 14/14] ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TFYVQ2E35C3GEVXMWKLVI3QJ2TFUYUQW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Dec 28, 2020 at 10:37:38PM +0000, Daniel Scally wrote:
> On 28/12/2020 17:05, Sakari Ailus wrote:
> > On Thu, Dec 24, 2020 at 02:54:44PM +0200, Andy Shevchenko wrote:

...

> >>> +#include <linux/property.h>
> >>> +
> >>> +#define CIO2_HID                               "INT343E"
> >>> +#define CIO2_NUM_PORTS                         4
> > 
> > This is already defined in ipu3-cio2.h. Could you include that instead?
> 
> Yes; but I'd need to also include media/v4l2-device.h and
> media/videobuf2-dma-sg.h (they're included in ipu3-cio2-main.c at the
> moment). It didn't seem worth it; but I can move those two includes from
> the .c to the .h and then include ipu3-cio2.h in cio2-bridge.h
> 
> Which do you prefer?

Actually ipu3-cio2.h misses a lot of inclusions (like mutex.h which I
immediately noticed when scrolled over data types). I think here should be a
compromise variant, split out something like ipu3-cio2-defs.h which can be
included in both ipu3-cio2.h and cio2-bridge.h.

And cio2-bridge.h needs more inclusions like types.h.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
