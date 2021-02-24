Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CDF323918
	for <lists+devel-acpica@lfdr.de>; Wed, 24 Feb 2021 09:56:28 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 50871100ED4BF;
	Wed, 24 Feb 2021 00:56:26 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B9177100ED497
	for <devel@acpica.org>; Wed, 24 Feb 2021 00:56:23 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id t29so892365pfg.11
        for <devel@acpica.org>; Wed, 24 Feb 2021 00:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=d6YnzVU3WY9vMygv+3WJgJJ9IWUq1MAW+5iER9T5wiA=;
        b=myCQxZkHI+LTkzyimnC+6DTqoRleeGYEyYVtKZnNQbx5KBjmjuh9I4dsSRFtqKZ2YL
         dTAygIos18i3dHILyB36x6VNtugyCEH+05Vq2/KZVEVGHjVUH8EWhjGL1xXsjmm2s1s1
         oznjQAedkigOvxdmp1adiE2snaV+aDdCTiFDhCrXmzCrKSn0BxlK8UTAou1I7IBh9xIk
         3MkAmGSyMfKFsBlGzpkmlMwEyR6eGQhNE/skdoWlhp/lQRasblb4qCvlq/F+sH0UgBvP
         vXdTy6M0bH9B5BYefNHSGtlb62iPxUXZBCvJDibPmCFJ0b8Vn46YvtgxJuumjjt/2wfB
         YC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=d6YnzVU3WY9vMygv+3WJgJJ9IWUq1MAW+5iER9T5wiA=;
        b=aHAksW4/8FGAV0xLWOSHxIYf49KtDtKLAi8ZVL3FA0VwRt7RcrY/Z7HlSXqPwXHwyZ
         TmMYZVzIZCDbqde7TzLF5nRtAHC88OTJFGclIf5OG7rVkU8l8Rv3709l3l5xxsuV5qYM
         /7eYSRZUR/RfV7OBnMcfXTR9coH1OBdRvkFt02o3inUmfVUNSYWwQsakc6OIOxBSQyEe
         l+tKS4Z4ypMg7UaR9nBqiUbkFEqM7cUYx7MilYJkSCPR2FVVvg/+yfBp7tB00ZzXqxQK
         5g19gD8uhablHy3wGbp425UdDbTsVHGUxHt5pn6IRK31u/sKA7g9O8VJNdbLcOh21Ikh
         cH7A==
X-Gm-Message-State: AOAM5328Juz6j6ZAQi/gJA8FfLMFpDseRz1xYywdd4zOBFS3JIxdl9qA
	iaX3cpusymKhh74YSlvor513JKh7FXzrgApOhls=
X-Google-Smtp-Source: ABdhPJyYz8JPE/h1lMWjwVE2rRbEcCcH18TiIop09zYUoO+R7mRRExUARQxr9dwdvx5OxVyKYDbboJRqOiN0XUvgBAM=
X-Received: by 2002:a65:4c08:: with SMTP id u8mr27605361pgq.203.1614156982603;
 Wed, 24 Feb 2021 00:56:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90b:224c:0:0:0:0 with HTTP; Wed, 24 Feb 2021 00:56:22
 -0800 (PST)
In-Reply-To: <1360fc85-3f39-1dce-eee9-c4e76c2087ae@gmail.com>
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-6-djrscally@gmail.com>
 <YDVfyt2d2Nhsa7l3@pendragon.ideasonboard.com> <1360fc85-3f39-1dce-eee9-c4e76c2087ae@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 24 Feb 2021 10:56:22 +0200
Message-ID: <CAHp75VcUcEhXn3W-JW0iJaSHGDtyYtNE42o9UsBp1K2oEJi41g@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: GL5E5RPXBCOWJJEXL5N2P3AGADM65FRC
X-Message-ID-Hash: GL5E5RPXBCOWJJEXL5N2P3AGADM65FRC
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, "tfiga@chromium.org" <tfiga@chromium.org>, "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>, "rajmohan.mani@intel.com" <rajmohan.mani@intel.com>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "mika.westerberg@linux.intel.com" <mika.westerberg@linux.intel.com>, "linus.walleij@linaro.org" <linus.walleij@linaro.org>, "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "wsa@kernel.org" <wsa@kernel.org>, "lee.jones@linaro.org" <lee.jones@linaro.org>, "andy.shevchenko@linux.intel.com" <andy.shevchenko@linux.intel.com>, "kieran.bingham+renesas@ideasonboard.com" <kieran.bingham+renesas@ideasonboard.com>, "hdegoede@redhat.com" <hdegoede@redhat.com>, "mgross@linux.intel.com" <mgross@linux.intel.com>, "luzmaximilian@gmail.com" <luzmaximilian@gmail.com>, "erik.kaneda@intel.com" <erik.kaneda@intel.com>, "me@fabwu.ch" <me@fabwu.ch>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-acpi@vger.kernel.org" <lin
 ux-acpi@vger.kernel.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 5/6] platform/x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GL5E5RPXBCOWJJEXL5N2P3AGADM65FRC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============3918480350788279139=="

--===============3918480350788279139==
Content-Type: multipart/alternative; boundary="0000000000008f533e05bc1135a6"

--0000000000008f533e05bc1135a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wednesday, February 24, 2021, Daniel Scally <djrscally@gmail.com> wrote:

> Hi Laurent
>
> On 23/02/2021 20:04, Laurent Pinchart wrote:
> > +
> > +/*
> > + * Here follows platform specific mapping information that we can pass
> to
> > + * the functions mapping resources to the sensors. Where the sensors
> have
> > + * a power enable pin defined in DSDT we need to provide a supply name
> so
> > + * the sensor drivers can find the regulator. The device name will be
> derived
> > + * from the sensor's ACPI device within the code. Optionally, we can
> provide a
> > + * NULL terminated array of function name mappings to deal with any
> platform
> > + * specific deviations from the documented behaviour of GPIOs.
> > + *
> > + * Map a GPIO function name to NULL to prevent the driver from mapping
> that
> > + * GPIO at all.
> > + */
> > +
> > +static const struct int3472_gpio_function_remap
> ov2680_gpio_function_remaps[] =3D {
> > +     { "reset", NULL },
> > +     { "powerdown", "reset" },
> > +     { }
> > +};
> > +
> > +static struct int3472_sensor_config int3472_sensor_configs[] =3D {
> > This should be static const (and there will be some fallout due to that=
,
> > as skl_int3472_register_regulator() modifies the supply_map, so I think
> > you'll have a copy of supply_map in int3472_discrete_device).
>
>
> Ack to all of the constness; you mentioned that last time too - not sure
> how I missed doing those! I think I can just having a local struct
> regulator_consumer_supply in skl_int3472_register_regulator and fill it
> from int3472->sensor_config.supply_map
>
> >> +static unsigned int skl_int3472_get_clk_frequency(struct
> int3472_discrete_device *int3472)
> >> +{
> >> +    union acpi_object *obj;
> >> +    unsigned int ret =3D 0;
> >> +
> >> +    obj =3D skl_int3472_get_acpi_buffer(int3472->sensor, "SSDB");
> >> +    if (IS_ERR(obj))
> >> +            return 0; /* report rate as 0 on error */
> >> +
> >> +    if (obj->buffer.length < CIO2_SENSOR_SSDB_MCLKSPEED_OFFSET +
> sizeof(u32)) {
> > Should we define an ssdb structure instead of peeking into the buffer
> > with an offset ?
>
>
> I thought about that, but in the end decided it didn't seem worth
> defining the whole SSDB structure just to use one field. Particularly
> since we use it in cio2-bridge already, so if we're going to do that it
> really ought to just live in a header that's included in both - and that
> seemed even less worthwhile.
>
>
> I don't have a strong feeling though, so if you think it's better to
> define the struct I'm happy to.
>
>
> >> +static unsigned long skl_int3472_clk_recalc_rate(struct clk_hw *hw,
> >> +                                             unsigned long parent_rat=
e)
> >> +{
> >> +    struct int3472_gpio_clock *clk =3D to_int3472_clk(hw);
> >> +    struct int3472_discrete_device *int3472 =3D to_int3472_device(clk=
);
> >> +
> >> +    return int3472->clock.frequency;
> > Maybe just
> >
> >       struct int3472_gpio_clock *clk =3D to_int3472_clk(hw);
> >
> >       return clk->frequency;
>
>
> Oops, of course.
>
> >> +static int skl_int3472_register_regulator(struct
> int3472_discrete_device *int3472,
> >> +                                      struct acpi_resource *ares)
> >> +{
> >> +    char *path =3D ares->data.gpio.resource_source.string_ptr;
> >> +    struct int3472_sensor_config *sensor_config;
> >> +    struct regulator_init_data init_data =3D { };
> >> +    struct regulator_config cfg =3D { };
> >> +    int ret;
> >> +
> >> +    sensor_config =3D int3472->sensor_config;
> >> +    if (IS_ERR_OR_NULL(sensor_config)) {
> >> +            dev_err(int3472->dev, "No sensor module config\n");
> >> +            return PTR_ERR(sensor_config);
> >> +    }
> >> +
> >> +    if (!sensor_config->supply_map.supply) {
> >> +            dev_err(int3472->dev, "No supply name defined\n");
> >> +            return -ENODEV;
> >> +    }
> >> +
> >> +    init_data.constraints.valid_ops_mask =3D REGULATOR_CHANGE_STATUS;
> >> +    init_data.num_consumer_supplies =3D 1;
> >> +    sensor_config->supply_map.dev_name =3D int3472->sensor_name;
> >> +    init_data.consumer_supplies =3D &sensor_config->supply_map;
> >> +
> >> +    snprintf(int3472->regulator.regulator_name,
> >> +             sizeof(int3472->regulator.regulator_name),
> "%s-regulator",
> >> +             acpi_dev_name(int3472->adev));
> >> +    snprintf(int3472->regulator.supply_name,
> >> +             GPIO_REGULATOR_SUPPLY_NAME_LENGTH, "supply-0");
> >> +
> >> +    int3472->regulator.rdesc =3D INT3472_REGULATOR(
> >> +
> int3472->regulator.regulator_name,
> >> +                                            int3472->regulator.supply=
_
> name,
> >> +
> &int3472_gpio_regulator_ops);
> >> +
> >> +    int3472->regulator.gpio =3D acpi_get_gpiod(path,
> >> +
>  ares->data.gpio.pin_table[0],
> >> +                                             "int3472,regulator");
> >> +    if (IS_ERR(int3472->regulator.gpio)) {
> >> +            dev_err(int3472->dev, "Failed to get regulator GPIO
> lines\n");
> > s/lines/line/ (sorry, it was a typo in my review of v2)
>
>
> No problem!
>
> >> +static int skl_int3472_parse_crs(struct int3472_discrete_device
> *int3472)
> >> +{
> >> +    struct list_head resource_list;
> >> +    int ret;
> >> +
> >> +    INIT_LIST_HEAD(&resource_list);
> >> +
> >> +    int3472->sensor_config =3D skl_int3472_get_sensor_module_
> config(int3472);
> > I have forgotten some of the context I'm afraid :-/ Are there valid use
> > cases for not checking for an error here, or should we do so and drop
> > the error checks in other functions above ?
>
>
> Not all platforms need a sensor_config; only those which have either a
> regulator pin or need a GPIO function to be remapped; the rest will do
> without it.
>
> So, we need to not check for an error here because the absence of a
> sensor_config isn't necessarily an error, we won't know till later.
>
> > +int skl_int3472_discrete_probe(struct platform_device *pdev)
> > +{
> > +     struct acpi_device *adev =3D ACPI_COMPANION(&pdev->dev);
> > +     struct int3472_discrete_device *int3472;
> > +     struct int3472_cldb cldb;
> > +     int ret;
> > +
> > +     ret =3D skl_int3472_fill_cldb(adev, &cldb);
> > +     if (ret) {
> > +             dev_err(&pdev->dev, "Couldn't fill CLDB structure\n");
> > +             return ret;
> > +     }
> > +
> > +     if (cldb.control_logic_type !=3D 1) {
> > +             dev_err(&pdev->dev, "Unsupported control logic type %u\n"=
,
> > +                     cldb.control_logic_type);
> > +             return -EINVAL;
> > +     }
> > +
> > +     /* Max num GPIOs we've seen plus a terminator */
> > +     int3472 =3D kzalloc(struct_size(int3472, gpios.table,
> > +                       INT3472_MAX_SENSOR_GPIOS + 1), GFP_KERNEL);
> > +     if (!int3472)
> > +             return -ENOMEM;
> > +
> > +     int3472->adev =3D adev;
> > +     int3472->dev =3D &pdev->dev;
> > +     platform_set_drvdata(pdev, int3472);
> > +
> > +     int3472->sensor =3D acpi_dev_get_dependent_dev(adev);
> > +     if (IS_ERR_OR_NULL(int3472->sensor)) {
> > +             dev_err(&pdev->dev,
> > +                     "INT3472 seems to have no dependents.\n");
> > +             ret =3D -ENODEV;
> > +             goto err_free_int3472;
> > +     }
> > +     get_device(&int3472->sensor->dev);
> > I see no corresponding put_device(), am I missing something ? I'm also
> > not sure why this is needed.
> >
>
> The put is acpi_dev_put() in skl_int3472_discrete_remove(); there seems
> to be no acpi_dev_get() for some reason. We use the sensor acpi_device
> to get the clock frequency, and to fetch the sensor module string, so I
> thought it ought to hold a reference on those grounds.
>
>
> >> diff --git a/drivers/platform/x86/intel-int3472/intel_skl_int3472_tps6=
8470.c
> b/drivers/platform/x86/intel-int3472/intel_skl_int3472_tps68470.c
> >> new file mode 100644
> >> index 000000000000..d0d2391e263f
> >> --- /dev/null
> >> +++ b/drivers/platform/x86/intel-int3472/intel_skl_int3472_tps68470.c
> >> @@ -0,0 +1,113 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/* Author: Dan Scally <djrscally@gmail.com> */
> >> +
> >> +#include <linux/i2c.h>
> >> +#include <linux/mfd/core.h>
> >> +#include <linux/mfd/tps68470.h>
> >> +#include <linux/platform_device.h>
> >> +#include <linux/regmap.h>
> >> +
> >> +#include "intel_skl_int3472_common.h"
> >> +
> >> +static const struct mfd_cell tps68470_c[] =3D {
> >> +    { .name =3D "tps68470-gpio" },
> >> +    { .name =3D "tps68470_pmic_opregion" },
> >> +};
> >> +
> >> +static const struct mfd_cell tps68470_w[] =3D {
> > Maybe more explicit names than _c and _w could be nice ?
>
>
> _chrome and _windows was in my mind - sound ok?


In kernel =E2=80=9Ccros=E2=80=9D used for Chrome OS, you may take it, for t=
he Windows I
have no idea, b/c =E2=80=9Cwin=E2=80=9D maybe still ambiguous.




--=20
With Best Regards,
Andy Shevchenko

--0000000000008f533e05bc1135a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Wednesday, February 24, 2021, Daniel Scally &lt;<a href=3D"mailt=
o:djrscally@gmail.com">djrscally@gmail.com</a>&gt; wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi Laurent<br>
<br>
On 23/02/2021 20:04, Laurent Pinchart wrote:<br>
&gt; +<br>
&gt; +/*<br>
&gt; + * Here follows platform specific mapping information that we can pas=
s to<br>
&gt; + * the functions mapping resources to the sensors. Where the sensors =
have<br>
&gt; + * a power enable pin defined in DSDT we need to provide a supply nam=
e so<br>
&gt; + * the sensor drivers can find the regulator. The device name will be=
 derived<br>
&gt; + * from the sensor&#39;s ACPI device within the code. Optionally, we =
can provide a<br>
&gt; + * NULL terminated array of function name mappings to deal with any p=
latform<br>
&gt; + * specific deviations from the documented behaviour of GPIOs.<br>
&gt; + *<br>
&gt; + * Map a GPIO function name to NULL to prevent the driver from mappin=
g that<br>
&gt; + * GPIO at all.<br>
&gt; + */<br>
&gt; +<br>
&gt; +static const struct int3472_gpio_function_remap ov2680_gpio_function_=
remaps[] =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ &quot;reset&quot;, NULL },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ &quot;powerdown&quot;, &quot;reset&quot; },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ }<br>
&gt; +};<br>
&gt; +<br>
&gt; +static struct int3472_sensor_config int3472_sensor_configs[] =3D {<br=
>
&gt; This should be static const (and there will be some fallout due to tha=
t,<br>
&gt; as skl_int3472_register_<wbr>regulator() modifies the supply_map, so I=
 think<br>
&gt; you&#39;ll have a copy of supply_map in int3472_discrete_device).<br>
<br>
<br>
Ack to all of the constness; you mentioned that last time too - not sure<br=
>
how I missed doing those! I think I can just having a local struct<br>
regulator_consumer_supply in skl_int3472_register_regulator and fill it<br>
from int3472-&gt;sensor_config.supply_<wbr>map<br>
<br>
&gt;&gt; +static unsigned int skl_int3472_get_clk_frequency(<wbr>struct int=
3472_discrete_device *int3472)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 union acpi_object *obj;<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned int ret =3D 0;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 obj =3D skl_int3472_get_acpi_buffer(<wbr>int3472-&g=
t;sensor, &quot;SSDB&quot;);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (IS_ERR(obj))<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0; /* report rat=
e as 0 on error */<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (obj-&gt;buffer.length &lt; CIO2_SENSOR_SSDB_MCL=
KSPEED_<wbr>OFFSET + sizeof(u32)) {<br>
&gt; Should we define an ssdb structure instead of peeking into the buffer<=
br>
&gt; with an offset ?<br>
<br>
<br>
I thought about that, but in the end decided it didn&#39;t seem worth<br>
defining the whole SSDB structure just to use one field. Particularly<br>
since we use it in cio2-bridge already, so if we&#39;re going to do that it=
<br>
really ought to just live in a header that&#39;s included in both - and tha=
t<br>
seemed even less worthwhile.<br>
<br>
<br>
I don&#39;t have a strong feeling though, so if you think it&#39;s better t=
o<br>
define the struct I&#39;m happy to.<br>
<br>
<br>
&gt;&gt; +static unsigned long skl_int3472_clk_recalc_rate(<wbr>struct clk_=
hw *hw,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0unsigned long parent_rate)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 struct int3472_gpio_clock *clk =3D to_int3472_clk(h=
w);<br>
&gt;&gt; +=C2=A0 =C2=A0 struct int3472_discrete_device *int3472 =3D to_int3=
472_device(clk);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return int3472-&gt;clock.frequency;<br>
&gt; Maybe just<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct int3472_gpio_clock *clk =3D to_int347=
2_clk(hw);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return clk-&gt;frequency;<br>
<br>
<br>
Oops, of course.<br>
<br>
&gt;&gt; +static int skl_int3472_register_<wbr>regulator(struct int3472_dis=
crete_device *int3472,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struc=
t acpi_resource *ares)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 char *path =3D ares-&gt;data.gpio.resource_<wbr>sou=
rce.string_ptr;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct int3472_sensor_config *sensor_config;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct regulator_init_data init_data =3D { };<br>
&gt;&gt; +=C2=A0 =C2=A0 struct regulator_config cfg =3D { };<br>
&gt;&gt; +=C2=A0 =C2=A0 int ret;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 sensor_config =3D int3472-&gt;sensor_config;<br>
&gt;&gt; +=C2=A0 =C2=A0 if (IS_ERR_OR_NULL(sensor_config)<wbr>) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(int3472-&gt;dev=
, &quot;No sensor module config\n&quot;);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return PTR_ERR(sensor_c=
onfig);<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (!sensor_config-&gt;supply_map.<wbr>supply) {<br=
>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(int3472-&gt;dev=
, &quot;No supply name defined\n&quot;);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENODEV;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 init_data.constraints.valid_<wbr>ops_mask =3D REGUL=
ATOR_CHANGE_STATUS;<br>
&gt;&gt; +=C2=A0 =C2=A0 init_data.num_consumer_<wbr>supplies =3D 1;<br>
&gt;&gt; +=C2=A0 =C2=A0 sensor_config-&gt;supply_map.dev_<wbr>name =3D int3=
472-&gt;sensor_name;<br>
&gt;&gt; +=C2=A0 =C2=A0 init_data.consumer_supplies =3D &amp;sensor_config-=
&gt;supply_map;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 snprintf(int3472-&gt;regulator.<wbr>regulator_name,=
<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sizeof(int3472-&g=
t;regulator.<wbr>regulator_name), &quot;%s-regulator&quot;,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0acpi_dev_name(int=
3472-&gt;adev));<br>
&gt;&gt; +=C2=A0 =C2=A0 snprintf(int3472-&gt;regulator.<wbr>supply_name,<br=
>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GPIO_REGULATOR_SU=
PPLY_NAME_<wbr>LENGTH, &quot;supply-0&quot;);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 int3472-&gt;regulator.rdesc =3D INT3472_REGULATOR(<=
br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 int3472-&gt;regulator.regulator_<wbr>name,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 int3472-&gt;regulator.supply_<wbr>name,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &amp;int3472_gpio_regulator_ops);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 int3472-&gt;regulator.gpio =3D acpi_get_gpiod(path,=
<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0ares-&gt;data.gpio.pin_table[0],<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;int3472,regulator&quot;);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (IS_ERR(int3472-&gt;regulator.<wbr>gpio)) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(int3472-&gt;dev=
, &quot;Failed to get regulator GPIO lines\n&quot;);<br>
&gt; s/lines/line/ (sorry, it was a typo in my review of v2)<br>
<br>
<br>
No problem!<br>
<br>
&gt;&gt; +static int skl_int3472_parse_crs(struct int3472_discrete_device *=
int3472)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 struct list_head resource_list;<br>
&gt;&gt; +=C2=A0 =C2=A0 int ret;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 INIT_LIST_HEAD(&amp;resource_list)<wbr>;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 int3472-&gt;sensor_config =3D skl_int3472_get_senso=
r_module_<wbr>config(int3472);<br>
&gt; I have forgotten some of the context I&#39;m afraid :-/ Are there vali=
d use<br>
&gt; cases for not checking for an error here, or should we do so and drop<=
br>
&gt; the error checks in other functions above ?<br>
<br>
<br>
Not all platforms need a sensor_config; only those which have either a<br>
regulator pin or need a GPIO function to be remapped; the rest will do<br>
without it.<br>
<br>
So, we need to not check for an error here because the absence of a<br>
sensor_config isn&#39;t necessarily an error, we won&#39;t know till later.=
<br>
<br>
&gt; +int skl_int3472_discrete_probe(<wbr>struct platform_device *pdev)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct acpi_device *adev =3D ACPI_COMPANION(&amp;=
pdev-&gt;dev);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct int3472_discrete_device *int3472;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct int3472_cldb cldb;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D skl_int3472_fill_cldb(adev, &amp;cldb);<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;pdev-&gt=
;dev, &quot;Couldn&#39;t fill CLDB structure\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (cldb.control_logic_type !=3D 1) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;pdev-&gt=
;dev, &quot;Unsupported control logic type %u\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0cldb.control_logic_type);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* Max num GPIOs we&#39;ve seen plus a terminator=
 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int3472 =3D kzalloc(struct_size(int3472, gpios.ta=
ble,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0INT3472_MAX_SENSOR_GPIOS + 1), GFP_KERNEL);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!int3472)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int3472-&gt;adev =3D adev;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int3472-&gt;dev =3D &amp;pdev-&gt;dev;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0platform_set_drvdata(pdev, int3472);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int3472-&gt;sensor =3D acpi_dev_get_dependent_dev=
(<wbr>adev);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (IS_ERR_OR_NULL(int3472-&gt;<wbr>sensor)) {<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;pdev-&gt=
;dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;INT3472 seems to have no dependents.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D -ENODEV;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_free_int3472=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0get_device(&amp;int3472-&gt;sensor-&gt;<wbr>dev);=
<br>
&gt; I see no corresponding put_device(), am I missing something ? I&#39;m =
also<br>
&gt; not sure why this is needed.<br>
&gt;<br>
<br>
The put is acpi_dev_put() in skl_int3472_discrete_remove(); there seems<br>
to be no acpi_dev_get() for some reason. We use the sensor acpi_device<br>
to get the clock frequency, and to fetch the sensor module string, so I<br>
thought it ought to hold a reference on those grounds.<br>
<br>
<br>
&gt;&gt; diff --git a/drivers/platform/x86/intel-<wbr>int3472/intel_skl_int=
3472_<wbr>tps68470.c b/drivers/platform/x86/intel-<wbr>int3472/intel_skl_in=
t3472_<wbr>tps68470.c<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 000000000000..d0d2391e263f<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/drivers/platform/x86/intel-<wbr>int3472/intel_skl_int3472_<w=
br>tps68470.c<br>
&gt;&gt; @@ -0,0 +1,113 @@<br>
&gt;&gt; +// SPDX-License-Identifier: GPL-2.0<br>
&gt;&gt; +/* Author: Dan Scally &lt;<a href=3D"mailto:djrscally@gmail.com">=
djrscally@gmail.com</a>&gt; */<br>
&gt;&gt; +<br>
&gt;&gt; +#include &lt;linux/i2c.h&gt;<br>
&gt;&gt; +#include &lt;linux/mfd/core.h&gt;<br>
&gt;&gt; +#include &lt;linux/mfd/tps68470.h&gt;<br>
&gt;&gt; +#include &lt;linux/platform_device.h&gt;<br>
&gt;&gt; +#include &lt;linux/regmap.h&gt;<br>
&gt;&gt; +<br>
&gt;&gt; +#include &quot;intel_skl_int3472_common.h&quot;<br>
&gt;&gt; +<br>
&gt;&gt; +static const struct mfd_cell tps68470_c[] =3D {<br>
&gt;&gt; +=C2=A0 =C2=A0 { .name =3D &quot;tps68470-gpio&quot; },<br>
&gt;&gt; +=C2=A0 =C2=A0 { .name =3D &quot;tps68470_pmic_opregion&quot; },<b=
r>
&gt;&gt; +};<br>
&gt;&gt; +<br>
&gt;&gt; +static const struct mfd_cell tps68470_w[] =3D {<br>
&gt; Maybe more explicit names than _c and _w could be nice ?<br>
<br>
<br>
_chrome and _windows was in my mind - sound ok?</blockquote><div><br></div>=
<div>In kernel =E2=80=9Ccros=E2=80=9D used for Chrome OS, you may take it, =
for the Windows I have no idea, b/c =E2=80=9Cwin=E2=80=9D maybe still ambig=
uous.</div><div><br></div><div>=C2=A0</div><br><br>-- <br>With Best Regards=
,<br>Andy Shevchenko<br><br><br>

--0000000000008f533e05bc1135a6--

--===============3918480350788279139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============3918480350788279139==--
