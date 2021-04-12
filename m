Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D241B35CFC6
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Apr 2021 19:48:59 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4B31B100EBB8F;
	Mon, 12 Apr 2021 10:48:58 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.215.179; helo=mail-pg1-f179.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8D63E100EBB7F
	for <devel@acpica.org>; Mon, 12 Apr 2021 10:48:55 -0700 (PDT)
Received: by mail-pg1-f179.google.com with SMTP id w10so9983919pgh.5
        for <devel@acpica.org>; Mon, 12 Apr 2021 10:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DgnMLW54yYGnPtnA18TLaPuXsRrPLh79PL0NZM2fdPQ=;
        b=Be+gUYKbpdhT4uDF8LSr5fHUGrNeSx+aTJfi1LpNdnx3CA+O0j0yuRFQn5hopywj/z
         4/sCz0bdE96p4OiNSc+Qq3PdmvMPvenv6+tixlU7+FSUPBpx2oHIGFoXDWzGCcf5EQ3D
         pRTZ95C/RkQFIbvAbhEB05EFzU+oB2fSqKwGFBEDoUOtOdxQz28nz6TwQ6PjtvcO1ldI
         APJ9Uy2Y0roe2ZUmJrJ3L/6qgwObttfX1+uzfFm3QY18lDiVxUHXH1OQhOpTpJi+SAjZ
         3pCsjbeeVgdiCtNZ+OlZ7cyG+igkop/b68lhqlD9UO9VzAOmq9OZjiMFtDQU87TOhsbE
         HRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DgnMLW54yYGnPtnA18TLaPuXsRrPLh79PL0NZM2fdPQ=;
        b=pM6sIxA4FFC+wW7XvKDrVO6VjGpPz8NIyigYD1xAofg2LZEOMsX5vLiNgQ8zvyBZFY
         nIpCZEIhL8r2WAUmR56VjIu5QlvRlAyIj3tK+6C3oD3F2LuYw9yCOdtk9mWSUOWL8e+g
         CyMEYtZGrCrO7TV3HQySceBPxUl87DZv8ozS8xMgttOCQnwwtxbxYA+Y6u0xuNxu0x1P
         qeMqoJhxQBwqnK5i7C3x3dUbHqWlS1CDQdqOP4yb7v3Y0d5VAKY2e/0w6PWyYPmJHtxg
         RPC03TTkVITYj9GRrMbmihTldoRFJPFkCBPokKJvV579qvhzLJSdcmSWyoebraw1LIpE
         8oQQ==
X-Gm-Message-State: AOAM532vceM4Rz3bEbSbj+mKXex5Ixj6nxjFmqfLeDSXY2S+qHri+kqq
	eWj+dO5rMgS+mV5Bns/yMce2IWv2PU23SxXhECw=
X-Google-Smtp-Source: ABdhPJyoSw2Vf91WbKVp/GOwf/dOiztGtKwfq/0OXFArxK89COKnoHklpij+YWCB0SnEzEG8ygf+b+MBcSHwijK7dX4=
X-Received: by 2002:a62:e50f:0:b029:214:8e4a:ae46 with SMTP id
 n15-20020a62e50f0000b02902148e4aae46mr26154827pff.73.1618249674955; Mon, 12
 Apr 2021 10:47:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210410134718.1942273-1-andy.shevchenko@gmail.com> <CAJZ5v0jQ=UU8FgFFF_ht_v1dZwhp-32wi_QNaZuf6vBaORU41w@mail.gmail.com>
In-Reply-To: <CAJZ5v0jQ=UU8FgFFF_ht_v1dZwhp-32wi_QNaZuf6vBaORU41w@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 12 Apr 2021 20:47:38 +0300
Message-ID: <CAHp75VeW7w-tX96B8Gh=E1meTHLzuocqaM2MTLyokc5hETVj7A@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID-Hash: FJGHI7Z4RU3O77FHNNDYC3B7YPR4XSYR
X-Message-ID-Hash: FJGHI7Z4RU3O77FHNNDYC3B7YPR4XSYR
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Dwaipayan Ray <dwaipayanray1@gmail.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FJGHI7Z4RU3O77FHNNDYC3B7YPR4XSYR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 12, 2021 at 8:32 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> On Sat, Apr 10, 2021 at 3:47 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:

...

> >  static void get_acpi_device(void *dev)
> >  {
> > -       if (dev)
> > -               get_device(&((struct acpi_device *)dev)->dev);
> > +       acpi_dev_get(dev);
>
> I would do
>
> if (dev)
>     acpi_dev_get(dev);
>
> here.

Hmm... I don't see a point. acpi_dev_get() guaranteed to perform this check.

> >  }


> > +static inline void acpi_dev_get(struct acpi_device *adev)
> > +{
> > +       if (adev)
> > +               get_device(&adev->dev);
>
> And I would drop the adev check from here (because the code calling it
> may be running with wrong assumptions if adev is NULL).  Or it should
> return adev and the caller should be held responsible for checking it
> against NULL (if they care).

But this follows the get_device() / put_device() logic. Personally I
don't think this is a good idea to deviate. Note the
acpi_bus_get_acpi_device() / acpi_bus_put_acpi_device() as well.

> > +}



-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
