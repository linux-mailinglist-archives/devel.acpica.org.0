Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 345184A7918
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:00 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 05752100E5DAD;
	Wed,  2 Feb 2022 11:58:49 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4AA1D100EBB7C
	for <devel@acpica.org>; Mon, 28 Dec 2020 15:47:29 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id h10so6136250pfo.9
        for <devel@acpica.org>; Mon, 28 Dec 2020 15:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+9PxOAS2DmrspCrz1Cyvj65Rb5q+CF7ttmZsI+IxekQ=;
        b=p1/ggYh+XBo6E6oqdFhDRpK3Wl7SW7b/5Zo+EUFPjqdVvXarPF6hFKXlbYLPvuAX8s
         5UqRVhrnYnRj0KxsXYMvP/NRe6Uoluir1l9FppzpouKgPVQh5DaKs/G2JBxY7YKzPX47
         odeKCbZ7JqtlVrArTyHqZEATiKBZh5ukkc2AgxTyFetrZ95SrQLKHDj5/td0S47G9O5l
         8FoVoKKgkkVIlo2x48mAM3t+SsZD96zYaHOlM1hyqtzhzJHGXzMWp9cz44wxabDznx5D
         qWm7LBgBvsxv9y4wrEoHC0KOGJhrT4ZCZHf0tQ102i3wRS+Q1PahsD/DYf7x/+CC6Wt+
         +eQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+9PxOAS2DmrspCrz1Cyvj65Rb5q+CF7ttmZsI+IxekQ=;
        b=ZacrKsZj5i563EmmvvvsbnXbMmwOX3s3p1YfQrQhQ0aQLrXUfIcZmAThdhx94w58Fe
         g1SKTJb0oNMYDrmy8PwTtC7ai+yJpFLHy6BtN9/V2vgHqjzviB/r11+nzbVEoSsvVA7z
         vXBMc7I9jRKocCJtL7qbcqUYOfd6N/OWbBD7fTGf1OEyagqz7HOf2onysLzrA/aiIbc1
         BMqMOja2Ec1fSG7exy4Aiy3j1gG7j1N5AXanVPqArbnz7Dvgq//2XmEFMxaT5GTDidt3
         nBrIFLOeJgA6cQiB3Fm5pD404z+NoSDVM+phE92Ox4UJdIochRSnW1pPjr+IHFHkGDLv
         gjMg==
X-Gm-Message-State: AOAM533xBqc1R19qq1HSeHZ3AODQoKycgFOnB3KOLSEgTdF4KftWQoXZ
	JTzl+jNlISyPEjzQ4ugD2LWjgTsRxWo48EmAQzQ=
X-Google-Smtp-Source: ABdhPJwKZSy88Kpgg3DxCCmB4FZY8GeeG1TnB+uTmT4vDDeMxoIhwibr7vDIVsaZhh8YzlAnYwWorLr6xdU5gb5gadE=
X-Received: by 2002:a63:74b:: with SMTP id 72mr45667221pgh.4.1609199248618;
 Mon, 28 Dec 2020 15:47:28 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-15-djrscally@gmail.com>
 <CAHp75VeXN6PnV7Mzz6UMpD+m-yjPi6XK0kx1=+-M5mci=Vb=YQ@mail.gmail.com>
 <20201228170521.GZ26370@paasikivi.fi.intel.com> <2d37df3d-f04c-6679-6e27-6c7f82e9b158@gmail.com>
 <20201228225544.GH4077@smile.fi.intel.com> <1b6ffc66-d16e-8ab4-64c8-b92bfac557f0@gmail.com>
In-Reply-To: <1b6ffc66-d16e-8ab4-64c8-b92bfac557f0@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 29 Dec 2020 01:47:12 +0200
Message-ID: <CAHp75VeCbmUXagxwfn55tqicJoWqdHjN8_sirBtBbxueCV88Pw@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: OGOZBC44VKNWXDYO7PNF45HVDGF6OBLQ
X-Message-ID-Hash: OGOZBC44VKNWXDYO7PNF45HVDGF6OBLQ
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: Sakari Ailus <sakari.ailus@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Steve Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heik
 ki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Jordan Hand <jorhand@linux.microsoft.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 14/14] ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OGOZBC44VKNWXDYO7PNF45HVDGF6OBLQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 29, 2020 at 1:30 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> Hi Andy
>
> On 28/12/2020 22:55, Andy Shevchenko wrote:
> > On Mon, Dec 28, 2020 at 10:37:38PM +0000, Daniel Scally wrote:
> >> On 28/12/2020 17:05, Sakari Ailus wrote:
> >>> On Thu, Dec 24, 2020 at 02:54:44PM +0200, Andy Shevchenko wrote:
> > ...
> >
> >>>>> +#include <linux/property.h>
> >>>>> +
> >>>>> +#define CIO2_HID                               "INT343E"
> >>>>> +#define CIO2_NUM_PORTS                         4
> >>> This is already defined in ipu3-cio2.h. Could you include that instead?
> >> Yes; but I'd need to also include media/v4l2-device.h and
> >> media/videobuf2-dma-sg.h (they're included in ipu3-cio2-main.c at the
> >> moment). It didn't seem worth it; but I can move those two includes from
> >> the .c to the .h and then include ipu3-cio2.h in cio2-bridge.h
> >>
> >> Which do you prefer?

> > I think here should be a
> > compromise variant, split out something like ipu3-cio2-defs.h which can be
> > included in both ipu3-cio2.h and cio2-bridge.h.
>
> And just including all the things that need to be in both files you mean?

Something which may be logically grouped together. It may include
something which cio2-bridge doesn't need, but at least it will be in
one place (for example, if you move one CIO2_PCI_* constant, that
means you better move all, or so, the rest CIO2_PCI_* constants as
well).


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
