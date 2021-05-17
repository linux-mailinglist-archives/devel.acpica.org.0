Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B36386C90
	for <lists+devel-acpica@lfdr.de>; Mon, 17 May 2021 23:48:11 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 311EF100EB823;
	Mon, 17 May 2021 14:48:10 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2AE92100EBB92
	for <devel@acpica.org>; Mon, 17 May 2021 14:48:08 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id b15-20020a17090a550fb029015dad75163dso421452pji.0
        for <devel@acpica.org>; Mon, 17 May 2021 14:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JMkvV6BdFFXMjoCPNmiDQhek94rpMVEncluqG5MRowE=;
        b=odxstFZqYrucY4FAfwODmpJzT6jRu7CDGlVwp/MPxyAZ5p9mR28hLz1AkSgOslTZeH
         EIDdzCusL/6HN6ufV+7hRqOUVJ33NqiOFxdJNrVI/7sRKrD4q0nalj3luYUxyM4Q5uxm
         ZDugFjJPLXqNtbvB39cv3zngXvS9ERO4hylEjckcNaovm1kD8GuMQsNVRaOWRVnXx5fX
         zqJgd6EM3XSGhHt60if0R4V/1ed5kazBt1Icnb3dGk6d/tmS1dM1ZSlXx1v0LFprjblB
         DFwBVIUHdqP2N4bekTtJjXd8PkealEG31X2Lsh3wAx74Z7tAwi7gCIT1RL8YVytRlGS/
         6oyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JMkvV6BdFFXMjoCPNmiDQhek94rpMVEncluqG5MRowE=;
        b=ueLpBdet0vo2bP7zPaCnmoe/rH8Aqdqcolw3b/BAjoGd5O5kawNFPX8eMrg3gT38PS
         ZCxwTskpQAqA9/W/hF09qL7BivbhEd9p4PIt/6ZiQgrkyFW8Dp8rcfzamVqqcYyBO46M
         z30GIkSocl2iugj3TJ1RC24fSOBqtwrrnHz6MuNeoUFfHshVfDyz2N7Upk+Z6YAIYNva
         m+f3/dnh44ULCJc4bXme/v6Cix+w5mq7M6sQ9PpSUPWtVC7nmkMzV4RCu9WgpaCKdiEw
         PhjqjlGgvxzcfcyMci4Anr2xBV1/dC3M7K/50sp2l0IWBfnNvhSxXtdtWfJU5trC0ZUI
         YWfQ==
X-Gm-Message-State: AOAM530/EvvLN/bRCrA6Zmc6JWRpFk0QmG6HmgpSGIXw/o6vVd6vXpyZ
	RMCG8tU76xbwIf6zJYgBV01Bxu7cRdu3cYL4O+Q=
X-Google-Smtp-Source: ABdhPJzVb2Ly6gYRoFRDwWBuQTVhXViFr9CR8JTQUS5JsuSaXSK84r6AwxbxCyo6EbuMLLARNKHhdo+ukDZYWYSa8L0=
X-Received: by 2002:a17:902:264:b029:eb:3d3a:a09c with SMTP id
 91-20020a1709020264b02900eb3d3aa09cmr622880plc.0.1621288086211; Mon, 17 May
 2021 14:48:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210222130735.1313443-1-djrscally@gmail.com> <20210222130735.1313443-6-djrscally@gmail.com>
 <CAHp75Vd2Dc2Poq7VNRXRT-0VjkYdEFY2WKpz8fWpAQViQRO4jA@mail.gmail.com> <0241df24-11cb-fd3b-12a5-f98dea55fac5@gmail.com>
In-Reply-To: <0241df24-11cb-fd3b-12a5-f98dea55fac5@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 18 May 2021 00:47:50 +0300
Message-ID: <CAHp75VdQ-BYs2MhKA0g+e5No6qP1-BpPBv5L9091yX9c51ZxKw@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: VGXTWKVH3FNYWDTCW7ZE6BAAXYVCPE5V
X-Message-ID-Hash: VGXTWKVH3FNYWDTCW7ZE6BAAXYVCPE5V
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, kieran.bingham+renesas@ideasonboard.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, =?UTF-8?Q?Fabian_W=C3=BCthrich?= <me@fabwu.ch>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI
  COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 5/6] platform/x86: Add intel_skl_int3472 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VGXTWKVH3FNYWDTCW7ZE6BAAXYVCPE5V/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 18, 2021 at 12:43 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> Hi Andy
>
> On 22/02/2021 14:58, Andy Shevchenko wrote
> >> +#include <linux/clk-provider.h>
> >
> > This is definitely not for *.h. (Not all C files needed this)
> >
> >> +#include <linux/gpio/machine.h>
> >
> > Ditto.
> >
> >> +#include <linux/regulator/driver.h>
> >> +#include <linux/regulator/machine.h>
> >
> > Ditto.
>
> Bit more delayed than I wanted to be, but I'm just finishing off the v4
> of this. For these includes, I'm using the actual structs from them
> rather than pointers, so removing these would mean moving the definition
> of struct int3472_discrete_device into one of the source files; you're
> happy with that?

Either way, please send a v4 and we start over from a fresh view.

Thanks!

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
