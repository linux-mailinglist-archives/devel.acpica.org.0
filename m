Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D3573344C1B
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Mar 2021 17:47:23 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 41799100EBB9F;
	Mon, 22 Mar 2021 09:47:22 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.45; helo=mail-ot1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CADC4100EBB9E
	for <devel@acpica.org>; Mon, 22 Mar 2021 09:47:19 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id k14-20020a9d7dce0000b02901b866632f29so16610226otn.1
        for <devel@acpica.org>; Mon, 22 Mar 2021 09:47:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ShXkEthEfrXvz174Grh0zIVOkXxgJka/xOdie336NaY=;
        b=VswUDy/nxYJk6MzOwHXiOC4sgHsty8gejNSRwnoc644e7WevrL07Sk/7wPtCormRk6
         MXFmOxUJ6UqmwUNxMVy5nfEfQ7mbpW4rLzJ3l+U7rqxbeKUq4KH0KGm1eLy3lZ1yCEbN
         3WujKGXbG38OJOHsfSysdQNModUTKo/AwOap+IkpBeqAqMHVnIApflRDJChFIp0adYFG
         TRyyQ0ypaZgYgAbbks9qBIQXrrkd+QaLtKBfdPP3au8Y92pJzl/OahIsLOpRi3blLh7q
         c4joqaZPLCbPWFF7+TJJYPrCFEBpUbH6TDgejRw2OhxEDXUtKPlATupKYDRXGe2UGDIt
         9YXg==
X-Gm-Message-State: AOAM530N28XeNPGDD3RMjra0Z5bidRWZOXt+W7+u7CGcDa7rVGXxfC1I
	q7pvbPC32eF8zFiV4sqS45/u6WRY2IsNjCMC4uM=
X-Google-Smtp-Source: ABdhPJw7j46feNwlJHUA4BdbbNfBNB/kAAXnZVyT+thDL1+acJ1rHIB5+AnQzqnRiADDnwYhoEQqObK2sxmGlW6alGU=
X-Received: by 2002:a05:6830:20d2:: with SMTP id z18mr672314otq.260.1616431639146;
 Mon, 22 Mar 2021 09:47:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210322163100.42617-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210322163100.42617-1-andriy.shevchenko@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 22 Mar 2021 17:47:07 +0100
Message-ID: <CAJZ5v0hpNzCVf76npq_z+H-kBa0BurDnUDJdK5jqkpooHmTmJg@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: JDCR3FN7G6OO2BDPCO4Z2LMLPO3CJIZ6
X-Message-ID-Hash: JDCR3FN7G6OO2BDPCO4Z2LMLPO3CJIZ6
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v4 1/1] ACPI: scan: Use unique number for instance_no
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JDCR3FN7G6OO2BDPCO4Z2LMLPO3CJIZ6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 22, 2021 at 5:31 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> The decrementation of acpi_device_bus_id->instance_no
> in acpi_device_del() is incorrect, because it may cause
> a duplicate instance number to be allocated next time
> a device with the same acpi_device_bus_id is added.
>
> Replace above mentioned approach by using IDA framework.
>
> While at it, define the instance range to be [0, 4096).
>
> Fixes: e49bd2dd5a50 ("ACPI: use PNPID:instance_no as bus_id of ACPI device")
> Fixes: ca9dc8d42b30 ("ACPI / scan: Fix acpi_bus_id_list bookkeeping")
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Applied as 5.12-rc material, thanks!

> ---
> v4: defined instance range [0, 4096) (Rafael)
>  drivers/acpi/internal.h |  6 +++++-
>  drivers/acpi/scan.c     | 33 ++++++++++++++++++++++++++++-----
>  include/acpi/acpi_bus.h |  1 +
>  3 files changed, 34 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/acpi/internal.h b/drivers/acpi/internal.h
> index e6a5d997241c..cb8f70842249 100644
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
> @@ -96,9 +98,11 @@ void acpi_scan_table_handler(u32 event, void *table, void *context);
>
>  extern struct list_head acpi_bus_id_list;
>
> +#define ACPI_MAX_DEVICE_INSTANCES      4096
> +
>  struct acpi_device_bus_id {
>         const char *bus_id;
> -       unsigned int instance_no;
> +       struct ida instance_ida;
>         struct list_head node;
>  };
>
> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index a184529d8fa4..84bb7c1929f1 100644
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
> @@ -631,6 +630,21 @@ static struct acpi_device_bus_id *acpi_device_bus_id_match(const char *dev_id)
>         return NULL;
>  }
>
> +static int acpi_device_set_name(struct acpi_device *device,
> +                               struct acpi_device_bus_id *acpi_device_bus_id)
> +{
> +       struct ida *instance_ida = &acpi_device_bus_id->instance_ida;
> +       int result;
> +
> +       result = ida_simple_get(instance_ida, 0, ACPI_MAX_DEVICE_INSTANCES, GFP_KERNEL);
> +       if (result < 0)
> +               return result;
> +
> +       device->pnp.instance_no = result;
> +       dev_set_name(&device->dev, "%s:%02x", acpi_device_bus_id->bus_id, result);
> +       return 0;
> +}
> +
>  int acpi_device_add(struct acpi_device *device,
>                     void (*release)(struct device *))
>  {
> @@ -665,7 +679,9 @@ int acpi_device_add(struct acpi_device *device,
>
>         acpi_device_bus_id = acpi_device_bus_id_match(acpi_device_hid(device));
>         if (acpi_device_bus_id) {
> -               acpi_device_bus_id->instance_no++;
> +               result = acpi_device_set_name(device, acpi_device_bus_id);
> +               if (result)
> +                       goto err_unlock;
>         } else {
>                 acpi_device_bus_id = kzalloc(sizeof(*acpi_device_bus_id),
>                                              GFP_KERNEL);
> @@ -681,9 +697,16 @@ int acpi_device_add(struct acpi_device *device,
>                         goto err_unlock;
>                 }
>
> +               ida_init(&acpi_device_bus_id->instance_ida);
> +
> +               result = acpi_device_set_name(device, acpi_device_bus_id);
> +               if (result) {
> +                       kfree(acpi_device_bus_id);
> +                       goto err_unlock;
> +               }
> +
>                 list_add_tail(&acpi_device_bus_id->node, &acpi_bus_id_list);
>         }
> -       dev_set_name(&device->dev, "%s:%02x", acpi_device_bus_id->bus_id, acpi_device_bus_id->instance_no);
>
>         if (device->parent)
>                 list_add_tail(&device->node, &device->parent->children);
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 02a716a0af5d..f28b097c658f 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -233,6 +233,7 @@ struct acpi_pnp_type {
>
>  struct acpi_device_pnp {
>         acpi_bus_id bus_id;             /* Object name */
> +       int instance_no;                /* Instance number of this object */
>         struct acpi_pnp_type type;      /* ID type */
>         acpi_bus_address bus_address;   /* _ADR */
>         char *unique_id;                /* _UID */
> --
> 2.30.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
