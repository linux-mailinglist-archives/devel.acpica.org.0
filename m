Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6322F3A8A
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jan 2021 20:34:18 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5D698100EB83D;
	Tue, 12 Jan 2021 11:34:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.181; helo=mail-oi1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 463D3100EB83A
	for <devel@acpica.org>; Tue, 12 Jan 2021 11:34:15 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id q205so3512593oig.13
        for <devel@acpica.org>; Tue, 12 Jan 2021 11:34:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k32Qu3cNSiXcAEMafYSgn1kVqosninNEkgSTQf4f+b8=;
        b=S7/UW7wP8tgZLn5hSPk/U0CAnqEAp+tfFUmpMrG6WhiJ+PyViZ4Ok0EBKPpuNusYwr
         v1J7UYZpTxWNSm34dXxg7nCQVbkya5bD5KCvOAUpR6iZHkWPIRXRka8diTOm6NW6MOJd
         FGzpjKiiUW4F82WwIh39D/Bi6zEPrKLxAibA2GSVYdT+V3VmSAaUoMikkNMEE4p6TJp9
         h7dSjb6Q4v56D8mO483ie5uraW5MyDZ0WQZlHqmGgwyPTikQUy7U4SF7R0n+z8SiOmm9
         8yJNgkNWcFrQHwfSA5J31Hrb4rVnlF5JczNe4teyzXnI923rOGLwEA/ZpBVbwyr5fKej
         FLvA==
X-Gm-Message-State: AOAM530tvM+2lWQ3ETzWTkcjqDZ+6mCB6kwJoR+g/Qc+q+dKL+tjD3kn
	a+EjmQGl2qvsdk/hFZAo289jSm3dWODrN/lW2uk=
X-Google-Smtp-Source: ABdhPJx7Dl0rZbXiXD6L6Xfo9BZWZpfCRxNircr5Bvuzz8XDqjnp0tR+JuDzrI0pKoBbcHejVMVKTnBv1PaBNG8qTnA=
X-Received: by 2002:aca:4892:: with SMTP id v140mr468391oia.71.1610480054580;
 Tue, 12 Jan 2021 11:34:14 -0800 (PST)
MIME-Version: 1.0
References: <20210107132838.396641-1-djrscally@gmail.com>
In-Reply-To: <20210107132838.396641-1-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 20:34:03 +0100
Message-ID: <CAJZ5v0gb9c-kWM4aAKm6UqbVKt7dyp6xJS5E=7yoPRnPP+msbw@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 2PJLQOEINCXADNUFUD3ERXGCJRVBCPWX
X-Message-ID-Hash: 2PJLQOEINCXADNUFUD3ERXGCJRVBCPWX
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, yong.zhi@intel.com, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, tian.shu.qiu@intel.com, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, hverkuil-cisco@xs4all.nl, m.felsch@pengutronix.de, Niklas Soderlund <niklas.soderl
 und+renesas@ragnatech.se>, prabhakar.mahadev-lad.rj@bp.renesas.com, Steve Longerbeam <slongerbeam@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 00/15] Add functionality to ipu3-cio2 driver allowing software_node connections to sensors on platforms designed for Windows
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2PJLQOEINCXADNUFUD3ERXGCJRVBCPWX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 7, 2021 at 2:30 PM Daniel Scally <djrscally@gmail.com> wrote:
>
>
> Hello all
>
> v4:
> https://lore.kernel.org/linux-media/20210103231235.792999-1-djrscally@gmail.com/T/#m11b7cb977e1b73fba1e625c3d6a189e2943a7783
> v3:
> https://lore.kernel.org/linux-media/20201224010907.263125-1-djrscally@gmail.com/T/#m37b831bb2b406917d6db5da9acf9ed35df65d72d
> v2:
> https://lore.kernel.org/linux-media/20201217234337.1983732-1-djrscally@gmail.com/T/#md93fd090009b42a6a98aed892aff0d38cf07e0cd
> v1:
> https://lore.kernel.org/linux-media/20201130133129.1024662-1-djrscally@gmail.com/T/#m91934e12e3d033da2e768e952ea3b4a125ee3e67
>
> This series is to start adding support for webcams on laptops with ACPI tables
> designed for use with CIO2 on Windows. This series extends the ipu3-cio2
> driver to allow for patching the firmware via software_nodes if endpoints
> aren't defined by ACPI.
>
> I'm hopeful that most or all of this series could get picked up for 5.12.
> We touch a few different areas (listed below), but I think the easiest
> approach would be to merge everything through media tree. Rafael, Greg,
> Mauro and Sergey; are you ok with that plan, or would you prefer a
> different approach? Mauro; if that plan is ok (and of course assuming that
> the rest of the patches are acked by their respective maintainers) could
> we get a dedicated feature branch just in case the following series ends
> up being ready in time too?
>
> lib
>   lib/test_printf.c: Use helper function to unwind array of
>     software_nodes
>
> base
>   software_node: Fix refcounts in software_node_get_next_child()
>   property: Return true in fwnode_device_is_available for NULL ops
>   property: Call fwnode_graph_get_endpoint_by_id() for fwnode->secondary
>   software_node: Enforce parent before child ordering of nodes arrays
>   software_node: unregister software_nodes in reverse order
>   include: fwnode.h: Define format macros for ports and endpoints
>
> acpi
>   acpi: Add acpi_dev_get_next_match_dev() and helper macro
>
> media
>   media: v4l2-core: v4l2-async: Check sd->fwnode->secondary in
>     match_fwnode()
>   ipu3-cio2: Add T: entry to MAINTAINERS
>   ipu3-cio2: Rename ipu3-cio2.c
>   ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
>   include: media: v4l2-fwnode: Include v4l2_fwnode_bus_type
>
> Series-level changelog:
>         - Rebased onto 5.11-rc1
>
> Thanks
> Dan
>
> Andy Shevchenko (1):
>   media: ipu3-cio2: Add headers that ipu3-cio2.h is direct user of
>
> Daniel Scally (13):
>   software_node: Fix refcounts in software_node_get_next_child()
>   device property: Return true in fwnode_device_is_available for NULL
>     ops
>   device property: Call fwnode_graph_get_endpoint_by_id() for
>     fwnode->secondary
>   software_node: Enforce parent before child ordering of nodes arrays
>   software_node: unregister software_nodes in reverse order
>   device property: Define format macros for ports and endpoints
>   lib/test_printf.c: Use helper function to unwind array of
>     software_nodes
>   ipu3-cio2: Add T: entry to MAINTAINERS
>   ipu3-cio2: Rename ipu3-cio2.c
>   media: v4l2-core: v4l2-async: Check sd->fwnode->secondary in
>     match_fwnode()
>   ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro
>   media: v4l2-fwnode: Include v4l2_fwnode_bus_type
>   ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver
>
> Heikki Krogerus (1):
>   software_node: Add support for fwnode_graph*() family of functions

Please feel free to add

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

to all of the device properties patches in this series if that helps.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
