Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F86B321973
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Feb 2021 14:54:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CC96E100EBB9E;
	Mon, 22 Feb 2021 05:54:28 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::532; helo=mail-pg1-x532.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 18805100EBB68
	for <devel@acpica.org>; Mon, 22 Feb 2021 05:54:26 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id o38so10243736pgm.9
        for <devel@acpica.org>; Mon, 22 Feb 2021 05:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oxf7PZzIW0TNiKFXZ0MRXr44MqqMuTtBh99bmn/oRV8=;
        b=SJ8eRAtvrs+BerYVhbx2M+klaAObp3RhBwvqk+0BbIGXHIs9bDiPT7m0oPYjJHYjdB
         K5U9rrHyXZZFLcm+5dVV24fR6X/lmKEH/uZ58EEWYsDtcnIdML1GgRaqf5i1khJqqMpo
         1f1Ylzr7MqJg1FEhIXygbq0iKMM6jM7SaLN5+PfRWLD4wcIjAjXGroXUmXQDNmNIgq33
         BEFeP15N8kCds22dktcA+xTCDFryyIN+svEX0ZPlplfAbrSNeg8ru2OhjAq72Xk9q8nB
         RMPvp4Ad5TjDOobOYthLkBw+OAo2jdUvkCVCm989f5foX/qHupkI3NLGTuSRQxccydvu
         k1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oxf7PZzIW0TNiKFXZ0MRXr44MqqMuTtBh99bmn/oRV8=;
        b=AMC+RfTqxBO8N6lFAcFARDYKCiMqpbxaqoeZYEkkA8PmRA8YOySSONu4B9zeU+IhiP
         Cto735MR+ySUrQ6QUGwhwZ4ptHo6hWFujx3RkqIJ1+hFbaoNUGJq9DOLMLA28d5pR36x
         H6Tj2ai1oAsN4jIhRj4GySwwQxa7D+sr5lRCR/9cW9VaorG6nXgX5yYCOySDoxCSSRiY
         d0zZYaeBSiW3dXDbe+uyrUjOHrxLx0QK5kKjA2I9WsZ+eD4ZoODXMp/yWwYIYrJTY2N/
         xBQy39M8OVHGnrPQVoUe/aU+v9m4Kf+BQQ+HTqAJeO9RECrYlY5q/vocc/QK/dPyDOz4
         Dj2A==
X-Gm-Message-State: AOAM532+gTnWtorfFu18rzwWrNDaKHynRHC9QV6Sv8TScNh9L8sDbyWo
	m9A7eby2iFvGhZ24MDofWkYcqD3+Nv7GGPTuF10=
X-Google-Smtp-Source: ABdhPJwRZNKdobP0oagG+4NZGEz/EFMU9YEALrPwUEZPekSGiofAAAjMn+NOGUWYAAMZohk9uGKULRR/5Ap/UV8j954=
X-Received: by 2002:a05:6a00:854:b029:1b7:6233:c5f with SMTP id
 q20-20020a056a000854b02901b762330c5fmr14498622pfk.73.1614002065462; Mon, 22
 Feb 2021 05:54:25 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-5-djrscally@gmail.com>
In-Reply-To: <20210222130735.1313443-5-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Feb 2021 15:54:09 +0200
Message-ID: <CAHp75VfQpMJt8t_fOyOO0gPL686egCTnfh1=DZRKTg84Omj8=Q@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: YIYBC7OZJB4NWSVCICT54BR4MSW2WRFP
X-Message-ID-Hash: YIYBC7OZJB4NWSVCICT54BR4MSW2WRFP
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 4/6] gpiolib: acpi: Export acpi_get_gpiod()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YIYBC7OZJB4NWSVCICT54BR4MSW2WRFP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2021 at 3:13 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> I need to be able to translate GPIO resources in an ACPI device's _CRS

I -> we

> into GPIO descriptor array. Those are represented in _CRS as a pathname
> to a GPIO device plus the pin's index number: this function is perfect

Which one? "the acpi_...() function"

> for that purpose.
>
> As it's currently only used internally within the GPIO layer, provide and
> export a wrapper function that additionally holds a reference to the GPIO
> device.

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
after addressing above and beyond :-)

>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v3:
>
>         - Having realised that it wasn't taking a reference to the GPIO device,
>           I decided the best thing to do was leave the existing function as-is
>           (apart from renaming) and provide a wrapper that simply passes
>           through to the original and takes a reference before returning the
>           struct gpio_desc
>
>           Because of the change to that functionality, I dropped the R-b's from
>           the last version.
>
>  drivers/gpio/gpiolib-acpi.c   | 36 +++++++++++++++++++++++++++++++----
>  include/linux/gpio/consumer.h |  7 +++++++
>  2 files changed, 39 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpio/gpiolib-acpi.c b/drivers/gpio/gpiolib-acpi.c
> index e4d728fda982..0cc7cc327757 100644
> --- a/drivers/gpio/gpiolib-acpi.c
> +++ b/drivers/gpio/gpiolib-acpi.c
> @@ -102,7 +102,8 @@ static int acpi_gpiochip_find(struct gpio_chip *gc, void *data)
>  }
>
>  /**
> - * acpi_get_gpiod() - Translate ACPI GPIO pin to GPIO descriptor usable with GPIO API
> + * __acpi_get_gpiod() - Translate ACPI GPIO pin to GPIO descriptor usable with

Can we rename it better, i.e. w/o __, like "acpi_gpio_pin_to_gpiod()" or so?

> + *                     GPIO API
>   * @path:      ACPI GPIO controller full path name, (e.g. "\\_SB.GPO1")
>   * @pin:       ACPI GPIO pin number (0-based, controller-relative)
>   *
> @@ -111,7 +112,7 @@ static int acpi_gpiochip_find(struct gpio_chip *gc, void *data)
>   * controller does not have GPIO chip registered at the moment. This is to
>   * support probe deferral.
>   */
> -static struct gpio_desc *acpi_get_gpiod(char *path, int pin)
> +static struct gpio_desc *__acpi_get_gpiod(char *path, int pin)
>  {
>         struct gpio_chip *chip;
>         acpi_handle handle;
> @@ -128,6 +129,33 @@ static struct gpio_desc *acpi_get_gpiod(char *path, int pin)
>         return gpiochip_get_desc(chip, pin);
>  }
>
> +/**
> + * acpi_get_gpiod() - Translate ACPI GPIO pin to GPIO descriptor usable with
> + *                   GPIO API, and hold a refcount to the GPIO device.
> + * @path:      ACPI GPIO controller full path name, (e.g. "\\_SB.GPO1")
> + * @pin:       ACPI GPIO pin number (0-based, controller-relative)
> + * @label:     Label to pass to gpiod_request()
> + *
> + * This function is a simple pass-through to __acpi_get_gpiod(), except that as
> + * it is intended for use outside of the GPIO layer (in a similar fashion to
> + * gpiod_get_index() for example) it also holds a reference to the GPIO device.
> + */
> +struct gpio_desc *acpi_get_gpiod(char *path, int pin, char *label)

Name better to reflect the action, perhaps
"acpi_gpio_get_and_request_desc()" or so.

> +{

> +       struct gpio_desc *gpio = __acpi_get_gpiod(path, pin);

Please, split it, so the assignment goes...

> +       int ret;

...here.

> +       if (IS_ERR(gpio))
> +               return gpio;
> +
> +       ret = gpiod_request(gpio, label);
> +       if (ret)
> +               return ERR_PTR(ret);
> +
> +       return gpio;
> +}
> +EXPORT_SYMBOL_GPL(acpi_get_gpiod);
> +
>  static irqreturn_t acpi_gpio_irq_handler(int irq, void *data)
>  {
>         struct acpi_gpio_event *event = data;
> @@ -689,8 +717,8 @@ static int acpi_populate_gpio_lookup(struct acpi_resource *ares, void *data)
>                 if (pin_index >= agpio->pin_table_length)
>                         return 1;
>
> -               lookup->desc = acpi_get_gpiod(agpio->resource_source.string_ptr,
> -                                             agpio->pin_table[pin_index]);
> +               lookup->desc = __acpi_get_gpiod(agpio->resource_source.string_ptr,
> +                                               agpio->pin_table[pin_index]);
>                 lookup->info.pin_config = agpio->pin_config;
>                 lookup->info.debounce = agpio->debounce_timeout;
>                 lookup->info.gpioint = gpioint;
> diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
> index ef49307611d2..6eee751f44dd 100644
> --- a/include/linux/gpio/consumer.h
> +++ b/include/linux/gpio/consumer.h
> @@ -690,6 +690,8 @@ int devm_acpi_dev_add_driver_gpios(struct device *dev,
>                                    const struct acpi_gpio_mapping *gpios);
>  void devm_acpi_dev_remove_driver_gpios(struct device *dev);
>
> +struct gpio_desc *acpi_get_gpiod(char *path, int pin, char *label);
> +
>  #else  /* CONFIG_GPIOLIB && CONFIG_ACPI */
>
>  struct acpi_device;
> @@ -708,6 +710,11 @@ static inline int devm_acpi_dev_add_driver_gpios(struct device *dev,
>  }
>  static inline void devm_acpi_dev_remove_driver_gpios(struct device *dev) {}
>
> +struct gpio_desc *acpi_get_gpiod(char *path, int pin, char *label)
> +{
> +       return NULL;
> +}
> +
>  #endif /* CONFIG_GPIOLIB && CONFIG_ACPI */
>
>
> --
> 2.25.1
>


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
