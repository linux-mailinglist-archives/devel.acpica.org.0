Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F92255BA78
	for <lists+devel-acpica@lfdr.de>; Mon, 27 Jun 2022 16:21:53 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F3505100EA928;
	Mon, 27 Jun 2022 07:21:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.174; helo=mail-yw1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E2FCA100EA925
	for <devel@acpica.org>; Mon, 27 Jun 2022 07:21:45 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-318889e6a2cso86935107b3.1
        for <devel@acpica.org>; Mon, 27 Jun 2022 07:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LGU0OI4NbmRMPhyw+boZ4jUdFil3joXqvay+R3Gvrag=;
        b=QSFdDh5gcukbkbpbix/VyBX+IuBZZ3RkGTQERZAqXR4Pf9P9KC4yVJ592IiN8/w1uj
         xuVAo5MmzL7bfR38X0rJeM7/LUf+RLVxYw7n/yp+IjVC9xPgAvAi3+u0jNLjsqWkkoDT
         ws+xPecnG3PyI3xczWzZuTLEWmxk2g/0gICpVlS9ZJ0HDiDw+FLIJT3cs0RzfakSN7zK
         Uy5R+011hga4WFM3wYXi8TZVUyGT/I72UmIu/9afKVQwefiBfeqzLZWE5aoSYQHfPp6q
         9FvPoMmfiINMyDVFXx8Q/Qe/WURsvia3RmQaOVi+uEcT//6oUEK/HFNOIEgccx3iDMjf
         96eg==
X-Gm-Message-State: AJIora+DeR/q9QjyfeT7rFUL8IrdgwntfIFu5L/WtEyEL84Xd8htjVjm
	rBELF0+T53ko9B5VKIgfzGTgLqGQLnBUy4Xq8zw=
X-Google-Smtp-Source: AGRyM1tHyuUHmAGqKbyIoft8PB8whn05ie1YZfkEcAjudQzLBGtbi0F/qwrXyulkcj8YkPl5WvFXLjSvqkUSDeLC9E0=
X-Received: by 2002:a0d:d811:0:b0:31b:ddc4:c0ac with SMTP id
 a17-20020a0dd811000000b0031bddc4c0acmr2385558ywe.149.1656339704370; Mon, 27
 Jun 2022 07:21:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220615195643.12608-1-hdegoede@redhat.com> <20220615195643.12608-5-hdegoede@redhat.com>
In-Reply-To: <20220615195643.12608-5-hdegoede@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 27 Jun 2022 16:21:33 +0200
Message-ID: <CAJZ5v0iCmNuqL0-12XOAcFb1t-Ueadn+BOZ=C=QWULXh4UdOKw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: CAF625ZOWHPVLPYYJP2DRP665ZSMTOCN
X-Message-ID-Hash: CAF625ZOWHPVLPYYJP2DRP665ZSMTOCN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Andy Shevchenko <andy@kernel.org>, Kai-Heng Feng <kai.heng.feng@canonical.com>, =?UTF-8?Q?Johannes_Pen=C3=9Fel?= <johannespenssel@posteo.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC 4/4] ACPI: fix ECDT EC probe ordering issues
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CAF625ZOWHPVLPYYJP2DRP665ZSMTOCN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

First off, thanks for taking care of this issue!

On Wed, Jun 15, 2022 at 9:57 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> ACPI-2.0 says that the EC OpRegion handler must be available immediately
> (like the standard default OpRegion handlers). So acpi_bus_init() calls
> acpi_ec_ecdt_probe(), which calls acpi_install_address_space_handler() to
> install the EC's OpRegion handler, early on.

I think that the key question is what Windows does in this respect.

I honestly don't think that it uses an allowlist to early call _INI
for a few specific devices.

> This not only installs the OpRegion handler, but also calls the EC's
> _REG method. The _REG method call is a problem because it may rely on
> initialization done by the _INI methods of one of the PCI / _SB root devs,
> see for example: https://bugzilla.kernel.org/show_bug.cgi?id=214899 .
>
> This _REG depends on _INI problem can be fixed by calling the new ACPICA
> acpi_early_initialize_objects() function before acpi_ec_ecdt_probe().
>
> But on some boards (e.g. Lenovo X1C8) the root devices _INI method
> relies on the EC OpRegion so executing the _INI methods before
> registering the EC OpRegion handler leads to errors there.
>
> To allow fixing this the ACPICA code now allows to do the OpRegion handler
> installation early on (without calling _REG) and to do the EC's _REG
> execution later on as a separate step.
>
> This commit uses this new ACPICA functions to fix the EC probe ordering
> by changing the acpi_bus_init() initialization order to this:
>
> 1. acpi_load_tables()
> 2. acpi_ec_ecdt_probe()
>    This now calls acpi_install_address_space_handler(ACPI_NO_EXEC__REG)
>    which installs the OpRegion handler without executing _REG

I'm not sure if installing an opregion without evaluating _REG for it
is particularly useful.

No AML should use it before _REG is evaluated anyway.

> 3. acpi_enable_subsystem()
> 4. acpi_early_initialize_objects()
>    This calls the _INI method of the PCI and _SB root devices

So this is a change in behavior that will affect every system using
ACPI on the planet, not just the ones where the problem at hand is
present.  This appears to be somewhat risky to me.

> 5. acpi_ec_ecdt_exec_reg();
>    This executes the EC's _REG now that the root devices _INI has run
> 6. acpi_initialize_objects(ACPI_NO_EARLY_DEVICE_INIT)
>
> This allows the EC's _REG method to depend on e.g. the \OSYS global/GVNS
> variable often set by a root-device's _INI method, while at the same time
> allowing these _INI methods to access EmbeddedController OpRegions.

I'm wondering if it is possible to change the ordering of
acpi_ec_ecdt_probe() or the part of it that installs the oprtegion
handler to be called later?

> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/acpi/bus.c      | 19 ++++++++++++++++++-
>  drivers/acpi/ec.c       | 38 ++++++++++++++++++++++++++++----------
>  drivers/acpi/internal.h |  1 +
>  3 files changed, 47 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/acpi/bus.c b/drivers/acpi/bus.c
> index 86fa61a21826..fe5c46da5265 100644
> --- a/drivers/acpi/bus.c
> +++ b/drivers/acpi/bus.c
> @@ -1303,7 +1303,24 @@ static int __init acpi_bus_init(void)
>                 goto error1;
>         }
>
> -       status = acpi_initialize_objects(ACPI_FULL_INITIALIZATION);
> +       /*
> +        * This usually sets an OSYS global variable based on _OSI checks,
> +        * and the EC's _REG method may rely on this OSYS variable, so do
> +        * this before acpi_ec_ecdt_exec_reg().
> +        */
> +       status = acpi_early_initialize_objects();
> +       if (ACPI_FAILURE(status)) {
> +               pr_err("Unable to do early ACPI objects initialization\n");
> +               goto error1;
> +       }
> +
> +       acpi_ec_ecdt_exec_reg();
> +
> +       /*
> +        * ACPI_NO_EARLY_DEVICE_INIT to avoid ACPICA calling
> +        * acpi_early_initialize_objects() a second time.
> +        */
> +       status = acpi_initialize_objects(ACPI_NO_EARLY_DEVICE_INIT);
>         if (ACPI_FAILURE(status)) {
>                 pr_err("Unable to initialize ACPI objects\n");
>                 goto error1;
> diff --git a/drivers/acpi/ec.c b/drivers/acpi/ec.c
> index a1b871a418f8..cd86e68d6b98 100644
> --- a/drivers/acpi/ec.c
> +++ b/drivers/acpi/ec.c
> @@ -1459,6 +1459,7 @@ static bool install_gpio_irq_event_handler(struct acpi_ec *ec)
>   * ec_install_handlers - Install service callbacks and register query methods.
>   * @ec: Target EC.
>   * @device: ACPI device object corresponding to @ec.
> + * @flags: Flags to pass to acpi_install_address_space_handler()
>   *
>   * Install a handler for the EC address space type unless it has been installed
>   * already.  If @device is not NULL, also look for EC query methods in the
> @@ -1471,7 +1472,7 @@ static bool install_gpio_irq_event_handler(struct acpi_ec *ec)
>   * -EPROBE_DEFER if GPIO IRQ acquisition needs to be deferred,
>   * or 0 (success) otherwise.
>   */
> -static int ec_install_handlers(struct acpi_ec *ec, struct acpi_device *device)
> +static int ec_install_handlers(struct acpi_ec *ec, struct acpi_device *device, u32 flags)
>  {
>         acpi_status status;
>
> @@ -1479,10 +1480,10 @@ static int ec_install_handlers(struct acpi_ec *ec, struct acpi_device *device)
>
>         if (!test_bit(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags)) {
>                 acpi_ec_enter_noirq(ec);
> -               status = acpi_install_address_space_handler(ec->handle,
> -                                                           ACPI_ADR_SPACE_EC,
> -                                                           &acpi_ec_space_handler,
> -                                                           NULL, ec);
> +               status = acpi_install_address_space_handler_flags(ec->handle,
> +                                                                 ACPI_ADR_SPACE_EC,
> +                                                                 &acpi_ec_space_handler,
> +                                                                 NULL, ec, flags);
>                 if (ACPI_FAILURE(status)) {
>                         acpi_ec_stop(ec, false);
>                         return -ENODEV;
> @@ -1575,11 +1576,11 @@ static void ec_remove_handlers(struct acpi_ec *ec)
>         }
>  }
>
> -static int acpi_ec_setup(struct acpi_ec *ec, struct acpi_device *device)
> +static int acpi_ec_setup(struct acpi_ec *ec, struct acpi_device *device, u32 flags)
>  {
>         int ret;
>
> -       ret = ec_install_handlers(ec, device);
> +       ret = ec_install_handlers(ec, device, flags);
>         if (ret)
>                 return ret;
>
> @@ -1641,7 +1642,7 @@ static int acpi_ec_add(struct acpi_device *device)
>                 }
>         }
>
> -       ret = acpi_ec_setup(ec, device);
> +       ret = acpi_ec_setup(ec, device, 0);
>         if (ret)
>                 goto err;
>
> @@ -1761,7 +1762,7 @@ void __init acpi_ec_dsdt_probe(void)
>          * At this point, the GPE is not fully initialized, so do not to
>          * handle the events.
>          */
> -       ret = acpi_ec_setup(ec, NULL);
> +       ret = acpi_ec_setup(ec, NULL, 0);
>         if (ret) {
>                 acpi_ec_free(ec);
>                 return;
> @@ -1973,7 +1974,7 @@ void __init acpi_ec_ecdt_probe(void)
>          * At this point, the namespace is not initialized, so do not find
>          * the namespace objects, or handle the events.
>          */
> -       ret = acpi_ec_setup(ec, NULL);
> +       ret = acpi_ec_setup(ec, NULL, ACPI_NO_EXEC__REG);
>         if (ret) {
>                 acpi_ec_free(ec);
>                 goto out;
> @@ -1988,6 +1989,23 @@ void __init acpi_ec_ecdt_probe(void)
>         acpi_put_table((struct acpi_table_header *)ecdt_ptr);
>  }
>
> +void __init acpi_ec_ecdt_exec_reg(void)
> +{
> +       if (!boot_ec || !boot_ec_is_ecdt)
> +               return;
> +
> +       /*
> +        * Second call, first call is done in acpi_ec_ecdt_probe(), pass
> +        * ACPI_NO_INSTALL_SPACE_HANDLER so as to only exec _REG now that
> +        * the namespace has been setup.
> +        */
> +       acpi_install_address_space_handler_flags(boot_ec->handle,
> +                                                ACPI_ADR_SPACE_EC,
> +                                                &acpi_ec_space_handler, NULL,
> +                                                boot_ec,
> +                                                ACPI_NO_INSTALL_SPACE_HANDLER);
> +}
> +
>  #ifdef CONFIG_PM_SLEEP
>  static int acpi_ec_suspend(struct device *dev)
>  {
> diff --git a/drivers/acpi/internal.h b/drivers/acpi/internal.h
> index 628bf8f18130..14dce6830e01 100644
> --- a/drivers/acpi/internal.h
> +++ b/drivers/acpi/internal.h
> @@ -203,6 +203,7 @@ typedef int (*acpi_ec_query_func) (void *data);
>
>  void acpi_ec_init(void);
>  void acpi_ec_ecdt_probe(void);
> +void acpi_ec_ecdt_exec_reg(void);
>  void acpi_ec_dsdt_probe(void);
>  void acpi_ec_block_transactions(void);
>  void acpi_ec_unblock_transactions(void);
> --
> 2.36.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
