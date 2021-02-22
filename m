Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B800F3219E1
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Feb 2021 15:12:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 78DC4100EBB9E;
	Mon, 22 Feb 2021 06:12:54 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1034; helo=mail-pj1-x1034.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2C9DF100EBB68
	for <devel@acpica.org>; Mon, 22 Feb 2021 06:12:53 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id b15so4074458pjb.0
        for <devel@acpica.org>; Mon, 22 Feb 2021 06:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wTvuzSsDx5wHEQjCsdWnJWyRmJKaFgdpWavq1bhv6/I=;
        b=pXXMhdxX7vhFRGsWj18RR56E2kMiwbDgIUCVhhZGSSrfM2Nyhx5kyYaGCP3ktf5tbr
         inWpWxjUzuUCIt3FL44TA4I5dg0DEPdng/0/d9aWMrhg46iDfOai/TSq8kFOkMyekDvq
         QL3Difmc2FSps8YCgIMMAaBZb4vWi2l32xK009SViFDQMLXUHQCAip7R6EYJsYJuxOTB
         RKwbmMCG66xz1ALbGWPJXJX4dL/OYqGMz9NmoDvoyb/upp2o4Esbt3cZmdtpbpSh6Z3q
         jHgwmOFm1x/b1MTYvsZEBuXR3tNBzZhEde3xqr8ShhTHwd+6B981xhylMKk36WksLZOS
         wrag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wTvuzSsDx5wHEQjCsdWnJWyRmJKaFgdpWavq1bhv6/I=;
        b=VZqxSswxMtusjwRKiD3niGfUcz6wAgSpoiPkplw0zNIGIMOkId79EgZE+ih4n4nqTK
         tveljIqZUSudBOPuNqvgQ4kj4G7iuTx1CwdU7j8RVeaCtkj8BEUd3TLz6+DyFU8i+3OV
         zpyBsytHPsjt4kA6rgN/sdxs9Zf6CWaCPEvl1r9AWBwZnHrwC7G0ZpxLy8eXFSp3rfsL
         epYZXzExSAdo0VzPHu9SO8E7AbjPRrQT26vscNmbb/Sn7N3h+4gDrdeDSDwK4S1B+nKC
         aRQX9drn4yfDaWKvFNE5W7iEDotwLSOwPem75ehTJVvcnYpe1HKhO7y29hJKcBbsWWPI
         XdvQ==
X-Gm-Message-State: AOAM532I5XldYxvHNIVSluD+Y5/JZ/Y756A01IUJb56FzvBM4V89kDUA
	IjsEKK/S/sEnNQbfS/dOMFJtfnrA0c9mES3+Lu4=
X-Google-Smtp-Source: ABdhPJykkv6u9UtjDofhN3sWJPZJolrvMOjq9nG2MawYjC589/kCKJxpAUPfLJYijfh1vFjiJ26qD2JIUa7R8Y5yPwE=
X-Received: by 2002:a17:90b:3d8:: with SMTP id go24mr24457261pjb.181.1614003171942;
 Mon, 22 Feb 2021 06:12:51 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-7-djrscally@gmail.com>
In-Reply-To: <20210222130735.1313443-7-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Feb 2021 16:12:35 +0200
Message-ID: <CAHp75Veb=0OOE=iyt5ua46HkMuG6_Xu1bWAxzZX5d3378CrfNg@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 3HCNYNLKLSO3OLNXSN7IIGQWCXDRDS4Q
X-Message-ID-Hash: 3HCNYNLKLSO3OLNXSN7IIGQWCXDRDS4Q
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, andy.shevchenko@linux.intel.com, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 6/6] mfd: tps68470: Remove tps68470 MFD driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3HCNYNLKLSO3OLNXSN7IIGQWCXDRDS4Q/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> This driver only covered one scenario in which ACPI devices with _HID
> INT3472 are found, and its functionality has been taken over by the
> intel-skl-int3472 module, so remove it.

As long as patch 5 accepted
Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v3:
>         - Replaced Kconfig dependencies with INTEL_SKL_INT3472 for the tps68470
>           OpRegion and GPIO drivers.
>
>  drivers/acpi/pmic/Kconfig |  2 +-
>  drivers/gpio/Kconfig      |  2 +-
>  drivers/mfd/Kconfig       | 18 --------
>  drivers/mfd/Makefile      |  1 -
>  drivers/mfd/tps68470.c    | 97 ---------------------------------------
>  5 files changed, 2 insertions(+), 118 deletions(-)
>  delete mode 100644 drivers/mfd/tps68470.c
>
> diff --git a/drivers/acpi/pmic/Kconfig b/drivers/acpi/pmic/Kconfig
> index 56bbcb2ce61b..f84b8f6038dc 100644
> --- a/drivers/acpi/pmic/Kconfig
> +++ b/drivers/acpi/pmic/Kconfig
> @@ -52,7 +52,7 @@ endif # PMIC_OPREGION
>
>  config TPS68470_PMIC_OPREGION
>         bool "ACPI operation region support for TPS68470 PMIC"
> -       depends on MFD_TPS68470
> +       depends on INTEL_SKL_INT3472
>         help
>           This config adds ACPI operation region support for TI TPS68470 PMIC.
>           TPS68470 device is an advanced power management unit that powers
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index c70f46e80a3b..998898c72af8 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -1343,7 +1343,7 @@ config GPIO_TPS65912
>
>  config GPIO_TPS68470
>         bool "TPS68470 GPIO"
> -       depends on MFD_TPS68470
> +       depends on INTEL_SKL_INT3472
>         help
>           Select this option to enable GPIO driver for the TPS68470
>           chip family.
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index bdfce7b15621..9a1f648efde0 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1520,24 +1520,6 @@ config MFD_TPS65217
>           This driver can also be built as a module.  If so, the module
>           will be called tps65217.
>
> -config MFD_TPS68470
> -       bool "TI TPS68470 Power Management / LED chips"
> -       depends on ACPI && PCI && I2C=y
> -       depends on I2C_DESIGNWARE_PLATFORM=y
> -       select MFD_CORE
> -       select REGMAP_I2C
> -       help
> -         If you say yes here you get support for the TPS68470 series of
> -         Power Management / LED chips.
> -
> -         These include voltage regulators, LEDs and other features
> -         that are often used in portable devices.
> -
> -         This option is a bool as it provides an ACPI operation
> -         region, which must be available before any of the devices
> -         using this are probed. This option also configures the
> -         designware-i2c driver to be built-in, for the same reason.
> -
>  config MFD_TI_LP873X
>         tristate "TI LP873X Power Management IC"
>         depends on I2C
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 14fdb188af02..5994e812f479 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -105,7 +105,6 @@ obj-$(CONFIG_MFD_TPS65910)  += tps65910.o
>  obj-$(CONFIG_MFD_TPS65912)     += tps65912-core.o
>  obj-$(CONFIG_MFD_TPS65912_I2C) += tps65912-i2c.o
>  obj-$(CONFIG_MFD_TPS65912_SPI)  += tps65912-spi.o
> -obj-$(CONFIG_MFD_TPS68470)     += tps68470.o
>  obj-$(CONFIG_MFD_TPS80031)     += tps80031.o
>  obj-$(CONFIG_MENELAUS)         += menelaus.o
>
> diff --git a/drivers/mfd/tps68470.c b/drivers/mfd/tps68470.c
> deleted file mode 100644
> index 4a4df4ffd18c..000000000000
> --- a/drivers/mfd/tps68470.c
> +++ /dev/null
> @@ -1,97 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/*
> - * TPS68470 chip Parent driver
> - *
> - * Copyright (C) 2017 Intel Corporation
> - *
> - * Authors:
> - *     Rajmohan Mani <rajmohan.mani@intel.com>
> - *     Tianshu Qiu <tian.shu.qiu@intel.com>
> - *     Jian Xu Zheng <jian.xu.zheng@intel.com>
> - *     Yuning Pu <yuning.pu@intel.com>
> - */
> -
> -#include <linux/acpi.h>
> -#include <linux/delay.h>
> -#include <linux/i2c.h>
> -#include <linux/init.h>
> -#include <linux/mfd/core.h>
> -#include <linux/mfd/tps68470.h>
> -#include <linux/regmap.h>
> -
> -static const struct mfd_cell tps68470s[] = {
> -       { .name = "tps68470-gpio" },
> -       { .name = "tps68470_pmic_opregion" },
> -};
> -
> -static const struct regmap_config tps68470_regmap_config = {
> -       .reg_bits = 8,
> -       .val_bits = 8,
> -       .max_register = TPS68470_REG_MAX,
> -};
> -
> -static int tps68470_chip_init(struct device *dev, struct regmap *regmap)
> -{
> -       unsigned int version;
> -       int ret;
> -
> -       /* Force software reset */
> -       ret = regmap_write(regmap, TPS68470_REG_RESET, TPS68470_REG_RESET_MASK);
> -       if (ret)
> -               return ret;
> -
> -       ret = regmap_read(regmap, TPS68470_REG_REVID, &version);
> -       if (ret) {
> -               dev_err(dev, "Failed to read revision register: %d\n", ret);
> -               return ret;
> -       }
> -
> -       dev_info(dev, "TPS68470 REVID: 0x%x\n", version);
> -
> -       return 0;
> -}
> -
> -static int tps68470_probe(struct i2c_client *client)
> -{
> -       struct device *dev = &client->dev;
> -       struct regmap *regmap;
> -       int ret;
> -
> -       regmap = devm_regmap_init_i2c(client, &tps68470_regmap_config);
> -       if (IS_ERR(regmap)) {
> -               dev_err(dev, "devm_regmap_init_i2c Error %ld\n",
> -                       PTR_ERR(regmap));
> -               return PTR_ERR(regmap);
> -       }
> -
> -       i2c_set_clientdata(client, regmap);
> -
> -       ret = tps68470_chip_init(dev, regmap);
> -       if (ret < 0) {
> -               dev_err(dev, "TPS68470 Init Error %d\n", ret);
> -               return ret;
> -       }
> -
> -       ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE, tps68470s,
> -                             ARRAY_SIZE(tps68470s), NULL, 0, NULL);
> -       if (ret < 0) {
> -               dev_err(dev, "devm_mfd_add_devices failed: %d\n", ret);
> -               return ret;
> -       }
> -
> -       return 0;
> -}
> -
> -static const struct acpi_device_id tps68470_acpi_ids[] = {
> -       {"INT3472"},
> -       {},
> -};
> -
> -static struct i2c_driver tps68470_driver = {
> -       .driver = {
> -                  .name = "tps68470",
> -                  .acpi_match_table = tps68470_acpi_ids,
> -       },
> -       .probe_new = tps68470_probe,
> -};
> -builtin_i2c_driver(tps68470_driver);
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
