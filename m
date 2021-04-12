Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1598835CFFC
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Apr 2021 20:05:50 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0B4DC100EBB8F;
	Mon, 12 Apr 2021 11:05:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49; helo=mail-ot1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 82FAA100EBB7F
	for <devel@acpica.org>; Mon, 12 Apr 2021 11:05:43 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id f75-20020a9d03d10000b0290280def9ab76so8530576otf.12
        for <devel@acpica.org>; Mon, 12 Apr 2021 11:05:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cxFfMLp+11/U1kVBkFA7VCERIwGoytrzbv2ZEzy0Egk=;
        b=pUtjsPEBZVGaigpMOeCXocKvKqwzrPMgA5lOQ1pclPbLIxFGl8YVsg/bFcVPQBu6/K
         k6BY3jMTMru91xmUBbf9lALajr2mIxSJ4sfxLU/7sNmAc2f8/OSOkTGfa44chdOX6PF3
         8TyS+Ntkkehtne1QUOl5BqocA1LktIWGq7FhbCwK7ty5U3+pMRMIzAE/Rh2DtKy8UWUQ
         MJL0nCDw3mrY7+pIPrYsgWKRvwCOCWZv3lIqdfcM14kFUPuc55pE0ALTpMOroiuTvpPk
         Ogyn0gTu0gccBHn8Y1/eMSV3eQH0+Ix9OqiQg9ufvnf8mR84uwBk4DKKtRr+qLCCYX7K
         P5eg==
X-Gm-Message-State: AOAM530NcU/iStSFHvoO5/uC5297dSIB+wiz71UukQScJubNfarHEAt2
	q4kCOZydRWiho6sxHL+8L1CdFDiuOk9NKH6XZ8U=
X-Google-Smtp-Source: ABdhPJx+ROAYPoDHg8Kv+g+kvtgJzou978kwiAXLMZZwqhXyLzjacHyl0s5dyunB1b3t5UfKi4qjIgDbNj3jtwIxLFs=
X-Received: by 2002:a05:6830:55b:: with SMTP id l27mr24903704otb.260.1618250742718;
 Mon, 12 Apr 2021 11:05:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210410134718.1942273-1-andy.shevchenko@gmail.com>
 <CAJZ5v0jQ=UU8FgFFF_ht_v1dZwhp-32wi_QNaZuf6vBaORU41w@mail.gmail.com> <CAHp75VeW7w-tX96B8Gh=E1meTHLzuocqaM2MTLyokc5hETVj7A@mail.gmail.com>
In-Reply-To: <CAHp75VeW7w-tX96B8Gh=E1meTHLzuocqaM2MTLyokc5hETVj7A@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 12 Apr 2021 20:05:31 +0200
Message-ID: <CAJZ5v0jTQziFzc7pZ631=iigm6nv7xKAYyaA64pssAPKTA522g@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: A2BODCS2QPDMUHTFCPIQN7LNMYXUQDTE
X-Message-ID-Hash: A2BODCS2QPDMUHTFCPIQN7LNMYXUQDTE
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/A2BODCS2QPDMUHTFCPIQN7LNMYXUQDTE/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 12, 2021 at 7:47 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, Apr 12, 2021 at 8:32 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> > On Sat, Apr 10, 2021 at 3:47 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
>
> ...
>
> > >  static void get_acpi_device(void *dev)
> > >  {
> > > -       if (dev)
> > > -               get_device(&((struct acpi_device *)dev)->dev);
> > > +       acpi_dev_get(dev);
> >
> > I would do
> >
> > if (dev)
> >     acpi_dev_get(dev);
> >
> > here.
>
> Hmm... I don't see a point. acpi_dev_get() guaranteed to perform this check.
>
> > >  }
>
>
> > > +static inline void acpi_dev_get(struct acpi_device *adev)
> > > +{
> > > +       if (adev)
> > > +               get_device(&adev->dev);
> >
> > And I would drop the adev check from here (because the code calling it
> > may be running with wrong assumptions if adev is NULL).  Or it should
> > return adev and the caller should be held responsible for checking it
> > against NULL (if they care).
>
> But this follows the get_device() / put_device() logic.

Not really.  get_device() returns a pointer.

> Personally I don't think this is a good idea to deviate.

Well, exactly. :-)

> Note the acpi_bus_get_acpi_device()

This also returns a pointer.

> / acpi_bus_put_acpi_device() as well.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
