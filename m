Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F164A7920
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 21F09100E5DB3;
	Wed,  2 Feb 2022 11:58:59 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 59A33100EC1D2
	for <devel@acpica.org>; Wed, 30 Dec 2020 12:48:08 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id v19so11950138pgj.12
        for <devel@acpica.org>; Wed, 30 Dec 2020 12:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jRVdipqMo3SGkScdVCSY0NCVDydJxCZXUp0vL0ss0j8=;
        b=Ex8hVNUWqY+rbyZwRHu0Z8ZFDWv3n6GCNQ6/oKC9ORvHkbkiVNGzdB91SjAk392fsg
         s3ED8sOmsckgJOxTaNfYxosbDaaMTahyn8teOd4ojTAUMBd0JUPKX5HzCwG4Hhbis73B
         uRuMcfr3NQT5ekO4VMFxihb+mdcnRnFki6aY9LJt3PYKLZkgwrGw4VeNdH9ioFHjsks1
         vbOzj6pKww4PqUZL4f29Bi4HnqOfCxVzr4w0ISFjRmcq4dfx2pLhCVAB43Q8usle0KNN
         XoU1DpgnpDL8QwmG6+owvGJ/TZUxTIGNNavC1HalaTQByK0CRPAB+fhq7VP0yAqWMm5L
         wt4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jRVdipqMo3SGkScdVCSY0NCVDydJxCZXUp0vL0ss0j8=;
        b=sKgLaxbxKk9gYbSMjoxRFJgq0r2hHLjz2LEgVYKEowURUbnBnBngmQ9pT1FKJqHgp7
         aQ/x7bV3YkjzKhrbnvd7CC1F5CwAVOz2UiE0hHR6o5qNs5Qeo/dNKjB/hLQoOMvNW9M8
         Br4EGPLNL8SdjPN26a1ztIM6ZPR0kKFfFCy/kdJKv1CL2fLvQFopH44e4dT1VAf15m90
         g1wONy97um8R7Z93L1g1Bo22PwLShijZ17R+cdzXq3eLqfi9pSXgGophb790t8MzVq6w
         nnlmikJX1E5ZEIfXw1evcxXb52sM+VWqPUh7Mq+Z+T9kYjmGSZ3cVkOWTAh+qnX/JIQR
         6lHw==
X-Gm-Message-State: AOAM532sOAM2G/dE9+P4mOqZEODd25flTLrBXyIHs0WsajcMEa4X2J90
	XSTKMQ1D2b91TWWe0yme2Uc0m4RHG646fsrZwZE=
X-Google-Smtp-Source: ABdhPJxSMf4/TA4B3IeFbMjgSsLR1NtTgwkka1CnQ1qojXL0WNjbTMpocAhYi5Qhs2jjwKkiX06W8HtrgHf96sok07s=
X-Received: by 2002:a63:c04b:: with SMTP id z11mr53914993pgi.74.1609361287808;
 Wed, 30 Dec 2020 12:48:07 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-15-djrscally@gmail.com>
 <CAHp75VeXN6PnV7Mzz6UMpD+m-yjPi6XK0kx1=+-M5mci=Vb=YQ@mail.gmail.com>
 <20201228170521.GZ26370@paasikivi.fi.intel.com> <2d37df3d-f04c-6679-6e27-6c7f82e9b158@gmail.com>
 <20201228225544.GH4077@smile.fi.intel.com> <X+plTyUFhfHi7eIE@pendragon.ideasonboard.com>
 <CAHp75Vdzk7i+QzkTxLJUUkw3xZot9F7QT8pyu6b5yjkCVzMXEA@mail.gmail.com> <X+pzKDNWpiQWenHy@pendragon.ideasonboard.com>
In-Reply-To: <X+pzKDNWpiQWenHy@pendragon.ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 30 Dec 2020 22:47:51 +0200
Message-ID: <CAHp75Vf18sse_QQGSy+E2qK-N_B=ky83x36HiNfmUKmya_CS9Q@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: 2IHSXGF4GM6RRUQNST7H3O4QIQ4QB5G3
X-Message-ID-Hash: 2IHSXGF4GM6RRUQNST7H3O4QIQ4QB5G3
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: Daniel Scally <djrscally@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Steve Longerbeam <sl
 ongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Jordan Hand <jorhand@linux.microsoft.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 14/14] ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2IHSXGF4GM6RRUQNST7H3O4QIQ4QB5G3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 29, 2020 at 2:07 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tue, Dec 29, 2020 at 01:54:59AM +0200, Andy Shevchenko wrote:
> > On Tue, Dec 29, 2020 at 1:08 AM Laurent Pinchart wrote:

...

> > +#include <linux/videodev2.h>
>
> I think this can be dropped.

I dropped above (I noticed it's included by a half of the headers listed below.

> > +#include <media/media-device.h>
> > +#include <media/media-entity.h>
> > +#include <media/v4l2-async.h>
> > +#include <media/v4l2-dev.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/v4l2-subdev.h>
> > +#include <media/videobuf2-core.h>
> > +#include <media/videobuf2-v4l2.h>

...

> How about grouping all forward declarations at the top ?

Done.

> Otherwise this looks good,
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thanks!
I just sent a formal patch with your tag included.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
