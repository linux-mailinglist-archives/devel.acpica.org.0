Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF4323A54
	for <lists+devel-acpica@lfdr.de>; Wed, 24 Feb 2021 11:19:04 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C5469100ED497;
	Wed, 24 Feb 2021 02:19:02 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::102a; helo=mail-pj1-x102a.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 81386100ED48C
	for <devel@acpica.org>; Wed, 24 Feb 2021 02:19:00 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id e9so1021779pjj.0
        for <devel@acpica.org>; Wed, 24 Feb 2021 02:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CyAgtAxbZSz5TjO0QrS9a/JZ7lSqpNFqKx9CvuOfolU=;
        b=SFyeNZOjWwj5VNwoK2BpNeiF1wvIOVGKHoHFTqBEdqJtQLQjQ9cFI60KEU1Vup1uss
         H0CEQFBZM5llOd5BqAiaC6gFPsTAqlryXZr7iEg64o6g3fLkujAwr+84ebWT7a/ji3zK
         nXwiAvPAyabuqt3Lgn3NxW2gEYjt029mJ9iDBcRjg0hUANkv7hX7O/eocB/r2QdbAv34
         PjfLude/s3EsmrhipPVpkTy6VNHKrFInp/Xyxj6QjoQW3wTo/YeTm4RVMsToNyXjvafQ
         bn4LzRpBinDvH6EUJFfAn/BUUvU4c2tBly49mhmwuO3tMojMWi8TKWZSfv4Xe0velXiT
         zJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CyAgtAxbZSz5TjO0QrS9a/JZ7lSqpNFqKx9CvuOfolU=;
        b=bNDcIxLxKhh7XYTvXB45bLk8Ll9eexgZ0wIdLF8SmCLj/6zzqnu8MamKV7PWaQZkyv
         L42lkKGXu2zgUjRvbCHOXSF0b9OqsY8mDu/S1Wiue4iiEW4NqRGs2j01JTkCG5RQiCu3
         18ptV6wYPb9KiAcnXYUq2mwJ2hJRP7OR0Vv+i7irjF2pim/uZPh/qiIw+W3i30j4bApY
         y3L1jCejK7qgGlhb2eRNTILrIyU5Sa/jYmGkGRwYqjnNdQgZPxXcDIBrTukkF+p1sqHI
         sPLkq0ewjzIR8d3XWmudUyvG4Pa8dhLhhGttr2eFxmiQQj6FixjceFrZ/p+cyPSgq34y
         thyg==
X-Gm-Message-State: AOAM5305jrWNhunT+vqFRWsbmy9S6dLP44ppZtGI0PVmGAfkuXmgISl5
	I1LWkPp+B8zKSlNrzs5wHXFBNIsWkXSo3MbKwkA=
X-Google-Smtp-Source: ABdhPJxHizC3BBBdDOL7UeQDEUrN0E/2BsdHrlRZd2QwjG+jELlRm5NW5VFWG+FR8i3DVcYUauiJeyQPDcSTp4saJi8=
X-Received: by 2002:a17:90a:4fc1:: with SMTP id q59mr3929876pjh.129.1614161939621;
 Wed, 24 Feb 2021 02:18:59 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-6-djrscally@gmail.com>
 <YDVfyt2d2Nhsa7l3@pendragon.ideasonboard.com> <1360fc85-3f39-1dce-eee9-c4e76c2087ae@gmail.com>
 <YDYmv0PpSndAlnDC@pendragon.ideasonboard.com>
In-Reply-To: <YDYmv0PpSndAlnDC@pendragon.ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 24 Feb 2021 12:18:43 +0200
Message-ID: <CAHp75VcKUjnwh4fi-mofooBuBYiqXjXOspU4twKg6-Lfvzf=QA@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID-Hash: 5AJ43LJ2B7UUHFCLBBBR7MEXDGWKD55Y
X-Message-ID-Hash: 5AJ43LJ2B7UUHFCLBBBR7MEXDGWKD55Y
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Daniel Scally <djrscally@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, andy.shevchenko@linux.intel.com, kieran.bingham+renesas@ideasonboard.com, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 5/6] platform/x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5AJ43LJ2B7UUHFCLBBBR7MEXDGWKD55Y/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 24, 2021 at 12:16 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tue, Feb 23, 2021 at 10:36:18PM +0000, Daniel Scally wrote:
> > On 23/02/2021 20:04, Laurent Pinchart wrote:

...

> > >> +  get_device(&int3472->sensor->dev);
> > >
> > > I see no corresponding put_device(), am I missing something ? I'm also
> > > not sure why this is needed.
> >
> > The put is acpi_dev_put() in skl_int3472_discrete_remove(); there seems
> > to be no acpi_dev_get() for some reason. We use the sensor acpi_device
> > to get the clock frequency, and to fetch the sensor module string, so I
> > thought it ought to hold a reference on those grounds.
>
> Shouldn't acpi_dev_get_dependent_dev() increase the reference count
> then, instead of doing it manually here ?

That's what I expected as well.
We have plenty of acpi_dev_get_*() and they do increase the reference
counter one way or the other.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
