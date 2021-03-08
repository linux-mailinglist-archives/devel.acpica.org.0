Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 569F03314AF
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Mar 2021 18:24:07 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E3E0E100EC1C6;
	Mon,  8 Mar 2021 09:24:05 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.182; helo=mail-oi1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7B0F1100EF270
	for <devel@acpica.org>; Mon,  8 Mar 2021 09:24:03 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id d16so2473856oic.0
        for <devel@acpica.org>; Mon, 08 Mar 2021 09:24:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=46Dl+/n5MDXaPsg8pK7iPxr6SdZP0DYwFyO9StPfVU0=;
        b=bQqfDh8eUIJwJecyUTntDZYWJxGV+WBKGyBREui/f928D8O8Y1Ri90WlL4b/wpesue
         NgLdSAidAfClYwj4/QmY/EwKM/V0+T8Oypn5VYbbzYwEjLwEUtjLjEy8Iljh0SnLrR8E
         zvKawWYUyBZ6vIr6qz7L8xWL4Z5pukAjvVICZqdfwFqF6NAStjF6WIh0jzWXW/NuFIkP
         1ERio1RGvX3jU/RHh5sjv1Of8XKBXWv7NPweBIdYrYW6zQJNj+BRMqaYxOkYlXc+k8e9
         kZdGK4Rrxyk71jlh2ElyKatzGWSp7O8BfAWYSszYkeL3vKDcokvUh+YvkiicHZeOdtWW
         TyGw==
X-Gm-Message-State: AOAM533pLC9pNJg+ezdupPtJIeDAVtrl97NcSKcVa+wy4170MNWZLAQu
	zYOCgMdvVdNGX9k4wh99vZZbiR5BFTMcTT+iHx0=
X-Google-Smtp-Source: ABdhPJwMlR4X/o29NrD2vDK13sLOTLewPoMXmTCDSlyg1tEBBcj52cBVPnmXI+TT1Hb829Z/MVg/FVmPbb5+YFhYMjI=
X-Received: by 2002:aca:3d85:: with SMTP id k127mr18673488oia.157.1615224242728;
 Mon, 08 Mar 2021 09:24:02 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-2-djrscally@gmail.com>
 <CAHp75VfPuDjt=ZfHkwErF7_6Ks6wpqXO8mtq-2KjV+mU_PXFtg@mail.gmail.com>
 <615bad5e-6e68-43c9-dd0b-f26d2832d52f@gmail.com> <CAHp75Vc2iwvh1RiYmQDPSvgNvGT_gBcGTK67F+MhWgXyoxqn0A@mail.gmail.com>
 <CAJZ5v0ijOhT3PVm6-gqnqycE-YZhD00dGbtK1UEV5nfrOF5Obw@mail.gmail.com>
 <YEYtME2AxpXBq6iF@smile.fi.intel.com> <CAJZ5v0i+suMNWhUc=v0pnpabS-Ew-CMeSH945JB0YKnQAbi4Wg@mail.gmail.com>
In-Reply-To: <CAJZ5v0i+suMNWhUc=v0pnpabS-Ew-CMeSH945JB0YKnQAbi4Wg@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 8 Mar 2021 18:23:51 +0100
Message-ID: <CAJZ5v0iyGGLjhYnQxQTokib5Dyiuz_ApvaWb13qz8=U3V44vFg@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: D545N3PN6ENN5JFY7RLF6ONRAJKY6II7
X-Message-ID-Hash: D545N3PN6ENN5JFY7RLF6ONRAJKY6II7
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andy Shevchenko <andy.shevchenko@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (A
 CPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/6] ACPI: scan: Extend acpi_walk_dep_device_list()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/D545N3PN6ENN5JFY7RLF6ONRAJKY6II7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 8, 2021 at 4:45 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Mon, Mar 8, 2021 at 2:57 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > On Mon, Mar 08, 2021 at 02:36:27PM +0100, Rafael J. Wysocki wrote:
> > > On Sun, Mar 7, 2021 at 9:39 PM Andy Shevchenko
> > > <andy.shevchenko@gmail.com> wrote:
> > > > On Sun, Mar 7, 2021 at 3:36 PM Daniel Scally <djrscally@gmail.com> wrote:
> > > > > On 22/02/2021 13:34, Andy Shevchenko wrote:
> > > > > > On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
> > > > > >> The acpi_walk_dep_device_list() is not as generalisable as its name
> > > > > >> implies, serving only to decrement the dependency count for each
> > > > > >> dependent device of the input. Extend the function to instead accept
> > > > > >> a callback which can be applied to all the dependencies in acpi_dep_list.
> > > > > >> Replace all existing calls to the function with calls to a wrapper, passing
> > > > > >> a callback that applies the same dependency reduction.
> > > > > > The code looks okay to me, if it was the initial idea, feel free to add
> > > > > > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> >
> > ...
> >
> > > > > >> +void acpi_dev_flag_dependency_met(acpi_handle handle)
> >
> > > > > > Since it's acpi_dev_* namespace, perhaps it should take struct acpi_device here?
> > > > >
> > > > > I can do this, but I avoided it because in most of the uses in the
> > > > > kernel currently there's no struct acpi_device, they're just passing
> > > > > ACPI_HANDLE(dev) instead, so I'd need to get the adev with
> > > > > ACPI_COMPANION() in each place. It didn't seem worth it...
> > >
> > > It may not even be possible sometimes, because that function may be
> > > called before creating all of the struct acpi_device objects (like in
> > > the case of deferred enumeration).
> > >
> > > > > but happy to
> > > > > do it if you'd prefer it that way?
> > > >
> > > > I see, let Rafael decide then. I'm not pushing here.
> > >
> > > Well, it's a matter of correctness.
> >
> > Looking at your above comment it is indeed. Thanks for clarification!
>
> Well, actually, the struct device for the object passed to this
> function should be there already, because otherwise it wouldn't make
> sense to update the list.  So my comment above is not really
> applicable to this particular device and the function could take a
> struct acpi_device pointer argument.  Sorry for the confusion.
>
> > But should we have acpi_dev_*() namespace for this function if it takes handle?
>
> It takes a device object handle.
>
> Anyway, as per the above, it can take a struct acpi_device pointer
> argument in which case the "acpi_dev_" prefix should be fine.
>
> > For time being nothing better than following comes to my mind:
> >
> > __acpi_dev_flag_dependency_met() => __acpi_flag_device_dependency_met()
> > acpi_dev_flag_dependency_met() => acpi_flag_device_dependency_met()
>
> The above said, the name is somewhat confusing overall IMV.
>
> Something like acpi_dev_clear_dependencies() might be better.
>
> So lets make it something like
>
> void acpi_dev_clear_dependencies(struct acpi_device *supplier);

To be precise, there are two functions in the patch,
acpi_dev_flag_dependency_met() which invokes
acpi_walk_dep_device_list() and __acpi_dev_flag_dependency_met()
invoked by the latter as a callback.

Above I was talking about the first one.

The callback should still take a struct acpi_dep_data pointer argument
and I would call it acpi_scan_clear_dep() or similar.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
