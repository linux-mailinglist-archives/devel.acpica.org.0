Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0332933151D
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Mar 2021 18:46:23 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8798B100EC1C6;
	Mon,  8 Mar 2021 09:46:21 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.49; helo=mail-oo1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 28558100EF270
	for <devel@acpica.org>; Mon,  8 Mar 2021 09:46:20 -0800 (PST)
Received: by mail-oo1-f49.google.com with SMTP id z12so1938752ooh.5
        for <devel@acpica.org>; Mon, 08 Mar 2021 09:46:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rDAxitlThypn1GJEjMqUi6q6zLzkYSdOylaY9ls+Dr0=;
        b=GTF/s3UVsnIPjvLh+jM43vPeC63PZxRTwiOfXCDe4Gg6+8JkUVyhKjww+mwwvTAudw
         VmlhHo0ofw2xDsWGF+P38WBJJrHlUnystS7DYzuNrU0Zn5U0WG+ar47PvAXP7ArynpKr
         S8Zr/iwtEHT5YnWZ/sMqV9gPUtj/7QwpRr9QHSzGp5EEyy/CyBL39MO7hyFs4vJPXLa2
         4ZREWV1lSrJQcudGXPZDTyfx21/z0TNKQmNugHXwfZXbNWW2PwukdkJsJbAvx06M3/tZ
         WpRE+/VybqGfw+M45Fz3H4Gb5CpSUE0yrUjpoan+rZPj5F/Cz54+hU/Ce1Fc7rTYttEJ
         nR/Q==
X-Gm-Message-State: AOAM5305MEfpi+b5zaodAsnppnZ4/I1vAm/oMWH1UjfWFeRuM84iIsNG
	A+hbZiSuzz+1b+UZN19g31sgSjNOPwBIjAhDV6s=
X-Google-Smtp-Source: ABdhPJwyhzOdWoKELxTrgA0osc9usc41t0Uh3CAQo4x3D6Uju9rbSCakCqLvd+w63fkouortpkgO5PacHhfOz4D1934=
X-Received: by 2002:a4a:d48b:: with SMTP id o11mr4386544oos.2.1615225578823;
 Mon, 08 Mar 2021 09:46:18 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-2-djrscally@gmail.com>
In-Reply-To: <20210222130735.1313443-2-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 8 Mar 2021 18:46:07 +0100
Message-ID: <CAJZ5v0ib+3oScz2CuFNQdTvo16_fGYgfppZjpVZbtMC-2FK-2w@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: OC7YDLJT7ANBKYFSQKUVJH4GMWDE3RY4
X-Message-ID-Hash: OC7YDLJT7ANBKYFSQKUVJH4GMWDE3RY4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, "Mani, Rajmohan" <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, andy.shevchenko@linux.intel.com, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <
 devel@acpica.org>, "Rafael J . Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/6] ACPI: scan: Extend acpi_walk_dep_device_list()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OC7YDLJT7ANBKYFSQKUVJH4GMWDE3RY4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2021 at 2:07 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> The acpi_walk_dep_device_list() is not as generalisable as its name
> implies, serving only to decrement the dependency count for each
> dependent device of the input. Extend the function to instead accept
> a callback which can be applied to all the dependencies in acpi_dep_list.
> Replace all existing calls to the function with calls to a wrapper, passing
> a callback that applies the same dependency reduction.
>
> Suggested-by: Rafael J. Wysocki <rafael@kernel.org>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v3:
>         - patch introduced
>
>  drivers/acpi/ec.c                         |  2 +-
>  drivers/acpi/pmic/intel_pmic_chtdc_ti.c   |  2 +-
>  drivers/acpi/scan.c                       | 58 ++++++++++++++++-------
>  drivers/gpio/gpiolib-acpi.c               |  2 +-
>  drivers/i2c/i2c-core-acpi.c               |  2 +-
>  drivers/platform/surface/surface3_power.c |  2 +-
>  include/acpi/acpi_bus.h                   |  7 +++
>  include/linux/acpi.h                      |  4 +-
>  8 files changed, 55 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/acpi/ec.c b/drivers/acpi/ec.c
> index 13565629ce0a..a258db713bd2 100644
> --- a/drivers/acpi/ec.c
> +++ b/drivers/acpi/ec.c
> @@ -1627,7 +1627,7 @@ static int acpi_ec_add(struct acpi_device *device)
>         WARN(!ret, "Could not request EC cmd io port 0x%lx", ec->command_addr);
>
>         /* Reprobe devices depending on the EC */
> -       acpi_walk_dep_device_list(ec->handle);
> +       acpi_dev_flag_dependency_met(ec->handle);
>
>         acpi_handle_debug(ec->handle, "enumerated.\n");
>         return 0;
> diff --git a/drivers/acpi/pmic/intel_pmic_chtdc_ti.c b/drivers/acpi/pmic/intel_pmic_chtdc_ti.c
> index a5101b07611a..59cca504325e 100644
> --- a/drivers/acpi/pmic/intel_pmic_chtdc_ti.c
> +++ b/drivers/acpi/pmic/intel_pmic_chtdc_ti.c
> @@ -117,7 +117,7 @@ static int chtdc_ti_pmic_opregion_probe(struct platform_device *pdev)
>                 return err;
>
>         /* Re-enumerate devices depending on PMIC */
> -       acpi_walk_dep_device_list(ACPI_HANDLE(pdev->dev.parent));
> +       acpi_dev_flag_dependency_met(ACPI_HANDLE(pdev->dev.parent));
>         return 0;
>  }
>
> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index 80b668c80073..c9e4190316ef 100644
> --- a/drivers/acpi/scan.c
> +++ b/drivers/acpi/scan.c
> @@ -49,12 +49,6 @@ static DEFINE_MUTEX(acpi_hp_context_lock);
>   */
>  static u64 spcr_uart_addr;
>
> -struct acpi_dep_data {
> -       struct list_head node;
> -       acpi_handle supplier;
> -       acpi_handle consumer;
> -};
> -
>  void acpi_scan_lock_acquire(void)
>  {
>         mutex_lock(&acpi_scan_lock);
> @@ -2099,30 +2093,58 @@ static void acpi_bus_attach(struct acpi_device *device, bool first_pass)
>                 device->handler->hotplug.notify_online(device);
>  }
>
> -void acpi_walk_dep_device_list(acpi_handle handle)
> +static int __acpi_dev_flag_dependency_met(struct acpi_dep_data *dep,
> +                                         void *data)
>  {
> -       struct acpi_dep_data *dep, *tmp;
>         struct acpi_device *adev;
>
> +       acpi_bus_get_device(dep->consumer, &adev);
> +       if (!adev)
> +               return 0;
> +
> +       adev->dep_unmet--;
> +       if (!adev->dep_unmet)
> +               acpi_bus_attach(adev, true);
> +
> +       list_del(&dep->node);
> +       kfree(dep);
> +       return 0;
> +}
> +
> +void acpi_walk_dep_device_list(acpi_handle handle,
> +                              int (*callback)(struct acpi_dep_data *, void *),
> +                              void *data)
> +{
> +       struct acpi_dep_data *dep, *tmp;
> +       int ret;
> +
>         mutex_lock(&acpi_dep_list_lock);
>         list_for_each_entry_safe(dep, tmp, &acpi_dep_list, node) {
>                 if (dep->supplier == handle) {
> -                       acpi_bus_get_device(dep->consumer, &adev);
> -                       if (!adev)
> -                               continue;
> -
> -                       adev->dep_unmet--;
> -                       if (!adev->dep_unmet)
> -                               acpi_bus_attach(adev, true);

The above code in the mainline has changed recently, so you need to
rebase the above and adjust for the change of behavior.

> -
> -                       list_del(&dep->node);
> -                       kfree(dep);
> +                       ret = callback(dep, data);
> +                       if (ret)
> +                               break;
>                 }
>         }
>         mutex_unlock(&acpi_dep_list_lock);
>  }
>  EXPORT_SYMBOL_GPL(acpi_walk_dep_device_list);
>
> +/**
> + * acpi_dev_flag_dependency_met() - Inform consumers of @handle that the device
> + *                                 is now active

No parens here, please, and make it fit one line.

Also the description should be something like "Clear dependencies on
the given device."

> + * @handle: acpi_handle for the supplier device
> + *
> + * This function walks through the dependencies list and informs each consumer
> + * of @handle that their dependency upon it is now met. Devices with no more
> + * unmet dependencies will be attached to the acpi bus.
> + */
> +void acpi_dev_flag_dependency_met(acpi_handle handle)
> +{
> +       acpi_walk_dep_device_list(handle, __acpi_dev_flag_dependency_met, NULL);
> +}
> +EXPORT_SYMBOL_GPL(acpi_dev_flag_dependency_met);
> +
>  /**
>   * acpi_bus_scan - Add ACPI device node objects in a given namespace scope.
>   * @handle: Root of the namespace scope to scan.
> diff --git a/drivers/gpio/gpiolib-acpi.c b/drivers/gpio/gpiolib-acpi.c
> index e37a57d0a2f0..e4d728fda982 100644
> --- a/drivers/gpio/gpiolib-acpi.c
> +++ b/drivers/gpio/gpiolib-acpi.c
> @@ -1254,7 +1254,7 @@ void acpi_gpiochip_add(struct gpio_chip *chip)
>
>         acpi_gpiochip_request_regions(acpi_gpio);
>         acpi_gpiochip_scan_gpios(acpi_gpio);
> -       acpi_walk_dep_device_list(handle);
> +       acpi_dev_flag_dependency_met(handle);
>  }
>
>  void acpi_gpiochip_remove(struct gpio_chip *chip)
> diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
> index 37c510d9347a..38647cf34bde 100644
> --- a/drivers/i2c/i2c-core-acpi.c
> +++ b/drivers/i2c/i2c-core-acpi.c
> @@ -283,7 +283,7 @@ void i2c_acpi_register_devices(struct i2c_adapter *adap)
>         if (!handle)
>                 return;
>
> -       acpi_walk_dep_device_list(handle);
> +       acpi_dev_flag_dependency_met(handle);
>  }
>
>  static const struct acpi_device_id i2c_acpi_force_400khz_device_ids[] = {
> diff --git a/drivers/platform/surface/surface3_power.c b/drivers/platform/surface/surface3_power.c
> index cc4f9cba6856..ad895285d3e9 100644
> --- a/drivers/platform/surface/surface3_power.c
> +++ b/drivers/platform/surface/surface3_power.c
> @@ -478,7 +478,7 @@ static int mshw0011_install_space_handler(struct i2c_client *client)
>                 return -ENOMEM;
>         }
>
> -       acpi_walk_dep_device_list(handle);
> +       acpi_dev_flag_dependency_met(handle);
>         return 0;
>  }
>
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 02a716a0af5d..91172af3a04d 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -278,6 +278,12 @@ struct acpi_device_power {
>         struct acpi_device_power_state states[ACPI_D_STATE_COUNT];      /* Power states (D0-D3Cold) */
>  };
>
> +struct acpi_dep_data {
> +       struct list_head node;
> +       acpi_handle supplier;
> +       acpi_handle consumer;
> +};
> +
>  /* Performance Management */
>
>  struct acpi_device_perf_flags {
> @@ -683,6 +689,7 @@ static inline bool acpi_device_can_poweroff(struct acpi_device *adev)
>
>  bool acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *uid2);
>
> +void acpi_dev_flag_dependency_met(acpi_handle handle);
>  struct acpi_device *
>  acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const char *uid, s64 hrv);
>  struct acpi_device *
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index 2630c2e953f7..2d5e6e88e8a0 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -655,7 +655,9 @@ extern bool acpi_driver_match_device(struct device *dev,
>                                      const struct device_driver *drv);
>  int acpi_device_uevent_modalias(struct device *, struct kobj_uevent_env *);
>  int acpi_device_modalias(struct device *, char *, int);
> -void acpi_walk_dep_device_list(acpi_handle handle);
> +void acpi_walk_dep_device_list(acpi_handle handle,
> +                              int (*callback)(struct acpi_dep_data *, void *),
> +                              void *data);
>
>  struct platform_device *acpi_create_platform_device(struct acpi_device *,
>                                                     struct property_entry *);
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
