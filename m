Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F3735D013
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Apr 2021 20:12:54 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1D2E4100EBB8F;
	Mon, 12 Apr 2021 11:12:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.178; helo=mail-oi1-f178.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A063A100EBB7F
	for <devel@acpica.org>; Mon, 12 Apr 2021 11:12:50 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id x2so14340270oiv.2
        for <devel@acpica.org>; Mon, 12 Apr 2021 11:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LLRmIGD0mbtrbQWE0Wz075QLFoZ2M2WQQT4khJXSwzs=;
        b=KTcnrHNk8LgbiI0NCx4up5D2bVQLVGMU14rwm9T1TV4x3l2HpqFyJTJ6rBt9d7bPHJ
         gCKqphsjDPNX5C/385hxbZww9hOJG9xZ/4b3Su51dma8VBCZsLCrQeSNxOLvGCtt5lzU
         xy0/Mtc1seuUCjnXKObJ95ZEBiSbfB37X1qGFRiwlrvWaufeX2lOQt1cCakJrBMI56Rz
         r1vodgZFw2hKA5GtKQHpN4gmEmHrabLQfsetkUNi5RupjpW9Lt30yur+lQKgN+PGEAMU
         VYTsw6rWckQmrzGiv1j+uDfTDPjKhWXoY8j38sPZbXC9+gOi45NSo1omuOkrV5YwkRSX
         G3ug==
X-Gm-Message-State: AOAM530qjlb3zYQgXPPYnj5Zw6nqxAV7RlblNUpL9hNpc3aT+drYCbDo
	Gc18Q8X5LHzx23wT1dyOi8yvWVvmnDQXFF5Nrmg=
X-Google-Smtp-Source: ABdhPJxk0RjgumnGUEVHGOg01bTZd8kK1/X40tZnDgvo74P9hdZkOj1C8QiGp+eODzXqdmYVynrW+vck8hBPGp1WvKs=
X-Received: by 2002:aca:aa8f:: with SMTP id t137mr315642oie.71.1618251169899;
 Mon, 12 Apr 2021 11:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210410134718.1942273-1-andy.shevchenko@gmail.com>
 <CAJZ5v0jQ=UU8FgFFF_ht_v1dZwhp-32wi_QNaZuf6vBaORU41w@mail.gmail.com>
 <CAHp75VeW7w-tX96B8Gh=E1meTHLzuocqaM2MTLyokc5hETVj7A@mail.gmail.com>
 <CAJZ5v0jTQziFzc7pZ631=iigm6nv7xKAYyaA64pssAPKTA522g@mail.gmail.com> <CAHp75VcdZq9afovEP1Di6ScoFvBMuV0Es-XcuP60-Ewr9mfX5w@mail.gmail.com>
In-Reply-To: <CAHp75VcdZq9afovEP1Di6ScoFvBMuV0Es-XcuP60-Ewr9mfX5w@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 12 Apr 2021 20:12:38 +0200
Message-ID: <CAJZ5v0jHWF2q550pAo+s2s+dN+FLKAQ8yzY9d1p1Ww3t116pzA@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: AZAABPHTDAY2SN25MAFCKODGOI3ORPMA
X-Message-ID-Hash: AZAABPHTDAY2SN25MAFCKODGOI3ORPMA
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AZAABPHTDAY2SN25MAFCKODGOI3ORPMA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 12, 2021 at 8:10 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, Apr 12, 2021 at 9:05 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> >
> > On Mon, Apr 12, 2021 at 7:47 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > >
> > > On Mon, Apr 12, 2021 at 8:32 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > > On Sat, Apr 10, 2021 at 3:47 PM Andy Shevchenko
> > > > <andy.shevchenko@gmail.com> wrote:
> > >
> > > ...
> > >
> > > > >  static void get_acpi_device(void *dev)
> > > > >  {
> > > > > -       if (dev)
> > > > > -               get_device(&((struct acpi_device *)dev)->dev);
> > > > > +       acpi_dev_get(dev);
> > > >
> > > > I would do
> > > >
> > > > if (dev)
> > > >     acpi_dev_get(dev);
> > > >
> > > > here.
> > >
> > > Hmm... I don't see a point. acpi_dev_get() guaranteed to perform this check.
> > >
> > > > >  }
> > >
> > >
> > > > > +static inline void acpi_dev_get(struct acpi_device *adev)
> > > > > +{
> > > > > +       if (adev)
> > > > > +               get_device(&adev->dev);
> > > >
> > > > And I would drop the adev check from here (because the code calling it
> > > > may be running with wrong assumptions if adev is NULL).  Or it should
> > > > return adev and the caller should be held responsible for checking it
> > > > against NULL (if they care).
> > >
> > > But this follows the get_device() / put_device() logic.
> >
> > Not really.  get_device() returns a pointer.
> >
> > > Personally I don't think this is a good idea to deviate.
> >
> > Well, exactly. :-)
> >
> > > Note the acpi_bus_get_acpi_device()
> >
> > This also returns a pointer.
>
> Is it okay to return a pointer in acpi_dev_get() then?

Yes, it is, as I've said already.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
