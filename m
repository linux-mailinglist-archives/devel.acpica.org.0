Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C4C4A7921
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 63660100E5DA8;
	Wed,  2 Feb 2022 11:59:10 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1031; helo=mail-pj1-x1031.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C677F100F225E
	for <devel@acpica.org>; Fri,  8 Jan 2021 04:17:01 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id lj6so3554766pjb.0
        for <devel@acpica.org>; Fri, 08 Jan 2021 04:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QJpmPSXBMkDyRpOAie8nEtiKxW2diZukk9pipJ57ovs=;
        b=APSTOjBSR9NIMt2G+tAKvfWj2tZ4hY4e3e1aiF7JekWmZUQuDSiZ5IbRXu1/KhIooQ
         J/HcWQyXi3KQ8+D3KlBShkw+3DV6P4O1wxDFt0b6FOjSvZOjWafWoGAE5gPV76cBRJEm
         Trby4n2kGLMcOmuVcRt+XtceGuTyFfThWFR/vn0PxK22wx1n4JN5HZUiXRxrbyd94B1R
         vwNFtlu1wjAJNAzTBHWOysPbZxTNUDeohmI4FYAlxbyEXEsJR4qwQI7U+VJiK8rIce49
         UCcCgQVlofROPknaFgODvIv6KE0B/8oLY3ZGWbI6odx41TeD/9kCPg7pBagojBWs0pX9
         gmyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QJpmPSXBMkDyRpOAie8nEtiKxW2diZukk9pipJ57ovs=;
        b=tv9ro34JWEozm4cTnATTtfFZz3NZ58hvENHl2U0fpCN9aCAn+ANlvmxO5UMEj5ZzK+
         jSaoG4mGCwihfI24vBtZFYEnbQdX4zUj63Z+7CfBDuFcBCO23Fcb+8CMCOKz/gf/uIqc
         O+5zotpgrBgXt8+loKC2NMeCOSnu7wODko+y63TjiMcmdb9LOzjnOwMBlVvaP/l5B8/U
         BEMfYQWo/YHMFgyYUBmf56NPqHUtfQyp9QO7sr9kU19MGXu4TNNO868o0q18uri5xDNX
         EGdQez1SBlk+pO0WyewqtcQS3q5augR5mqu1+siT4mAjTA6Lu+ZhXhY5Bc1Dpv/qXYue
         PbrQ==
X-Gm-Message-State: AOAM530kaytdG1H7NWluVFeFB2V4rOCFtOR5FIXx4D9EFogptxLUelkA
	ArW9jP2uxsYRQ9rr9+SopmM1qgaBfzHD2wpXJFU=
X-Google-Smtp-Source: ABdhPJyldR1piNAeKj9uIZ1Le/5wxh9TOr537qIrpxGvyxjo1onN4F4oe8SR/CXSTDkdvSzMQ7bZigw9hkKUqlRE4vo=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr3486365pjt.228.1610108221001;
 Fri, 08 Jan 2021 04:17:01 -0800 (PST)
MIME-Version: 1.0
References: <20201130133129.1024662-1-djrscally@gmail.com> <20201130133129.1024662-19-djrscally@gmail.com>
 <20201130200719.GB4077@smile.fi.intel.com> <778f23fc-b99c-33a2-642d-ca0e47fd4ed5@gmail.com>
In-Reply-To: <778f23fc-b99c-33a2-642d-ca0e47fd4ed5@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 8 Jan 2021 14:17:49 +0200
Message-ID: <CAHp75VeYOqJt9iKaGPA4=dkb2kYUbqUV4PGTn8uSsnUt_kSGSw@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: EPIDQ3TME6BEMP6BNFONQBPLOVZJUIKW
X-Message-ID-Hash: EPIDQ3TME6BEMP6BNFONQBPLOVZJUIKW
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 kieran.bingham+renesas@ideasonboard.com, Jacopo Mondi <jacopo+renesas@jmondi.org>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jordan Hand <jorhand@linux.microsoft.com>, Tsuchiya Yuto <kitakar@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 18/18] ipu3: Add driver for dummy INT3472 ACPI device
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EPIDQ3TME6BEMP6BNFONQBPLOVZJUIKW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 8, 2021 at 1:56 AM Daniel Scally <djrscally@gmail.com> wrote:
> On 30/11/2020 20:07, Andy Shevchenko wrote:
> > On Mon, Nov 30, 2020 at 01:31:29PM +0000, Daniel Scally wrote:

...

> > It's solely Windows driver design...
> > Luckily I found some information and can clarify above table:
> >
> > 0x00 Reset
> > 0x01 Power down
> > 0x0b Power enable
> > 0x0c Clock enable
> > 0x0d LED (active high)
> >
> > The above text perhaps should go somewhere under Documentation.
>
> Coming back to this; there's a bit of an anomaly with the 0x01 Power
> Down pin for at least one platform.  As listed above, the OV2680 on one
> of my platforms has 3 GPIOs defined, and the table above gives them as
> type Reset, Power down and Clock enable. I'd assumed from this table
> that "power down" meant a powerdown GPIO (I.E. the one usually called
> PWDNB in Omnivision datasheets and "powerdown" in drivers), but the
> datasheet for the OV2680 doesn't list a separate reset and powerdown
> pin, but rather a single pin that performs both functions.

All of them are GPIOs, the question here is how they are actually
connected on PCB level and I have no answer to that. You have to find
schematics somewhere.

> Am I wrong to treat that as something that ought to be mapped as a
> powerdown GPIO to the sensors? Or do you know of any other way to
> reconcile that discrepancy?

The GPIOs can go directly to the sensors or be a control pin for
separate discrete power gates.
So, we can do one of the following:
 a) present PD GPIO as fixed regulator;
 b) present PD & Reset GPIOs as regulator;
 c) provide them as is to the sensor and sensor driver must do what it
considers right.

Since we don't have schematics (yet?) and we have plenty of variations
of sensors, I would go to c) and update the driver of the affected
sensor as needed. Because even if you have separate discrete PD for
one sensor on one platform there is no guarantee that it will be the
same on another. Providing a "virtual" PD in a sensor that doesn't
support it is the best choice I think. Let's hear what Sakari and
other experienced camera sensor developers say.

My vision is purely based on electrical engineering background,
experience with existing (not exactly camera) sensor drivers and
generic cases.

> Failing that; the only way I can think to handle this is to register
> proxy GPIO pins assigned to the sensors as you suggested previously, and
> have them toggle the GPIO's assigned to the INT3472 based on platform
> specific mapping data (I.E. we register a pin called "reset", which on
> most platforms just toggles the 0x00 pin, but on this specific platform
> would drive both 0x00 and 0x01 together. We're already heading that way
> for the regulator consumer supplies so it's sort of nothing new, but I'd
> still rather not if it can be avoided.


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
