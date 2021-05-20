Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ADD38B617
	for <lists+devel-acpica@lfdr.de>; Thu, 20 May 2021 20:33:39 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A6F9F100EC1D7;
	Thu, 20 May 2021 11:33:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.50; helo=mail-oo1-f50.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2030A100ED48C
	for <devel@acpica.org>; Thu, 20 May 2021 11:33:33 -0700 (PDT)
Received: by mail-oo1-f50.google.com with SMTP id e27-20020a056820061bb029020da48eed5cso3998899oow.10
        for <devel@acpica.org>; Thu, 20 May 2021 11:33:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VpIZNz0K+hrxnCAMqgX+GPbbK86F0GzoMq8JmMIGB7w=;
        b=AoY8ImRH8Mbez/mdZIJeCL9yZltbfL32O779X3/+O5YXcxBaGarAZyXAYHfsPWmTp+
         zvvwjDoxdjUue3XHO1+qJzNThSIjp52sj7vNIrL06sU4HWv/SnLA4C8omIV9diePQO7D
         cw5GImRt8Hp5kKfnzPZel/xm/RoThNvNqPNtlkPVOc7Kfjl5CGWXRb7UeY2eWJgwrL+C
         srzrtfmGn2j2COCdlHgRg28oIPymdLiSsIlhHJ79WFyps9e1MhAE5VCsPEJEP5QzkSI1
         GdI7+7JEqNMrpYQcYU5KdvuMFhsEYS+7udX9Sp+iGmVUSCauj4h8RWOEJDco/SsbZd5u
         gFXw==
X-Gm-Message-State: AOAM5321rGRRzFSSKNXBKtITuv4okS4rUUZuKrW56pv1INpp5BQj85dI
	aA15QxPCTEzeLGaLwSx4jRJmyEKaRJ9tVj8aNWU=
X-Google-Smtp-Source: ABdhPJyt7I5FNcJxtfGw3djcsM8WjYoSDjCWd/Wk635t7zznxdsE+ePyb48FtPDEjnEzSsgrW+Rdz3XedxcVLKfq4P0=
X-Received: by 2002:a4a:e5d5:: with SMTP id r21mr4913042oov.1.1621535612897;
 Thu, 20 May 2021 11:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210520140928.3252671-1-djrscally@gmail.com> <20210520140928.3252671-3-djrscally@gmail.com>
In-Reply-To: <20210520140928.3252671-3-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 20 May 2021 20:33:21 +0200
Message-ID: <CAJZ5v0hoDswjr+7r4uf6jZvV3t+-UDtEA0V7A_MvdT_34XrbJA@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: AJ6Q232FEEGOG5GOVKOUEWM7AWOJTSPM
X-Message-ID-Hash: AJ6Q232FEEGOG5GOVKOUEWM7AWOJTSPM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Maximilian Luz <luzmaximilian@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Russell King <linux@armlinux.org.uk>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>, Andy Sh
 evchenko <andy.shevchenko@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v4 2/8] ACPI: scan: Add function to fetch dependent of acpi device
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AJ6Q232FEEGOG5GOVKOUEWM7AWOJTSPM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 20, 2021 at 4:11 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> In some ACPI tables we encounter, devices use the _DEP method to assert
> a dependence on other ACPI devices as opposed to the OpRegions that the
> specification intends. We need to be able to find those devices "from"
> the dependee, so add a callback and a wrapper to walk over the
> acpi_dep_list and return the dependent ACPI device.
>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes since v3:
>
>         Both new functions were renamed.
>
>  drivers/acpi/scan.c     | 38 ++++++++++++++++++++++++++++++++++++++
>  include/acpi/acpi_bus.h |  1 +
>  2 files changed, 39 insertions(+)
>
> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index 195635c3462b..1a76fbdfa669 100644
> --- a/drivers/acpi/scan.c
> +++ b/drivers/acpi/scan.c
> @@ -2105,6 +2105,21 @@ static void acpi_bus_attach(struct acpi_device *device, bool first_pass)
>                 device->handler->hotplug.notify_online(device);
>  }
>
> +static int acpi_return_dep_dev(struct acpi_dep_data *dep, void *data)

What about calling this acpi_get_first_consumer_cb()?

> +{
> +       struct acpi_device *adev;
> +       int ret;
> +
> +       ret = acpi_bus_get_device(dep->consumer, &adev);
> +       if (ret)
> +               /* If we don't find an adev then we want to continue parsing */
> +               return 0;
> +
> +       *(struct acpi_device **)data = adev;

And it can do the get_device() here, can't it?

So maybe use acpi_bus_get_acpi_device() instead of
acpi_bus_get_device()?  Would be simpler.

> +
> +       return 1;
> +}
> +
>  static int acpi_scan_clear_dep(struct acpi_dep_data *dep, void *data)
>  {
>         struct acpi_device *adev;
> @@ -2168,6 +2183,29 @@ void acpi_dev_clear_dependencies(struct acpi_device *supplier)
>  }
>  EXPORT_SYMBOL_GPL(acpi_dev_clear_dependencies);
>
> +/**
> + * acpi_dev_get_dependent_dev - Return ACPI device dependent on @supplier

And what about calling this acpi_get_first_consumer() ?

> + * @supplier: Pointer to the dependee device
> + *
> + * Returns the first &struct acpi_device which declares itself dependent on
> + * @supplier via the _DEP buffer, parsed from the acpi_dep_list.
> + *
> + * The caller is responsible for putting the reference to adev when it is no
> + * longer needed.
> + */
> +struct acpi_device *acpi_dev_get_dependent_dev(struct acpi_device *supplier)
> +{
> +       struct acpi_device *adev = NULL;
> +
> +       acpi_walk_dep_device_list(supplier->handle, acpi_return_dep_dev, &adev);
> +
> +       if (adev)
> +               get_device(&adev->dev);
> +
> +       return adev;
> +}
> +EXPORT_SYMBOL_GPL(acpi_dev_get_dependent_dev);
> +
>  /**
>   * acpi_bus_scan - Add ACPI device node objects in a given namespace scope.
>   * @handle: Root of the namespace scope to scan.
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 0b2c4f170f4d..68d378207704 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -692,6 +692,7 @@ static inline bool acpi_device_can_poweroff(struct acpi_device *adev)
>  bool acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *uid2);
>
>  void acpi_dev_clear_dependencies(struct acpi_device *supplier);
> +struct acpi_device *acpi_dev_get_dependent_dev(struct acpi_device *supplier);
>  struct acpi_device *
>  acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const char *uid, s64 hrv);
>  struct acpi_device *
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
