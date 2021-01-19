Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CEC2FB644
	for <lists+devel-acpica@lfdr.de>; Tue, 19 Jan 2021 14:15:40 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 53D49100ED49E;
	Tue, 19 Jan 2021 05:15:38 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.43; helo=mail-ot1-f43.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 48AEB100ED482
	for <devel@acpica.org>; Tue, 19 Jan 2021 05:15:35 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id 36so8174959otp.2
        for <devel@acpica.org>; Tue, 19 Jan 2021 05:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wxvsvsxyrpOZ/oY0spXlDXsPyT4qu420p3DmEnH6sfU=;
        b=RCZH/OFqbT3Tc4nRn1bjsh8PxHShFAymxP/5jeN8CIdr4iJ+sEo9hHj4h5ZFjVfRdG
         UNkSVAQp85XIBGM7PP7s24xuEsD+Tcjf5Q3VoLc8WqtiUkD8Kz4FAAZvCkrJPyQzX066
         xickq0WxtGmTNyQMVXdLS+LqsW4psjZcQaHHkIA29WARvdGZVkluH1OLKCRAiUA2YfAa
         bPbX2Xz36n7toR2qJXZKKSE/p3FrqW9f8X4zOvEJTZrVi80U55QYC2n+g1cIkDB1S2tz
         9pSHZNMwniO6Q8oSL07b8aDctlXoTNQh0+60MvMCSI3QwodxLGYVJ1GV8xJrSSEy3Y90
         S6tg==
X-Gm-Message-State: AOAM533iS4NNjb8BajqCE87Eor6r/sK84Z2GUS3pTsCEfmNKhlZ/qu+I
	4TlxJ6K6xot1EK1ShrpTIcVZqZkWHYacrOjAOKA=
X-Google-Smtp-Source: ABdhPJwCehh3k/IMteXxnwOxWa37biw3gKZKIYGKKmoFB1cZ9WYyVmZ60RkecMm29B8DPoHIR9VSqGcKux2VkA0z8VU=
X-Received: by 2002:a9d:1710:: with SMTP id i16mr3359773ota.260.1611062133927;
 Tue, 19 Jan 2021 05:15:33 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-3-djrscally@gmail.com>
 <CAJZ5v0gVQsZ4rxXW8uMidW9zfY_S50zpfrL-Gq0J3Z4-qqBiww@mail.gmail.com> <b381b48e-1bf2-f3e7-10a6-e51cd261f43c@gmail.com>
In-Reply-To: <b381b48e-1bf2-f3e7-10a6-e51cd261f43c@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 19 Jan 2021 14:15:21 +0100
Message-ID: <CAJZ5v0iU2m4Hs6APuauQ645DwbjYaB8nJFjYH0+7yQnR-FPZBQ@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: NV5YSUQMW5XRSWHVC5FGTGRIK7NJRA2P
X-Message-ID-Hash: NV5YSUQMW5XRSWHVC5FGTGRIK7NJRA2P
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/7] acpi: utils: Add function to fetch dependent acpi_devices
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NV5YSUQMW5XRSWHVC5FGTGRIK7NJRA2P/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 18, 2021 at 9:51 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> On 18/01/2021 16:14, Rafael J. Wysocki wrote:
> > On Mon, Jan 18, 2021 at 1:37 AM Daniel Scally <djrscally@gmail.com> wrote:
> >> In some ACPI tables we encounter, devices use the _DEP method to assert
> >> a dependence on other ACPI devices as opposed to the OpRegions that the
> >> specification intends. We need to be able to find those devices "from"
> >> the dependee, so add a function to parse all ACPI Devices and check if
> >> the include the handle of the dependee device in their _DEP buffer.
> > What exactly do you need this for?
>
> So, in our DSDT we have devices with _HID INT3472, plus sensors which
> refer to those INT3472's in their _DEP method. The driver binds to the
> INT3472 device, we need to find the sensors dependent on them.
>

Well, this is an interesting concept. :-)

Why does _DEP need to be used for that?  Isn't there any other way to
look up the dependent sensors?

>
> > Would it be practical to look up the suppliers in acpi_dep_list instead?
> >
> > Note that supplier drivers may remove entries from there, but does
> > that matter for your use case?
>
> Ah - that may work, yes. Thank you, let me test that.

Even if that doesn't work right away, but it can be made work, I would
very much prefer that to the driver parsing _DEP for every device in
the namespace by itself.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
