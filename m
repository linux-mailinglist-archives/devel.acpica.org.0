Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1B22F3A21
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jan 2021 20:25:18 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 55D2F100EB83A;
	Tue, 12 Jan 2021 11:25:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.174; helo=mail-oi1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C59BA100ED49F
	for <devel@acpica.org>; Tue, 12 Jan 2021 11:25:14 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id s75so3554024oih.1
        for <devel@acpica.org>; Tue, 12 Jan 2021 11:25:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9jqlZeSwAhTGBCADje3hETLAAnd6ynOytXTvHrnyrdk=;
        b=OIqxhyqlaDEo7YloCetZ6pwWG4jII/yoK65vnq8nYeG978bcfXVo6LkGlAYwf/a380
         UYJytUqOuntMTpUn1/QcB2NV2+IhCNf6a9xYrg5ZIorr3bxBQ02l44/2aMEeTyBBAObT
         q1OpmSvVop/+By+ocM1oeRmRjeX1DM8OJB7xjScwRwbatI1y7SKpB6Rz57kcbx1Jm5EP
         eAqXcTMBuQQtjr2lD0NDOXwEQeNdEsDOVF8dlyJPfgsMiE2XyHx94tgb3uUCjmjhQuIk
         ARhsW6zQMQT6u6bPq5sonPL5YkcGV+gwiZr0wPgHNiI1FW0qeL1epWf3rcnebung6/hb
         KTqw==
X-Gm-Message-State: AOAM5315a9X2OWYVbT58EzRmQmzvo9LpU/sZUGCROhMtom+5Ud57W8qU
	wU7a4I7Be1184TTOYDLjJp32SakwrF4HuI9I5Xk=
X-Google-Smtp-Source: ABdhPJx/8h6rC20EFWIxX/Wcak+mu2wPprQf71XUHhg66GOMyf43yDrVisF/nCbnE8ric0bFTOrTpZPeWxLxTGfYdZM=
X-Received: by 2002:aca:4c1:: with SMTP id 184mr454926oie.157.1610479513823;
 Tue, 12 Jan 2021 11:25:13 -0800 (PST)
MIME-Version: 1.0
References: <20210107132838.396641-1-djrscally@gmail.com> <20210107132838.396641-14-djrscally@gmail.com>
In-Reply-To: <20210107132838.396641-14-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 20:25:02 +0100
Message-ID: <CAJZ5v0jWCT6koRvW8AGMs3ODX_10b-fCaQgMXG7kfq1DoDfeBA@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: 25U4IIDH23CNOSTQ5VLPQWPYOUIZPMXA
X-Message-ID-Hash: 25U4IIDH23CNOSTQ5VLPQWPYOUIZPMXA
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, yong.zhi@intel.com, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, tian.shu.qiu@intel.com, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, hverkuil-cisco@xs4all.nl, m.felsch@pengutronix.de, Niklas Soderlund <niklas.soderl
 und+renesas@ragnatech.se>, prabhakar.mahadev-lad.rj@bp.renesas.com, Steve Longerbeam <slongerbeam@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 13/15] ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/25U4IIDH23CNOSTQ5VLPQWPYOUIZPMXA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 7, 2021 at 2:31 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> To ensure we handle situations in which multiple sensors of the same
> model (and therefore _HID) are present in a system, we need to be able
> to iterate over devices matching a known _HID but unknown _UID and _HRV
>  - add acpi_dev_get_next_match_dev() to accommodate that possibility and
> change acpi_dev_get_first_match_dev() to simply call the new function
> with a NULL starting point. Add an iterator macro for convenience.
>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
> Changes in v5:
>
>         - Changed commit subject
>
>  drivers/acpi/utils.c    | 30 ++++++++++++++++++++++++++----
>  include/acpi/acpi_bus.h |  7 +++++++
>  2 files changed, 33 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> index d5411a166685..ddca1550cce6 100644
> --- a/drivers/acpi/utils.c
> +++ b/drivers/acpi/utils.c
> @@ -843,12 +843,13 @@ bool acpi_dev_present(const char *hid, const char *uid, s64 hrv)
>  EXPORT_SYMBOL(acpi_dev_present);
>
>  /**
> - * acpi_dev_get_first_match_dev - Return the first match of ACPI device
> + * acpi_dev_get_next_match_dev - Return the next match of ACPI device
> + * @adev: Pointer to the previous acpi_device matching this @hid, @uid and @hrv
>   * @hid: Hardware ID of the device.
>   * @uid: Unique ID of the device, pass NULL to not check _UID
>   * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
>   *
> - * Return the first match of ACPI device if a matching device was present
> + * Return the next match of ACPI device if another matching device was present
>   * at the moment of invocation, or NULL otherwise.
>   *
>   * The caller is responsible to call put_device() on the returned device.
> @@ -856,8 +857,9 @@ EXPORT_SYMBOL(acpi_dev_present);
>   * See additional information in acpi_dev_present() as well.
>   */
>  struct acpi_device *
> -acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
> +acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const char *uid, s64 hrv)
>  {
> +       struct device *start = adev ? &adev->dev : NULL;
>         struct acpi_dev_match_info match = {};
>         struct device *dev;
>
> @@ -865,9 +867,29 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
>         match.uid = uid;
>         match.hrv = hrv;
>
> -       dev = bus_find_device(&acpi_bus_type, NULL, &match, acpi_dev_match_cb);
> +       dev = bus_find_device(&acpi_bus_type, start, &match, acpi_dev_match_cb);
>         return dev ? to_acpi_device(dev) : NULL;
>  }
> +EXPORT_SYMBOL(acpi_dev_get_next_match_dev);
> +
> +/**
> + * acpi_dev_get_first_match_dev - Return the first match of ACPI device
> + * @hid: Hardware ID of the device.
> + * @uid: Unique ID of the device, pass NULL to not check _UID
> + * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
> + *
> + * Return the first match of ACPI device if a matching device was present
> + * at the moment of invocation, or NULL otherwise.
> + *
> + * The caller is responsible to call put_device() on the returned device.
> + *
> + * See additional information in acpi_dev_present() as well.
> + */
> +struct acpi_device *
> +acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
> +{
> +       return acpi_dev_get_next_match_dev(NULL, hid, uid, hrv);
> +}
>  EXPORT_SYMBOL(acpi_dev_get_first_match_dev);
>
>  /*
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index 6d1879bf9440..02a716a0af5d 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -683,9 +683,16 @@ static inline bool acpi_device_can_poweroff(struct acpi_device *adev)
>
>  bool acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *uid2);
>
> +struct acpi_device *
> +acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const char *uid, s64 hrv);
>  struct acpi_device *
>  acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
>
> +#define for_each_acpi_dev_match(adev, hid, uid, hrv)                   \
> +       for (adev = acpi_dev_get_first_match_dev(hid, uid, hrv);        \
> +            adev;                                                      \
> +            adev = acpi_dev_get_next_match_dev(adev, hid, uid, hrv))
> +
>  static inline void acpi_dev_put(struct acpi_device *adev)
>  {
>         put_device(&adev->dev);
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
