Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DED622E27C1
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 15:42:47 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E6778100EC1DD;
	Thu, 24 Dec 2020 06:42:44 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1033; helo=mail-pj1-x1033.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 080F4100ED484
	for <devel@acpica.org>; Thu, 24 Dec 2020 04:13:29 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id iq13so1029580pjb.3
        for <devel@acpica.org>; Thu, 24 Dec 2020 04:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UALr9ym4hsAZyiPOgyH1YaE+cu2KjtwJLBwTVvlB5/k=;
        b=Mg+X4meLskIl4Y4m1FU2Bpwk0/eLPjYsQ1bc2nFbH5sa/Fymch56YfhLwLr2zHgu6+
         cHXDlkz0qPSrqikN8Kqss93Mb9vkwRYAKrpeV4/VhA5jIXmnM+r+mKthrMlJia4csbNU
         GRDdpX/FxssQBT5uUJNC0sqPiujRKyronrpH5ErzdcNk3jPAHK54x+IRg0kaYgGnaNVy
         qTTbaS8J8yo0mFvCaCaf05Nm5opZPixYbnD4EmO26MGunXN7ttnNV+X4MkiC9+PJ7RdU
         EKMl7kCTVAMhsNNJhptfAavOs4Thf1sP50uNALVbuHt6x76qWZvvSKKA3Ltv+UiORG2x
         9whw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UALr9ym4hsAZyiPOgyH1YaE+cu2KjtwJLBwTVvlB5/k=;
        b=PVSQ+f0wdAzrE19GzDqRkOWuJ3v6lmf7dKdlzLIrtuOFmwDlVXrTqAnERTHee024Y7
         rW2ivMnPQavTIlhyb5SRxVK2ibw8vMy9QBt1XNcKsvQ9o0Mxk0EFsxra+H0eR/ycA8k0
         o6Dcg5f9ZAwYFn025bK9LdCHk8TUZbmJvliAM5j9POcHFbgJ9lrf/sCencSANWx5KUX6
         mz7npToow5ic6szGB5wFd9NnXduGwdvd1FH0j4fEXx3tVkHgykKhTeRTNFEyjXCqL/s3
         fUwfLXMXkWNJydAdyVwDfemWU9a/RmATTcYGovETD5G5D40X6rdshbgFjxHkhVSQLBHP
         XzuA==
X-Gm-Message-State: AOAM5325jehXBMTt7C5Op3adbyvSs7JD2aGtqt6tdqkGTBRXt2ZE5kQn
	6U+wM7TOrI28D+Q8htlZWUbyMBMBY+sjTlRsARo=
X-Google-Smtp-Source: ABdhPJzFIC1SAIBCVWCBrnBnewdPpuCRgYW7JPpjkgyIwp7BAN66+GZ8WvhceftHJu5SPnS3x8pknFhFVqKS3VtWvWc=
X-Received: by 2002:a17:902:e98c:b029:da:cb88:f11d with SMTP id
 f12-20020a170902e98cb02900dacb88f11dmr8616930plb.17.1608812009413; Thu, 24
 Dec 2020 04:13:29 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-6-djrscally@gmail.com>
In-Reply-To: <20201224010907.263125-6-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 24 Dec 2020 14:13:13 +0200
Message-ID: <CAHp75VdF5NdjrSxcOafh7KNNDteYEUDk9otA0HKX-iks7G0D4g@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: 5FYSLDNKTW2OUDYWKZYVWOHRG3WDTN7J
X-Message-ID-Hash: 5FYSLDNKTW2OUDYWKZYVWOHRG3WDTN7J
X-Mailman-Approved-At: Thu, 24 Dec 2020 14:42:42 -0800
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, kernel test robot <lkp@intel.com>, Dan Carpenter <dan.carpenter@oracle.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 05/14] software_node: unregister software_nodes in reverse order
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5FYSLDNKTW2OUDYWKZYVWOHRG3WDTN7J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 3:12 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> To maintain consistency with software_node_unregister_nodes(), reverse
> the order in which the software_node_unregister_node_group() function
> unregisters nodes.

...

> - * Unregister multiple software nodes at once.
> + * Unregister multiple software nodes at once. The array will be unwound in
> + * reverse order (i.e. last entry first) and thus if any member of the array
> + * has its .parent member set then they should appear later in the array such
> + * that they are unregistered first.

I'm, as being not a native speaker, a bit confused by this comment.
The idea is that children are unregistered first. Can you try to make
it more clear maybe?

>   */


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
