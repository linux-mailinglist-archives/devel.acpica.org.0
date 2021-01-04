Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1664F4A791E
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 363C3100E5DB9;
	Wed,  2 Feb 2022 11:59:00 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 48268100ED499
	for <devel@acpica.org>; Mon,  4 Jan 2021 06:11:53 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id j1so14608070pld.3
        for <devel@acpica.org>; Mon, 04 Jan 2021 06:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EUUxZnLp9iwqwD5hGCnTbWs9va3dDEmsYPYTCboDkgM=;
        b=X8aqmXMB5tiHFzrniLVTktDAFx9GPxoKYC/VERRRccElLhRt5O3imXB3TuJseco+VB
         6+IOagth86OcC79TdClqwAmmMuGeNj8/ODoiV94dlOOheowFAPPguDf7eM3Kbnum/qEd
         FsLcu6pedYoofU9BK0ErFQgL7AnvPpDreqrzLCid0zT+0YFgRYRYI9qnR1OnXWeDDU4a
         rq5h0PmyevPSwS38mhjy5/qei5hp8DMW5F2siQQNiPt3X99wAGlAxe2yHINXJaY2XdaX
         s+y0Jw8fJJQZHc6T7MgeJ+CNNyPReKkcZT+mgQAUtqpGNd/l9vI1rRpwptE9A7xhZEq1
         nm8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EUUxZnLp9iwqwD5hGCnTbWs9va3dDEmsYPYTCboDkgM=;
        b=CvVJTLqSD12vSq/WR7ZzQfkNjwRTFYfJMdUtgFo9H4t9SugOu2eLf0F6XX/ZAHgJ98
         k5ACmXvhC0Q99JmgCZlyhPWx5qvvkSaEtyDfSAYjICb4aF6FGNOx396es0F9LgEinHS3
         w0IGryn2+qZmd4AQII/28FAUgs4hGoRZd3zaBOpc5hLXdntiSr5+ObzX35FQWaLLneuf
         7eS+ILrn4jhMcG/RQGx+CzmWS/7x7EjlgaaoEYYNYEgdveHcBclF04dFswXBJI+44CFu
         tmhnTyl1K7Sfbnat5gyVwo9MeqUgM941VWRnDruYT/VZd/3Q2SOmpWxXWZHgbKuUkvWy
         GNmQ==
X-Gm-Message-State: AOAM532bgefSas3MDwhENi4mjX2Fl3SBO+4rMaEqp1+NRVxYW/9jsxI1
	kVJun8GalflRMDHVPNb8Ln15wu+FopqiJlGkwtg=
X-Google-Smtp-Source: ABdhPJz6ehqJDINMSa6fja9yTp967LimGY8Equ3PqbXvrPklGwWlCUj94mtpfF0BG/sS7aRFOYJzqN3YqyiM9CLOAFA=
X-Received: by 2002:a17:90b:a17:: with SMTP id gg23mr30462729pjb.129.1609769512562;
 Mon, 04 Jan 2021 06:11:52 -0800 (PST)
MIME-Version: 1.0
References: <20210103231235.792999-1-djrscally@gmail.com> <20210103231235.792999-16-djrscally@gmail.com>
 <3d881e2b-747f-dcd7-a0cf-e7309419914b@ideasonboard.com> <9026519f-1f33-9df0-de18-0881069f7aaa@gmail.com>
In-Reply-To: <9026519f-1f33-9df0-de18-0881069f7aaa@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 4 Jan 2021 16:12:41 +0200
Message-ID: <CAHp75Vf6Z_qhw54jUu5tt85XxjZncaQFCNpYx=tqGTS9LsVPOg@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: A4CG5DCFRNSMUTFG773IEL2FQPO7LYAZ
X-Message-ID-Hash: A4CG5DCFRNSMUTFG773IEL2FQPO7LYAZ
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: kieran.bingham+renesas@ideasonboard.com, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Jordan Hand <jorhand@linux.microsoft.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v4 15/15] ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/A4CG5DCFRNSMUTFG773IEL2FQPO7LYAZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 4, 2021 at 3:55 PM Daniel Scally <djrscally@gmail.com> wrote:
> On 04/01/2021 13:35, Kieran Bingham wrote:

...

> +static const struct cio2_sensor_config cio2_supported_sensors[] = {
> +       /* Sensor OVTI5693 */
> +       CIO2_SENSOR_CONFIG("INT33BE", 0),
> +       /* Sensor OVTI2680 */
> +       CIO2_SENSOR_CONFIG("OVTI2680", 0),
>
> As an inline comment won't fit for the sensors that we know link-frequencies for. That sound ok?

At least to me it looks okay.

It seems for v5 we need Rafael's blessing on a few patches (driver
properties / swnode / ACPI) and we are fine.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
