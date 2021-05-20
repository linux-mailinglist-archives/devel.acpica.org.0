Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F1F38B7AD
	for <lists+devel-acpica@lfdr.de>; Thu, 20 May 2021 21:41:05 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D2D4B100ED4BA;
	Thu, 20 May 2021 12:41:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.175; helo=mail-oi1-f175.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DD647100EF271
	for <devel@acpica.org>; Thu, 20 May 2021 12:41:01 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id x15so17443642oic.13
        for <devel@acpica.org>; Thu, 20 May 2021 12:41:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K1iin/fsWDM3w5QyDMVs0rUZIL7VQZLTGcYt+0lEbCQ=;
        b=OzwCwPGBz/1d+sseMs/sLVLQPYPVJVuxVevNk2k0bM3FK5ODJVHWzY+pr9i0TqE3TX
         wNXQco9ZKHfbknfo6KAvxd/+Wwm4kO/Mg0V1qX4g7DIf9ehEs1/PslGFtm8EaH26c1/G
         kXdV+A6NM5nUqpBbKpG2CoibiiWUg11M4/qXs9QK3y6mmOYjPH5cbKnHiJ8hXF0ttOsR
         fOt4AsnB1GrZ6LR5BZ1hE/AEWFuVP0Q9TW0ilKNZE4LmrDo7+zIfvyXqoSb016BcYKrz
         FxqHTkuiYG9AF2eRrhtjtcKq34rXxf1+Y1uHU/2y16mpWf4oEgOVm56CujZjWrEjQAbM
         qq1A==
X-Gm-Message-State: AOAM533nec0IeSoHx+55s0YAwbOxmOpyJlFkjGFbG+ngoCNADPUjHOfv
	PCpLgZfUV7uYN/IcvZoVY0nzcCg/w2ph3tjq6x5M68UD
X-Google-Smtp-Source: ABdhPJwlLcanJ8ZpS/SGjqVaANYZucjsh3Cy2+yy0vt8wVmKq3yOMqnXSOAC2qLMGX83z3ynXSbHNO1JHSA7oR8D/po=
X-Received: by 2002:aca:380a:: with SMTP id f10mr4623632oia.157.1621539661194;
 Thu, 20 May 2021 12:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210519210253.3578025-1-andy.shevchenko@gmail.com> <CAJZ5v0in=qEtVULLF=RwBTiFqiRK-DyPfD4F6uUAqeUfPFB8QQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0in=qEtVULLF=RwBTiFqiRK-DyPfD4F6uUAqeUfPFB8QQ@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 20 May 2021 21:40:50 +0200
Message-ID: <CAJZ5v0hsDpGtLHPQvcnof3c1LBnhoZSwWyHJdj1mOov9gV_W8A@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: BAIWN44DPKHV7GBJCU6ERPMX6XPKTXMF
X-Message-ID-Hash: BAIWN44DPKHV7GBJCU6ERPMX6XPKTXMF
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Daniel Scally <djrscally@gmail.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: utils: Fix reference counting in for_each_acpi_dev_match()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BAIWN44DPKHV7GBJCU6ERPMX6XPKTXMF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 20, 2021 at 9:13 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Wed, May 19, 2021 at 11:19 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > Currently it's possible to iterate over the dangling pointer in case the device
> > suddenly disappears. This may happen becase callers put it at the end of a loop.
> >
> > Instead, let's move that call inside acpi_dev_get_next_match_dev().
>
> Not really.

OK, I see what you want to achieve and the macro is actually buggy,
because it leaves unbalanced references behind.

> > Fixes: 803abec64ef9 ("media: ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver")
> > Fixes: bf263f64e804 ("media: ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro")
> > Cc: Daniel Scally <djrscally@gmail.com>
> > Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> > Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> > ---
> >  drivers/acpi/utils.c                       | 5 +----
> >  drivers/media/pci/intel/ipu3/cio2-bridge.c | 8 +++-----
> >  include/acpi/acpi_bus.h                    | 5 -----
> >  3 files changed, 4 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> > index 3b54b8fd7396..ccfc484dbffd 100644
> > --- a/drivers/acpi/utils.c
> > +++ b/drivers/acpi/utils.c
> > @@ -846,10 +846,6 @@ EXPORT_SYMBOL(acpi_dev_present);
> >   * Return the next match of ACPI device if another matching device was present
> >   * at the moment of invocation, or NULL otherwise.
> >   *
> > - * FIXME: The function does not tolerate the sudden disappearance of @adev, e.g.
> > - * in the case of a hotplug event. That said, the caller should ensure that
> > - * this will never happen.
> > - *
> >   * The caller is responsible for invoking acpi_dev_put() on the returned device.
> >   *
> >   * See additional information in acpi_dev_present() as well.

But the kerneldoc really needs to say that the caller is required to
obtain a reference on adev before passing it here, because that
reference will be dropped and the object pointed to by adev may not be
present any more after this returns.

> > @@ -866,6 +862,7 @@ acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const cha
> >         match.hrv = hrv;
> >
> >         dev = bus_find_device(&acpi_bus_type, start, &match, acpi_dev_match_cb);
> > +       acpi_dev_put(adev);
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
