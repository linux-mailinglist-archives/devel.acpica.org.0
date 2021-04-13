Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD4535E096
	for <lists+devel-acpica@lfdr.de>; Tue, 13 Apr 2021 15:50:36 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EF2CA100EB848;
	Tue, 13 Apr 2021 06:50:34 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.176; helo=mail-oi1-f176.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 02DA2100EB845
	for <devel@acpica.org>; Tue, 13 Apr 2021 06:50:32 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id n140so17027094oig.9
        for <devel@acpica.org>; Tue, 13 Apr 2021 06:50:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OdyR71kTkfpeHF/EpMG2O0OtQJyT62euvnTos7ckC7w=;
        b=hMxeSQezZyx7V2uOpD9u/XOdycX1YjHJrrfibTXrmiB1cNIZPgfhuPaG5GyYXNCa09
         Gn4nbx4ybxONyL2KLSNP3mkdjdhrKWD52BBy0Ct3KAGyG8I0wj+ZwRa/YFx0z6Q9qsIM
         0pA02/BrRuHkJOOig0DrzT+EjB8iBDu2R1RrleDsY8I+Luu34zsa22PKvUdt9GI30vBt
         j/QM5bwdSbK5REnjHRvBaWuHjItuIukeUkn2bhH+KdQ6DWIagz6xg4a0oWA6D7VU20hU
         rpvjTehcW+6zii6rgqKwkxRcXUVBHAM4s9sdctV0HcZmGuQ67ZDMQmS6xX8tRBuEm0cn
         65uw==
X-Gm-Message-State: AOAM530/J8ulDQ9uyBhLRYsi9DaoC08y8YlrZ3MaN/PzaDHKnR0q2zvn
	jp3EpIcdNHtTzAed5AhWz5oiHGPez0FtbIqrSww=
X-Google-Smtp-Source: ABdhPJyyTafYsWebd5UD1ovESk+NGxPPB3qbfRzAJK3Ea6IHUZIM0C1Aj1rLpINlnMuTHjvIfh/RqxSNgUtz4KH6Y/Y=
X-Received: by 2002:a54:4501:: with SMTP id l1mr62010oil.157.1618321832254;
 Tue, 13 Apr 2021 06:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210412232052.2162107-1-andy.shevchenko@gmail.com> <20210412232052.2162107-2-andy.shevchenko@gmail.com>
In-Reply-To: <20210412232052.2162107-2-andy.shevchenko@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 13 Apr 2021 15:50:21 +0200
Message-ID: <CAJZ5v0gsSD=4FjtTwi=Op5-rdhTo1KGMSUJ4OirFGUiWueVFCw@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: A567KNKSBXCZG2NVO6PTYLQ55VWMPXN2
X-Message-ID-Hash: A567KNKSBXCZG2NVO6PTYLQ55VWMPXN2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/2] ACPI: utils: Capitalize abbreviations in the comments
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/A567KNKSBXCZG2NVO6PTYLQ55VWMPXN2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 13, 2021 at 1:21 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> The DSDT and ACPI should be capitalized.
>
> Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> ---
> v2: split from patch 1 as per Rafael's request
>  drivers/acpi/utils.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> index 60e46efc1bc8..3b54b8fd7396 100644
> --- a/drivers/acpi/utils.c
> +++ b/drivers/acpi/utils.c
> @@ -811,7 +811,7 @@ static int acpi_dev_match_cb(struct device *dev, const void *data)
>   * Note that if the device is pluggable, it may since have disappeared.
>   *
>   * Note that unlike acpi_dev_found() this function checks the status
> - * of the device. So for devices which are present in the dsdt, but
> + * of the device. So for devices which are present in the DSDT, but
>   * which are disabled (their _STA callback returns 0) this function
>   * will return false.
>   *
> @@ -838,7 +838,7 @@ EXPORT_SYMBOL(acpi_dev_present);
>
>  /**
>   * acpi_dev_get_next_match_dev - Return the next match of ACPI device
> - * @adev: Pointer to the previous acpi_device matching this @hid, @uid and @hrv
> + * @adev: Pointer to the previous ACPI device matching this @hid, @uid and @hrv
>   * @hid: Hardware ID of the device.
>   * @uid: Unique ID of the device, pass NULL to not check _UID
>   * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
> --

Applied as 5.13 material along with the [1/2], thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
