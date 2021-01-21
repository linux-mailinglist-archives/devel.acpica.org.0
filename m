Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDFF2FE976
	for <lists+devel-acpica@lfdr.de>; Thu, 21 Jan 2021 12:58:59 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D4388100EB34C;
	Thu, 21 Jan 2021 03:58:57 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.48; helo=mail-ot1-f48.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 526D5100EB34B
	for <devel@acpica.org>; Thu, 21 Jan 2021 03:58:55 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id i20so1324142otl.7
        for <devel@acpica.org>; Thu, 21 Jan 2021 03:58:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LMQpWTlwXlB+6DhuZpRPyd2/2y3TLAjilyG8Sg/pBQ4=;
        b=GliMXrB4FjQFqAb4ELQHnxijduDl8Y61o5gFoTF+CnIFVN5bncovfxmP4WqH6+qUlo
         sruexaPTZwAjQFCpcABBgfT/zthY6gE4Ah5G9YIKJnPyakr36ZMFBNJ50jkg19d8jC+3
         geRkP+/rkKmiONBBZTaUQm4SngMRkrkTac6D/HcPjo5Fl7XfOIhBuVF4T80UJv2Sycuq
         5R1xTkYm9h7T0pdu8892mxsgggH+A1jVAMYar5/gOCk/AbXU1K+9U1357V1EQbR3xkmk
         IGM6aL+Jxxq+A+ssJIUBk6owPy1LR3gf/nkf+H8vS8U6l5RSEo2sT9OOa92AGbrS9h8M
         J4Zg==
X-Gm-Message-State: AOAM532gxrAuKUJ8HNQFhTH4COMPikmcbbAqqdfX6qq0UWBeUYxHqJxJ
	ptsLFmWjoogMrpg98GiysyJz/Db3x9w2dwIoAes=
X-Google-Smtp-Source: ABdhPJzUXT3Qcu1MEek/JIy1QokhzlIz+1Z889izuguqO0chtBSEj4LHKA87+uH8We9MoxEatFnak9b3i0z82NlULJU=
X-Received: by 2002:a9d:1710:: with SMTP id i16mr9965157ota.260.1611230334235;
 Thu, 21 Jan 2021 03:58:54 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-1-djrscally@gmail.com> <20210118003428.568892-3-djrscally@gmail.com>
 <CAJZ5v0gVQsZ4rxXW8uMidW9zfY_S50zpfrL-Gq0J3Z4-qqBiww@mail.gmail.com>
 <b381b48e-1bf2-f3e7-10a6-e51cd261f43c@gmail.com> <CAJZ5v0iU2m4Hs6APuauQ645DwbjYaB8nJFjYH0+7yQnR-FPZBQ@mail.gmail.com>
 <e2d7e5e9-920f-7227-76a6-b166e30e11e5@gmail.com>
In-Reply-To: <e2d7e5e9-920f-7227-76a6-b166e30e11e5@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 21 Jan 2021 12:58:43 +0100
Message-ID: <CAJZ5v0gg5oXG3yOO9iDvPKSsadYrFojW6JcKfZcQbFFpO78zAQ@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: EP3GL5UJ77CCQQVA6CRQASTAULK2DVRX
X-Message-ID-Hash: EP3GL5UJ77CCQQVA6CRQASTAULK2DVRX
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-gpio@vger.kernel.org, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, andy@kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/7] acpi: utils: Add function to fetch dependent acpi_devices
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EP3GL5UJ77CCQQVA6CRQASTAULK2DVRX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 21, 2021 at 10:47 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> Hi Rafael
>
> On 19/01/2021 13:15, Rafael J. Wysocki wrote:
> > On Mon, Jan 18, 2021 at 9:51 PM Daniel Scally <djrscally@gmail.com> wrote:
> >> On 18/01/2021 16:14, Rafael J. Wysocki wrote:
> >>> On Mon, Jan 18, 2021 at 1:37 AM Daniel Scally <djrscally@gmail.com> wrote:
> >>>> In some ACPI tables we encounter, devices use the _DEP method to assert
> >>>> a dependence on other ACPI devices as opposed to the OpRegions that the
> >>>> specification intends. We need to be able to find those devices "from"
> >>>> the dependee, so add a function to parse all ACPI Devices and check if
> >>>> the include the handle of the dependee device in their _DEP buffer.
> >>> What exactly do you need this for?
> >> So, in our DSDT we have devices with _HID INT3472, plus sensors which
> >> refer to those INT3472's in their _DEP method. The driver binds to the
> >> INT3472 device, we need to find the sensors dependent on them.
> >>
> > Well, this is an interesting concept. :-)
> >
> > Why does _DEP need to be used for that?  Isn't there any other way to
> > look up the dependent sensors?
> >
> >>> Would it be practical to look up the suppliers in acpi_dep_list instead?
> >>>
> >>> Note that supplier drivers may remove entries from there, but does
> >>> that matter for your use case?
> >> Ah - that may work, yes. Thank you, let me test that.
> > Even if that doesn't work right away, but it can be made work, I would
> > very much prefer that to the driver parsing _DEP for every device in
> > the namespace by itself.
>
>
> This does work; do you prefer it in scan.c, or in utils.c (in which case
> with acpi_dep_list declared as external var in internal.h)?

Let's put it in scan.c for now, because there is the lock protecting
the list in there too.

How do you want to implement this?  Something like "walk the list and
run a callback for the matching entries" or do you have something else
in mind?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
