Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1668E4B877A
	for <lists+devel-acpica@lfdr.de>; Wed, 16 Feb 2022 13:22:46 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D4117100EAB71;
	Wed, 16 Feb 2022 04:22:43 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.171; helo=mail-yb1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 57C4F100EAB71
	for <devel@acpica.org>; Wed, 16 Feb 2022 04:22:42 -0800 (PST)
Received: by mail-yb1-f171.google.com with SMTP id p5so5368424ybd.13
        for <devel@acpica.org>; Wed, 16 Feb 2022 04:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iyLKMy9mx/11boOTHLHDZ1fvODjQEjXMH8nu+p70vJs=;
        b=GHnNRD6iXC9a/BGL2MSPz9JTDp2cphfgkI1Rs/+/U8Ism9BQGifTMNe2cin1tN/Pta
         iC3rBQ8gkOLmeOAIhqolctXLEZy0ai4e6OIB9ZyAA580K/+gXB65cOwiT9wFbODZb0vW
         rVGUJ4tEiqTFihityfqtMSuLxrkup5ItZMb+fBzWA67QlL9SxxgTcJ4oVeQSRHyFBsbJ
         aZnrHHEzT0Inl4oORuBBMUW64ASyPVYTyeR5M5N17ATOLir334OoFsyvg4LQ8ff+AJMG
         CSttMUBG1YtlQKDyAe1O9HtnwncfEkSvMws4q4F9VLKrqr+/N8+iODxIqtZoGif3L5XC
         Tadg==
X-Gm-Message-State: AOAM532ErJLnAJKl3fPCH/LjB07nHwGGsge13rsLiL0NCpui8MyGuAlf
	u7D+H55t9BpzsayDZpWjvfea1eb7XG/NEkEgTD0=
X-Google-Smtp-Source: ABdhPJyJxNNVakBSB/WLvTRdrGZ9BXqx/DQIqoqFOGeLTAEwWDJchTaLwydj6Vd4o58xgwmHfILAH+X1f5I0myuczl4=
X-Received: by 2002:a0d:d5d6:0:b0:2d1:51e2:5a09 with SMTP id
 x205-20020a0dd5d6000000b002d151e25a09mr2027246ywd.149.1645014161118; Wed, 16
 Feb 2022 04:22:41 -0800 (PST)
MIME-Version: 1.0
References: <20220216062615.779778-1-ztong0001@gmail.com>
In-Reply-To: <20220216062615.779778-1-ztong0001@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 16 Feb 2022 13:22:27 +0100
Message-ID: <CAJZ5v0hsDVqZM=iP=4CYhGT99ScQ1xQNYHKcdJHHCscEhXOoCA@mail.gmail.com>
To: Tong Zhang <ztong0001@gmail.com>
Message-ID-Hash: AVOYQVK4CIK2EYSUS5SA2ZX76JLO7VBI
X-Message-ID-Hash: AVOYQVK4CIK2EYSUS5SA2ZX76JLO7VBI
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: proactively check null ptr to avoid API misuse
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/AVOYQVK4CIK2EYSUS5SA2ZX76JLO7VBI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 16, 2022 at 7:26 AM Tong Zhang <ztong0001@gmail.com> wrote:
>
> There are some cases that user use acpi_ns_walk_namespace() without
> checking acpi_disable flag. When acpi=off is provided in boot cmdline,
> acpi_gbl_root_node is NULL and calling acpi_ns_walk_namespace() will
> crash kernel. In order to avoid such misuse, we proactively check null ptr
> and return an error when we know ACPI is disabled.

The issue should be fixed by this commit in the upstream ACPICA code
base: https://github.com/acpica/acpica/commit/b1c3656ef4950098e530be68d4b589584f06cddc

>
> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> ---
>  drivers/acpi/acpica/nswalk.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/acpi/acpica/nswalk.c b/drivers/acpi/acpica/nswalk.c
> index 915c2433463d..9ae45db16d86 100644
> --- a/drivers/acpi/acpica/nswalk.c
> +++ b/drivers/acpi/acpica/nswalk.c
> @@ -171,6 +171,13 @@ acpi_ns_walk_namespace(acpi_object_type type,
>                 start_node = acpi_gbl_root_node;
>         }
>
> +       /* acpi_gbl_root_node is NULL when acpi=off is provided.
> +        * We proactively check nulliness here and return an error if user call
> +        * this function without checking acpi_disabled
> +        */
> +       if (start_node == NULL)
> +               return_ACPI_STATUS(AE_ERROR);
> +
>         /* Null child means "get first node" */
>
>         parent_node = start_node;
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
