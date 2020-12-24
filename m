Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 636582E27C3
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 15:42:50 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2DBB1100EC1EB;
	Thu, 24 Dec 2020 06:42:45 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B0FEF100ED484
	for <devel@acpica.org>; Thu, 24 Dec 2020 05:03:35 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id x18so1272320pln.6
        for <devel@acpica.org>; Thu, 24 Dec 2020 05:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nf+OEToUyzUSgpyKbUm/RZLj11+XPWI/mRkR/bcpjVo=;
        b=Z5Iy/gBp8Ct2o3+1AM0s8Qa53xfZtLHRkd8IXVRnZBYBmtN4cWhjWHBZPpSbLGkreA
         /ZWRo7u/GbkoL+5mwALiXb6gHjnmuMKVfKbbLOhfQah76L7oNoptg/ey16sbeCWUbJIb
         9t1WsG4qZSaZu56Xtl2JrDbkucHz1PlDi7zi1ALmfeJ2VdIbOhtc96Ca7ne7GFYMl9fB
         3i3REG8sSAVcdbdqj7N3YDULgfMFa+er3kKY+6xbKOd+HaKlFeVTBrVpQlDid6FgsmWG
         cqfQ2ftaUEE8geAa6puJ/OzFdwXiJKZf10uOus8oTvT2Hth3sFj/ZFE6pGzcK1K9mhcd
         QZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nf+OEToUyzUSgpyKbUm/RZLj11+XPWI/mRkR/bcpjVo=;
        b=WxvngT8cCoXc9sSqKadhDDBLZISq1qNuPSBL+8vaFgRHDl8NS+unr/t9WeMBZhyWiv
         OoTxzKRdgi3+IECttKTntG+vBbWHRxTqW3aV0zJWsSIT/CzEup7V0DRjJ8x6I//przlb
         E3KrClHrBZMRL4KsWFQus2OiM73B9QtJtK0vCTslaJL8HkGRLA50TAoINVzD7Ukbjc0e
         ovHZNDknObE6cDbFdvGF4VIwLs2KkbUgUG3rwFMN7u0Y6L33sfgYLbFQPG/7rjNA+/Gq
         mGnbsZlSGwXgDOLcQRcUcLInmEQGh3ea8Xoyvzv9A4jWuqMnqMEnv027taBPe5Z0tpo0
         m/kw==
X-Gm-Message-State: AOAM532eVRi1b4VtRVf7VNYjTxvWzzGfj4BzQca9F5J9MkNkGJtTqcvi
	wSPPG+cFBsmg4UWOlFlPxIz0Nc91Msi56FSWYtU=
X-Google-Smtp-Source: ABdhPJx5pBslTFPiLxoZaSAOkeL0cxRUKvfR/rfmO3tgSDj1sZBpEnT+V5ZccptPEN/tQTIfkoBtoTq5w3ZlBGHwl3U=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr4371312pjt.228.1608815015034;
 Thu, 24 Dec 2020 05:03:35 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-8-djrscally@gmail.com>
 <CAHp75Vft7gg1AcKCEU+E74eB_ZMouHFd-8uZ7pcVj5CoJzZpvQ@mail.gmail.com> <X+SPsks5itN9OFqB@pendragon.ideasonboard.com>
In-Reply-To: <X+SPsks5itN9OFqB@pendragon.ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 24 Dec 2020 15:03:18 +0200
Message-ID: <CAHp75Ve6YHm-tdqFPvOhfJiT=uRK_dpKY3mnhQd6Mg3KkSuKqA@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: 664AGHONT2RFJLKEQWZRWCY2PL7UFWPG
X-Message-ID-Hash: 664AGHONT2RFJLKEQWZRWCY2PL7UFWPG
X-Mailman-Approved-At: Thu, 24 Dec 2020 14:42:42 -0800
CC: Daniel Scally <djrscally@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas
 .soderlund+renesas@ragnatech.se, Steve Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 07/14] software_node: Add support for fwnode_graph*() family of functions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/664AGHONT2RFJLKEQWZRWCY2PL7UFWPG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 2:55 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Thu, Dec 24, 2020 at 02:24:12PM +0200, Andy Shevchenko wrote:
> > On Thu, Dec 24, 2020 at 3:14 AM Daniel Scally wrote:

...

> > > +               if (!strncmp(to_swnode(port)->node->name, "port@",
> >
> > You may use here corresponding _FMT macro.
> >
> > > +                            FWNODE_GRAPH_PORT_NAME_PREFIX_LEN))
> > > +                       return port;

...

> > > +       /* Ports have naming style "port@n", we need to select the n */
> >
> > > +       ret = kstrtou32(swnode->parent->node->name + FWNODE_GRAPH_PORT_NAME_PREFIX_LEN,
> >
> > Maybe a temporary variable?
> >
> >   unsigned int prefix_len = FWNODE_GRAPH_PORT_NAME_PREFIX_LEN;
> >   ...
> >   ret = kstrtou32(swnode->parent->node->name + prefix_len,
>
> Honestly I'm wondering if those macros don't hinder readability. I'd
> rather write
>
>         + strlen("port@")

Works for me, since the compiler optimizes this away to be a plain constant.

> and let the compiler optimize this to a compile-time constant.
>
> > > +                       10, &endpoint->port);
> > > +       if (ret)
> > > +               return ret;


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
