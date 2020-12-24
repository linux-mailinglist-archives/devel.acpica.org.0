Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 516582E27C4
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 15:42:51 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 397D1100EC1EF;
	Thu, 24 Dec 2020 06:42:45 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D9942100ED484
	for <devel@acpica.org>; Thu, 24 Dec 2020 06:12:37 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id x18so1343865pln.6
        for <devel@acpica.org>; Thu, 24 Dec 2020 06:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SyPbtlk9TvZ8wXRc8WjmzSpmQJoyLh7+BtUnWFRUKOY=;
        b=Vv2Jg/rS+lyAVr9MqO3QquOplXTJE9iaeVSbUISyBQrx29Nk1tkF6q5D3r+WDG8vjg
         9FxmYx405/I97A8UVartQUnPETdQwiTCKYvIh24PLTWfcaFLGssnDt6tumHRLal0hskY
         myzItrP2leShibgY5N7Ebte7LM+rOf8YmclPEVSqgcyLurAqn2aINtFSbrrWqphjKSya
         WYStg7PkOmpP1clUIgvTPjXeQ0Yt61Ib82ihwMiA8PcGqHnsZbIczK1Edwni6qzKjG0W
         Say17Xh1AysuN/55mVAHC4XMuq0Z4EYGT6hxGbiBZuxzc6PuJLJ2tufoPs4HlCgyU/2e
         Avgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SyPbtlk9TvZ8wXRc8WjmzSpmQJoyLh7+BtUnWFRUKOY=;
        b=F6BtZ0c2Nm6yrnpdxhNW5XIkX5KW8b4LfZMbgWhR35oGvRSus5u/d+wBHbTV9vPavK
         3X2PMJHs7DIFfOrdrrDXeKT4j1hKNijsWyoabBJLvWvSwPrHVJfN0HIJj/utky0zHFK6
         KSB9bTuajCRtc4GKhtKcJG4xHyMMt8Vz+4CN0VCdyB501/FAwrf2qC/GrA2FewcD6Oma
         j+UzqCh+xgiyUVco+6kXTVNZi+ak7Ca9GmrMVcJyV/NL4IfEUmUUKN7NfDrwoLH/SqIV
         wLtv2qCFAE4M16EefHar++/nbZMmBCp4cNyk7M6pyI1MBHvaj0lRvgKhV2vSfG2oQclW
         OyxQ==
X-Gm-Message-State: AOAM530CP8xINS651fsXDuROygIu3ZBwrGfqh2CIZBOz1jLcOOyh2lMj
	eP42psgJW8gt8/1qKZPdLa2jX1YkNvGSu+SRNdM=
X-Google-Smtp-Source: ABdhPJx4kU2kgiBhzVnrEN4w5jn8fz4Uh0jF+A7nHQah1fR613EyonYvxy52LCufMdVu+K4/MKNj9N0tSoQEuzzOI1Q=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr4636764pjt.228.1608819157024;
 Thu, 24 Dec 2020 06:12:37 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-6-djrscally@gmail.com>
 <CAHp75VdF5NdjrSxcOafh7KNNDteYEUDk9otA0HKX-iks7G0D4g@mail.gmail.com> <de478ef0-0b4d-df1d-2651-9cc35bf2f45b@gmail.com>
In-Reply-To: <de478ef0-0b4d-df1d-2651-9cc35bf2f45b@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 24 Dec 2020 16:12:20 +0200
Message-ID: <CAHp75VdWuowLenNPQRNc+QXeyuvwKqh_bjw=1WvmFrzoygXFRw@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: D67RU252G2MUX66546OXRFGAC2M3COZO
X-Message-ID-Hash: D67RU252G2MUX66546OXRFGAC2M3COZO
X-Mailman-Approved-At: Thu, 24 Dec 2020 14:42:42 -0800
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, kernel test robot <lkp@intel.com>, Dan Carpenter <dan.carpenter@oracle.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 05/14] software_node: unregister software_nodes in reverse order
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/D67RU252G2MUX66546OXRFGAC2M3COZO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 4:00 PM Daniel Scally <djrscally@gmail.com> wrote:
> On 24/12/2020 12:13, Andy Shevchenko wrote:
> > On Thu, Dec 24, 2020 at 3:12 AM Daniel Scally <djrscally@gmail.com> wrote:

...

> >> + * Unregister multiple software nodes at once. The array will be unwound in
> >> + * reverse order (i.e. last entry first) and thus if any member of the array
> >> + * has its .parent member set then they should appear later in the array such
> >> + * that they are unregistered first.
> >
> > I'm, as being not a native speaker, a bit confused by this comment.
> > The idea is that children are unregistered first. Can you try to make
> > it more clear maybe?
>
> Sure, how about:
>
> The array will be unwound in reverse order (i.e. last entry first). If
> any member of the array is a child of another member then the child must

children ?

> appear later in the array than their parent, so that they are
> unregistered first.

I think with the above change it will be better, yes.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
