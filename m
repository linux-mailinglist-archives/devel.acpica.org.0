Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7674731C178
	for <lists+devel-acpica@lfdr.de>; Mon, 15 Feb 2021 19:25:56 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DCDCB100EBBB4;
	Mon, 15 Feb 2021 10:25:54 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.177; helo=mail-oi1-f177.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1A741100ED4BB
	for <devel@acpica.org>; Mon, 15 Feb 2021 10:25:53 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id k204so8687541oih.3
        for <devel@acpica.org>; Mon, 15 Feb 2021 10:25:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BhK9Sy+sXj6zSCbmG0oRV4y2bv1YCu7KZPAcpn+xoFk=;
        b=tqhRO3+x85qWwTcFx0vyTEOoQ0cQSfmxOpxi1Y9JtxMw7UVFZfqqYCEbsmivHGIiw1
         kdZCdgA0Ah3tH5QRkObCpKdJGtll2bXGq5z9seEka8h3BrRXAtNHWCBNLNI92KNJLa7s
         lqaXl24eHx+SKw0CGGKi0HtQ5GwPLicqYnOQsfTrw3mgqKIgwec6My63EdGHh/OTxf0f
         9brjdiQk7ke3OE408X8FSa8771hiY0Z0bppKc5OiqOIhAQfxGj35fugOEWtbaSPWjonF
         LP8J0Qgl6JxipeLwibo+caVPyN5VZrH7fZfavjd9y3wpG4Euh/m/QZc4OxuwxN4Sk44B
         8roQ==
X-Gm-Message-State: AOAM530oagOchEYSUHFwWLZM+2miqHqwb7AIMISlg8lD8cOzIBctxeWp
	c1ZQYf4BG5TD//baKHuHWnrwAN1xVV4X+xKfKso=
X-Google-Smtp-Source: ABdhPJyA9hQoFi7GJbIYTmjKiYN6IIx9g51D1ODRp8aZOM0bQl2kWW+Zn22yYEafwY6kjs/OOqj/oxZbobWZs/eSoSw=
X-Received: by 2002:a05:6808:5cf:: with SMTP id d15mr129931oij.69.1613413552031;
 Mon, 15 Feb 2021 10:25:52 -0800 (PST)
MIME-Version: 1.0
References: <20201226142830.48818-1-hdegoede@redhat.com> <ced43570-1e76-6f96-f9ab-83473b4adfb7@redhat.com>
In-Reply-To: <ced43570-1e76-6f96-f9ab-83473b4adfb7@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 15 Feb 2021 19:25:41 +0100
Message-ID: <CAJZ5v0g2mhrw56aAjafYAsRnOWjZTATyHyfi57ekuQyGs6O-MA@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: EO62YL4MQ57D2F2JXYOBHOUOOZNLL26J
X-Message-ID-Hash: EO62YL4MQ57D2F2JXYOBHOUOOZNLL26J
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 0/2] ACPICA: Fix a race in GenericSerialBus (I2C) and GPIO handling
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EO62YL4MQ57D2F2JXYOBHOUOOZNLL26J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 15, 2021 at 6:52 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 12/26/20 3:28 PM, Hans de Goede wrote:
> > Hi All,
> >
> > On one of my machines I noticed the following errors being logged:
> >
> > [   52.892807] i2c i2c-0: adapter quirk: no zero length (addr 0x0078, size 0, read)
> > [   52.893037] i2c i2c-0: i2c read 0 bytes from client@0x78 starting at reg 0x0 failed, error: -95
> >
> > The second line is coming from the Linux I2C ACPI OpRegion handling and
> > after a bunch of debugging I've found out that there is a rather obvious
> > (once you see it) and nasty race condition in the handling of I2C and GPIO
> > opregions in acpi_ev_address_space_dispatch(). See the first patch in this
> > series (the second patch is a follow-up cleanup patch removing some code
> > duplication).
> >
> > TBH I'm surprised that this issue has gone unnoticed as long as it has,
> > but I guess that it mostly leads to unreproducable sporadic problems
> > making it hard to debug and I got lucky that I had a machine where the
> > race seems to trigger about once every 20 seconds.
> >
> > I know that ACPICA patches are normally merged through the ACPICA upstream
> > but given that this is a serious bug, I believe that in this case it might
> > be best to add the fix directly to Linux and then port it to ACPICA from
> > there.
>
> ping ?
>
> This was submitted 2 full months ago; and despite this:
>
> 1. Fixing a serious bug in ACPICA
> 2. The fix being pretty simple (and AFAICT obviously correct)
>
> This is still awaiting review upstream:
> https://github.com/acpica/acpica/pull/658
>
> I must say that it feels to me that the upstream ACPICA process is broken here.
>
> I submitted a pull-req for this, as requested and after that there has
> been zero progress.
>
> The pull-req even has a 26 day old "this looks good to me" comment from Erik,
> followed by silence... ?
>
> Rafael, can you please consider just directly picking these 2 fixes into
> your acpi branch, so that we can get this nasty race condition fixed ?

I will do that later this week, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
