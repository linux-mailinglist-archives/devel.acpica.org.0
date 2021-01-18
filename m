Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0B82FA599
	for <lists+devel-acpica@lfdr.de>; Mon, 18 Jan 2021 17:06:52 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EE239100EBBA2;
	Mon, 18 Jan 2021 08:06:50 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.170; helo=mail-oi1-f170.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1AD53100EBBA0
	for <devel@acpica.org>; Mon, 18 Jan 2021 08:06:47 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id d189so18127831oig.11
        for <devel@acpica.org>; Mon, 18 Jan 2021 08:06:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CS5IjSAEXLMX2L3dlbJYEV3dTj36qlbZID0kijl+T1k=;
        b=tTWmj6/5Z4Z826BQxVA3nCnRCAnn5yZMcHWllW30ZCY779ddnGqsP0hDMupsT/tZlj
         KYST1/37WHNC3htZ8DAC26X68ZUjQP3pZq2A8V7T/VMwjNzBSOIWPzoB+M9Qu/rCAbCE
         eAVnrnIzjp/E3FHWpDLz1UetKjRRGCYVIkTiu8CjXPUA/m1MLGOlp1RFdFWmHL0+Im4I
         S7d3gWobAxVdCoZ35pLFr9qZHj+yBJ9LHEuES2Zwuy06sOhGMXGqw7lpxLzf1dSV3J5O
         ysDNf9I/ic/QIasmNsX6zzni2c3e0c+/3NXbBMANC+UpAClPtDlaGMCX1oVMx7PVxfRm
         OJug==
X-Gm-Message-State: AOAM532vS8eXDrCe3ys2SKEmNEeqdR3eQCRQTfxYJ1jIcZ8v2Db1w8u9
	2c71M03KBpyDPR/pFv7govrjMXIaBathLAFSMto=
X-Google-Smtp-Source: ABdhPJy3ugoahJb5GudMqD9tviCmqbTq1+xfj8D5UQTzrIQJP/8XJYGCzj99cfuy+SxZwaXbxO0FovXX0bZadB5pw/w=
X-Received: by 2002:aca:4892:: with SMTP id v140mr32020oia.71.1610986006546;
 Mon, 18 Jan 2021 08:06:46 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-2-djrscally@gmail.com>
 <20210118122852.GD4077@smile.fi.intel.com>
In-Reply-To: <20210118122852.GD4077@smile.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 18 Jan 2021 17:06:30 +0100
Message-ID: <CAJZ5v0hihFa=M658GE2LtoKCnPkMQznXBtq9_+g0_4gFnw6qAg@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: NVHZWJNEDRHYBLLUF66MYGBGLZHFOWXP
X-Message-ID-Hash: NVHZWJNEDRHYBLLUF66MYGBGLZHFOWXP
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/7] acpi: utils: move acpi_lpss_dep() to utils
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NVHZWJNEDRHYBLLUF66MYGBGLZHFOWXP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 18, 2021 at 1:30 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Jan 18, 2021 at 12:34:22AM +0000, Daniel Scally wrote:
> > I need to be able to identify devices which declare themselves to be
> > dependent on other devices through _DEP; add this function to utils.c
> > and export it to the rest of the ACPI layer.
>
> Prefix -> "ACPI / utils: "

Preferably "ACPI: utils: " for that matter and yes, please rename the
function while moving it.

> Otherwise good to me
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>
> > Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Signed-off-by: Daniel Scally <djrscally@gmail.com>
> > ---
> > Changes in v2:
> >       - Introduced
> >
> >  drivers/acpi/acpi_lpss.c | 24 ------------------------
> >  drivers/acpi/internal.h  |  1 +
> >  drivers/acpi/utils.c     | 24 ++++++++++++++++++++++++
> >  3 files changed, 25 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/acpi/acpi_lpss.c b/drivers/acpi/acpi_lpss.c
> > index be73974ce449..70c7d9a3f715 100644
> > --- a/drivers/acpi/acpi_lpss.c
> > +++ b/drivers/acpi/acpi_lpss.c
> > @@ -543,30 +543,6 @@ static struct device *acpi_lpss_find_device(const char *hid, const char *uid)
> >       return bus_find_device(&pci_bus_type, NULL, &data, match_hid_uid);
> >  }
> >
> > -static bool acpi_lpss_dep(struct acpi_device *adev, acpi_handle handle)
> > -{
> > -     struct acpi_handle_list dep_devices;
> > -     acpi_status status;
> > -     int i;
> > -
> > -     if (!acpi_has_method(adev->handle, "_DEP"))
> > -             return false;
> > -
> > -     status = acpi_evaluate_reference(adev->handle, "_DEP", NULL,
> > -                                      &dep_devices);
> > -     if (ACPI_FAILURE(status)) {
> > -             dev_dbg(&adev->dev, "Failed to evaluate _DEP.\n");
> > -             return false;
> > -     }
> > -
> > -     for (i = 0; i < dep_devices.count; i++) {
> > -             if (dep_devices.handles[i] == handle)
> > -                     return true;
> > -     }
> > -
> > -     return false;
> > -}
> > -
> >  static void acpi_lpss_link_consumer(struct device *dev1,
> >                                   const struct lpss_device_links *link)
> >  {
> > diff --git a/drivers/acpi/internal.h b/drivers/acpi/internal.h
> > index cb229e24c563..ee62c0973576 100644
> > --- a/drivers/acpi/internal.h
> > +++ b/drivers/acpi/internal.h
> > @@ -79,6 +79,7 @@ static inline void acpi_lpss_init(void) {}
> >  #endif
> >
> >  void acpi_apd_init(void);
> > +bool acpi_lpss_dep(struct acpi_device *adev, acpi_handle handle);
> >
> >  acpi_status acpi_hotplug_schedule(struct acpi_device *adev, u32 src);
> >  bool acpi_queue_hotplug_work(struct work_struct *work);
> > diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> > index ddca1550cce6..78b38775f18b 100644
> > --- a/drivers/acpi/utils.c
> > +++ b/drivers/acpi/utils.c
> > @@ -807,6 +807,30 @@ static int acpi_dev_match_cb(struct device *dev, const void *data)
> >       return hrv == match->hrv;
> >  }
> >
> > +bool acpi_lpss_dep(struct acpi_device *adev, acpi_handle handle)
> > +{
> > +     struct acpi_handle_list dep_devices;
> > +     acpi_status status;
> > +     int i;
> > +
> > +     if (!acpi_has_method(adev->handle, "_DEP"))
> > +             return false;
> > +
> > +     status = acpi_evaluate_reference(adev->handle, "_DEP", NULL,
> > +                                      &dep_devices);
> > +     if (ACPI_FAILURE(status)) {
> > +             dev_dbg(&adev->dev, "Failed to evaluate _DEP.\n");
> > +             return false;
> > +     }
> > +
> > +     for (i = 0; i < dep_devices.count; i++) {
> > +             if (dep_devices.handles[i] == handle)
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> >  /**
> >   * acpi_dev_present - Detect that a given ACPI device is present
> >   * @hid: Hardware ID of the device.
> > --
> > 2.25.1
> >
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
