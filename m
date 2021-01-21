Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4722FF2DB
	for <lists+devel-acpica@lfdr.de>; Thu, 21 Jan 2021 19:08:47 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E8537100EB359;
	Thu, 21 Jan 2021 10:08:45 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.182; helo=mail-oi1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C4BE9100EB825
	for <devel@acpica.org>; Thu, 21 Jan 2021 10:08:43 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id p5so3098298oif.7
        for <devel@acpica.org>; Thu, 21 Jan 2021 10:08:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rZuG0eDaYJNboNh8e3LplxwDe2N2H+yB/LmrSLFUl6M=;
        b=RNNUg8G1U6Mj3Sc/oVyKRZDh7NmeE2Lw+M3K95NRCjj+a/bC7u9u3ndEjA9SkJsh68
         Xvb//4DSCnSfl/K+bqv7gyrw7BRE+SgtAJYabx54l14W9kiYSL0MjNKT1835I2sNjcq0
         p+lIPAl+EgYE7c6PX1lGcSeTjjIU473FKmMYnOae5BsDcj6sRjn5XYFFZV0Axz2nVg7l
         Tu0r1yH4lJsfRl+bpbvsGmdRIET7SOJx6NaN9pC75TGqGrO/lTKE1bmtUCz/7MyC/gLv
         iZnfcqi3V0qmpuQKqnok/IhX9eI/so2eNWjWyldQnAvsCAezrNV46CmjCfxK+wNw8O78
         N0nw==
X-Gm-Message-State: AOAM530WxpcYsRvyCJ7Bpssh8V2tszHXgF4LfFka704ujA1zG2cSVgWz
	Z3uR21si5ItTf/EPahs97rzJrmCH+DKbHv6vyd0=
X-Google-Smtp-Source: ABdhPJzonsjyrNxpDyasZkL5KpTZWxHq4Ux3HEM1YkApyJQtDjSw14vrAyNsETjZ7up7pvN+p39lnrgFySegxATtRNE=
X-Received: by 2002:aca:308a:: with SMTP id w132mr552636oiw.69.1611252522742;
 Thu, 21 Jan 2021 10:08:42 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-3-djrscally@gmail.com>
 <CAJZ5v0gVQsZ4rxXW8uMidW9zfY_S50zpfrL-Gq0J3Z4-qqBiww@mail.gmail.com>
 <b381b48e-1bf2-f3e7-10a6-e51cd261f43c@gmail.com> <CAJZ5v0iU2m4Hs6APuauQ645DwbjYaB8nJFjYH0+7yQnR-FPZBQ@mail.gmail.com>
 <e2d7e5e9-920f-7227-76a6-b166e30e11e5@gmail.com> <CAJZ5v0gg5oXG3yOO9iDvPKSsadYrFojW6JcKfZcQbFFpO78zAQ@mail.gmail.com>
 <85ccf00d-7c04-b1da-a4bc-82c805df69c9@gmail.com> <CAJZ5v0jO9O1zhBMNRNB5kRt1o86BTjr1kRuFUe=nNVTDwBQhEg@mail.gmail.com>
 <0fac24d2-e8fc-7dc8-0f2f-44c7aadb1daf@gmail.com>
In-Reply-To: <0fac24d2-e8fc-7dc8-0f2f-44c7aadb1daf@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 21 Jan 2021 19:08:31 +0100
Message-ID: <CAJZ5v0jVxMMGh6k-vXeBRsCtD0L14poNUrg4kZOpCfOz2sZGZQ@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: UIZRWENSFSTJVGVWXKULG3JG3KCWRKQC
X-Message-ID-Hash: UIZRWENSFSTJVGVWXKULG3JG3KCWRKQC
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/7] acpi: utils: Add function to fetch dependent acpi_devices
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UIZRWENSFSTJVGVWXKULG3JG3KCWRKQC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 21, 2021 at 5:34 PM Daniel Scally <djrscally@gmail.com> wrote:
>
>
> On 21/01/2021 14:39, Rafael J. Wysocki wrote:
> > On Thu, Jan 21, 2021 at 1:04 PM Daniel Scally <djrscally@gmail.com> wrote:
> >>
> >> On 21/01/2021 11:58, Rafael J. Wysocki wrote:
> >>> On Thu, Jan 21, 2021 at 10:47 AM Daniel Scally <djrscally@gmail.com> wrote:
> >>>> Hi Rafael
> >>>>
> >>>> On 19/01/2021 13:15, Rafael J. Wysocki wrote:
> >>>>> On Mon, Jan 18, 2021 at 9:51 PM Daniel Scally <djrscally@gmail.com> wrote:
> >>>>>> On 18/01/2021 16:14, Rafael J. Wysocki wrote:
> >>>>>>> On Mon, Jan 18, 2021 at 1:37 AM Daniel Scally <djrscally@gmail.com> wrote:
> >>>>>>>> In some ACPI tables we encounter, devices use the _DEP method to assert
> >>>>>>>> a dependence on other ACPI devices as opposed to the OpRegions that the
> >>>>>>>> specification intends. We need to be able to find those devices "from"
> >>>>>>>> the dependee, so add a function to parse all ACPI Devices and check if
> >>>>>>>> the include the handle of the dependee device in their _DEP buffer.
> >>>>>>> What exactly do you need this for?
> >>>>>> So, in our DSDT we have devices with _HID INT3472, plus sensors which
> >>>>>> refer to those INT3472's in their _DEP method. The driver binds to the
> >>>>>> INT3472 device, we need to find the sensors dependent on them.
> >>>>>>
> >>>>> Well, this is an interesting concept. :-)
> >>>>>
> >>>>> Why does _DEP need to be used for that?  Isn't there any other way to
> >>>>> look up the dependent sensors?
> >>>>>
> >>>>>>> Would it be practical to look up the suppliers in acpi_dep_list instead?
> >>>>>>>
> >>>>>>> Note that supplier drivers may remove entries from there, but does
> >>>>>>> that matter for your use case?
> >>>>>> Ah - that may work, yes. Thank you, let me test that.
> >>>>> Even if that doesn't work right away, but it can be made work, I would
> >>>>> very much prefer that to the driver parsing _DEP for every device in
> >>>>> the namespace by itself.
> >>>> This does work; do you prefer it in scan.c, or in utils.c (in which case
> >>>> with acpi_dep_list declared as external var in internal.h)?
> >>> Let's put it in scan.c for now, because there is the lock protecting
> >>> the list in there too.
> >>>
> >>> How do you want to implement this?  Something like "walk the list and
> >>> run a callback for the matching entries" or do you have something else
> >>> in mind?
> >>
> >> Something like this (though with a mutex_lock()). It could be simplified
> >> by dropping the prev stuff, but we have seen INT3472 devices with
> >> multiple sensors declaring themselves dependent on the same device
> >>
> >>
> >> struct acpi_device *
> >> acpi_dev_get_next_dependent_dev(struct acpi_device *supplier,
> >>                 struct acpi_device *prev)
> >> {
> >>     struct acpi_dep_data *dep;
> >>     struct acpi_device *adev;
> >>     int ret;
> >>
> >>     if (!supplier)
> >>         return ERR_PTR(-EINVAL);
> >>
> >>     if (prev) {
> >>         /*
> >>          * We need to find the previous device in the list, so we know
> >>          * where to start iterating from.
> >>          */
> >>         list_for_each_entry(dep, &acpi_dep_list, node)
> >>             if (dep->consumer == prev->handle &&
> >>                 dep->supplier == supplier->handle)
> >>                 break;
> >>
> >>         dep = list_next_entry(dep, node);
> >>     } else {
> >>         dep = list_first_entry(&acpi_dep_list, struct acpi_dep_data,
> >>                        node);
> >>     }
> >>
> >>
> >>     list_for_each_entry_from(dep, &acpi_dep_list, node) {
> >>         if (dep->supplier == supplier->handle) {
> >>             ret = acpi_bus_get_device(dep->consumer, &adev);
> >>             if (ret)
> >>                 return ERR_PTR(ret);
> >>
> >>             return adev;
> >>         }
> >>     }
> >>
> >>     return NULL;
> >> }
> > That would work I think, but would it be practical to modify
> > acpi_walk_dep_device_list() so that it runs a callback for every
> > consumer found instead of or in addition to the "delete from the list
> > and free the entry" operation?
>
>
> I think that this would work fine, if that's the way you want to go.
> We'd just need to move everything inside the if (dep->supplier ==
> handle) block to a new callback, and for my purposes I think also add a
> way to stop parsing the list from the callback (so like have the
> callbacks return int and stop parsing on a non-zero return). Do you want
> to expose that ability to pass a callback outside of ACPI?

Yes.

> Or just export helpers to call each of the callbacks (one to fetch the next
> dependent device, one to decrement the unmet dependencies counter)

If you can run a callback for every matching entry, you don't really
need to have a callback to return the next matching entry.  You can do
stuff for all of them in one go (note that it probably is not a good
idea to run the callback under the lock, so the for loop currently in
there is not really suitable for that).

> Otherwise, I'd just need to update the 5 users of that function either
> to use the new helper or else to also pass the decrement dependencies
> callback.

Or have a wrapper around it passing the decrement dependencies
callback for the "typical" users.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
