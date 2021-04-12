Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DC935D00E
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Apr 2021 20:11:13 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DB221100EBB8F;
	Mon, 12 Apr 2021 11:11:11 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.177; helo=mail-pf1-f177.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C6A4C100EBB7F
	for <devel@acpica.org>; Mon, 12 Apr 2021 11:11:09 -0700 (PDT)
Received: by mail-pf1-f177.google.com with SMTP id i190so9693827pfc.12
        for <devel@acpica.org>; Mon, 12 Apr 2021 11:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BwQeib1H2LAmGn6CcZ+mNA7UzYFYCJisfTalxUklkbg=;
        b=amGzCJApoGu5e4PDCb+QRLbBrOkO737RtGvuuH1Ji2RUHO4a+oK3sBIZvypXPzpvl5
         xEL5egDQ+CET3t8oS4RAtmrYUvxwDcyZUuIDM/oQj8H4j6ZkY6InUuuDrLHR+H06wh0s
         BA/x3494EzhOaYwVWLmu0iKg0Z7x40+Tnmaa1nydnMqwH7TlHkwMkgk0iy5NtfOWNCQR
         cCFHhYIZwJ/2TsP1XiUbz7VXgKNGLSTlLBOoIn6bWFW/S+puFvd+xa9NahOzEybY49pn
         5Iqekg3nDkoYHpJGPI5jRygkAhnzsL3m8TGox95BAoY/8lcjLxACWhNp5JxFmyC3nuQj
         pizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BwQeib1H2LAmGn6CcZ+mNA7UzYFYCJisfTalxUklkbg=;
        b=GcYFAvq+kyd+Awn6LMAMtJWcDc1D8jlvemjF0JDi+nTX5LV9f9rsRVlGyLSEZRsPSA
         SfhlSR7Yb6nk3xWHRErS3LwbN5uY3ZMDWc/9GPPlyQhNdHiev6x8YKiDlpR88ZrIGHC+
         NJ2QRWk+kupLA2mww3sgno4zj6vudufxesolwNOWJBt2OoRo6Tu0JDTuph1mRThtR/dz
         e/u7XIrx2agszJK7fPwwmA5e7UupOQA0P913rii5A6MFOhGgfux/gxJdG2kgbKROr4V6
         fDnyKCOg9rKUWrDzwubsk5ve93l3YTGwb4OQ79F2VcxFmJx8S7bw0HIw96v9Ip001twD
         U4Bg==
X-Gm-Message-State: AOAM533xdD0lbz6s1++1epuanr2ErGoSLxBdJKbo7e0CxCYr3oUKLUnl
	2tK2LKBPXvsUPhXp8Pn9IRVSx4GA6CFh9nRp9fo=
X-Google-Smtp-Source: ABdhPJy0ASYFfIcOodmZNM4t3VSZ05VyiWvtLvALdkjI8ejUmfwl7L0tbMy91yEJ/Y4licvfkrYTLQQ+6EMRp0uXMjI=
X-Received: by 2002:a63:c48:: with SMTP id 8mr27784069pgm.74.1618251009237;
 Mon, 12 Apr 2021 11:10:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210410134718.1942273-1-andy.shevchenko@gmail.com>
 <CAJZ5v0jQ=UU8FgFFF_ht_v1dZwhp-32wi_QNaZuf6vBaORU41w@mail.gmail.com>
 <CAHp75VeW7w-tX96B8Gh=E1meTHLzuocqaM2MTLyokc5hETVj7A@mail.gmail.com> <CAJZ5v0jTQziFzc7pZ631=iigm6nv7xKAYyaA64pssAPKTA522g@mail.gmail.com>
In-Reply-To: <CAJZ5v0jTQziFzc7pZ631=iigm6nv7xKAYyaA64pssAPKTA522g@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 12 Apr 2021 21:09:53 +0300
Message-ID: <CAHp75VcdZq9afovEP1Di6ScoFvBMuV0Es-XcuP60-Ewr9mfX5w@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID-Hash: F6XXRSOYTPNJC5QLDF6ZSJ5ZQGHXDMDB
X-Message-ID-Hash: F6XXRSOYTPNJC5QLDF6ZSJ5ZQGHXDMDB
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Dwaipayan Ray <dwaipayanray1@gmail.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/F6XXRSOYTPNJC5QLDF6ZSJ5ZQGHXDMDB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 12, 2021 at 9:05 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Mon, Apr 12, 2021 at 7:47 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > On Mon, Apr 12, 2021 at 8:32 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > On Sat, Apr 10, 2021 at 3:47 PM Andy Shevchenko
> > > <andy.shevchenko@gmail.com> wrote:
> >
> > ...
> >
> > > >  static void get_acpi_device(void *dev)
> > > >  {
> > > > -       if (dev)
> > > > -               get_device(&((struct acpi_device *)dev)->dev);
> > > > +       acpi_dev_get(dev);
> > >
> > > I would do
> > >
> > > if (dev)
> > >     acpi_dev_get(dev);
> > >
> > > here.
> >
> > Hmm... I don't see a point. acpi_dev_get() guaranteed to perform this check.
> >
> > > >  }
> >
> >
> > > > +static inline void acpi_dev_get(struct acpi_device *adev)
> > > > +{
> > > > +       if (adev)
> > > > +               get_device(&adev->dev);
> > >
> > > And I would drop the adev check from here (because the code calling it
> > > may be running with wrong assumptions if adev is NULL).  Or it should
> > > return adev and the caller should be held responsible for checking it
> > > against NULL (if they care).
> >
> > But this follows the get_device() / put_device() logic.
>
> Not really.  get_device() returns a pointer.
>
> > Personally I don't think this is a good idea to deviate.
>
> Well, exactly. :-)
>
> > Note the acpi_bus_get_acpi_device()
>
> This also returns a pointer.

Is it okay to return a pointer in acpi_dev_get() then?

I will do it that way if there are no objections.

> > / acpi_bus_put_acpi_device() as well.



-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
