Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4FD35CFD8
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Apr 2021 19:51:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AE9B7100EBB8F;
	Mon, 12 Apr 2021 10:51:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.216.42; helo=mail-pj1-f42.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id ABBCF100EBB7F
	for <devel@acpica.org>; Mon, 12 Apr 2021 10:51:45 -0700 (PDT)
Received: by mail-pj1-f42.google.com with SMTP id e8-20020a17090a7288b029014e51f5a6baso2248798pjg.2
        for <devel@acpica.org>; Mon, 12 Apr 2021 10:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vwbL4QRbaiGgEYe9k+zFEy0jCzquekkCtISTZ5hdDOk=;
        b=j8umMGjAxiKoTM1jGIYYc0gyXOgiKu4CYpr1wk1DcgtdPIZyquXBG0U5EFwdvSWq0b
         8U6WTc8V60qYjr04uCntTJ4IWG78i0EAyvmD/ZWu5Rp3balhYYqEOW6106KfJR25ub1J
         q0pCLszIlRERr+s4MCFkXNCYWHaMjQdloStUeCo8YvRWFz5QfczsbPC9/NkJNizjnKY3
         JmtaRP1qBzIeZKx1u6CE6U/qWcZlhKSBEiogguv5jbF5qUNxHGlzon9u3HE7a3oSrgUH
         pwb++LXl2n1uer6QVhLCDHdSrchS/KFSXu6UnSx/YwI79po3ihueIXPkvriYeu0WgLv6
         TaSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vwbL4QRbaiGgEYe9k+zFEy0jCzquekkCtISTZ5hdDOk=;
        b=cpQzFtmv1WLq1VZujqKGXTFDTCjGfUHJbpu+pwxp9C2w43PXRrceBh9gHhIWB9DJs6
         XJO7kz1wkPQ2XgIYLWTayWZz9rEOjRg5KfSVV57IP/7C/LHn/B1lsk+v+Vab8VvPPgDo
         AJQqInfLOGC5O4olOAmVLgkFswtjCtmZhIzdt3IWpQVCcXEJM2Fq6/tGjD+4qhjPfi0P
         c3xmgk+kepl+IlZvxDFdg1BWklP1IWqdEQpG6rwjHOqe4coa4mPmW5qGSB/zAIF8ozQ3
         yRTc6woob3VppDzk6t8iAY59aIWEU9QYDMw+SgsexbOp41tv8B61FzPGePHrYV3ZV/8Y
         G1OQ==
X-Gm-Message-State: AOAM533oFuElXnDwWTGiLfdFWb4xn7jHpVEPdi7KpSVleONQbD2iHwRC
	G6E3SKg4bBIlp0cZBNfbecraKYZOMMX/E86LrYs=
X-Google-Smtp-Source: ABdhPJx5QFQezry52L9uci0iZ8P+FSLGeRciIi6In8JMFZOPWAFdCf4ug6Fih6aajEZ6zmM0S3RxpYy0MPNjfVqDTgA=
X-Received: by 2002:a17:90a:156:: with SMTP id z22mr338036pje.181.1618249845121;
 Mon, 12 Apr 2021 10:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210410131304.1858623-1-andy.shevchenko@gmail.com> <CAJZ5v0jJoWnnx7ce82trnzsnBTMEDf1oXwFBDc0RUj-=p7hjLQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0jJoWnnx7ce82trnzsnBTMEDf1oXwFBDc0RUj-=p7hjLQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 12 Apr 2021 20:50:28 +0300
Message-ID: <CAHp75Vc3e4FcqKMn3YGGK+sNXLi5UqUL75_GcF-27hyn+iZp9Q@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID-Hash: VWGIV3VEEEPTTZONB4VNODAVMDNXUO3E
X-Message-ID-Hash: VWGIV3VEEEPTTZONB4VNODAVMDNXUO3E
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, Daniel Scally <djrscally@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: utils: Document for_each_acpi_dev_match() macro
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VWGIV3VEEEPTTZONB4VNODAVMDNXUO3E/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 12, 2021 at 8:27 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Sat, Apr 10, 2021 at 3:29 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > The macro requires to call acpi_dev_put() on each iteration.
> > Due to this it doesn't tolerate sudden disappearence of the devices.

And should be "disappearance" :-)

> >
> > Document all these nuances to prevent users blindly call it without
> > understanding the possible issues.
> >
> > While at it, add the note to the acpi_dev_get_next_match_dev() and
> > advertise acpi_dev_put() instead of put_device() in the whole family
> > of the helper functions.

Thanks for reviewing this, I'll address all in v2.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
