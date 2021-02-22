Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53356321AA1
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Feb 2021 15:58:29 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DE936100EC1CF;
	Mon, 22 Feb 2021 06:58:27 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A2CC4100EF271
	for <devel@acpica.org>; Mon, 22 Feb 2021 06:58:26 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id l2so301462pgb.1
        for <devel@acpica.org>; Mon, 22 Feb 2021 06:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HOaauMMyDlhqB10tkeThF/VMmwpuyOv7IZ1mUjwhwgg=;
        b=dAoI2QOa7v6ssxQbplgr8THdoyauc6/Jguj5Cc0dd4QZG2NEJ32z4xRJAf4kdu1IaO
         yoNYbAy6vcMpZcz9WU6i6PTfHDKoLG2wVb3WsjGoq/u6/jUM1iEwOpDuXUeovN6Uv6Hu
         r8j5hfeCcYMsaoxDOkyelA7KblPYRxs1+h9M7CahTeA7LfxjrEQabrtVJrhG8o6QKgZL
         2M1pRxJSrODl7xXVBns5Jq870uUHU9Xl2TMgPzM02MQ8hOjpx9RvzzIrAKSozsjdRFNH
         C76qITp4u9xXUd5jYhJhLdCsXeMpX6KlBEylANA12F5lD2R+HgNaj965X1Pz0RPtaXah
         d83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HOaauMMyDlhqB10tkeThF/VMmwpuyOv7IZ1mUjwhwgg=;
        b=jphyOJYXoXOEZ38MUEkw3/pyiXJuvruFXbMFKDDCaiEixCRZLmAYrNGDiUdAc7lfXq
         i6rrOU2ND5MnsaW47lDrHD5TL4mmgI4GZ3E34vi+AD+XsN1JrOdTYhqSR1YFv1Sy6y0K
         apHD1uxasyQ5O+pp9mKzcnE4XXqPQJPk/nwC5atIeOkd8DLktuvoaFPGok2g+Jhe+mJ8
         vAU+g+irelIQFNfsDiRmMisRUA26Dx7ssouFWYV+BBdx9JE+Hc/iP289SfRnx+DOooPw
         SXq42sXenU/8MTuIhbBfpf50umhipebv4g5MRFFZLMNI00NTDl85SrdaUTixuo5F+eyQ
         p28w==
X-Gm-Message-State: AOAM533K35EwiYudWeq90A7GxlCdhdbr18MqypfQFO6bsms7HxAbDEYj
	Wb6D6XRHhJnSlIXShtVFXrMBzOn23GrCN0VE7TI=
X-Google-Smtp-Source: ABdhPJzF78SlbvvyPKbWHBGek0KUF/efqME8Z72Y9t/Lmw0ezeDJUO9gBbzYeQKCFJQr/9Hf9xll5t1DYtuNfGaVPjs=
X-Received: by 2002:a05:6a00:854:b029:1b7:6233:c5f with SMTP id
 q20-20020a056a000854b02901b762330c5fmr14734542pfk.73.1614005906042; Mon, 22
 Feb 2021 06:58:26 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-6-djrscally@gmail.com>
In-Reply-To: <20210222130735.1313443-6-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Feb 2021 16:58:09 +0200
Message-ID: <CAHp75Vd2Dc2Poq7VNRXRT-0VjkYdEFY2WKpz8fWpAQViQRO4jA@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: SYEXZMNM4EVUQ7OD6S2RBCCT7FBXHBDA
X-Message-ID-Hash: SYEXZMNM4EVUQ7OD6S2RBCCT7FBXHBDA
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 5/6] platform/x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SYEXZMNM4EVUQ7OD6S2RBCCT7FBXHBDA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> ACPI devices with _HID INT3472 are currently matched to the tps68470
> driver, however this does not cover all situations in which that _HID
> occurs. We've encountered three possibilities:
>
> 1. On Chrome OS devices, an ACPI device with _HID INT3472 (representing
> a physical TPS68470 device) that requires a GPIO and OpRegion driver
> 2. On devices designed for Windows, an ACPI device with _HID INT3472
> (again representing a physical TPS68470 device) which requires GPIO,
> Clock and Regulator drivers.
> 3. On other devices designed for Windows, an ACPI device with _HID
> INT3472 which does **not** represent a physical TPS68470, and is instead
> used as a dummy device to group some system GPIO lines which are meant
> to be consumed by the sensor that is dependent on this entry.
>
> This commit adds a new module, registering a platform driver to deal
> with the 3rd scenario plus an i2c driver to deal with #1 and #2, by
> querying the CLDB buffer found against INT3472 entries to determine
> which is most appropriate.

Can you split CLK parts (and maybe regulators as well) to something
like intel_skl_int3472_clk.c?

...

> +#include <linux/acpi.h>
> +#include <linux/i2c.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>

> +               dev_err(&adev->dev, "%s object is not an ACPI buffer\n", id);

Perhaps acpi_handle_err() et al. instead of dev_*(&adev->dev, ...)
where it's applicable?

...

> +       if (obj->buffer.length > sizeof(*cldb)) {
> +               dev_err(&adev->dev, "The CLDB buffer is too large\n");
> +               ret = -EINVAL;

ENOSPC? ENOMEM?

> +               goto out_free_obj;
> +       }

...

> +static int skl_int3472_init(void)
> +{

> +       int ret = 0;

Redundant assignment.

> +       ret = platform_driver_register(&int3472_discrete);
> +       if (ret)
> +               return ret;
> +
> +       ret = i2c_register_driver(THIS_MODULE, &int3472_tps68470);
> +       if (ret)
> +               platform_driver_unregister(&int3472_discrete);

Not a fan of the above, but let's see what others will say...

> +       return ret;
> +}
> +module_init(skl_int3472_init);

...

> +#include <linux/clk-provider.h>

This is definitely not for *.h. (Not all C files needed this)

> +#include <linux/gpio/machine.h>

Ditto.

> +#include <linux/regulator/driver.h>
> +#include <linux/regulator/machine.h>

Ditto.

...

> +/*
> + * 79234640-9e10-4fea-a5c1-b5aa8b19756f
> + * This _DSM GUID returns information about the GPIO lines mapped to a
> + * discrete INT3472 device. Function number 1 returns a count of the GPIO
> + * lines that are mapped. Subsequent functions return 32 bit ints encoding
> + * information about the GPIO line, including its purpose.
> + */
> +static const guid_t int3472_gpio_guid =
> +       GUID_INIT(0x79234640, 0x9e10, 0x4fea,
> +                 0xa5, 0xc1, 0xb5, 0xaa, 0x8b, 0x19, 0x75, 0x6f);

uuid.h ?

...

> +/*
> + * The regulators have to have .ops to be valid, but the only ops we actually
> + * support are .enable and .disable which are handled via .ena_gpiod. Pass an
> + * empty struct to clear the check without lying about capabilities.
> + */
> +static const struct regulator_ops int3472_gpio_regulator_ops = { 0 };

{ 0 } is implied by the static keyword and C standard.

...

> +static int skl_int3472_clk_prepare(struct clk_hw *hw)
> +{
> +       struct int3472_gpio_clock *clk = to_int3472_clk(hw);
> +
> +       gpiod_set_value(clk->ena_gpio, 1);

> +       if (clk->led_gpio)

Make it optional and drop this check. Same for other places of use of this GPIO.

> +               gpiod_set_value(clk->led_gpio, 1);
> +
> +       return 0;
> +}

...

> +static int skl_int3472_clk_enable(struct clk_hw *hw)
> +{
> +       /*
> +        * We're just turning a GPIO on to enable, which operation has the
> +        * potential to sleep. Given enable cannot sleep, but prepare can,
> +        * we toggle the GPIO in prepare instead. Thus, nothing to do here.
> +        */

Missed . and / or  () in some words? (Describing callbacks, personally
I use the form "->callback()" in such cases)

> +       return 0;
> +}

...

> +static unsigned int skl_int3472_get_clk_frequency(struct int3472_discrete_device *int3472)
> +{
> +       union acpi_object *obj;

> +       unsigned int ret = 0;

unsigned for ret is unusual. Looking into the code, first of all it
doesn't need this assignment; second, it probably can gain a better
name: "frequency"?

> +       obj = skl_int3472_get_acpi_buffer(int3472->sensor, "SSDB");
> +       if (IS_ERR(obj))
> +               return 0; /* report rate as 0 on error */
> +
> +       if (obj->buffer.length < CIO2_SENSOR_SSDB_MCLKSPEED_OFFSET + sizeof(u32)) {
> +               dev_err(int3472->dev, "The buffer is too small\n");
> +               goto out_free_buff;
> +       }
> +
> +       ret = *(u32 *)(obj->buffer.pointer + CIO2_SENSOR_SSDB_MCLKSPEED_OFFSET);
> +
> +out_free_buff:
> +       kfree(obj);
> +       return ret;
> +}

...

> +       sensor_config = int3472->sensor_config;

> +       if (!IS_ERR_OR_NULL(sensor_config) && sensor_config->function_maps) {

Hmm...

Would

if (IS_ERR_OR_NULL(sensor_config))
  return 0;

if (!_maps)
  return 0;

with respective comments working here?

> +               const struct int3472_gpio_function_remap *remap =
> +                       sensor_config->function_maps;

Split assignment so we can see what is the initial for-loop iterator value.

> +               for (; remap->documented; ++remap)

remap++

> +                       if (!strcmp(func, remap->documented)) {
> +                               func = remap->actual;
> +                               break;
> +                       }
> +       }
> +
> +       /* Functions mapped to NULL should not be mapped to the sensor */
> +       if (!func)
> +               return 0;

...

> +static int skl_int3472_register_clock(struct int3472_discrete_device *int3472)
> +{
> +       struct clk_init_data init = {
> +               .ops = &skl_int3472_clock_ops,
> +               .flags = CLK_GET_RATE_NOCACHE,
> +       };
> +       int ret = 0;
> +
> +       init.name = kasprintf(GFP_KERNEL, "%s-clk",
> +                             acpi_dev_name(int3472->adev));

devm_*() ? Or is the lifetime different?

> +       if (!init.name)
> +               return -ENOMEM;
> +
> +       int3472->clock.frequency = skl_int3472_get_clk_frequency(int3472);
> +
> +       int3472->clock.clk_hw.init = &init;
> +       int3472->clock.clk = clk_register(&int3472->adev->dev,
> +                                         &int3472->clock.clk_hw);
> +       if (IS_ERR(int3472->clock.clk)) {
> +               ret = PTR_ERR(int3472->clock.clk);
> +               goto out_free_init_name;
> +       }
> +
> +       int3472->clock.cl = clkdev_create(int3472->clock.clk, NULL,
> +                                         int3472->sensor_name);
> +       if (!int3472->clock.cl) {
> +               ret = -ENOMEM;
> +               goto err_unregister_clk;
> +       }
> +
> +       goto out_free_init_name;
> +
> +err_unregister_clk:
> +       clk_unregister(int3472->clock.clk);
> +out_free_init_name:
> +       kfree(init.name);
> +
> +       return ret;
> +}

...

> +       sensor_config = int3472->sensor_config;
> +       if (IS_ERR_OR_NULL(sensor_config)) {
> +               dev_err(int3472->dev, "No sensor module config\n");

> +               return PTR_ERR(sensor_config);

NULL -> 0. Is it okay?

> +       }

...

> +       int ret = 0;

Seems redundant assignment.
...

> +       if (ares->type != ACPI_RESOURCE_TYPE_GPIO ||
> +           ares->data.gpio.connection_type != ACPI_RESOURCE_GPIO_TYPE_IO)
> +               return 1; /* Deliberately positive so parsing continues */

I don't like to lose control over ACPI_RESOURCE_TYPE_GPIO, i.e.
spreading it over kernel code (yes, I know about one existing TS
case).
Consider to provide a helper in analogue to acpi_gpio_get_irq_resource().

...

> +       if (ret < 0 && ret != -EPROBE_DEFER)
> +               dev_err(int3472->dev, err_msg);

dev_err_probe() will make the above conditional go away. And you may even do...

> +       int3472->n_gpios++;
> +       ACPI_FREE(obj);

> +       return ret;

...here

return dev_err_probe(...);

...

> +       struct list_head resource_list;

> +       INIT_LIST_HEAD(&resource_list);

LIST_HEAD(resource_list);

will do two in one.

...

> +       if (int3472->clock.ena_gpio) {

Not sure you need this here.

> +               ret = skl_int3472_register_clock(int3472);
> +               if (ret)
> +                       goto out_free_res_list;

> +       } else {
> +               if (int3472->clock.led_gpio)

Ditto.

> +                       dev_warn(int3472->dev,
> +                                "No clk GPIO. The privacy LED won't work\n");
> +       }

...

> +       /* Max num GPIOs we've seen plus a terminator */
> +       int3472 = kzalloc(struct_size(int3472, gpios.table,
> +                         INT3472_MAX_SENSOR_GPIOS + 1), GFP_KERNEL);

Wonder of you can use devm_*() APIs in this function.

> +       if (!int3472)
> +               return -ENOMEM;

...

> +       int3472->sensor = acpi_dev_get_dependent_dev(adev);
> +       if (IS_ERR_OR_NULL(int3472->sensor)) {
> +               dev_err(&pdev->dev,
> +                       "INT3472 seems to have no dependents.\n");

> +               ret = -ENODEV;

Don't shadow error code when you got IS_ERR() case.

> +               goto err_free_int3472;
> +       }

...

> +int skl_int3472_discrete_remove(struct platform_device *pdev)
> +{
> +       struct int3472_discrete_device *int3472 = platform_get_drvdata(pdev);

> +       if (int3472->gpios.dev_id)
> +               gpiod_remove_lookup_table(&int3472->gpios);

gpiod_remove_lookup_table() is now NULL-aware.
But in any case I guess you don't need the above check.

> +       if (!IS_ERR(int3472->regulator.rdev))

> +               regulator_unregister(int3472->regulator.rdev);

Shouldn't it be the pointer to the regulator itself?

> +       if (!IS_ERR(int3472->clock.clk))

If you get it optional, you won't need this additional check.

> +               clk_unregister(int3472->clock.clk);
> +
> +       if (int3472->clock.cl)
> +               clkdev_drop(int3472->clock.cl);
> +
> +       gpiod_put(int3472->regulator.gpio);
> +       gpiod_put(int3472->clock.ena_gpio);
> +       gpiod_put(int3472->clock.led_gpio);
> +
> +       acpi_dev_put(int3472->sensor);
> +
> +       kfree(int3472->sensor_name);
> +       kfree(int3472);
> +
> +       return 0;
> +}

...

> +       ret = skl_int3472_fill_cldb(adev, &cldb);
> +       if (!ret && cldb.control_logic_type != 2) {
> +               dev_err(&client->dev, "Unsupported control logic type %u\n",
> +                       cldb.control_logic_type);
> +               return -EINVAL;
> +       }
> +
> +       if (ret)
> +               cldb_present = false;

if (ret)
  ...
else if (...)  {
  ...
  return ...;
}

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
