Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD36322A07
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Feb 2021 13:01:41 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 00742100EB32D;
	Tue, 23 Feb 2021 04:01:39 -0800 (PST)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 873FA100EBBC4
	for <devel@acpica.org>; Tue, 23 Feb 2021 04:01:36 -0800 (PST)
IronPort-SDR: 4bf8qzBe2DD/mp7kHpceneHCKwiZ1rhct4V9GY22f5oOuiigqLAWAkHAKP70lJll6lnvQVMJag
 zlJ6dHIEheCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="171913473"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400";
   d="scan'208";a="171913473"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 04:01:35 -0800
IronPort-SDR: vArlr3KrePNBRYNfBwiKlzekovfISugTKtVeSAQotiJWMWn7rBgZV9Z/BBRjs+ywQPZ+rbI0DZ
 z4kqlVJiVX1A==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400";
   d="scan'208";a="432679629"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 04:01:29 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andy.shevchenko@gmail.com>)
	id 1lEWNZ-007Nkk-W1; Tue, 23 Feb 2021 14:01:25 +0200
Date: Tue, 23 Feb 2021 14:01:25 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID: <YDTuldAG9FB8+RAd@smile.fi.intel.com>
References: <20210222130735.1313443-1-djrscally@gmail.com>
 <20210222130735.1313443-6-djrscally@gmail.com>
 <CAHp75Vd2Dc2Poq7VNRXRT-0VjkYdEFY2WKpz8fWpAQViQRO4jA@mail.gmail.com>
 <534849f6-c7b5-19b0-a09f-cd410cde93bd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <534849f6-c7b5-19b0-a09f-cd410cde93bd@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID-Hash: QFMIYYJVWSUEDRMWHAWLPJSTMPO725S3
X-Message-ID-Hash: QFMIYYJVWSUEDRMWHAWLPJSTMPO725S3
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 5/6] platform/x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QFMIYYJVWSUEDRMWHAWLPJSTMPO725S3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2021 at 10:35:44PM +0000, Daniel Scally wrote:
> On 22/02/2021 14:58, Andy Shevchenko wrote:
> > On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:

...

> >> +       if (obj->buffer.length > sizeof(*cldb)) {
> >> +               dev_err(&adev->dev, "The CLDB buffer is too large\n");
> >> +               ret = -EINVAL;
> > ENOSPC? ENOMEM?
> 
> I still think EINVAL actually, as in this case the problem isn't that
> space couldn't be allocated but that the buffer in the SSDB is larger
> than I expect it to be, which means the definition of it has changed /
> this device isn't actually supported.

OK!

...

> >> +       if (!IS_ERR_OR_NULL(sensor_config) && sensor_config->function_maps) {
> > Hmm...
> >
> > Would
> >
> > if (IS_ERR_OR_NULL(sensor_config))
> >   return 0;
> >
> > if (!_maps)
> >   return 0;
> >
> > with respective comments working here?
> 
> No, because the absence of either sensor_config or
> sensor_config->function_maps is not a failure mode. We only need to
> provide sensor_configs for some platforms, and function_maps for even
> fewer. So if that check is false, the rest of the function should still
> execute.

I see, thanks for elaboration.

...

> >> +       if (ares->type != ACPI_RESOURCE_TYPE_GPIO ||
> >> +           ares->data.gpio.connection_type != ACPI_RESOURCE_GPIO_TYPE_IO)
> >> +               return 1; /* Deliberately positive so parsing continues */
> > I don't like to lose control over ACPI_RESOURCE_TYPE_GPIO, i.e.
> > spreading it over kernel code (yes, I know about one existing TS
> > case).
> > Consider to provide a helper in analogue to acpi_gpio_get_irq_resource().
> 
> Sure, but I probably name it acpi_gpio_is_io_resource() - a function
> named "get" which returns a bool seems a bit funny to me.

But don't you need the resource itself?

You may extract and check resource at the same time as
acpi_gpio_get_irq_resource() does.

...

> >> +       struct int3472_discrete_device *int3472 = platform_get_drvdata(pdev);
> >> +       if (int3472->gpios.dev_id)
> >> +               gpiod_remove_lookup_table(&int3472->gpios);
> > gpiod_remove_lookup_table() is now NULL-aware.
> > But in any case I guess you don't need the above check.
> 
> Sorry; forgot to call out that I didn't follow that suggestion;
> int3472->gpios is a _struct_ rather than a pointer, so &int3472->gpios
> won't be NULL, even if I haven't filled anything in to there yet because
> it failed before it got to that point. So, not sure that it quite works
> there.

I think if you initialize the ->list member you can remove without check.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
