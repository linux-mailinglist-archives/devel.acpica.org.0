Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D36C312426
	for <lists+devel-acpica@lfdr.de>; Sun,  7 Feb 2021 12:56:50 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5DB3F100EBBD5;
	Sun,  7 Feb 2021 03:56:48 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1029; helo=mail-pj1-x1029.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7CA69100EC1DF
	for <devel@acpica.org>; Sun,  7 Feb 2021 03:56:45 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id cl8so6690089pjb.0
        for <devel@acpica.org>; Sun, 07 Feb 2021 03:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0kmi9Bv1wf11kyJmpOZllaMRnrfULVI+MdqdrZMwhik=;
        b=dhjmPXxmKtoQUvnWeQWGSfw45ptjN2V+wOcEnx4LqE1nygAEDuUD2ql862ajIqHkqk
         ltDoBZbUqyberZfkktkN8CE9dE6F0ZajV6D46EtLG7h1OaLiOMbvbI6JVSKbwKsePjIn
         e0s2loiP2trhaj6ZpSVaAHjqKi4wXD7GiMr4oRYY5GcMkoLXe1iUETGD7cLByaZZgR6g
         hOibKuEx7ZAYso9ZsaK09wkf7Qnm2taNiq5KqIwviXTOdUWIrVL2pt45g2+Z0yaWQf1P
         dy9zNzdh1o9MAXcCuTXuFZHppvEeCBYgUEi8xugs6YZcIjDqG5a0Z+5lnsPtAD9kKyjh
         rUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0kmi9Bv1wf11kyJmpOZllaMRnrfULVI+MdqdrZMwhik=;
        b=RYY9rCugRoTSl1N8QXbXaZJsUjO3fWuxGyFvfbhuiarkpWgbZR3qPXY38iobRvfDmj
         528fsDv8S3t2gTKfNJ0qd6BIsi34gKBZATzNhbRRdt7HClYIEsWL3UgBWVfGuBFRgIin
         X5WJ6eZI/cuJTVt6pgh4t4wl+f5XvzsvjEQm23OOyt0jWATTjLoJC2nwVIkEdWyVp/kq
         cJ559ZG0gmtQFw7IMo+QeeS9OjwIPHHa3H1fTI02LR7uKLGzusDNSgOVWrg2EluXq7a3
         q3pw1a6CjxpL2zURb9yG0as2rqtDHxsNSihuGrhmbIYqV8UGeEDUnbtsOS+qlOz7xabU
         i76g==
X-Gm-Message-State: AOAM533UgQOQ+wAARysZf2k63HjDlfVK4f5m9WPF4kKXKIVcGdixnGsl
	JgIlyoAZ8NF5ituvR+AWJBO7yvV8Yptd3fAM6T0=
X-Google-Smtp-Source: ABdhPJxyov8fsEZoH2TWRM8JNb+Syk1zxYcMhXgpWj7GUonnfuFdUhquX4fCCdWDhyc7B+7eUCNJ5SCm5096a6J/HSc=
X-Received: by 2002:a17:90a:c84:: with SMTP id v4mr12538609pja.228.1612699004182;
 Sun, 07 Feb 2021 03:56:44 -0800 (PST)
MIME-Version: 1.0
References: <20210118003428.568892-7-djrscally@gmail.com> <YAVRqWeUsLjvU62P@pendragon.ideasonboard.com>
 <20210118144606.GO4077@smile.fi.intel.com> <75e99a06-4579-44ee-5f20-8f2ee3309a68@gmail.com>
 <20210119092448.GN4077@smile.fi.intel.com> <a735380b-57ac-1950-b29a-07fe6cb708d2@gmail.com>
 <20210119110837.GT4077@smile.fi.intel.com> <YAcNT1d5zQHGsoe6@pendragon.ideasonboard.com>
 <YAccEtQIBrbKPSmv@smile.fi.intel.com> <YAev1YviLVfEHSg6@pendragon.ideasonboard.com>
 <YAgo06hhlael1/rm@smile.fi.intel.com> <e8f697c9-821e-1d15-9e57-cda71626cbb9@gmail.com>
 <2f85ec6d-b47e-6d86-02bc-5563cff7576d@gmail.com>
In-Reply-To: <2f85ec6d-b47e-6d86-02bc-5563cff7576d@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 7 Feb 2021 13:56:27 +0200
Message-ID: <CAHp75VeF_tZdi8+fMYGtuzMH_jWit4cHy6kHM2OVuBkDA4+=uA@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 2ATQRHKTMBATWPESVT2OACICU5HRBXD3
X-Message-ID-Hash: 2ATQRHKTMBATWPESVT2OACICU5HRBXD3
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Andy Shevchenko <andy@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Erik Kaneda <erik.kaneda@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, kieran.bingham@ideasonboard.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 6/7] platform: x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2ATQRHKTMBATWPESVT2OACICU5HRBXD3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Feb 7, 2021 at 1:00 PM Daniel Scally <djrscally@gmail.com> wrote:
> On 21/01/2021 00:18, Daniel Scally wrote:
> > On 20/01/2021 12:57, Andy Shevchenko wrote:

...

> > I'm not sure that one's better than the other, to be honest. Either the
> > multi-function device functionality lives in the conventional place, or
> > else _all_ of the int3472 handling code lives together in one module.
> Can we come to a consensus on this? I would rather be in agreement than
> leave it hanging...I do see the argument that it's better not to rebirth
> the MFD driver away from that subsystem, but at the moment I lean
> towards the view that having all the code handling this particular _HID
> in one place is probably preferable, if only to make it easier for
> anyone coming in the future to understand what's happening. That said;
> I'm not particularly precious about it, I'd just like to agree an
> approach so I can move forward with the next version

So, my priorities of rejection (first is higher)
- open-coding MFD subsystem (that said, if you shuffle the code, at
least leave it as an MFD driver)
- moving out from MFD (although I understand intentions)

Summarize, go ahead with your view (leaving it as an MFD driver) and
look forward to what maintainer(s) will say.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
