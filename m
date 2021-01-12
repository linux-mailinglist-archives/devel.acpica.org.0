Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 958602F3A22
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jan 2021 20:26:20 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 75C74100EB83D;
	Tue, 12 Jan 2021 11:26:19 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.52; helo=mail-ot1-f52.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E7407100EB83A
	for <devel@acpica.org>; Tue, 12 Jan 2021 11:26:16 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id x5so3037958otp.9
        for <devel@acpica.org>; Tue, 12 Jan 2021 11:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/9SIIDDFT9uls6UTDADwMgAnAVzHFxFMS60aJmoylv4=;
        b=VgDOhqSu5Mjk13wrTBkIhymfZFfQRipfMRYZJqAZoOLObdlFvvm12ck9C85RVPWam8
         8VYREETFc7qfGvdneEIGIP8/696syuaj8X9Cxp9fcUw6XvnY9PsTSrCIPotr2VU9Y1up
         9IVCgiHCgRZV1X/tcsZyytwAzsOFfekyhgm6mmPZykgp0HmvlkVvTbHLJOGC2bRoZKQg
         1WkY+55yDgVwP9GaKOLkIcnPuaPQBFvSuWXdCqpYlDGD/rV6IhhgBZy/QZeQxUIjioHr
         Smt4YubvjFJdyDBkECM2Lq1Mlc5ifEvnxH/kagj8Wvs8JVq0+/HRid/VuLCHHORCZWAt
         helQ==
X-Gm-Message-State: AOAM531aTHFKyD6J8wuZE33Ed+D9AJWP+ohGFmyGavWsqnXDjWApZlcD
	8Nu6ylRjupIZaFZU1vnVHY2bS0x3S8LOpGp4RcQ=
X-Google-Smtp-Source: ABdhPJz458Q3yIYCQLLO3wiyAkdrn7qtpOJu0L7VRbx+Ri8t+mFlajZ+pI4GOy165xcTN3VR/23Te58mQc00vbLW0KE=
X-Received: by 2002:a05:6830:4b5:: with SMTP id l21mr518934otd.321.1610479575262;
 Tue, 12 Jan 2021 11:26:15 -0800 (PST)
MIME-Version: 1.0
References: <20210107132838.396641-1-djrscally@gmail.com> <20210107132838.396641-14-djrscally@gmail.com>
 <X/kM0wWEInPhz3mz@pendragon.ideasonboard.com>
In-Reply-To: <X/kM0wWEInPhz3mz@pendragon.ideasonboard.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 20:26:04 +0100
Message-ID: <CAJZ5v0i_TH2yqnPs8CWmMZC-DznkWdvYPM1vshvxZhFajwp-cQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID-Hash: E52X7K3OBZAJNBGLVHZ6DRTHWELYHEKX
X-Message-ID-Hash: E52X7K3OBZAJNBGLVHZ6DRTHWELYHEKX
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Daniel Scally <djrscally@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, yong.zhi@intel.com, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, tian.shu.qiu@intel.com, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.c
 om>, hverkuil-cisco@xs4all.nl, m.felsch@pengutronix.de, Niklas Soderlund <niklas.soderlund+renesas@ragnatech.se>, prabhakar.mahadev-lad.rj@bp.renesas.com, Steve Longerbeam <slongerbeam@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 13/15] ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/E52X7K3OBZAJNBGLVHZ6DRTHWELYHEKX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Sat, Jan 9, 2021 at 2:55 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rafael,
>
> Could you please review this patch, and let us know (see question in the
> cover letter)

Done, sorry for the delay.

> if it can be merged through the linux-media tree for v5.12
> ?

Yes, it can.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
