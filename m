Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E40BD35E051
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Apr 2021 15:42:33 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5BA17100EB848;
	Tue, 13 Apr 2021 06:42:32 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.176; helo=mail-oi1-f176.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BF41C100EB845
	for <devel@acpica.org>; Tue, 13 Apr 2021 06:42:30 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id k18so12116597oik.1
        for <devel@acpica.org>; Tue, 13 Apr 2021 06:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o6pBRjCE6pRbY3vszk0ay9sUKDeG8wzW1EDOTJwQLjY=;
        b=L2GUzw459hIoF9ciyGZmxo6MSXMMSIATmOapNnzuzq2/cf7K6I8dRlJA5OczxG0++3
         S6MonNzlb1TH3Hxes9gecIUQU0IbEG/YANxzWQmIuzPw769s6guweTGAzZmVDnNCoeHn
         Pdp2sBepFn21nqn7S68S/tyEe3kPfxZleVaqLLzjR7H+G/3wABIxBcubWnkciCPVmqjc
         yBazMh16RBmcnaXtbtDxuguA4QeGs8d40F/ACoR2++CZtPp/0em/mSW4S+fO+ajNN7Yw
         zVwoAUbxejoxbvk+WJgmYtIZJvUSGFTQfHb+LreZVYMrDISvEkxFih+K8uAtPBDFIs3h
         vK+A==
X-Gm-Message-State: AOAM531+6gWfRzYJIaD47XCaoCn0niBmAIIR6G49Ow9wIr/UoNq3va0W
	/eQUnVSxq1EdBachZNpB7QNwXe30xmzilOxYEjM=
X-Google-Smtp-Source: ABdhPJxA9HhnLEvziNv7yjuQ8k2crWMH7SVZJ0O4208XuVZ0tqLUA+h433baaWD4jGNtHLBMfjcjXWOaRUso36Hwygo=
X-Received: by 2002:a54:4501:: with SMTP id l1mr38061oil.157.1618321349988;
 Tue, 13 Apr 2021 06:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210412222358.2078782-1-andy.shevchenko@gmail.com>
In-Reply-To: <20210412222358.2078782-1-andy.shevchenko@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 13 Apr 2021 15:42:19 +0200
Message-ID: <CAJZ5v0iHmpx3VQ431q17ePHqOrW2311hqNLsRUDyvARZGv_ipA@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: BNTH5UJARUCTOJ4HKSV5A5OTCJMGGPFL
X-Message-ID-Hash: BNTH5UJARUCTOJ4HKSV5A5OTCJMGGPFL
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPI: bus: Introduce acpi_dev_get() and reuse it in ACPI code
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BNTH5UJARUCTOJ4HKSV5A5OTCJMGGPFL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 13, 2021 at 12:24 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> Introduce acpi_dev_get() to have a symmetrical API with acpi_dev_put()
> and reuse both in ACPI code under drivers/acpi folder.
>
> While at it, use acpi_bus_put_acpi_device() in one place rather than above.
>
> Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> ---
> v2: made acpi_dev_get() to return pointer as get_device() does (Rafael)
>  drivers/acpi/device_sysfs.c | 4 ++--
>  drivers/acpi/glue.c         | 8 ++++----
>  drivers/acpi/scan.c         | 9 ++++-----
>  include/acpi/acpi_bus.h     | 5 +++++
>  4 files changed, 15 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/acpi/device_sysfs.c b/drivers/acpi/device_sysfs.c
> index a07d4ade5835..fa2c1c93072c 100644
> --- a/drivers/acpi/device_sysfs.c
> +++ b/drivers/acpi/device_sysfs.c
> @@ -377,12 +377,12 @@ eject_store(struct device *d, struct device_attribute *attr,
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
> index d9e024fc6e70..bc973fbd70b2 100644
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
> @@ -2355,7 +2354,7 @@ int __init acpi_scan_init(void)
>                         acpi_detach_data(acpi_root->handle,
>                                          acpi_scan_drop_device);
>                         acpi_device_del(acpi_root);
> -                       put_device(&acpi_root->dev);
> +                       acpi_bus_put_acpi_device(acpi_root);
>                         goto out;
>                 }
>         }
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index d631cb52283e..d2f5afb04a0b 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -695,6 +695,11 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
>              adev;                                                      \
>              adev = acpi_dev_get_next_match_dev(adev, hid, uid, hrv))
>
> +static inline struct acpi_device *acpi_dev_get(struct acpi_device *adev)
> +{
> +       return adev ? to_acpi_device(get_device(&adev->dev)) : NULL;
> +}
> +
>  static inline void acpi_dev_put(struct acpi_device *adev)
>  {
>         put_device(&adev->dev);
> --

Applied as 5.13 material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
