Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CCF330F6D
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Mar 2021 14:36:47 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2F16C100EBBCD;
	Mon,  8 Mar 2021 05:36:46 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.54; helo=mail-ot1-f54.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 857D4100EC1E3
	for <devel@acpica.org>; Mon,  8 Mar 2021 05:36:43 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id f33so9122201otf.11
        for <devel@acpica.org>; Mon, 08 Mar 2021 05:36:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3SC+dThWdkkdkAOzaSbWtrlTJ9uPyl9VXsnQJro4+zQ=;
        b=OCMWXKDz+mPDxOUGEMuVggmOQmQ5Rj7GgxyuboDhW70PfdpsmsVoHkIS8XuJcgo9XV
         93O68nK0tz3THmP3PS2B9yynT7BBbSMpn0+tcM0Ridjcgj8K/q/JgV9tl1/YtGHsBFrc
         FbfG1WmG3p/Fwu4PHwqOxyCaezPDg8bBXfBCeFg7sMPCC+iWdTHFNXJG79xKkz27RkIi
         XRK6Ei2m708cqhRvcKlconlygutMgdMrACN8ewozor//bQQsswlZPocj+KzcTBmxSOrO
         csYgDiQ5rbk1PzpxvYnuPgRtfuvb88jll2y/h8feB2wS1RjNzM/w3X8K8J88by5b/Z1O
         2Qow==
X-Gm-Message-State: AOAM530e+7tyaperD2Ud57psx4w9WRsAPYAgjkPiwvSJg0sKXcZbSDud
	R4c8qFkXs9q/2H9+UblHpDcf3SwjLzUpGYDYVJs=
X-Google-Smtp-Source: ABdhPJyy6ZpakLDXyR3Oyk57jV9FGupiJLAQnH75QbMy9JuTsZHE14IlWkvw4HT+2ZoGrY9c8JoAUD0rFxSpfGAfb7Q=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr9299001otr.321.1615210602629;
 Mon, 08 Mar 2021 05:36:42 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-2-djrscally@gmail.com>
 <CAHp75VfPuDjt=ZfHkwErF7_6Ks6wpqXO8mtq-2KjV+mU_PXFtg@mail.gmail.com>
 <615bad5e-6e68-43c9-dd0b-f26d2832d52f@gmail.com> <CAHp75Vc2iwvh1RiYmQDPSvgNvGT_gBcGTK67F+MhWgXyoxqn0A@mail.gmail.com>
In-Reply-To: <CAHp75Vc2iwvh1RiYmQDPSvgNvGT_gBcGTK67F+MhWgXyoxqn0A@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 8 Mar 2021 14:36:27 +0100
Message-ID: <CAJZ5v0ijOhT3PVm6-gqnqycE-YZhD00dGbtK1UEV5nfrOF5Obw@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: ANVATQH65Z36AL65HDVZS4A2UDBTH3JU
X-Message-ID-Hash: ANVATQH65Z36AL65HDVZS4A2UDBTH3JU
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITE
 CTURE (ACPICA)" <devel@acpica.org>, "Rafael J . Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/6] ACPI: scan: Extend acpi_walk_dep_device_list()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ANVATQH65Z36AL65HDVZS4A2UDBTH3JU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Mar 7, 2021 at 9:39 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Sun, Mar 7, 2021 at 3:36 PM Daniel Scally <djrscally@gmail.com> wrote:
> > On 22/02/2021 13:34, Andy Shevchenko wrote:
> > > On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
> > >> The acpi_walk_dep_device_list() is not as generalisable as its name
> > >> implies, serving only to decrement the dependency count for each
> > >> dependent device of the input. Extend the function to instead accept
> > >> a callback which can be applied to all the dependencies in acpi_dep_list.
> > >> Replace all existing calls to the function with calls to a wrapper, passing
> > >> a callback that applies the same dependency reduction.
> > > The code looks okay to me, if it was the initial idea, feel free to add
> > > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> >
> >
> > Thank you!
> >
> >
> > >> + */
> > >> +void acpi_dev_flag_dependency_met(acpi_handle handle)
> > >> +{
> > > Since it's acpi_dev_* namespace, perhaps it should take struct acpi_device here?
> >
> >
> > I can do this, but I avoided it because in most of the uses in the
> > kernel currently there's no struct acpi_device, they're just passing
> > ACPI_HANDLE(dev) instead, so I'd need to get the adev with
> > ACPI_COMPANION() in each place. It didn't seem worth it...

It may not even be possible sometimes, because that function may be
called before creating all of the struct acpi_device objects (like in
the case of deferred enumeration).

> > but happy to
> > do it if you'd prefer it that way?
>
> I see, let Rafael decide then. I'm not pushing here.

Well, it's a matter of correctness.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
