Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7265133049C
	for <lists+devel-acpica@lfdr.de>; Sun,  7 Mar 2021 21:39:39 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2E6F8100EF27E;
	Sun,  7 Mar 2021 12:39:37 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EE6FC100EF275
	for <devel@acpica.org>; Sun,  7 Mar 2021 12:39:35 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id x7-20020a17090a2b07b02900c0ea793940so1835308pjc.2
        for <devel@acpica.org>; Sun, 07 Mar 2021 12:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ksneqLZ9zvuj+Q9Pi6/GCANghUOfFQNIq6D+RQ8519s=;
        b=gsBwdgKy0qJ/sWj2BknIzEzST332yyHdoW5xYOtq9fWcfHflnhmaGhq2v6q3a4IYmj
         4m0L+gBQsxS6lqDfeq7qXVpJa/1xFLnOtrpduuYufDMwijEVDsiVCTrifmiuqRHxy4D7
         hLPkAgOp1xjPHPBPLFjlvyGFa7ikTYDXjMVWzPUK/5feTbTPDv+eJWQhQcsrNEjHQIp6
         xh2gqgD09F6/3L4HXirWiqukMjWmlgiMFw0TDgmAeTr9NHY8yVNQyppk+HAKOREQHwFZ
         79dWlj2kWlC85Y2y3L72bZ8CmWcgy+y7cDQG3rf24DBn73gv54r1lQ9diZdY+lzLWWdG
         BNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ksneqLZ9zvuj+Q9Pi6/GCANghUOfFQNIq6D+RQ8519s=;
        b=TGevKhe1CF1fUytTdMWGz8Ltl86YzatJrLrMvnD/H8G5V5ezNO7FD2I/pxV3NdmAb4
         cm6hYb1746TNixFfKfTR0BnEOxDmp39OR/ClHBhKhYf6GWOawV+RDgKy/iD9aG8UtDLL
         XQCp7kalwOQ0LVKYvA6I6Wg0mc7ulIwaLyvJfKeQtwRxHMYkiausC0dsZzT8MiRHYzJ7
         QYyni2Bjzp95TjaLkoMdzsPuWHZRosncR2MBH+h9DH+bY1oHf2DbZ7LWZKC3a+7JOD+r
         6AWfsn1VF7e9yJHwWQSxpcwR7FuEM4YpjI3rw6+cBsHdv+RLsNhuIK+9PSnH0YdujdD+
         +bOw==
X-Gm-Message-State: AOAM530jHVqKQ2tMv+rdIgHyAF8lP0A2LRcPcvxRDNg7bIHje+LJnITP
	s3CITBFMYmOfu1G1Shg0S+Rq0u0tdomIF/sAb3U=
X-Google-Smtp-Source: ABdhPJxlj04alWLqhDKdUE58NU9W7umO8MwZXqbfilTz4/eiKjejZ6M4QMIuwTi82BfFMcr9ywapb7y/aJ9mm6zMO+c=
X-Received: by 2002:a17:902:d2c1:b029:e5:ccfe:1e93 with SMTP id
 n1-20020a170902d2c1b02900e5ccfe1e93mr17949404plc.0.1615149575234; Sun, 07 Mar
 2021 12:39:35 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-2-djrscally@gmail.com>
 <CAHp75VfPuDjt=ZfHkwErF7_6Ks6wpqXO8mtq-2KjV+mU_PXFtg@mail.gmail.com> <615bad5e-6e68-43c9-dd0b-f26d2832d52f@gmail.com>
In-Reply-To: <615bad5e-6e68-43c9-dd0b-f26d2832d52f@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 7 Mar 2021 22:39:18 +0200
Message-ID: <CAHp75Vc2iwvh1RiYmQDPSvgNvGT_gBcGTK67F+MhWgXyoxqn0A@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: HX3QR6ANCJI5ZQXPEAKYPV7NDQ3J7EY7
X-Message-ID-Hash: HX3QR6ANCJI5ZQXPEAKYPV7NDQ3J7EY7
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org, "Rafael J . Wysocki" <rafael@ker
 nel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/6] ACPI: scan: Extend acpi_walk_dep_device_list()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HX3QR6ANCJI5ZQXPEAKYPV7NDQ3J7EY7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Mar 7, 2021 at 3:36 PM Daniel Scally <djrscally@gmail.com> wrote:
> On 22/02/2021 13:34, Andy Shevchenko wrote:
> > On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
> >> The acpi_walk_dep_device_list() is not as generalisable as its name
> >> implies, serving only to decrement the dependency count for each
> >> dependent device of the input. Extend the function to instead accept
> >> a callback which can be applied to all the dependencies in acpi_dep_list.
> >> Replace all existing calls to the function with calls to a wrapper, passing
> >> a callback that applies the same dependency reduction.
> > The code looks okay to me, if it was the initial idea, feel free to add
> > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
>
>
> Thank you!
>
>
> >> + */
> >> +void acpi_dev_flag_dependency_met(acpi_handle handle)
> >> +{
> > Since it's acpi_dev_* namespace, perhaps it should take struct acpi_device here?
>
>
> I can do this, but I avoided it because in most of the uses in the
> kernel currently there's no struct acpi_device, they're just passing
> ACPI_HANDLE(dev) instead, so I'd need to get the adev with
> ACPI_COMPANION() in each place. It didn't seem worth it...but happy to
> do it if you'd prefer it that way?

I see, let Rafael decide then. I'm not pushing here.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
