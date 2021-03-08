Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A6D331272
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Mar 2021 16:45:27 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 84A9F100EBB6F;
	Mon,  8 Mar 2021 07:45:25 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.45; helo=mail-ot1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D5BB2100EBB6B
	for <devel@acpica.org>; Mon,  8 Mar 2021 07:45:23 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id e45so9577898ote.9
        for <devel@acpica.org>; Mon, 08 Mar 2021 07:45:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mbsT3/Ouni6Vb8m0SK7QpZ24XnBIwdODUDVR1OBNjiQ=;
        b=himP107Q/Je7u27tkLEYFOFsQEdGDDROuXU5RGlXjCPftOinw839VoP9wnnjQpf5H+
         jglJXeNxLq7zPcfpmxhH/9ezo3KKiKXHYMm8267QP/aNxshnZ/FX1kcgAWTxaMOrwQkJ
         JzULXVRwrRVlWtd8mavmdzsqlyma6IlIKdEX3yusmIxk1XmRk2plIQnMseyOVFwKRfHc
         l/FHN/bfvccmpECj+AP+qzfEZ7SmfhjcNg4L1+yEvJR3tfPUChmrVH8jeWQH40unziQG
         /6Mon6q2Erdcs/ZhjSKdvIC7ZiFMceU7HT6xmkP99WgVWlG9rNLAOFVvSDl9fOa45Cq8
         jScQ==
X-Gm-Message-State: AOAM532w50NcToEJFz8QKrv9GeDBFf6Ed1BO1pJKUI50Som5kEpYLTp1
	vDDN4H0pSxviJE5D35UXeRk0LpH5g36KMV77uCc=
X-Google-Smtp-Source: ABdhPJyYRGPWxgE1CdRhcwvN59TkRBBYu/cz9uZ2p7vV3ktihFVU1XAMr9A7W3yNtRhrv5M+i/rFQDQrAZWoYS3O4Sg=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr9783834otr.321.1615218322615;
 Mon, 08 Mar 2021 07:45:22 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-2-djrscally@gmail.com>
 <CAHp75VfPuDjt=ZfHkwErF7_6Ks6wpqXO8mtq-2KjV+mU_PXFtg@mail.gmail.com>
 <615bad5e-6e68-43c9-dd0b-f26d2832d52f@gmail.com> <CAHp75Vc2iwvh1RiYmQDPSvgNvGT_gBcGTK67F+MhWgXyoxqn0A@mail.gmail.com>
 <CAJZ5v0ijOhT3PVm6-gqnqycE-YZhD00dGbtK1UEV5nfrOF5Obw@mail.gmail.com> <YEYtME2AxpXBq6iF@smile.fi.intel.com>
In-Reply-To: <YEYtME2AxpXBq6iF@smile.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 8 Mar 2021 16:45:07 +0100
Message-ID: <CAJZ5v0i+suMNWhUc=v0pnpabS-Ew-CMeSH945JB0YKnQAbi4Wg@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: WHX5TGOJR4MKOLAUMPGZYF7SH2TAQLHF
X-Message-ID-Hash: WHX5TGOJR4MKOLAUMPGZYF7SH2TAQLHF
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Scally <djrscally@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open li
 st:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/6] ACPI: scan: Extend acpi_walk_dep_device_list()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WHX5TGOJR4MKOLAUMPGZYF7SH2TAQLHF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 8, 2021 at 2:57 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, Mar 08, 2021 at 02:36:27PM +0100, Rafael J. Wysocki wrote:
> > On Sun, Mar 7, 2021 at 9:39 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > > On Sun, Mar 7, 2021 at 3:36 PM Daniel Scally <djrscally@gmail.com> wrote:
> > > > On 22/02/2021 13:34, Andy Shevchenko wrote:
> > > > > On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
> > > > >> The acpi_walk_dep_device_list() is not as generalisable as its name
> > > > >> implies, serving only to decrement the dependency count for each
> > > > >> dependent device of the input. Extend the function to instead accept
> > > > >> a callback which can be applied to all the dependencies in acpi_dep_list.
> > > > >> Replace all existing calls to the function with calls to a wrapper, passing
> > > > >> a callback that applies the same dependency reduction.
> > > > > The code looks okay to me, if it was the initial idea, feel free to add
> > > > > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
>
> ...
>
> > > > >> +void acpi_dev_flag_dependency_met(acpi_handle handle)
>
> > > > > Since it's acpi_dev_* namespace, perhaps it should take struct acpi_device here?
> > > >
> > > > I can do this, but I avoided it because in most of the uses in the
> > > > kernel currently there's no struct acpi_device, they're just passing
> > > > ACPI_HANDLE(dev) instead, so I'd need to get the adev with
> > > > ACPI_COMPANION() in each place. It didn't seem worth it...
> >
> > It may not even be possible sometimes, because that function may be
> > called before creating all of the struct acpi_device objects (like in
> > the case of deferred enumeration).
> >
> > > > but happy to
> > > > do it if you'd prefer it that way?
> > >
> > > I see, let Rafael decide then. I'm not pushing here.
> >
> > Well, it's a matter of correctness.
>
> Looking at your above comment it is indeed. Thanks for clarification!

Well, actually, the struct device for the object passed to this
function should be there already, because otherwise it wouldn't make
sense to update the list.  So my comment above is not really
applicable to this particular device and the function could take a
struct acpi_device pointer argument.  Sorry for the confusion.

> But should we have acpi_dev_*() namespace for this function if it takes handle?

It takes a device object handle.

Anyway, as per the above, it can take a struct acpi_device pointer
argument in which case the "acpi_dev_" prefix should be fine.

> For time being nothing better than following comes to my mind:
>
> __acpi_dev_flag_dependency_met() => __acpi_flag_device_dependency_met()
> acpi_dev_flag_dependency_met() => acpi_flag_device_dependency_met()

The above said, the name is somewhat confusing overall IMV.

Something like acpi_dev_clear_dependencies() might be better.

So lets make it something like

void acpi_dev_clear_dependencies(struct acpi_device *supplier);
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
