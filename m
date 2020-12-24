Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 229662E26DE
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 13:32:42 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9A21F100EC1C3;
	Thu, 24 Dec 2020 04:32:40 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CC4B3100ED4BF
	for <devel@acpica.org>; Thu, 24 Dec 2020 04:32:38 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id s15so1229869plr.9
        for <devel@acpica.org>; Thu, 24 Dec 2020 04:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+J/0VOs8YWsyYToq/9Zvb+xHjb6tDaj6rDWhx//Wfpo=;
        b=l0rzDsHOq1wmUBmp52YLRQvtQ4Qp7o0p2Y2NbinY59TeXwK8AQewMCoI2Nsh0/2Uce
         sLwOMzOu1z1+5tQjZfwEEUbMoA7i8v1r4e4nBprge1DeRrBpUHIwO2v9AgY8lmLfAxQ0
         GoIr4upsln73uiXwBTzKtc/r2reaCi36S9U+dQbX0gLtLoK6zeCt+s8b3oRJ6HiBYmQJ
         TcHIrGgPrWhChpH9AciSxVrngWU7fRUnJe8wjwRov8kOx2ZeKP9KWqFVWTI59E0bsD1S
         xbf9OjUMivjrsPu1cvk/sxF0T9c3I5D2SFqhYRqWnoGOkh0nfG0i2gfn0OHZ7QgOKQMq
         DBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+J/0VOs8YWsyYToq/9Zvb+xHjb6tDaj6rDWhx//Wfpo=;
        b=WnLAW/G0wjI8VkjHy6oQVGL99MwuRsotP4Cx1vLQDAycuxlxJucYHsQfBbCW1jV6Y6
         OxYb2ldx81Pbk2mPGTbwPDzXrQBTyB9j+43FCAwjDCcCvfbiNAt8qrjAYe544AhRjI/h
         y7AN3DgY51gTDnC3/aQrvBQdt5VwQcSNeN6xGVLwNtgsXpO1p7Wu1n4K5vG9gh6+Dcpk
         /LR9trOUrEvsOhZVFF/c2crz4VC8ZcaRBPsLVxxSmoU1q11mCHlPxZDoglegNwNkdPDh
         Bugm8otLS8aoKI+UoYVWLcu84tAvW20crr86ckKw7+RqGdSSX2Sgk/zaSsp/XvQry3qn
         Q6EQ==
X-Gm-Message-State: AOAM531JyBt42MzvGG63fFW140BGD7Ddye9mtsFYrSruvrSpoOBqS7QF
	nt4wd2zqHHCosTWZSzaPqhRf3CxEuMmPJiv3Eqs=
X-Google-Smtp-Source: ABdhPJyNndhTJZhlBZ82GcH9swNKAsjjQWJTLb2NlauCAUMkFWa1mKNvf8bPsb3uv/kOpRxR4L+XF0VT7Bx6OMLZkpQ=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr4272542pjt.228.1608813158085;
 Thu, 24 Dec 2020 04:32:38 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-14-djrscally@gmail.com>
In-Reply-To: <20201224010907.263125-14-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 24 Dec 2020 14:32:21 +0200
Message-ID: <CAHp75VdSyNv3M9T0_nQKsZfO-nxd5A3Z6o0mrRKrpHm282wsjQ@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: ZHY75CNDEXFIAG5N6QWIY5HSIHMULGHT
X-Message-ID-Hash: ZHY75CNDEXFIAG5N6QWIY5HSIHMULGHT
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 13/14] include: media: v4l2-fwnode: Include v4l2_fwnode_bus_type
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZHY75CNDEXFIAG5N6QWIY5HSIHMULGHT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 3:13 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> V4L2 fwnode bus types are enumerated in v4l2-fwnode.c, meaning they aren't
> available to the rest of the kernel. Move the enum to the corresponding
> header so that I can use the label to refer to those values.

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
One nitpick below, though.

> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v3
>         - Patch introduced
>
>  drivers/media/v4l2-core/v4l2-fwnode.c | 11 -----------
>  include/media/v4l2-fwnode.h           | 22 ++++++++++++++++++++++
>  2 files changed, 22 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
> index 5353e37eb950..c1c2b3060532 100644
> --- a/drivers/media/v4l2-core/v4l2-fwnode.c
> +++ b/drivers/media/v4l2-core/v4l2-fwnode.c
> @@ -28,17 +28,6 @@
>  #include <media/v4l2-fwnode.h>
>  #include <media/v4l2-subdev.h>
>
> -enum v4l2_fwnode_bus_type {
> -       V4L2_FWNODE_BUS_TYPE_GUESS = 0,
> -       V4L2_FWNODE_BUS_TYPE_CSI2_CPHY,
> -       V4L2_FWNODE_BUS_TYPE_CSI1,
> -       V4L2_FWNODE_BUS_TYPE_CCP2,
> -       V4L2_FWNODE_BUS_TYPE_CSI2_DPHY,
> -       V4L2_FWNODE_BUS_TYPE_PARALLEL,
> -       V4L2_FWNODE_BUS_TYPE_BT656,
> -       NR_OF_V4L2_FWNODE_BUS_TYPE,
> -};
> -
>  static const struct v4l2_fwnode_bus_conv {
>         enum v4l2_fwnode_bus_type fwnode_bus_type;
>         enum v4l2_mbus_type mbus_type;
> diff --git a/include/media/v4l2-fwnode.h b/include/media/v4l2-fwnode.h
> index 4365430eea6f..d306a28bda96 100644
> --- a/include/media/v4l2-fwnode.h
> +++ b/include/media/v4l2-fwnode.h
> @@ -213,6 +213,28 @@ struct v4l2_fwnode_connector {
>         } connector;
>  };
>
> +/**
> + * enum v4l2_fwnode_bus_type - Video bus types defined by firmware properties
> + * @V4L2_FWNODE_BUS_TYPE_GUESS: Default value if no bus-type fwnode property
> + * @V4L2_FWNODE_BUS_TYPE_CSI2_CPHY: MIPI CSI-2 bus, C-PHY physical layer
> + * @V4L2_FWNODE_BUS_TYPE_CSI1: MIPI CSI-1 bus
> + * @V4L2_FWNODE_BUS_TYPE_CCP2: SMIA Compact Camera Port 2 bus
> + * @V4L2_FWNODE_BUS_TYPE_CSI2_DPHY: MIPI CSI-2 bus, D-PHY physical layer
> + * @V4L2_FWNODE_BUS_TYPE_PARALLEL: Camera Parallel Interface bus
> + * @V4L2_FWNODE_BUS_TYPE_BT656: BT656 video format bus-type
> + * @NR_OF_V4L2_FWNODE_BUS_TYPE: Number of bus-types
> + */
> +enum v4l2_fwnode_bus_type {
> +       V4L2_FWNODE_BUS_TYPE_GUESS = 0,
> +       V4L2_FWNODE_BUS_TYPE_CSI2_CPHY,
> +       V4L2_FWNODE_BUS_TYPE_CSI1,
> +       V4L2_FWNODE_BUS_TYPE_CCP2,
> +       V4L2_FWNODE_BUS_TYPE_CSI2_DPHY,
> +       V4L2_FWNODE_BUS_TYPE_PARALLEL,
> +       V4L2_FWNODE_BUS_TYPE_BT656,

> +       NR_OF_V4L2_FWNODE_BUS_TYPE,

I see that comma is in the original line, but I think it's a good time
to remove it from this line. Since it's a terminator line we might
prevent potential issues during review (by a different diff look) and
at compile time (if anything comes after it).

> +};
> +
>  /**
>   * v4l2_fwnode_endpoint_parse() - parse all fwnode node properties
>   * @fwnode: pointer to the endpoint's fwnode handle
> --
> 2.25.1
>


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
