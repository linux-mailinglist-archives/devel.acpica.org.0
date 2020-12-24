Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 622962E26C3
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 13:17:29 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 32C97100ED4BF;
	Thu, 24 Dec 2020 04:17:27 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 99AD4100ED484
	for <devel@acpica.org>; Thu, 24 Dec 2020 04:17:24 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id be12so1233585plb.4
        for <devel@acpica.org>; Thu, 24 Dec 2020 04:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9+3EQC8mVZjXYO5oCcx/CV2SQScU+vZuWt0oU084DsQ=;
        b=X1G2cjOPZibLvgI8OKxwYxP6vWy5F5iXoBkuG4Qb6M9ul/8ucQ6xB/4XTq4+4mE77x
         vlkbOqn3u78ruMVlq1C9nWxPcJMqWf4nQIba7kQi8Wr/1jsEJ58k8UBTS88c7RHMLOUp
         RNS2XzF1abdemm4JzpcHOaYppKECCtOuE3R5vTuRqMQ9PDTb2X2fV0+JDM1CTSo80klh
         IaZkPIaWC9jpPHtydxF14IXyCwGrKmxoXLKBhZuOLadjzL0HhXxg7iEFbtSHkYK0/D2N
         WbvYbHnTy6DxbVIamBGiIhc+mPEUOLLvyzmLIMejMfDQiJINYtbDpFWp087c+FIa4IiU
         04RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9+3EQC8mVZjXYO5oCcx/CV2SQScU+vZuWt0oU084DsQ=;
        b=HfwSEjB8ETHmD7vBhIEH2rvLx9SrWy8U9umGjO4yOszc+M87GDTGtdhdkj0lE8l3M0
         Nwiq2m6q7akqVLqRJanXUKgdL+q0eaHmTEoq+lxsF0GIPwVjQTHYwqTf5Zs6Y+kpG6kl
         nJMTa5pMROxlqQgm/MthBFtExYRt3J6D/DBLqAiwgDC33CA5PIVxSgs0ZrhKO0ODt1NQ
         NcjQInD1rJtVtN1dj6VLjHcWGn2NC1WQC1+wmTFUJZekhR2xjLcbM7Gi358RSjTt9Xhm
         Y/fAALD2RWjQwXKJyQJX9RfdQ/iuIOjLa9cJ9FkdGGa8+H3bCPdjbWovTa0H4Ri/QA2q
         bJCg==
X-Gm-Message-State: AOAM532nrYGPO8drvqv1UtU+Bs7i+Qimtj63thkkZ8eSNwy2Svs8k8jw
	DO3u8dPqLnvCBEUGLGqmk3X9JU330k+TMZDy1Qw=
X-Google-Smtp-Source: ABdhPJxCfxiRoyKI7QX4cx2zw6Wq58lpHia/hOQbyEuGs75ZIk1ZD/CEauMYOaK3uiUuiyh2ota7OvdtAw6r6GVxYPQ=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr4222362pjt.228.1608812243836;
 Thu, 24 Dec 2020 04:17:23 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-7-djrscally@gmail.com>
In-Reply-To: <20201224010907.263125-7-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 24 Dec 2020 14:17:07 +0200
Message-ID: <CAHp75Ve8YRygEn3wcbmnSPthG+R_-9hhkAdMLk7jgiPi=jnJ5Q@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: HUWX3ZFJGIDDYNTKFR45PTHAVUAUOO6W
X-Message-ID-Hash: HUWX3ZFJGIDDYNTKFR45PTHAVUAUOO6W
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 06/14] include: fwnode.h: Define format macros for ports and endpoints
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HUWX3ZFJGIDDYNTKFR45PTHAVUAUOO6W/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 3:12 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> OF, ACPI and software_nodes all implement graphs including nodes for ports
> and endpoints. These are all intended to be named with a common schema,
> as "port@n" and "endpoint@n" where n is an unsigned int representing the
> index of the node. To ensure commonality across the subsystems, provide a
> set of macros to define the format.

Nitpicks below, but in general that's what I meant, thanks!

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
(after addressing nitpicks)

> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v3
>         - Patch introduced
>
>  include/linux/fwnode.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
> index 9506f8ec0974..52889efceb7d 100644
> --- a/include/linux/fwnode.h
> +++ b/include/linux/fwnode.h
> @@ -32,6 +32,19 @@ struct fwnode_endpoint {
>         const struct fwnode_handle *local_fwnode;
>  };
>
> +/*
> + * ports and endpoints defined in OF, ACPI and as software_nodes should all
> + * follow a common naming scheme; use these macros to ensure commonality across
> + * the subsystems.
> + *
> + * The *PREFIX_LEN macros refer to the length of the "port@" and "endpoint@"

*PREFIX_LEN -> *_PREFIX_LEN

> + * sections of the naming scheme.
> + */
> +#define FWNODE_GRAPH_PORT_NAME_FORMAT          "port@%u"
> +#define FWNODE_GRAPH_PORT_NAME_PREFIX_LEN      5
> +#define FWNODE_GRAPH_ENDPOINT_NAME_FORMAT      "endpoint@%u"
> +#define FWNODE_GRAPH_ENDPOINT_PREFIX_LEN       9

_FORMAT -> _FMT (however, V4L2 guys may correct me, because IIRC _FMT
suffix is also used for other things in v4l2.

>  #define NR_FWNODE_REFERENCE_ARGS       8
>
>  /**

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
