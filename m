Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0B034487C
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Mar 2021 16:02:52 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E760B100EBB82;
	Mon, 22 Mar 2021 08:02:50 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::52b; helo=mail-pg1-x52b.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 9E752100EBB80
	for <devel@acpica.org>; Mon, 22 Mar 2021 08:02:49 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id e33so8792971pgm.13
        for <devel@acpica.org>; Mon, 22 Mar 2021 08:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gevBJGtuhfbcYhKJ9JR81B9fz9ohjjKDV5B4FvK7CJ4=;
        b=mLX/Ev+jbyaa2D0U8NpOi89oc8T/SNEr9n0az6f6tsV7CGP2NDNQEL66wLtajWGbTJ
         35RnbrNwrxAwyIThGp9vz+i3IQD8jPthfUJO1oBHZBs4t3lx2v666iiVhbuN3QG+2r5X
         8MXYK06e/+X1/tGhflAqo6u0fjU6BJKIxhZz8QCV1xJj2D8pF2xzwHw0RM6fEVScRYVU
         DAkZS7jGkoOf+cHjBvZt5h6wR2/p5QZRP67EDIaEihdxy1rTMCW3nOPOqo+lkGgMsICM
         D+9US0mS1nEDNRFED2NV5qaXIGalo9MmeCdjNCmrItCSigGDtM3oXEXlla+DI6bafxUL
         +iBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gevBJGtuhfbcYhKJ9JR81B9fz9ohjjKDV5B4FvK7CJ4=;
        b=hAJZzGSKCDCSTEU62JxnvFWub2/w9SkegY+2C4h1Py5zaRyY9DZi6wUs4/pfw/4aRa
         z2Ltf9xkx0Y42axc8PimlHFdwhhwmspUaaQbc623h7I14Dfn1lHvUOGsoxy/owusP1+J
         L/3Bb0fiRmhxDvsbMZuAIEAvUaC8j1Jx0Oaxa3sQAnC3kU/zt/Rn8tGc6gHUCauPMX0Q
         a8sBq1as+l2VkYaPDBfrbyApPSXybq5XObe7b6ISFWzGgP033UomgAWOOhy5xd0bL4mr
         5v/0pIc95vZ7ZhDOxE17pmrxDQz6m3KE1x+OuNwAn5Y3HOBzG0tXnxjMgkbK5dYPc5Xr
         4gmg==
X-Gm-Message-State: AOAM532hQXbm+Un4WUIulUKIclABhQu6qKTN5fh2uovc1T2UUS1Ng1ht
	qQTNZt83/hSmqd9KteFFwwEsRleg9JKbkEwulGk=
X-Google-Smtp-Source: ABdhPJz3Rhyw6UesM6IMn2STqQuI0esZDTE13C/dJ1f1Tt/1J+jY3/29L9dLOxZ3n1aTuiiDdf+p2oj3yY6GGn4y/rU=
X-Received: by 2002:a63:ce15:: with SMTP id y21mr77083pgf.4.1616425369102;
 Mon, 22 Mar 2021 08:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210319192109.40041-1-andriy.shevchenko@linux.intel.com> <CAJZ5v0gcqKiXKzEj6u7vq_1Y9pYBdSGA6yT3q6JPVgW4djSiaQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0gcqKiXKzEj6u7vq_1Y9pYBdSGA6yT3q6JPVgW4djSiaQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Mar 2021 17:02:33 +0200
Message-ID: <CAHp75VeVhHhkzPVdGRa9inLJtW0QF=dDp3jB-U1xvKWRY_pbyw@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID-Hash: TQHFOTPE4IEHHNPVJKQEUCAVM2L6YVIF
X-Message-ID-Hash: TQHFOTPE4IEHHNPVJKQEUCAVM2L6YVIF
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/1] ACPI: scan: Use unique number for instance_no
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TQHFOTPE4IEHHNPVJKQEUCAVM2L6YVIF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 22, 2021 at 4:57 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Fri, Mar 19, 2021 at 8:21 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > The decrementation of acpi_device_bus_id->instance_no
> > in acpi_device_del() is incorrect, because it may cause
> > a duplicate instance number to be allocated next time
> > a device with the same acpi_device_bus_id is added.
> >
> > Replace above mentioned approach by using IDA framework.

...

> > +       result = ida_simple_get(&acpi_device_bus_id->instance_ida, 0, 255, GFP_KERNEL);
>
> This is ida_alloc_range(ida, start, (end) - 1, gfp), so I think it
> should be 256 above, instead of 255.

Ah, good catch!


> While at it, though, there can be more than 256 CPU devices easily on
> contemporary systems, so I would use a greater number here.  Maybe
> 4096 and define a symbol for it?

I was thinking about it, but there is a problem with the device name,
since it will break a lot of code,
And taking into account that currently we don't change the behaviour
it is good enough per se as a fix.

That said, we may extend by an additional patch with a logic like this:

res = ida_get(4096)
if (res < 0)
  return res;
if (res >= 256)
 use %04x
else
 use %02x

Would it make sense to you?


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
