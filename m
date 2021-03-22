Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A49034496F
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Mar 2021 16:42:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7FA3E100EBB8F;
	Mon, 22 Mar 2021 08:42:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.44; helo=mail-ot1-f44.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5F070100EBB8F
	for <devel@acpica.org>; Mon, 22 Mar 2021 08:42:51 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so16370889ote.6
        for <devel@acpica.org>; Mon, 22 Mar 2021 08:42:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8GP3lCJZc4gYGIls7XWVDwUQAFlT0Yz/pnrig4GIvJM=;
        b=WNcQitxi5Hzdz0jlX05P27kihXTNBxvio7EBGl9tOs+EhQRPt64QbOJbWWoUNFt/W5
         zSdvy9H7s0Tr0THOyy6+DXIHI9R6fiCwZMugHmlW1trejh/NoTOu6f1Mq/188PoesX2p
         fdJFmOd2bk0Ip/xnhYmRCxcwoasYMHnsl5uCphrHqgXTBWGzyGx+PLXqapDHIUrhwvH2
         Rvk6S3jzhdf0Eq8w4YTQwgSeoEsm4aLlO0evyh8HBkS2WNOWO6ytL5VqdNcEu0fCtmux
         7rypGPQSd3HL5g7njP6xKDAh8sU2yhsfp/ueVPLgNpNlgZnov5toV37qW4ZgXU1yXzgN
         QMkw==
X-Gm-Message-State: AOAM532PdUrJ6mYrapel7lsMvcjKM4hDrtOe7K2OpbDi8XAYepEXNn3k
	E4Q+Es0C/uDjSenqdaJWE+78O8lglWQY3QasMaoEpVce
X-Google-Smtp-Source: ABdhPJzV3qz+83jdENbJnKRS5X9R2Xx3meuFt+kw4JkvZXceQED7OUkKom4tKE5IzgVwB0ykTAQZ5+/T6SW+te4d1lk=
X-Received: by 2002:a05:6830:20d2:: with SMTP id z18mr458297otq.260.1616427770673;
 Mon, 22 Mar 2021 08:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210319192109.40041-1-andriy.shevchenko@linux.intel.com>
 <CAJZ5v0gcqKiXKzEj6u7vq_1Y9pYBdSGA6yT3q6JPVgW4djSiaQ@mail.gmail.com> <CAHp75VeVhHhkzPVdGRa9inLJtW0QF=dDp3jB-U1xvKWRY_pbyw@mail.gmail.com>
In-Reply-To: <CAHp75VeVhHhkzPVdGRa9inLJtW0QF=dDp3jB-U1xvKWRY_pbyw@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 22 Mar 2021 16:42:39 +0100
Message-ID: <CAJZ5v0gxjCiP-XbvLkHZiewjMhpR6KdJFapjV_-F05Uc_G7tqQ@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: H7YBUMMIVNUB5PKWDP6E2RUE44B2N455
X-Message-ID-Hash: H7YBUMMIVNUB5PKWDP6E2RUE44B2N455
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/1] ACPI: scan: Use unique number for instance_no
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/H7YBUMMIVNUB5PKWDP6E2RUE44B2N455/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 22, 2021 at 4:02 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, Mar 22, 2021 at 4:57 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> >
> > On Fri, Mar 19, 2021 at 8:21 PM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > >
> > > The decrementation of acpi_device_bus_id->instance_no
> > > in acpi_device_del() is incorrect, because it may cause
> > > a duplicate instance number to be allocated next time
> > > a device with the same acpi_device_bus_id is added.
> > >
> > > Replace above mentioned approach by using IDA framework.
>
> ...
>
> > > +       result = ida_simple_get(&acpi_device_bus_id->instance_ida, 0, 255, GFP_KERNEL);
> >
> > This is ida_alloc_range(ida, start, (end) - 1, gfp), so I think it
> > should be 256 above, instead of 255.
>
> Ah, good catch!
>
>
> > While at it, though, there can be more than 256 CPU devices easily on
> > contemporary systems, so I would use a greater number here.  Maybe
> > 4096 and define a symbol for it?
>
> I was thinking about it, but there is a problem with the device name,
> since it will break a lot of code,

What problem is there?

> And taking into account that currently we don't change the behaviour
> it is good enough per se as a fix.
>
> That said, we may extend by an additional patch with a logic like this:
>
> res = ida_get(4096)
> if (res < 0)
>   return res;
> if (res >= 256)
>  use %04x
> else
>  use %02x
>
> Would it make sense to you?

I'm not sure why not to always use %02x ?  It doesn't truncate numbers
longer than 2 digits AFAICS.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
