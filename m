Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9351354E003
	for <lists+devel-acpica@lfdr.de>; Thu, 16 Jun 2022 13:28:09 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3059F100EAB45;
	Thu, 16 Jun 2022 04:28:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A62E9100EB33B
	for <devel@acpica.org>; Thu, 16 Jun 2022 04:28:04 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id g7so1763006eda.3
        for <devel@acpica.org>; Thu, 16 Jun 2022 04:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hFhFRye+5B1ecjABNv2SUQC9YqXo8LQgZLjvUMJN4oQ=;
        b=LbM0QY6J/BZ9YYbZArpSAPXapNOQYzV/BzscPWPjtyp2FePAhSoGTMfGz54nAIrgm/
         O49wgCC5PoQl780T/sCeIHlZLh1cTt/oIpJlH5SGF1uKUiKSRYYYvdTT1oA+67Q+SvLb
         R/IhhUFcTDugXtobIfgHGhKXbaHMWC48nWrHOQUORnWNxW0Xa/H2oAAFb+R/fddYxKxm
         JAZCNNUXKsB4aESeuHx6HSNH6t0ZeJUnhSsPrZcvThzfj6DXWs9nOjK36CdH0cmiBXSL
         i1oJKK/vOUqAZcxjJFg5r1ziozl7qvYSID2xpMb6zL5qweloaBmctLHBu3axGa+TqbMs
         JaAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hFhFRye+5B1ecjABNv2SUQC9YqXo8LQgZLjvUMJN4oQ=;
        b=SjAnLAfRNqrqz1jzPLKaIY60Xc4XFBtowHXC8FYSbggLQDvSt0oVJxfWDCqOB7F68/
         aBU9JN4HvZfthkTgsepNVUyt/C9d6a/FWBD1Kpv+C4wZoVf0NF9FIiXL7xxKIUbo9OPi
         3S5p1u7CRxJ/kSfm0PWtVTq+glIEoHrbaUbOkTQKF1lpx4QYUeA5V/gb3CrAmZfnkHW+
         FipG/wY0+Sb4z8BeBvnmnzOAf9QzBtexjUkBgF/SWUh8y4O1MchVCVyS5VY0pDhhK9Rp
         47ea6qD/aix4ndwq6XjWcFIgIlom36WKQw7wwhxQk1wybP4yghvvG1twl4c/d/Okjuh4
         UZkw==
X-Gm-Message-State: AJIora/oXYl3Hkkei7Nqsx6jI92r+F73tl1rtmCl/H9RAqzC2wY13/1J
	+IkhGMXgB74dnVIQyd93lmcD4xkDJnZXBeJrCeo=
X-Google-Smtp-Source: AGRyM1t1nhtaAw4n7rhbGj5ULOwso59znXtxJabimDdAJxacqeZfjJdADYUqDZkUepacTbs/DYQJVYzbXUXtEtMYzgA=
X-Received: by 2002:aa7:d481:0:b0:42d:d5fd:f963 with SMTP id
 b1-20020aa7d481000000b0042dd5fdf963mr5890235edr.209.1655378882039; Thu, 16
 Jun 2022 04:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220615195643.12608-1-hdegoede@redhat.com> <20220615195643.12608-3-hdegoede@redhat.com>
 <CAHp75VcPEw93_3dZvKCadnAqrJCVvdVcKh+DodgBC68xkmJ7VQ@mail.gmail.com> <e1647dae-cde2-868d-458d-ffe969203566@redhat.com>
In-Reply-To: <e1647dae-cde2-868d-458d-ffe969203566@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 16 Jun 2022 13:27:25 +0200
Message-ID: <CAHp75VeD5Ej3jvV=MtAB9fNxgyd8V8Wr+MZZnvbgzy2v3+eJmQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: 2ZLK6B3PTERXK6O6POL3LP3ORKLUO2DD
X-Message-ID-Hash: 2ZLK6B3PTERXK6O6POL3LP3ORKLUO2DD
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Andy Shevchenko <andy@kernel.org>, Kai-Heng Feng <kai.heng.feng@canonical.com>, =?UTF-8?Q?Johannes_Pen=C3=9Fel?= <johannespenssel@posteo.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC 2/4] ACPICA: Add \_SB.PC00, \SB.PCI0 to acpi_ns_early_initialize_devices()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2ZLK6B3PTERXK6O6POL3LP3ORKLUO2DD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jun 16, 2022 at 11:13 AM Hans de Goede <hdegoede@redhat.com> wrote:
> On 6/15/22 23:31, Andy Shevchenko wrote:
> > On Wed, Jun 15, 2022 at 9:57 PM Hans de Goede <hdegoede@redhat.com> wrote:

...

> >> -       char path[ACPI_PATH_SEGMENT_LENGTH + 2];
> >> +       char path[ACPI_PATH_SEGMENT_LENGTH * 2 + 2];
> >
> > Strictly speaking this should be, IIUC,
> >
> > 1 + ACPI_PATH_SEGMENT_LENGTH + ACPI_NAMESEG_SIZE + 1
> >
> > \\ + path segment length (with a separator) + name + \0
> >
> > That said, it seems the original code adds 1 unneeded byte.
>
> Right I already knew I needed the " * 2" when writing the
> original code, so I decided to do things this way for KISS
> reasons.

Yeah, but then you don't need + 2, it should be +1.
I believe the initial use of ACPI_PATH_SEGMENT_LENGTH vs.
ACPI_NAMESEG_SIZE is a bit misleading.

> > Perhaps a comment in the code?
>
> I've added a comment to my local version now.
>
> After this thread has had some more time to gather feedback
> I will turn the ACPICA patches into a acpica github pull-req
> with the comment added.
>
> (or if necessary rework the entire series)


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
