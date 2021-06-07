Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D1639DF67
	for <lists+devel-acpica@lfdr.de>; Mon,  7 Jun 2021 16:52:59 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 586AE100ED48C;
	Mon,  7 Jun 2021 07:52:58 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.172; helo=mail-oi1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BB1C7100EF276
	for <devel@acpica.org>; Mon,  7 Jun 2021 07:52:56 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id d21so18288824oic.11
        for <devel@acpica.org>; Mon, 07 Jun 2021 07:52:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vFKKKRb67LGq4j/7jOKF7wGRXnfTmyHqm4pxSTe6iqE=;
        b=Jfn2zqH92VbnO/AqTtrcOTLbulCX8i4EgFWeMQG8acZpXGhj1ojc1zaX2Ok1aGin5z
         l4AGJtNRum1O312fASfc5lIFcvtPru44pOeA6cD24dRHBjmyjZzxGM3XTfQu705EZ+O1
         UmHuw9JzrkDQJxfjTSYOdUEUbY5pksFg3xHzb6UlCV3hzhaFMy7/lP/+F1cGsR++jNA2
         WrlntqFezYOKHMkLE4kDGR0HWCubVPHsMhbxrwNaKHuYoQ1U/A87EM4OQuUMQ1srjP+r
         s0hyTUwcgAqVHL0PP4+HxvJdaY0EYsm6pzQTs4gEDk/8weeZqOtgb4zBnKCVBKViEMq9
         0RPw==
X-Gm-Message-State: AOAM533/jw/110uwiT52B3aTYrkLqKrFSJKSxUDTC57tenWFp/2ECJ/N
	hosmvTaUeolJVo4xLZCH7NkEhohfvij0/8tYfBA=
X-Google-Smtp-Source: ABdhPJwuRWOyfnhsiiN2oAZTElAD/OIy6HNxvm4F6pIar5hcDOtjzrcZfAXKJpjv2/tbxAHYxWHt/mSVGktoFLA+unc=
X-Received: by 2002:aca:b406:: with SMTP id d6mr11602849oif.71.1623077574350;
 Mon, 07 Jun 2021 07:52:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210603224007.120560-1-djrscally@gmail.com> <20210603224007.120560-3-djrscally@gmail.com>
In-Reply-To: <20210603224007.120560-3-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 7 Jun 2021 16:52:43 +0200
Message-ID: <CAJZ5v0j8pLo3pjuByYxJue9mr4TOGieYTHm8tghNQgk+LphL=w@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: O4NQI64DXYPN3ZUP6CJ3P4QN6RD4B6MX
X-Message-ID-Hash: O4NQI64DXYPN3ZUP6CJ3P4QN6RD4B6MX
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Maximilian Luz <luzmaximilian@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>, Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 2/6] ACPI: scan: Add function to fetch dependent of acpi device
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O4NQI64DXYPN3ZUP6CJ3P4QN6RD4B6MX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jun 4, 2021 at 12:41 AM Daniel Scally <djrscally@gmail.com> wrote:
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
> Changes since v5:
>
>         - Functions renamed
>
>  drivers/acpi/scan.c     | 35 +++++++++++++++++++++++++++++++++++
>  include/acpi/acpi_bus.h |  1 +
>  2 files changed, 36 insertions(+)
>
> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index 195635c3462b..9af64c34e286 100644
> --- a/drivers/acpi/scan.c
> +++ b/drivers/acpi/scan.c
> @@ -2105,6 +2105,20 @@ static void acpi_bus_attach(struct acpi_device *device, bool first_pass)
>                 device->handler->hotplug.notify_online(device);
>  }
>
> +static int acpi_dev_get_first_consumer_dev_cb(struct acpi_dep_data *dep, void *data)
> +{
> +       struct acpi_device *adev;
> +
> +       adev = acpi_bus_get_acpi_device(dep->consumer);
> +       if (!adev)
> +               /* If we don't find an adev then we want to continue parsing */
> +               return 0;
> +
> +       *(struct acpi_device **)data = adev;
> +
> +       return 1;
> +}
> +
>  static int acpi_scan_clear_dep(struct acpi_dep_data *dep, void *data)
>  {
>         struct acpi_device *adev;
> @@ -2168,6 +2182,27 @@ void acpi_dev_clear_dependencies(struct acpi_device *supplier)
>  }
>  EXPORT_SYMBOL_GPL(acpi_dev_clear_dependencies);
>
> +/**
> + * acpi_dev_get_first_consumer_dev - Return ACPI device dependent on @supplier
> + * @supplier: Pointer to the dependee device
> + *
> + * Returns the first &struct acpi_device which declares itself dependent on
> + * @supplier via the _DEP buffer, parsed from the acpi_dep_list.
> + *
> + * The caller is responsible for putting the reference to adev when it is no
> + * longer needed.
> + */
> +struct acpi_device *acpi_dev_get_first_consumer_dev(struct acpi_device *supplier)
> +{
> +       struct acpi_device *adev = NULL;
> +
> +       acpi_walk_dep_device_list(supplier->handle,
> +                                 acpi_dev_get_first_consumer_dev_cb, &adev);
> +
> +       return adev;
> +}
> +EXPORT_SYMBOL_GPL(acpi_dev_get_first_consumer_dev);
> +
>  /**
>   * acpi_bus_scan - Add ACPI device node objects in a given namespace scope.
>   * @handle: Root of the namespace scope to scan.
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 0b2c4f170f4d..4bed30e61c5b 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -692,6 +692,7 @@ static inline bool acpi_device_can_poweroff(struct acpi_device *adev)
>  bool acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *uid2);
>
>  void acpi_dev_clear_dependencies(struct acpi_device *supplier);
> +struct acpi_device *acpi_dev_get_first_consumer_dev(struct acpi_device *supplier);
>  struct acpi_device *
>  acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const char *uid, s64 hrv);
>  struct acpi_device *
> --

Applied as 5.14 material along the [1/6].

I'll expose a branch containing the 2 patches to pull from later this week.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
