Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F552CC52D
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Dec 2020 19:31:38 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3A56C100EBB71;
	Wed,  2 Dec 2020 10:31:37 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.46; helo=mail-ot1-f46.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D6259100EBB6B
	for <devel@acpica.org>; Wed,  2 Dec 2020 10:31:34 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id x15so2570277otp.4
        for <devel@acpica.org>; Wed, 02 Dec 2020 10:31:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B4i9VFRUD3xARLzYQEJLNB6JhqamFut8iCJ5lNpUlk4=;
        b=dPI6b3l/WVI6UGwKOS5S1cbqixtePMicoEM2VNXgP4bU4zQpSLzSZgLgAQY2Hg7mSI
         EblVTTx4EOMdAkuVOXpke0PuQLmPs4gVHujn9/SauTJ9Qf/Zgm7YblipPvWMQXQoI1rR
         Lbp0MWdP77SrYwpndjiqV6cGwood32nRLeJM4xQUOt+Nvh162HDvCzoKjmee/oIgi/h1
         3WuH4UYO6EBArqua/owaaIKEZWwaN7hTG3TbiBgZ64wGGjWlFwzZfPdIS3TILVW4rPgm
         Y9Egg2iIvBRw8srAinPk2KhNELZ4S9/vfD0n+kLktKySyk0bOD6r4WpIJLTehLz9Tbr+
         sg4Q==
X-Gm-Message-State: AOAM5306In+GNaVarH8kQ77W5I9OHNWzFPQ1/yxBDojHZ2v0scY7l3WL
	tQ24EELyO8cThlint7sJyEY1xONrXocKUxkQ4lk=
X-Google-Smtp-Source: ABdhPJxpvRp8VsnzKDL27mVBm4pcDuSz96iERvdj7q3h3vU8KuTGbZbDzV61PT2USI8W+btbuSQjQw8l/wqoA9qDaTM=
X-Received: by 2002:a9d:745a:: with SMTP id p26mr2455710otk.206.1606933893884;
 Wed, 02 Dec 2020 10:31:33 -0800 (PST)
MIME-Version: 1.0
References: <87blkbx1gt.fsf@gmx.net> <87imdp5r80.fsf@rub.de>
 <20200811132955.wbt55ns7bu5mxouq@linutronix.de> <CAJZ5v0h+n9VCz5=VixVbe_b=ZbTU3D=46stGhE9z7Y7yaUMJzw@mail.gmail.com>
 <20200811152551.dmfw46urecbmeklr@linutronix.de> <87ft8tayic.fsf@gmx.net>
 <20200811184902.2fm4eyprmpkfon2j@linutronix.de> <20201006214927.4nsqtfji4fdv3oed@linutronix.de>
 <3fc9074b-c153-8446-0289-1e4dfab395eb@intel.com> <20201026172057.h5toqoobiyhc4g3g@linutronix.de>
 <20201202180350.kwmgfzkom7v7bzjg@linutronix.de>
In-Reply-To: <20201202180350.kwmgfzkom7v7bzjg@linutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 2 Dec 2020 19:31:21 +0100
Message-ID: <CAJZ5v0j86pX_a4bSLP=sobLoYhfQYV9dWL8HHf2941kXgND79g@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID-Hash: E66FCOMRLXXVU7FLG4SM25PDOQMUYDH2
X-Message-ID-Hash: E66FCOMRLXXVU7FLG4SM25PDOQMUYDH2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Berman <stephen.berman@gmx.net>, Erik Kaneda <erik.kaneda@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/E66FCOMRLXXVU7FLG4SM25PDOQMUYDH2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Dec 2, 2020 at 7:03 PM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2020-10-26 18:20:59 [+0100], To Rafael J. Wysocki wrote:
> > > > > > Done as Bug 208877.
> > > > Rafael, do you have any suggestions?
> > >
> > > I've lost track of this sorry.
> > >
> > > I have ideas, let me get back to this next week.
> >
> > :)
>
> Rafael, any update? If you outline an idea or so then I may be able to
> form a patch out of it. Otherwise I have no idea how to fix this - other
> than telling the driver to not poll in smaller intervals than
> 30secs.

The idea, roughly speaking, is to limit the number of outstanding work
items in the queue (basically, if there's a notification occurring
before the previous one can be handled, there is no need to queue up
another work item for it).
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
