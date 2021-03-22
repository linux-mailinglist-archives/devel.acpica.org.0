Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E55CD344ABD
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Mar 2021 17:11:57 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6AC11100EBB97;
	Mon, 22 Mar 2021 09:11:56 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5764F100EBB90
	for <devel@acpica.org>; Mon, 22 Mar 2021 09:11:54 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id f17so6841430plr.0
        for <devel@acpica.org>; Mon, 22 Mar 2021 09:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pAU3XotYk58Jx3jm/EY+lIpeD0VVnlHINJxwS0to0ow=;
        b=MjrWk4Nf2w599QoKZVGXVoIdEkJXAmYHD1r5rpULNqXSqsth3SMc05mwf/y2mdPhyP
         WeBKBRWdjJG9j1LYPogCCY8OOeCYVDyoF6qpW7MbLZYcjRhfO6DWKqAZ0htJJ8LsBqxS
         P8YDqeV+Vm8ZzmCrFP9B8UMO2EmE26f0+6vtDPn5y69mH3GILHGqbQ/MaFjMlraSza/r
         dX9HX9czW5dx9DIViv0yqVcUfZEDRkFQI0Q0eiamPu90DF16UKvw29ruj9MMNu0tXz86
         gYVmqSXTIGJp6hZJeG3DgRj+pZB9wUwgovVAW5/doJFGs6huRaYx9krzHt9hankd/LCM
         UQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pAU3XotYk58Jx3jm/EY+lIpeD0VVnlHINJxwS0to0ow=;
        b=OczN6r41pjv9c+erwUC3uVs/x8ceKpatuF6x0FGefHN2YWcgyilAA1ff3hBFTozquo
         CSqvif00aZ6RPoY7Gp7pLCpUjdNMJrxjk1J9CLZ7dkIw5vxXd2KuGNZwZuI5E5i149SV
         cq9GaxE2f1IIyJfDJR+rbmzOPPDAM9uZzPuhBeSh+HInLzGnvuFtQF6fpECLLI6rv/G+
         NtxnR0Ht1lgv0cExPb3Pg0wflFYl+6BAAq33GkpxICPBo3Vuvn/56KAvUNkPOFs4L1M1
         tJNkeVCelU1wmklgceO0wxbwS7te5qrkJbtYPb6DqxGY2IlD13d/Ab66bQ8CTxp7VVXn
         Oj2A==
X-Gm-Message-State: AOAM533+XUl3Um2RDRYvZL9c37LASnk/gkTgZyplsQzsP2s7xYVCC3IR
	MsSxCagTkyTa6LOZGWz9poXlC77w2KyLL68qf0qIbf7qyH6bdA==
X-Google-Smtp-Source: ABdhPJxZCChRf15y2Mrhxu/vyAfrOe8t8ssIghi60IQuYY2W2vCY68wBeuMslVoVb3bQJZ8ZnMWl5qAvbncDaOOpFA4=
X-Received: by 2002:a17:90a:e454:: with SMTP id jp20mr99609pjb.129.1616429513936;
 Mon, 22 Mar 2021 09:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210319192109.40041-1-andriy.shevchenko@linux.intel.com>
 <CAJZ5v0gcqKiXKzEj6u7vq_1Y9pYBdSGA6yT3q6JPVgW4djSiaQ@mail.gmail.com>
 <CAHp75VeVhHhkzPVdGRa9inLJtW0QF=dDp3jB-U1xvKWRY_pbyw@mail.gmail.com> <CAJZ5v0gxjCiP-XbvLkHZiewjMhpR6KdJFapjV_-F05Uc_G7tqQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0gxjCiP-XbvLkHZiewjMhpR6KdJFapjV_-F05Uc_G7tqQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Mar 2021 18:11:37 +0200
Message-ID: <CAHp75VeC2MUEQTQnZMb96sz+P7gQVUPtds9CfxFf9t7rOVeXRg@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID-Hash: EQDPTLGDVBUSNGS3WEZMMYJ72OY5Q42R
X-Message-ID-Hash: EQDPTLGDVBUSNGS3WEZMMYJ72OY5Q42R
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/1] ACPI: scan: Use unique number for instance_no
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EQDPTLGDVBUSNGS3WEZMMYJ72OY5Q42R/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 22, 2021 at 5:42 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> On Mon, Mar 22, 2021 at 4:02 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Mon, Mar 22, 2021 at 4:57 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > On Fri, Mar 19, 2021 at 8:21 PM Andy Shevchenko
> > > <andriy.shevchenko@linux.intel.com> wrote:
> > > >
> > > > The decrementation of acpi_device_bus_id->instance_no
> > > > in acpi_device_del() is incorrect, because it may cause
> > > > a duplicate instance number to be allocated next time
> > > > a device with the same acpi_device_bus_id is added.
> > > >
> > > > Replace above mentioned approach by using IDA framework.
> >
> > ...
> >
> > > > +       result = ida_simple_get(&acpi_device_bus_id->instance_ida, 0, 255, GFP_KERNEL);
> > >
> > > This is ida_alloc_range(ida, start, (end) - 1, gfp), so I think it
> > > should be 256 above, instead of 255.
> >
> > Ah, good catch!
> >
> >
> > > While at it, though, there can be more than 256 CPU devices easily on
> > > contemporary systems, so I would use a greater number here.  Maybe
> > > 4096 and define a symbol for it?
> >
> > I was thinking about it, but there is a problem with the device name,
> > since it will break a lot of code,
>
> What problem is there?

If we have only 2 digits, but you are right, we have _at least_ two digits.

> > And taking into account that currently we don't change the behaviour
> > it is good enough per se as a fix.
> >
> > That said, we may extend by an additional patch with a logic like this:
> >
> > res = ida_get(4096)
> > if (res < 0)
> >   return res;
> > if (res >= 256)
> >  use %04x
> > else
> >  use %02x
> >
> > Would it make sense to you?
>
> I'm not sure why not to always use %02x ?  It doesn't truncate numbers
> longer than 2 digits AFAICS.

Yeah, should work. Thanks for review, I'll send a new version soon.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
