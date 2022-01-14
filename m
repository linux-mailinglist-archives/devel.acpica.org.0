Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E9948EFA6
	for <lists+devel-acpica@lfdr.de>; Fri, 14 Jan 2022 19:09:39 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 80372100F47AC;
	Fri, 14 Jan 2022 10:09:37 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.181; helo=mail-qt1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1EBF0100F47A8
	for <devel@acpica.org>; Fri, 14 Jan 2022 10:09:32 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id f17so11505863qtf.8
        for <devel@acpica.org>; Fri, 14 Jan 2022 10:09:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vWFRqt1snG0vKk4A5HswSbVNh90av8m781UEgmU/+DA=;
        b=VRyuEB+0RU+0Mdb6LONPeSGf5oeMydaEwQoe0htPMEiC3FmdxxjwDo7PXhHloE3yM/
         47xrGVJtvl5bGbORR4hA2iH+6t0Hn0zqW5wb9CUSTzhbmfJ6sOsEoIQkXnPtTScgLqjm
         EoMyElPCoOnZKYIhp5QEKFEZK0E+Jv/rViRjSVT7AYquNoTksBm6hJAgwXdjWluKSJAE
         e3IVEVbmJNSGzVMV7/fqWrUW+Fn8uawklZd4iww36b+xshObsuIKa4ovxWbgdS/47Q05
         cyjIj5EMpnA9OVZ/ZOUPkezkOYdHc1IgpfHbfSPgTt9BXXhKrQfpyxvvAQPkPNDBcnID
         J8Qw==
X-Gm-Message-State: AOAM530rBfY3ulR6doVHYppO6hHoZGdi8kZRh91DPjrLsGKOxqrEH9vB
	PPpQqFcTKcYhWCRA+NgHblGzmPaOydCUpWt/tCQ=
X-Google-Smtp-Source: ABdhPJxTXfPOTcCz0073xhS4n7Az6/FPfBKGiajhOEWK/wDX6tVYGQV2jg6sy6ywX29PPSDXNZb5nySCtjg9+CHTlOY=
X-Received: by 2002:a05:622a:1881:: with SMTP id v1mr8653852qtc.327.1642183769801;
 Fri, 14 Jan 2022 10:09:29 -0800 (PST)
MIME-Version: 1.0
References: <20220114101546.1368163-1-jiasheng@iscas.ac.cn>
In-Reply-To: <20220114101546.1368163-1-jiasheng@iscas.ac.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 14 Jan 2022 19:09:18 +0100
Message-ID: <CAJZ5v0j5LVV_gV_K45YqFPqtBcS423VP0x_Uos7MtKBeqWkg5A@mail.gmail.com>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID-Hash: 5LU36MMQ5LD3PPMWCB2NWV3FQMVI47U4
X-Message-ID-Hash: 5LU36MMQ5LD3PPMWCB2NWV3FQMVI47U4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI/ACPICA: Check for NULL pointer after calling alloc
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5LU36MMQ5LD3PPMWCB2NWV3FQMVI47U4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 14, 2022 at 11:16 AM Jiasheng Jiang <jiasheng@iscas.ac.cn> wrote:
>
> As the possible failure of the allocation, object_info could be NULL
> pointer.
> Therefore, it should be better to check it in order to avoid the
> dereference of the NULL pointer.
> If fails, we should return 'AE_NON_MEMORY' and the caller
> acpi_db_command_dispatch() will deal with the return status of
> acpi_db_display_objects().
> Also, the comment of the acpi_db_display_objects() is wrong.
> So we need to correct it too.
>
> Fixes: 995751025572 ("ACPICA: Linuxize: Export debugger files to Linux")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>

This is ACPICA material, so it needs to be submitted to the upstream
ACPICA project via https://github.com/acpica/acpica, thanks!

> ---
>  drivers/acpi/acpica/dbnames.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/dbnames.c b/drivers/acpi/acpica/dbnames.c
> index 3615e1a6efd8..d8e5852fadb1 100644
> --- a/drivers/acpi/acpica/dbnames.c
> +++ b/drivers/acpi/acpica/dbnames.c
> @@ -632,7 +632,7 @@ acpi_db_walk_for_specific_objects(acpi_handle obj_handle,
>   * PARAMETERS:  obj_type_arg        - Type of object to display
>   *              display_count_arg   - Max depth to display
>   *
> - * RETURN:      None
> + * RETURN:      Status
>   *
>   * DESCRIPTION: Display objects in the namespace of the requested type
>   *
> @@ -651,6 +651,8 @@ acpi_status acpi_db_display_objects(char *obj_type_arg, char *display_count_arg)
>         if (!obj_type_arg) {
>                 object_info =
>                     ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_object_info));
> +               if (!object_info)
> +                       return (AE_NO_MEMORY);
>
>                 /* Walk the namespace from the root */
>
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
