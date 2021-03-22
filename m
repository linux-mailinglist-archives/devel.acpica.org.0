Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E668B344846
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Mar 2021 15:55:57 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 49719100EBB82;
	Mon, 22 Mar 2021 07:55:56 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.172; helo=mail-oi1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 030FE100EBB80
	for <devel@acpica.org>; Mon, 22 Mar 2021 07:55:53 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id m13so13320386oiw.13
        for <devel@acpica.org>; Mon, 22 Mar 2021 07:55:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mxhecs8h6ZrGlDWUuj5bDqeQpBWOSi4ONB8w9TpH/nY=;
        b=P2o8sSXqfBDLPdEaJyNNLiT2gpSuZNC9v0byie9QVmH9SguxgH9Rll6/vrf2fZp4AU
         uM6hk+50umqfwb4EF0Gv4ZzdEvIADNaT8+3dytOSgXhIIY8bGhaXrzhHdpoBPgQ4EXjv
         pKAPKdGcA/PJ6qXIyKYMjDecA2IXCW+2DYRk0dklvQtbcBPJmaMsP/6jhHYQpPnGJfsm
         TVYXeBDWNKkai8jwYArwEP6zNp0b/bo7rXpPigfZqHhJhYZkkTEpGDCLQcgng0KUZ1MB
         Cc7z2fvFhnpSlLJ6SWCSDwGUzG1b2mjiofBbNGAlfCuRsWpmBRq1AjWFkl1cHUzvkTAR
         tFGw==
X-Gm-Message-State: AOAM531KgmCxXt34p0y2Z8kVBzBSoByQ6yGgRmBa668sKewWR7eUIiZ0
	rtZeUiDSnov2XLCwU2kZZNxGnil0Nyf8RLODnio=
X-Google-Smtp-Source: ABdhPJw66pk6+5GZDef3lvjkVkTy9aKd9QT2qIUf/6D9x/U9xW7Bye/wZJ/B+qC1gl98yq1sdqo0XWdbe8FLkDEWJr0=
X-Received: by 2002:a05:6808:24b:: with SMTP id m11mr56488oie.157.1616424952837;
 Mon, 22 Mar 2021 07:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210319192109.40041-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210319192109.40041-1-andriy.shevchenko@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 22 Mar 2021 15:55:37 +0100
Message-ID: <CAJZ5v0gcqKiXKzEj6u7vq_1Y9pYBdSGA6yT3q6JPVgW4djSiaQ@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: 35NE2DX5QYI3KPJTK5SIEIF4K5UHFF7K
X-Message-ID-Hash: 35NE2DX5QYI3KPJTK5SIEIF4K5UHFF7K
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/1] ACPI: scan: Use unique number for instance_no
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/35NE2DX5QYI3KPJTK5SIEIF4K5UHFF7K/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 19, 2021 at 8:21 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> The decrementation of acpi_device_bus_id->instance_no
> in acpi_device_del() is incorrect, because it may cause
> a duplicate instance number to be allocated next time
> a device with the same acpi_device_bus_id is added.
>
> Replace above mentioned approach by using IDA framework.
>
> Fixes: e49bd2dd5a50 ("ACPI: use PNPID:instance_no as bus_id of ACPI device")
> Fixes: ca9dc8d42b30 ("ACPI / scan: Fix acpi_bus_id_list bookkeeping")
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v3: rewrote commit message once again as proposed by Rafael in v1
>  drivers/acpi/internal.h |  4 +++-
>  drivers/acpi/scan.c     | 32 +++++++++++++++++++++++++++-----
>  include/acpi/acpi_bus.h |  1 +
>  3 files changed, 31 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/acpi/internal.h b/drivers/acpi/internal.h
> index e6a5d997241c..417eb768d710 100644
> --- a/drivers/acpi/internal.h
> +++ b/drivers/acpi/internal.h
> @@ -9,6 +9,8 @@
>  #ifndef _ACPI_INTERNAL_H_
>  #define _ACPI_INTERNAL_H_
>
> +#include <linux/idr.h>
> +
>  #define PREFIX "ACPI: "
>
>  int early_acpi_osi_init(void);
> @@ -98,7 +100,7 @@ extern struct list_head acpi_bus_id_list;
>
>  struct acpi_device_bus_id {
>         const char *bus_id;
> -       unsigned int instance_no;
> +       struct ida instance_ida;
>         struct list_head node;
>  };
>
> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index a184529d8fa4..4b445b169ad4 100644
> --- a/drivers/acpi/scan.c
> +++ b/drivers/acpi/scan.c
> @@ -479,9 +479,8 @@ static void acpi_device_del(struct acpi_device *device)
>         list_for_each_entry(acpi_device_bus_id, &acpi_bus_id_list, node)
>                 if (!strcmp(acpi_device_bus_id->bus_id,
>                             acpi_device_hid(device))) {
> -                       if (acpi_device_bus_id->instance_no > 0)
> -                               acpi_device_bus_id->instance_no--;
> -                       else {
> +                       ida_simple_remove(&acpi_device_bus_id->instance_ida, device->pnp.instance_no);
> +                       if (ida_is_empty(&acpi_device_bus_id->instance_ida)) {
>                                 list_del(&acpi_device_bus_id->node);
>                                 kfree_const(acpi_device_bus_id->bus_id);
>                                 kfree(acpi_device_bus_id);
> @@ -631,6 +630,20 @@ static struct acpi_device_bus_id *acpi_device_bus_id_match(const char *dev_id)
>         return NULL;
>  }
>
> +static int acpi_device_set_name(struct acpi_device *device,
> +                               struct acpi_device_bus_id *acpi_device_bus_id)
> +{
> +       int result;
> +
> +       result = ida_simple_get(&acpi_device_bus_id->instance_ida, 0, 255, GFP_KERNEL);

This is ida_alloc_range(ida, start, (end) - 1, gfp), so I think it
should be 256 above, instead of 255.

While at it, though, there can be more than 256 CPU devices easily on
contemporary systems, so I would use a greater number here.  Maybe
4096 and define a symbol for it?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
