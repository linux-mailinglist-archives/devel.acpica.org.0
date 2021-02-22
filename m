Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C843219F3
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Feb 2021 15:16:08 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CB66E100EBB9E;
	Mon, 22 Feb 2021 06:16:06 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1036; helo=mail-pj1-x1036.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7F6F9100EBB68
	for <devel@acpica.org>; Mon, 22 Feb 2021 06:16:05 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id d2so9143105pjs.4
        for <devel@acpica.org>; Mon, 22 Feb 2021 06:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MuRf9/8b8K4IIlZM2nZP16CBZ8tDQb2s0kmOZ82ah7g=;
        b=la0El+ftwtmu5M03fzpfMVvgBdVuRP3q4ZiVGvwFO53W1pSflIkeMM/mLsuc//DbuA
         QRhI1h4hB8VXAF16KpdwJq6snysYR/FKx7iBpYm/2wW9mLxbZt+zFxoYV+hYvxT2Ggff
         6y03xiPi06tgGt+Es945HsXGJj9uQ1h5QrXf0ok/De/BXAD/VI5hsk+N+nR979u48HXv
         w03SWlmlRotFvqL8UJzfdcM5iMxd8S4xhAJavUbrvyxrJUDqQDyJrRgPZAjcfaOapafA
         88T/ub89tKwE7LkdWQIykWxc+LIUt1trusz17x/lNug6OmgOLBtaK3DVQQBnM4Z0jIdL
         erkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MuRf9/8b8K4IIlZM2nZP16CBZ8tDQb2s0kmOZ82ah7g=;
        b=mgw8805upGTaOWM53uCcuFlXyLCPwprTuz31msh7JXoVEF1rdHWfG1LpiHaPd3ytfE
         3FkMqHbTj0Hq6qzuvjPQPiVA0+a6TpuFXkwmOuoj0ZnH36IOPIr4R23C7KJytPatjMCp
         zV7dFdbup2CP+5z2IEfqXHmWO3wAb+HsuZpxfHIG+0lHOI4h5K58od5I7/hOf2eRDqIS
         7REws1Wj9Ru3wg4dv+c0027Ai8l+nPsWm6EYKMPBIDTGjPGzbu03rxFAT66fcqcufEtR
         IfhpjUOg9rDDodhS5XjQmDJrqp9Vea3i4ptN7nIg8OJROblrFZl7oU8AF48OA1OC9NAz
         eUCQ==
X-Gm-Message-State: AOAM531rXIMTuhfM7PXmEagvVtbhBzgDNx6m8bDJnLhqRjzyxyvZNdMB
	shyemLRjsmQsUphRaGWCGxfNYlGslyFxyVCCK4A=
X-Google-Smtp-Source: ABdhPJyceCFX4/m8npDBtOmCtRQbAXk3yI2ti/FWHXAMEjlS4lgPJ5ZE3mk9mm2xvEKRzIgsqCPax1EQlAX7Uetnftw=
X-Received: by 2002:a17:90b:3d8:: with SMTP id go24mr24474065pjb.181.1614003364468;
 Mon, 22 Feb 2021 06:16:04 -0800 (PST)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com>
In-Reply-To: <20210222130735.1313443-1-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Feb 2021 16:15:48 +0200
Message-ID: <CAHp75Vfu678RQ1-p4rXOkp5UPDuxgW4ctm1w+uEFhumcfGXf1g@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Dmitry Torokhov <dtor@chromium.org>,
	Guenter Roeck <linux@roeck-us.net>
Message-ID-Hash: BUXYJTOXTU6OSI3KHH4B5MOHSK6RUH5F
X-Message-ID-Hash: BUXYJTOXTU6OSI3KHH4B5MOHSK6RUH5F
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 0/6] Introduce intel_skl_int3472 module
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BUXYJTOXTU6OSI3KHH4B5MOHSK6RUH5F/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2021 at 3:11 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> v1 for this series was originally 14-18 of this series:
> https://lore.kernel.org/linux-media/20201130133129.1024662-1-djrscally@gmail.com/T/#m91934e12e3d033da2e768e952ea3b4a125ee3e67
>
> v2 was here:
> https://lore.kernel.org/platform-driver-x86/20210118003428.568892-1-djrscally@gmail.com/
>
> Series level changelog:
>
>         - Dropped the patch moving acpi_lpss_dep() to utils since it's not used
>         in acpi_dev_get_dependent_dev() anymore.
>         - Replaced it with a patch extending acpi_walk_dep_device_list() to be
>         able to apply a given callback against each device in acpi_dep_list
>         - Dropped the patch creating acpi_i2c_dev_name() and simply open coded
>         that functionality.
>
> This has been tested on a number of devices, but currently **not** on a device
> designed for ChromeOS, which we ideally need to do to ensure no regression
> caused by replacing the tps68470 MFD driver. Sakari / Tomasz, is there any way
> you could help with that? Unfortunately, I don't have a device to test it on
> myself.

+Cc: Dmitry and Guenter. Guys, do you know by a chance who can help
with the above request from Daniel?


> Original cover letter:
>
> At the moment in the kernel the ACPI _HID INT3472 is taken by the tps68470
> MFD driver, but that driver can only handle some of the cases of that _HID
> that we see. There are at least these three possibilities:
>
> 1. INT3472 devices that provide GPIOs through the usual framework and run
>    power and clocks through an operation region; this is the situation that
>    the current module handles and is seen on ChromeOS devices
> 2. INT3472 devices that provide GPIOs, plus clocks and regulators that are
>    meant to be driven through the usual frameworks, usually seen on devices
>    designed to run Windows
> 3. INT3472 devices that don't actually represent a physical tps68470, but
>    are being used as a convenient way of grouping a bunch of system GPIO
>    lines that are intended to enable power and clocks for sensors which
>    are called out as dependent on them. Also seen on devices designed to
>    run Windows.
>
> This series introduces a new module which registers:
>
> 1. An i2c driver that determines which scenario (#1 or #2) applies to the
>    machine and registers platform devices to be bound to GPIO, OpRegion,
>    clock and regulator drivers as appropriate.
> 2. A platform driver that binds to the dummy INT3472 devices described in
>    #3
>
> The platform driver for the dummy device registers the GPIO lines that
> enable the clocks and regulators to the sensors via those frameworks so
> that sensor drivers can consume them in the usual fashion. The existing
> GPIO and OpRegion tps68470 drivers will work with the i2c driver that's
> registered. Clock and regulator drivers are available but have not so far been
> tested, so aren't part of this series.
>
> The existing mfd/tps68470.c driver being thus superseded, it is removed.
>
> Thanks
> Dan
>
> Daniel Scally (6):
>   ACPI: scan: Extend acpi_walk_dep_device_list()
>   ACPI: scan: Add function to fetch dependent of acpi device
>   i2c: core: Add a format macro for I2C device names
>   gpiolib: acpi: Export acpi_get_gpiod()
>   platform/x86: Add intel_skl_int3472 driver
>   mfd: tps68470: Remove tps68470 MFD driver
>
>  MAINTAINERS                                   |   5 +
>  drivers/acpi/ec.c                             |   2 +-
>  drivers/acpi/pmic/Kconfig                     |   2 +-
>  drivers/acpi/pmic/intel_pmic_chtdc_ti.c       |   2 +-
>  drivers/acpi/scan.c                           |  92 ++-
>  drivers/gpio/Kconfig                          |   2 +-
>  drivers/gpio/gpiolib-acpi.c                   |  38 +-
>  drivers/i2c/i2c-core-acpi.c                   |   2 +-
>  drivers/i2c/i2c-core-base.c                   |   4 +-
>  drivers/mfd/Kconfig                           |  18 -
>  drivers/mfd/Makefile                          |   1 -
>  drivers/mfd/tps68470.c                        |  97 ---
>  drivers/platform/surface/surface3_power.c     |   2 +-
>  drivers/platform/x86/Kconfig                  |   2 +
>  drivers/platform/x86/Makefile                 |   1 +
>  drivers/platform/x86/intel-int3472/Kconfig    |  31 +
>  drivers/platform/x86/intel-int3472/Makefile   |   4 +
>  .../intel-int3472/intel_skl_int3472_common.c  | 106 ++++
>  .../intel-int3472/intel_skl_int3472_common.h  | 110 ++++
>  .../intel_skl_int3472_discrete.c              | 592 ++++++++++++++++++
>  .../intel_skl_int3472_tps68470.c              | 113 ++++
>  include/acpi/acpi_bus.h                       |   8 +
>  include/linux/acpi.h                          |   4 +-
>  include/linux/gpio/consumer.h                 |   7 +
>  include/linux/i2c.h                           |   3 +
>  25 files changed, 1100 insertions(+), 148 deletions(-)
>  delete mode 100644 drivers/mfd/tps68470.c
>  create mode 100644 drivers/platform/x86/intel-int3472/Kconfig
>  create mode 100644 drivers/platform/x86/intel-int3472/Makefile
>  create mode 100644 drivers/platform/x86/intel-int3472/intel_skl_int3472_common.c
>  create mode 100644 drivers/platform/x86/intel-int3472/intel_skl_int3472_common.h
>  create mode 100644 drivers/platform/x86/intel-int3472/intel_skl_int3472_discrete.c
>  create mode 100644 drivers/platform/x86/intel-int3472/intel_skl_int3472_tps68470.c
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
