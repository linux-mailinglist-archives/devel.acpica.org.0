Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8CD3AA2E8
	for <lists+devel-acpica@lfdr.de>; Wed, 16 Jun 2021 20:08:34 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9E715100EBBD7;
	Wed, 16 Jun 2021 11:08:32 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::434; helo=mail-pf1-x434.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8B436100EBBBD
	for <devel@acpica.org>; Wed, 16 Jun 2021 11:08:30 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id u18so2826207pfk.11
        for <devel@acpica.org>; Wed, 16 Jun 2021 11:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6ycID7DbnSZP9eaDdKUdtHxmB+2/7XuKoHI3CIq/KZU=;
        b=Jusjd8nRH1tNzqbReIyRyGMqdNOZovEla8AilFx6u2cRXOUefONqtH9QpYSdpHp3u+
         3+Vd0OqbzSyY/oNBvhzpfDvCobe4xCjl3J+EiSn+bCHq9Vv7xpC52u85U5i4MYpxl94J
         cr0vR3tVDddfem3jhtkQh1m6cYHCmdRbHoSrQfLyakbg+PYxBG6iE7MVET2hnKABr3MM
         XtCI7TOy4jZrIsCCpbHaIC0hSuJMoyTxuqe4dA8UqiVBhXPrBZToVXJ/XsFZahvdvUtU
         okUOsnkEuh4UZeS44dMwNFAoWjlMGsjKemltQ5vmZvC0yihNdlbajQ0zOkJS9zXE/feB
         BJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6ycID7DbnSZP9eaDdKUdtHxmB+2/7XuKoHI3CIq/KZU=;
        b=Ft60Z+Io+ywzj5wCr8C5Jf4Wtv5NbitdQAnhc89+Za/AQ2AxsZOpa4DCdEfJyNgf3B
         KEx0wtovMtyUVZkJXpNgJJrFuGGZhXsqgVE9DXRYXyhHCBfdeTyWTJrgsgiRryBmSpml
         kCQknWKVUDox90qyho5qK+QR2k6KuGFJ+/SwTaRUEFKs2P5yKzbMoc4U2jcjknWfdisz
         WgkxZOdyaAY+A6cTN/lENhEd+bTJaQs04bYFuGWrGMTi4Prk8IQAyt6hqI1ro+Vtwt4Y
         uxFurtZYN/YpppR+ClN+lZK2rYTeOKSGg97Zs+/6NeYu5XFqIDmQ1XhRsmuYVuHsKBBk
         wpuA==
X-Gm-Message-State: AOAM531XLXixEf2wLSDx6mhOrc/70I6EYakG4sJcwm9Xh8qw2Urul0m0
	rgUqcDOmtaGOM0fyXBZRVnAxJyHTjKmAlcaphuo=
X-Google-Smtp-Source: ABdhPJw1QqhinOwO4jllcnvXxgpVFMS7su2PcbZWi0JnPyMT+n+Bj40r0AGZmLY6UjTJJqLlDf8lVpVVfdQrNbCTlz0=
X-Received: by 2002:a63:4145:: with SMTP id o66mr889626pga.4.1623866907518;
 Wed, 16 Jun 2021 11:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210603224007.120560-1-djrscally@gmail.com> <20210603224007.120560-6-djrscally@gmail.com>
 <ea322abe-fa78-bbc3-b4c5-b372a4f28235@redhat.com>
In-Reply-To: <ea322abe-fa78-bbc3-b4c5-b372a4f28235@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 16 Jun 2021 21:08:11 +0300
Message-ID: <CAHp75VccZbv8+u-jO8wYSsyQrw+Bd_zeDa==aiTvkh=fteuT3w@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: FR2J6W3HNTDUQ27H6GJXNP6P6HE6IUAI
X-Message-ID-Hash: FR2J6W3HNTDUQ27H6GJXNP6P6HE6IUAI
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Daniel Scally <djrscally@gmail.com>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Lee Jones <lee.jones@linaro.org>, Maximilian Luz <luzmaximilian@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kieran.bingham@ideasonboard.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 5/6] platform/x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FR2J6W3HNTDUQ27H6GJXNP6P6HE6IUAI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jun 16, 2021 at 8:58 PM Hans de Goede <hdegoede@redhat.com> wrote:
> On 6/4/21 12:40 AM, Daniel Scally wrote:
> > ACPI devices with _HID INT3472 are currently matched to the tps68470
> > driver, however this does not cover all situations in which that _HID
> > occurs. We've encountered three possibilities:
> >
> > 1. On Chrome OS devices, an ACPI device with _HID INT3472 (representing
> > a physical TPS68470 device) that requires a GPIO and OpRegion driver
> > 2. On devices designed for Windows, an ACPI device with _HID INT3472
> > (again representing a physical TPS68470 device) which requires GPIO,
> > Clock and Regulator drivers.
> > 3. On other devices designed for Windows, an ACPI device with _HID
> > INT3472 which does **not** represent a physical TPS68470, and is instead
> > used as a dummy device to group some system GPIO lines which are meant
> > to be consumed by the sensor that is dependent on this entry.
> >
> > This commit adds a new module, registering a platform driver to deal
> > with the 3rd scenario plus an i2c driver to deal with #1 and #2, by
> > querying the CLDB buffer found against INT3472 entries to determine
> > which is most appropriate.
> >
> > Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Daniel Scally <djrscally@gmail.com>
>
> Thank you for your patch, I've applied this patch to my review-hans
> branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans
>
> I've fixed up the missing static marking of skl_int3472_tps68470_calc_type()
> spotted by lkp@intel.com while applying the patch to my tree.

Are you going to apply patch 6 as well?
IIRC it's acked by Lee.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
