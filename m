Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F842FA5C0
	for <lists+devel-acpica@lfdr.de>; Mon, 18 Jan 2021 17:14:33 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 83501100EBBAB;
	Mon, 18 Jan 2021 08:14:32 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.169; helo=mail-oi1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 96B67100EBBA2
	for <devel@acpica.org>; Mon, 18 Jan 2021 08:14:29 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id 9so18204275oiq.3
        for <devel@acpica.org>; Mon, 18 Jan 2021 08:14:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kytasFWKgvc5nOgZfApzBHs9Vw3bTByXjqhFQofMSYo=;
        b=R7nrlsdi2VigW806VzNZkAZx5kPPN4aKn5yXuK4BoZ/TeOdUgGHa/IFugr4KFVSOt1
         AKcaJBo7OFJR04HC1VSYXHDvCrqnn7PV/y6utNJltzjEWDH5di1H5+BcK9EzY8Djsx0Z
         xA2r4q+YMaqZCLf1AGnOE+mTSLCWRvw5e8v6t+zF2samGIES35Wjuc2iDtJE+7N01+ZU
         MXsKVTFl64yDu2efUwz2MpnXC77KypGMkAWPNMS3DD5WMYQFliuqcgTASKYR5oqxeV0T
         YiF32YOEHbLop1F1brUrgkyH7HPSuLo3v/0pMH7YWJDkO8eB7EnQyrFeWGckQv4/aL0l
         HldA==
X-Gm-Message-State: AOAM531u/zs2zyP4CGGqMhykTwmaRziax6bNqsr/rWNiotrRfN0DOc9R
	HVH1Tms7cqDVYO8ianYfZHjLOVF4ZKL+JgXA8y8=
X-Google-Smtp-Source: ABdhPJzcYWh4Vned6TY+/VKW3DmEPz34IY9LpEHScCK2HKDVDzY0CKS2HMxu5PygiGqOof6JgT3sOGKw7PMfZula10Q=
X-Received: by 2002:aca:5c05:: with SMTP id q5mr47953oib.157.1610986468728;
 Mon, 18 Jan 2021 08:14:28 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-3-djrscally@gmail.com>
In-Reply-To: <20210118003428.568892-3-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 18 Jan 2021 17:14:17 +0100
Message-ID: <CAJZ5v0gVQsZ4rxXW8uMidW9zfY_S50zpfrL-Gq0J3Z4-qqBiww@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 5RVEWV644BB7GYJFUGLYYPPVVZHO5QOO
X-Message-ID-Hash: 5RVEWV644BB7GYJFUGLYYPPVVZHO5QOO
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/7] acpi: utils: Add function to fetch dependent acpi_devices
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5RVEWV644BB7GYJFUGLYYPPVVZHO5QOO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 18, 2021 at 1:37 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> In some ACPI tables we encounter, devices use the _DEP method to assert
> a dependence on other ACPI devices as opposed to the OpRegions that the
> specification intends. We need to be able to find those devices "from"
> the dependee, so add a function to parse all ACPI Devices and check if
> the include the handle of the dependee device in their _DEP buffer.

What exactly do you need this for?

Would it be practical to look up the suppliers in acpi_dep_list instead?

Note that supplier drivers may remove entries from there, but does
that matter for your use case?

> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v2:
>         - Used acpi_lpss_dep() as Andy suggested.
>
>  drivers/acpi/utils.c    | 34 ++++++++++++++++++++++++++++++++++
>  include/acpi/acpi_bus.h |  2 ++
>  2 files changed, 36 insertions(+)
>
> diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> index 78b38775f18b..ec6a2406a886 100644
> --- a/drivers/acpi/utils.c
> +++ b/drivers/acpi/utils.c
> @@ -831,6 +831,18 @@ bool acpi_lpss_dep(struct acpi_device *adev, acpi_handle handle)
>         return false;
>  }
>
> +static int acpi_dev_match_by_dep(struct device *dev, const void *data)
> +{
> +       struct acpi_device *adev = to_acpi_device(dev);
> +       const struct acpi_device *dependee = data;
> +       acpi_handle handle = dependee->handle;
> +
> +       if (acpi_lpss_dep(adev, handle))
> +               return 1;
> +
> +       return 0;
> +}
> +
>  /**
>   * acpi_dev_present - Detect that a given ACPI device is present
>   * @hid: Hardware ID of the device.
> @@ -866,6 +878,28 @@ bool acpi_dev_present(const char *hid, const char *uid, s64 hrv)
>  }
>  EXPORT_SYMBOL(acpi_dev_present);
>
> +/**
> + * acpi_dev_get_next_dep_dev - Return next ACPI device dependent on input dev
> + * @adev: Pointer to the dependee device
> + * @prev: Pointer to the previous dependent device (or NULL for first match)
> + *
> + * Return the next ACPI device which declares itself dependent on @adev in
> + * the _DEP buffer.
> + *
> + * The caller is responsible to call put_device() on the returned device.
> + */
> +struct acpi_device *acpi_dev_get_next_dep_dev(struct acpi_device *adev,
> +                                             struct acpi_device *prev)
> +{
> +       struct device *start = prev ? &prev->dev : NULL;
> +       struct device *dev;
> +
> +       dev = bus_find_device(&acpi_bus_type, start, adev, acpi_dev_match_by_dep);
> +
> +       return dev ? to_acpi_device(dev) : NULL;
> +}
> +EXPORT_SYMBOL(acpi_dev_get_next_dep_dev);
> +
>  /**
>   * acpi_dev_get_next_match_dev - Return the next match of ACPI device
>   * @adev: Pointer to the previous acpi_device matching this @hid, @uid and @hrv
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 02a716a0af5d..33deb22294f2 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -683,6 +683,8 @@ static inline bool acpi_device_can_poweroff(struct acpi_device *adev)
>
>  bool acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *uid2);
>
> +struct acpi_device *
> +acpi_dev_get_next_dep_dev(struct acpi_device *adev, struct acpi_device *prev);
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
