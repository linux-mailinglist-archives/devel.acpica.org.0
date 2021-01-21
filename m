Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F7D2FED12
	for <lists+devel-acpica@lfdr.de>; Thu, 21 Jan 2021 15:40:12 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 38E5E100EB849;
	Thu, 21 Jan 2021 06:40:11 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.45; helo=mail-ot1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 79A5E100EB824
	for <devel@acpica.org>; Thu, 21 Jan 2021 06:40:08 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id v21so1781693otj.3
        for <devel@acpica.org>; Thu, 21 Jan 2021 06:40:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e2wC/gqTSVsEHUIwD9i+N/18O78gZ5uCZkeTAoDdvWM=;
        b=bm5VuKOzz8mKvOY49mlfXcO+wjFMZFTENghQw1Jg0mo/kPkaoYWhf1Zd7HSCciIpvH
         BtcuCG6hrwhVNuGIbky+Dd/eM0PZFUoAamlpXPnadxs9DCBOIbIUAN0StW4C2vwNkok3
         uXHBExfM+s6LUO89UOR3Q7hqhTVGgRDZBj8brNw/ZqV8Z87hJzV/tqKppia9ieKUXbz5
         lel24F7AEvHsJKBhfpCnl2x1kafBbtVef7fzkbdPmGHD+7hcAraOfWSynUEMzWWj/Q3V
         s9j/0gKjxMn8SvLMtPjgjOfB/Ffy5nFOjIWORWLpJKfwdznViD1uJEqfF3xA44+lT5g0
         hV6w==
X-Gm-Message-State: AOAM5316akGTaNL4sVCTelARtXoCJ3yyaTBDyc5KPcCuKfel878Eum4u
	UkZxRNCr1gvanSOJCs0Zr0m3zRgR4ZjspwPsimI=
X-Google-Smtp-Source: ABdhPJxygx7O8j/Cs5KFm/tGd04SykZqet5/kp/3jkr6W6fOeKCg3atmGLgcAGJqtDf4Cqjy9l1O2Q+aMR5sGiyOhng=
X-Received: by 2002:a9d:1710:: with SMTP id i16mr10445162ota.260.1611240007526;
 Thu, 21 Jan 2021 06:40:07 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-3-djrscally@gmail.com>
 <CAJZ5v0gVQsZ4rxXW8uMidW9zfY_S50zpfrL-Gq0J3Z4-qqBiww@mail.gmail.com>
 <b381b48e-1bf2-f3e7-10a6-e51cd261f43c@gmail.com> <CAJZ5v0iU2m4Hs6APuauQ645DwbjYaB8nJFjYH0+7yQnR-FPZBQ@mail.gmail.com>
 <e2d7e5e9-920f-7227-76a6-b166e30e11e5@gmail.com> <CAJZ5v0gg5oXG3yOO9iDvPKSsadYrFojW6JcKfZcQbFFpO78zAQ@mail.gmail.com>
 <85ccf00d-7c04-b1da-a4bc-82c805df69c9@gmail.com>
In-Reply-To: <85ccf00d-7c04-b1da-a4bc-82c805df69c9@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 21 Jan 2021 15:39:55 +0100
Message-ID: <CAJZ5v0jO9O1zhBMNRNB5kRt1o86BTjr1kRuFUe=nNVTDwBQhEg@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: TCAHBPACHKZ25TGN2KD37QGKUZ63FC7B
X-Message-ID-Hash: TCAHBPACHKZ25TGN2KD37QGKUZ63FC7B
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/7] acpi: utils: Add function to fetch dependent acpi_devices
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TCAHBPACHKZ25TGN2KD37QGKUZ63FC7B/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 21, 2021 at 1:04 PM Daniel Scally <djrscally@gmail.com> wrote:
>
>
> On 21/01/2021 11:58, Rafael J. Wysocki wrote:
> > On Thu, Jan 21, 2021 at 10:47 AM Daniel Scally <djrscally@gmail.com> wrote:
> >> Hi Rafael
> >>
> >> On 19/01/2021 13:15, Rafael J. Wysocki wrote:
> >>> On Mon, Jan 18, 2021 at 9:51 PM Daniel Scally <djrscally@gmail.com> wrote:
> >>>> On 18/01/2021 16:14, Rafael J. Wysocki wrote:
> >>>>> On Mon, Jan 18, 2021 at 1:37 AM Daniel Scally <djrscally@gmail.com> wrote:
> >>>>>> In some ACPI tables we encounter, devices use the _DEP method to assert
> >>>>>> a dependence on other ACPI devices as opposed to the OpRegions that the
> >>>>>> specification intends. We need to be able to find those devices "from"
> >>>>>> the dependee, so add a function to parse all ACPI Devices and check if
> >>>>>> the include the handle of the dependee device in their _DEP buffer.
> >>>>> What exactly do you need this for?
> >>>> So, in our DSDT we have devices with _HID INT3472, plus sensors which
> >>>> refer to those INT3472's in their _DEP method. The driver binds to the
> >>>> INT3472 device, we need to find the sensors dependent on them.
> >>>>
> >>> Well, this is an interesting concept. :-)
> >>>
> >>> Why does _DEP need to be used for that?  Isn't there any other way to
> >>> look up the dependent sensors?
> >>>
> >>>>> Would it be practical to look up the suppliers in acpi_dep_list instead?
> >>>>>
> >>>>> Note that supplier drivers may remove entries from there, but does
> >>>>> that matter for your use case?
> >>>> Ah - that may work, yes. Thank you, let me test that.
> >>> Even if that doesn't work right away, but it can be made work, I would
> >>> very much prefer that to the driver parsing _DEP for every device in
> >>> the namespace by itself.
> >>
> >> This does work; do you prefer it in scan.c, or in utils.c (in which case
> >> with acpi_dep_list declared as external var in internal.h)?
> > Let's put it in scan.c for now, because there is the lock protecting
> > the list in there too.
> >
> > How do you want to implement this?  Something like "walk the list and
> > run a callback for the matching entries" or do you have something else
> > in mind?
>
>
> Something like this (though with a mutex_lock()). It could be simplified
> by dropping the prev stuff, but we have seen INT3472 devices with
> multiple sensors declaring themselves dependent on the same device
>
>
> struct acpi_device *
> acpi_dev_get_next_dependent_dev(struct acpi_device *supplier,
>                 struct acpi_device *prev)
> {
>     struct acpi_dep_data *dep;
>     struct acpi_device *adev;
>     int ret;
>
>     if (!supplier)
>         return ERR_PTR(-EINVAL);
>
>     if (prev) {
>         /*
>          * We need to find the previous device in the list, so we know
>          * where to start iterating from.
>          */
>         list_for_each_entry(dep, &acpi_dep_list, node)
>             if (dep->consumer == prev->handle &&
>                 dep->supplier == supplier->handle)
>                 break;
>
>         dep = list_next_entry(dep, node);
>     } else {
>         dep = list_first_entry(&acpi_dep_list, struct acpi_dep_data,
>                        node);
>     }
>
>
>     list_for_each_entry_from(dep, &acpi_dep_list, node) {
>         if (dep->supplier == supplier->handle) {
>             ret = acpi_bus_get_device(dep->consumer, &adev);
>             if (ret)
>                 return ERR_PTR(ret);
>
>             return adev;
>         }
>     }
>
>     return NULL;
> }

That would work I think, but would it be practical to modify
acpi_walk_dep_device_list() so that it runs a callback for every
consumer found instead of or in addition to the "delete from the list
and free the entry" operation?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
