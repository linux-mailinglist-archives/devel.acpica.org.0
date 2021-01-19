Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB922FB64C
	for <lists+devel-acpica@lfdr.de>; Tue, 19 Jan 2021 14:19:33 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B2869100EBBDD;
	Tue, 19 Jan 2021 05:19:31 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.182; helo=mail-oi1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0EE52100EBBB8
	for <devel@acpica.org>; Tue, 19 Jan 2021 05:19:29 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id 9so21116308oiq.3
        for <devel@acpica.org>; Tue, 19 Jan 2021 05:19:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kUDdGSpowK1CEbj8McVC+bBtkLq63WQr+Zql2YLqG5U=;
        b=SPfX22qdDpD9YQ1lVfUE4foNx8BMInYmNIU3FnJcOhKW/heCyxT0+GtKlt5gotDkFt
         f+Z/NXSCagyQFVbv3JWrkGZLnP1lw4kvv3tAIvKMEMfA5/aZR0rirIrPoMfJrzxylZ/D
         jo4fJsvXOEsL25M1WTMygxwX99wESFrI2sfctR/g1vWQuQHfcV3ZtwsMP1QiD9n0ILbo
         UBkFHi4Mqf1VO8ta7ACDRA1uF/JabnHm2EGlCv4NdfMn+TiJrtfArMF4sIBygsBPucuu
         iW5CD6YFmRgz+37u3ip1hMAB5AXnTMj6i3cRj3AUaFA3ecjoEJQGF7Di6aBuZ1L3m0LF
         01oQ==
X-Gm-Message-State: AOAM531oJmywxFh/46N/PC4feuZPPBvLLIchT8omZOv/EqQvaOwjNsEI
	x6JK7/5JtsAwVVwccmHaqLL37cfMU2CJzA53yoQ=
X-Google-Smtp-Source: ABdhPJx6gcAwtwXRqp5/IJOsji1kIJ+Z/62NGRk7TKZOMu+nRuZ+LcTh4icQ0/TaVor6jnR3+WE/obLzf1Lcm6Gy7n8=
X-Received: by 2002:aca:5c05:: with SMTP id q5mr2555018oib.157.1611062368209;
 Tue, 19 Jan 2021 05:19:28 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-5-djrscally@gmail.com>
 <YAVSf7+iTPNYf5XS@pendragon.ideasonboard.com>
In-Reply-To: <YAVSf7+iTPNYf5XS@pendragon.ideasonboard.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 19 Jan 2021 14:19:16 +0100
Message-ID: <CAJZ5v0hUELtKc9CK=z47XQvSAAx=wTWvoVwP-PaMqugaXaCgZQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 62YDW7MWRSOVBYDHAK4AX54KIWCCPZ7R
X-Message-ID-Hash: 62YDW7MWRSOVBYDHAK4AX54KIWCCPZ7R
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 4/7] i2c: i2c-core-acpi: Add i2c_acpi_dev_name()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/62YDW7MWRSOVBYDHAK4AX54KIWCCPZ7R/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 18, 2021 at 9:55 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Daniel,
>
> Thank you for the patch.
>
> On Mon, Jan 18, 2021 at 12:34:25AM +0000, Daniel Scally wrote:
> > We want to refer to an i2c device by name before it has been
>
> s/i2c device/acpi i2c device/ ?
>
> > created by the kernel; add a function that constructs the name
> > from the acpi device instead.
> >
> > Signed-off-by: Daniel Scally <djrscally@gmail.com>
> > ---
> > Changes in v2:
> >
> >       - Stopped using devm_kasprintf()
> >
> >  drivers/i2c/i2c-core-acpi.c | 16 ++++++++++++++++
> >  include/linux/i2c.h         |  5 +++++
> >  2 files changed, 21 insertions(+)
> >
> > diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
> > index 37c510d9347a..98c3ba9a2350 100644
> > --- a/drivers/i2c/i2c-core-acpi.c
> > +++ b/drivers/i2c/i2c-core-acpi.c
> > @@ -497,6 +497,22 @@ struct i2c_client *i2c_acpi_new_device(struct device *dev, int index,
> >  }
> >  EXPORT_SYMBOL_GPL(i2c_acpi_new_device);
> >
> > +/**
> > + * i2c_acpi_dev_name - Construct i2c device name for devs sourced from ACPI
> > + * @adev:     ACPI device to construct the name for
> > + *
> > + * Constructs the name of an i2c device matching the format used by
> > + * i2c_dev_set_name() to allow users to refer to an i2c device by name even
> > + * before they have been instantiated.
> > + *
> > + * The caller is responsible for freeing the returned pointer.
> > + */
> > +char *i2c_acpi_dev_name(struct acpi_device *adev)
> > +{
> > +     return kasprintf(GFP_KERNEL, I2C_DEV_NAME_FORMAT, acpi_dev_name(adev));
>
> There's a real danger of a memory leak, as the function name sounds very
> similar to dev_name() or acpi_dev_name() and those don't allocate
> memory. I'm not sure what a better name would be, but given that this
> function is only used in patch 6/7 and not in the I2C subsystem itself,
> I wonder if we should inline this kasprintf() call in the caller and
> drop this patch.

IMO if this is a one-off usage, it's better to open-code it.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
