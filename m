Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5362C3027BE
	for <lists+devel-acpica@lfdr.de>; Mon, 25 Jan 2021 17:25:27 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D61A2100EBBA0;
	Mon, 25 Jan 2021 08:25:25 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.45; helo=mail-oo1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 125D3100EC1F9
	for <devel@acpica.org>; Mon, 25 Jan 2021 08:25:23 -0800 (PST)
Received: by mail-oo1-f45.google.com with SMTP id u7so2790339ooq.0
        for <devel@acpica.org>; Mon, 25 Jan 2021 08:25:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eFwTq+OScXIcVonxGOjBlHjUqwMYEvu6XWhum3jN8NI=;
        b=Y2rmmxlHLz6aOYuwHS0AAFsCAn7VO/dC3QFcMUt7pPBokEHi/YpGvfQ4WlBA8FxPxB
         NSDmVq+22a4ETaB46kgtzmGvxz4IscaUjI8D5zmV8hpHpEKOYyhJPwweGnvBdwEGSZP1
         HERvIcdf6m2EwfvqqZ416BCZNvvTc6BbSLDR/x581LYwrMNF1pwHBvhvrIX6FawWyn8M
         xueA1LvFr1GniA3w7g7r9st4SHntzA8oEDHsHI9BDnp6QHmaFBZ262N7dUV13EBGZb13
         Ad+Ci0bPKtFKLRghqpgNDj/zRTWHUWXMnFgDuAiD6sdXlX7m5uM9aOt1PdGDImvNajGG
         ElUA==
X-Gm-Message-State: AOAM533rvnzixUfWP0XyAVHC8VTmoRYxzHSrOyMUninvtSZ0dTk7iHrY
	jvJOek9STjrc68dbH0TvW+RKYYNZuuqjWHsnge8=
X-Google-Smtp-Source: ABdhPJw94FS2sVkIv7zvr5rZNd8U07Htu+OFlLA4/p6peeom+asbQeBkITEoCKvoQ4I4CyzSQUvYE2e5xtNUlRgxMmc=
X-Received: by 2002:a4a:9873:: with SMTP id z48mr1015923ooi.44.1611591922626;
 Mon, 25 Jan 2021 08:25:22 -0800 (PST)
MIME-Version: 1.0
References: <87blkbx1gt.fsf@gmx.net> <CAJZ5v0j86pX_a4bSLP=sobLoYhfQYV9dWL8HHf2941kXgND79g@mail.gmail.com>
 <CAJZ5v0j7i86twMS+csYMaetUkvqjof4FD2GRNoZ_AN=SBF7F1w@mail.gmail.com>
 <9709109.MH8tSaV5v9@kreacher> <87eej0iuf0.fsf@gmx.net> <87wnw278ds.fsf@gmx.net>
In-Reply-To: <87wnw278ds.fsf@gmx.net>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 25 Jan 2021 17:25:11 +0100
Message-ID: <CAJZ5v0ihGfW=8PRXZgLVMfwOCVJQQh=Kc+htqbYhBFvxgfYuZQ@mail.gmail.com>
To: Stephen Berman <stephen.berman@gmx.net>
Message-ID-Hash: V6DJ3JVV23T47N2GVXJXEG3WXCRBIXUI
X-Message-ID-Hash: V6DJ3JVV23T47N2GVXJXEG3WXCRBIXUI
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Erik Kaneda <erik.kaneda@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/V6DJ3JVV23T47N2GVXJXEG3WXCRBIXUI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jan 24, 2021 at 2:49 PM Stephen Berman <stephen.berman@gmx.net> wrote:
>
> On Mon, 04 Jan 2021 16:38:43 +0100 Stephen Berman <stephen.berman@gmx.net> wrote:
>
> > On Thu, 31 Dec 2020 21:46:11 +0100 "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> >
> >> ATM, I'm tempted to do something like the patch below (with the rationale
> >> that it shouldn't be necessary to read the temperature right after updating
> >> the trip points if polling is in use, because the next update through polling
> >> will cause it to be read anyway and it will trigger trip point actions as
> >> needed).
> >>
> >> Stephen, can you give it a go, please?
> >
> > On Sat, 02 Jan 2021 12:03:17 +0100 "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> >
> >> There is one more way to address this, probably better: instead of checking the
> >> temperature right away in acpi_thermal_notify(), queue that on
> >> acpi_thermal_pm_queue
> >> and so only if another thermal check is not pending.
> >>
> >> This way there will be at most one temperature check coming from
> >> acpi_thermal_notify() queued up at any time which should prevent the
> >> build-up of work items from taking place.
> >>
> >> So something like this:
> >
> > Thanks for the patches.  I'll try them as soon as I can.
>
> FTR, since this is the thread I started for this bug, I've confirmed in
> https://lore.kernel.org/lkml/87y2gi78sg.fsf@gmx.net/T/#t that the latest
> patch fixes the bug.

OK, thanks!

The patch has been applied as 5.11-rc material.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
