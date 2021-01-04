Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E66A4A791F
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2BFED100E5DB6;
	Wed,  2 Feb 2022 11:59:00 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::102e; helo=mail-pj1-x102e.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 9AEFC100ED499
	for <devel@acpica.org>; Mon,  4 Jan 2021 05:37:59 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id lb18so10082848pjb.5
        for <devel@acpica.org>; Mon, 04 Jan 2021 05:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K+CDCfA5PemkxKnAwCzf0wlF1tNUAK7fJ30n7xk8Eos=;
        b=uePTtjoOc2coYDV9deOOVYGQB1/AH7to+N/S8Auz8QnywvItZd80oilByCOCt5hAfX
         GDFLHWJJ31yNVUtaWWr/AgXo8eF7lHB3FC1fYYq+1+KDK94xFErDFEsD3osumFaDFgvY
         DBgouQfpvJx53TY8gEcbYSVQNuJYBi84xq6Pq24DGJwQajR42XUBllcL7WCegYVtCFQC
         krTYBh1U1Ci97Euk7MwAAr99JZvLyd20eDy/nIzaeAAdXth9Dp+k1mjmK+C153nlsJfM
         FVpyq0WPMMFlbrYWhyUz0yNnBJV3kwidCzC5kwBE0XhA5t73N7aW7W56OwgZFjBbGjAE
         4Rkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K+CDCfA5PemkxKnAwCzf0wlF1tNUAK7fJ30n7xk8Eos=;
        b=qRx2G9AMHQPcQ2S9PbfPwhKIPUaTSneE/Obq+gC9QUAAJAI9PUhJKbzAErQgKDSadR
         q4j2MKmSe/r//8MSZT7xczHAyXIrgJvzl6QWJUOv/FJYg33EneI1povi2nozE6sou9JS
         I5bLJu7kFYy9aAtq+3rSxJTCerffKdwpPr2XN0fKNbopmEpiG8ewUc3812chw7Pkb8FD
         dnd5yZSZV6TjEEX5qn4iH7jt4MUwYM/DRo5raRnjMUqv7KqX/mHzoetnDwyQAKFmrziH
         nv0Fkq3ykIIeXZ4PrlrEKZbwzSXVOjn53xkWQU2k/FFR+QaImUW3FTxMt7B0Vz+RiPgs
         aHiw==
X-Gm-Message-State: AOAM531RFY/euHiBWitvQh+5f6K3b3n2ht4vpVKoJ3qU6UEIu6z3ocpI
	qDEtVVxlo7aqy8vo9K9TQ+NhB6oKhmUePhdXEP8=
X-Google-Smtp-Source: ABdhPJzgoMjcEAl2pjB/Fd0EbpHaPeU2biYFz0h4TI3h789ORYJfBqqtqhv5AkMXxAby+Zk+iI+bVoL9q6HazNOjsJw=
X-Received: by 2002:a17:90b:a17:: with SMTP id gg23mr30331114pjb.129.1609767478850;
 Mon, 04 Jan 2021 05:37:58 -0800 (PST)
MIME-Version: 1.0
References: <20210103231235.792999-1-djrscally@gmail.com> <20210103231235.792999-16-djrscally@gmail.com>
 <20210104120905.GR4077@smile.fi.intel.com> <2f64873d-0413-3614-34e2-139b4a4d9da6@gmail.com>
In-Reply-To: <2f64873d-0413-3614-34e2-139b4a4d9da6@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 4 Jan 2021 15:38:47 +0200
Message-ID: <CAHp75VcU7DcRZD_eK+B1-CX7tVtsR5YLPdrA6oULk187xhApCw@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>, Joe Perches <joe@perches.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: XVLV2XMSHILRQNYGG67765B7F2K32KKM
X-Message-ID-Hash: XVLV2XMSHILRQNYGG67765B7F2K32KKM
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Jordan Hand <jorhand@linux.microsoft.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v4 15/15] ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XVLV2XMSHILRQNYGG67765B7F2K32KKM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 4, 2021 at 3:02 PM Daniel Scally <djrscally@gmail.com> wrote:
> On 04/01/2021 12:09, Andy Shevchenko wrote:
> > On Sun, Jan 03, 2021 at 11:12:35PM +0000, Daniel Scally wrote:

...

> >> +#define NODE_SENSOR(_HID, _PROPS)           \
> >> +    ((const struct software_node) {         \
> >> +            .name = _HID,                   \
> >> +            .properties = _PROPS,           \
> >> +    })
> >> +
> >> +#define NODE_PORT(_PORT, _SENSOR_NODE)              \
> >> +    ((const struct software_node) {         \
> >> +            .name = _PORT,                  \
> >> +            .parent = _SENSOR_NODE,         \
> >> +    })
> >> +
> >> +#define NODE_ENDPOINT(_EP, _PORT, _PROPS)   \
> >> +    ((const struct software_node) {         \
> >> +            .name = _EP,                    \
> >> +            .parent = _PORT,                \
> >> +            .properties = _PROPS,           \
> >> +    })
> > In all three I didn't get why you need outer parentheses. Without them it will
> > be well defined compound literal and should work as is.
> The code works fine, but checkpatch complains that macros with complex
> values should be enclosed in parentheses. I guess now that I'm more
> familiar with the code I'd call that a false-positive though, as nowhere
> else in the kernel that I've seen encloses them the same way.

I guess it is yet another false positive from checkpatch.
I would ignore its complaints.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
