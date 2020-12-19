Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 540E62DF11B
	for <lists+devel-acpica@lfdr.de>; Sat, 19 Dec 2020 19:52:50 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 29FB3100ED4AC;
	Sat, 19 Dec 2020 10:52:49 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::432; helo=mail-pf1-x432.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 9776D100ED4AB
	for <devel@acpica.org>; Sat, 19 Dec 2020 10:52:47 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id h186so3621459pfe.0
        for <devel@acpica.org>; Sat, 19 Dec 2020 10:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k1zIYWtnLeqCpR6G01qfhl0qjWfgWBYC7/jVFwx9GwE=;
        b=ONF3H9nm1kc9HSePnhuciU8TbKdOmZD9ddxKmAb5SUSVv9uMe3tYyR8iX1lwdwIIRl
         EXOuxEbPndf6H89QQVgBxcajC8YwT8Y0jkJrcJgmnseRkvjkvc+tf4FOM/pwhqN2EDJb
         oKVgNtAKOwZJC1slAJ3jXbOHdnKzv7ZI2SughrBRPE4FUZtH2CnVzViCIXfHUgG84zbJ
         o87MOV6eOZLA/KOkZ09cz5LDTghW8Kd3ieazDMFHNO9dx47xZMVvfwPM3Kpt+WETnaep
         oTji+jqIrKwjB1FnSpnGFVeVEHRuCiDyLAN9gyNKLH/JdupQHE5KPSRGpfETteuaydC5
         AGrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k1zIYWtnLeqCpR6G01qfhl0qjWfgWBYC7/jVFwx9GwE=;
        b=RYWXWvM4116HCdpkZ0SGYCXBrtf7TP4IEXjhh8R19GC6WtdFMF0CuOBnn9QX8JiVgl
         wwABW3KnArfJTlj9P49urQGBtMn77yAQn5AKQjDAWtXZV/tqm9UkAgVrx08Dc1qXeze7
         A7zSQGczaZJrcZVp2/FkKx3lvgH/BE0j3YYdBZBq1mb0dfryxsqh61h2RjOnURgSTsgv
         d828hjamkW4PBJaUfMESGXikxNSlBHfcDSW+TH+jm6tnhx5VwQ4aVe5/U7EcI7seT5w8
         z6qG4mt+a6XDd+YoXZSw7+Uvf6XA7+we4Uj4h8n4H7n8BfL+R+cMo5f2mipp57JMUIAj
         TZXw==
X-Gm-Message-State: AOAM531vBe6s3UyBsari7LtKoqZdIyDBX4cAYzsD2Dqvi7Qs5FVAdf5t
	TWtVCD3HL/ZoaGIaIPjBP5WjocH5NxLkWlXF+HQ=
X-Google-Smtp-Source: ABdhPJz5HGuII/pHqYaHr7+ZtbOwTFu7GODBV+U/h1vrgnQazOUcB6ZL7+pPs4yxjBZUWSRc7v3wXh44kRIaKPNeVt0=
X-Received: by 2002:a05:6a00:170a:b029:19d:afca:4704 with SMTP id
 h10-20020a056a00170ab029019dafca4704mr8805453pfc.7.1608403965858; Sat, 19 Dec
 2020 10:52:45 -0800 (PST)
MIME-Version: 1.0
References: <20201217234337.1983732-1-djrscally@gmail.com> <20201217234337.1983732-13-djrscally@gmail.com>
 <20201218211732.GE4077@smile.fi.intel.com> <e2b4c35f-5020-c332-d97a-8ba25be0e55e@gmail.com>
In-Reply-To: <e2b4c35f-5020-c332-d97a-8ba25be0e55e@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 19 Dec 2020 20:52:29 +0200
Message-ID: <CAHp75VcebKas4j-vByodicHxRMrO4jkaJToSUW3iLJC2+vY_iA@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 25GP5YX4WXO7C6VFS62HY7AZLAEEOPWW
X-Message-ID-Hash: 25GP5YX4WXO7C6VFS62HY7AZLAEEOPWW
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Linus Walleij <linus.walleij@linaro.org>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Tsuchiya Yuto <kitakar@gmail
 .com>, jorhand@linux.microsoft.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 12/12] ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/25GP5YX4WXO7C6VFS62HY7AZLAEEOPWW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Dec 19, 2020 at 2:25 AM Daniel Scally <djrscally@gmail.com> wrote:
> On 18/12/2020 21:17, Andy Shevchenko wrote:
> > On Thu, Dec 17, 2020 at 11:43:37PM +0000, Daniel Scally wrote:

...

> >> +    sensor->ep_properties[0] = PROPERTY_ENTRY_U32(sensor->prop_names.bus_type, 4);
> >
> > Does 4 has any meaning that can be described by #define ?
>
> It's V4L2_FWNODE_BUS_TYPE_CSI2_DPHY:
>
> https://elixir.bootlin.com/linux/latest/source/drivers/media/v4l2-core/v4l2-fwnode.c#L36
>
> That enum's not in an accessible header, but I can define it in this
> module's header

Maybe you can do a preparatory patch to make it visible to v4l2
drivers? (Like moving to one of v4l2 headers)

...

> >> +                    if (bridge->n_sensors >= CIO2_NUM_PORTS) {
> >> +                            dev_warn(&cio2->dev, "Exceeded available CIO2 ports\n");
> >
> >> +                            /* overflow i so outer loop ceases */
> >> +                            i = ARRAY_SIZE(cio2_supported_sensors);
> >> +                            break;
> >
> > Why not to create a new label below and assign ret here with probably comment
> > why it's not an error?
>
> Sure, I can do that, but since it wouldn't need any cleanup I could also
> just return 0 here as Laurent suggest (but with a comment explaining why
> that's ok as you say) - do you have a preference?

While it's a good suggestion it will bring a bit of inconsistency into
approach. Everywhere else in the function you are using the goto
approach.
So yes, I have a preference.

> >> +                    }

...

> >> +                    ret = cio2_bridge_read_acpi_buffer(adev, "SSDB",
> >> +                                                       &sensor->ssdb,
> >> +                                                       sizeof(sensor->ssdb));
> >> +                    if (ret < 0)
> >
> > if (ret) (because positive case can be returned just by next conditional).
>
> cio2_bridge_read_acpi_buffer() returns the buffer length on success at
> the moment, but I can change it to return 0 and have this be if (ret)

Please correct this somehow, because the next failure returns it
instead of error...

> >> +                            goto err_put_adev;
> >> +
> >> +                    if (sensor->ssdb.lanes > 4) {
> >> +                            dev_err(&adev->dev,
> >> +                                    "Number of lanes in SSDB is invalid\n");

...I'm even thinking that you have to assign ret here to something meaningful.

> >> +                            goto err_put_adev;
> >> +                    }

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
