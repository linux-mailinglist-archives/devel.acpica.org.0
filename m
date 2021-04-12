Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C7E35CF82
	for <lists+devel-acpica@lfdr.de>; Mon, 12 Apr 2021 19:32:15 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AE2B4100EBB8F;
	Mon, 12 Apr 2021 10:32:12 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.176; helo=mail-oi1-f176.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D4C84100EBB63
	for <devel@acpica.org>; Mon, 12 Apr 2021 10:32:09 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id m13so14169611oiw.13
        for <devel@acpica.org>; Mon, 12 Apr 2021 10:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YLPU8jk19ohQxtufiVwASUPSrtowgcZRi3OfC78Zk+8=;
        b=UrL8PR3LNlpjEM8ojCadJUUm6SWH0ri6AreuhWJCd9F/kgVMZCktxu6CvTP/kWTt+N
         Ft8yPK+sZJkIn8uvZ1kC/cU6eSFAtK+padTHQgxW31zXNtoxh96QPehQ+kRCLVKBvdtW
         y7/T/9omN8emc4AEw1VvD4tdk/EYfWAF9s1wGmpQ7RIiC5nCWbCNizQ1fNXa3ZtqtkoB
         5xIg4QPLWvo6WiWIXlCos6YFA3RPh/DTVjr6cCiy/gd2i1zvAv5b/++6+FFiW5/AVgMQ
         r+FeQ31TeV6i3WY6COmqi4AWbija01W3GmON79a4pcm6uNSOtn8g5F5m9j7O+S9cgITb
         V/wg==
X-Gm-Message-State: AOAM530d8fNn525Q17chfo5eYZhZYxp+44z8A0xT0NYsW89ZLuL2VRzG
	UgNdUbBJh8RPGpArTl+FeB3ArOlX3BudIujJy7Y=
X-Google-Smtp-Source: ABdhPJz7f9ByOiHU75WursIJMXSHYO6D3IQ9Qm7IsXChFae6vpAIfsUm7feU2wa5rLTrTViPvUXE9xFyasqUmEKc8Qg=
X-Received: by 2002:aca:aa8f:: with SMTP id t137mr184867oie.71.1618248728794;
 Mon, 12 Apr 2021 10:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210410134718.1942273-1-andy.shevchenko@gmail.com>
In-Reply-To: <20210410134718.1942273-1-andy.shevchenko@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 12 Apr 2021 19:31:57 +0200
Message-ID: <CAJZ5v0jQ=UU8FgFFF_ht_v1dZwhp-32wi_QNaZuf6vBaORU41w@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: ZPD27D6A3AOZ7ZWQDXN4D6FMTMURSVOB
X-Message-ID-Hash: ZPD27D6A3AOZ7ZWQDXN4D6FMTMURSVOB
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dwaipayan Ray <dwaipayanray1@gmail.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZPD27D6A3AOZ7ZWQDXN4D6FMTMURSVOB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Apr 10, 2021 at 3:47 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> Introduce acpi_dev_get() to have a symmetrical API with acpi_dev_put()
> and reuse both in ACPI code under drivers/acpi folder.
>
> While at it, use acpi_bus_put_acpi_device() in one place rather than above.
>
> Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> ---
>  drivers/acpi/device_sysfs.c | 4 ++--
>  drivers/acpi/glue.c         | 8 ++++----
>  drivers/acpi/scan.c         | 9 ++++-----
>  include/acpi/acpi_bus.h     | 6 ++++++
>  4 files changed, 16 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/acpi/device_sysfs.c b/drivers/acpi/device_sysfs.c
> index da4ff2a8b06a..35757c3c1b71 100644
> --- a/drivers/acpi/device_sysfs.c
> +++ b/drivers/acpi/device_sysfs.c
> @@ -376,12 +376,12 @@ eject_store(struct device *d, struct device_attribute *attr,
>         if (ACPI_FAILURE(status) || !acpi_device->flags.ejectable)
>                 return -ENODEV;
>
> -       get_device(&acpi_device->dev);
> +       acpi_dev_get(acpi_device);
>         status = acpi_hotplug_schedule(acpi_device, ACPI_OST_EC_OSPM_EJECT);
>         if (ACPI_SUCCESS(status))
>                 return count;
>
> -       put_device(&acpi_device->dev);
> +       acpi_dev_put(acpi_device);
>         acpi_evaluate_ost(acpi_device->handle, ACPI_OST_EC_OSPM_EJECT,
>                           ACPI_OST_SC_NON_SPECIFIC_FAILURE, NULL);
>         return status == AE_NO_MEMORY ? -ENOMEM : -EAGAIN;
> diff --git a/drivers/acpi/glue.c b/drivers/acpi/glue.c
> index 36b24b0658cb..0715e3be99a0 100644
> --- a/drivers/acpi/glue.c
> +++ b/drivers/acpi/glue.c
> @@ -190,7 +190,7 @@ int acpi_bind_one(struct device *dev, struct acpi_device *acpi_dev)
>         if (!acpi_dev)
>                 return -EINVAL;
>
> -       get_device(&acpi_dev->dev);
> +       acpi_dev_get(acpi_dev);
>         get_device(dev);
>         physical_node = kzalloc(sizeof(*physical_node), GFP_KERNEL);
>         if (!physical_node) {
> @@ -217,7 +217,7 @@ int acpi_bind_one(struct device *dev, struct acpi_device *acpi_dev)
>                                 goto err;
>
>                         put_device(dev);
> -                       put_device(&acpi_dev->dev);
> +                       acpi_dev_put(acpi_dev);
>                         return 0;
>                 }
>                 if (pn->node_id == node_id) {
> @@ -257,7 +257,7 @@ int acpi_bind_one(struct device *dev, struct acpi_device *acpi_dev)
>   err:
>         ACPI_COMPANION_SET(dev, NULL);
>         put_device(dev);
> -       put_device(&acpi_dev->dev);
> +       acpi_dev_put(acpi_dev);
>         return retval;
>  }
>  EXPORT_SYMBOL_GPL(acpi_bind_one);
> @@ -285,7 +285,7 @@ int acpi_unbind_one(struct device *dev)
>                         ACPI_COMPANION_SET(dev, NULL);
>                         /* Drop references taken by acpi_bind_one(). */
>                         put_device(dev);
> -                       put_device(&acpi_dev->dev);
> +                       acpi_dev_put(acpi_dev);
>                         kfree(entry);
>                         break;
>                 }
> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index ad2541c0aece..bba6b529cf6c 100644
> --- a/drivers/acpi/scan.c
> +++ b/drivers/acpi/scan.c
> @@ -530,7 +530,7 @@ static void acpi_device_del_work_fn(struct work_struct *work_not_used)
>                  * used by the device.
>                  */
>                 acpi_power_transition(adev, ACPI_STATE_D3_COLD);
> -               put_device(&adev->dev);
> +               acpi_dev_put(adev);
>         }
>  }
>
> @@ -604,8 +604,7 @@ EXPORT_SYMBOL(acpi_bus_get_device);
>
>  static void get_acpi_device(void *dev)
>  {
> -       if (dev)
> -               get_device(&((struct acpi_device *)dev)->dev);
> +       acpi_dev_get(dev);

I would do

if (dev)
    acpi_dev_get(dev);

here.

>  }
>
>  struct acpi_device *acpi_bus_get_acpi_device(acpi_handle handle)
> @@ -615,7 +614,7 @@ struct acpi_device *acpi_bus_get_acpi_device(acpi_handle handle)
>
>  void acpi_bus_put_acpi_device(struct acpi_device *adev)
>  {
> -       put_device(&adev->dev);
> +       acpi_dev_put(adev);
>  }
>
>  static struct acpi_device_bus_id *acpi_device_bus_id_match(const char *dev_id)
> @@ -2386,7 +2385,7 @@ int __init acpi_scan_init(void)
>                         acpi_detach_data(acpi_root->handle,
>                                          acpi_scan_drop_device);
>                         acpi_device_del(acpi_root);
> -                       put_device(&acpi_root->dev);
> +                       acpi_bus_put_acpi_device(acpi_root);
>                         goto out;
>                 }
>         }
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 834b7a1f7405..b728173a6171 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -707,6 +707,12 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
>              adev;                                                      \
>              adev = acpi_dev_get_next_match_dev(adev, hid, uid, hrv))
>
> +static inline void acpi_dev_get(struct acpi_device *adev)
> +{
> +       if (adev)
> +               get_device(&adev->dev);

And I would drop the adev check from here (because the code calling it
may be running with wrong assumptions if adev is NULL).  Or it should
return adev and the caller should be held responsible for checking it
against NULL (if they care).

> +}
> +
>  static inline void acpi_dev_put(struct acpi_device *adev)
>  {
>         put_device(&adev->dev);
> --
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
