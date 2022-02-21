Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 241134BEA55
	for <lists+devel-acpica@lfdr.de>; Mon, 21 Feb 2022 20:18:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EF397100EAB0A;
	Mon, 21 Feb 2022 11:18:28 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.177; helo=mail-yb1-f177.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 583FA100EAB09
	for <devel@acpica.org>; Mon, 21 Feb 2022 11:18:26 -0800 (PST)
Received: by mail-yb1-f177.google.com with SMTP id d21so14079292yba.11
        for <devel@acpica.org>; Mon, 21 Feb 2022 11:18:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xzgUYOPvVSFuM+OD0NIOOfArvnpqyIafZxVpUEmLbzs=;
        b=xcLEwtlaCQ2TgdpQcd5Rh7IYkLE8ah2LL/cSK6trCoiD8ai+2krCboWymqNIsXIjC1
         qSSJwD6yknyZo2yuyEMrVsiLBCB97CZrG0JlS8Ft3IIBFCfDQgKwMqZyTCGc2EGqGMA2
         /0TVhbmJ7LY7eZ8qP4MdiuaP9H+8fRjBNfH1NluVcYCzTbTmoqlBHw4aCC061WYVoIQ/
         XPNY1M7waWG5799rQC3HqvLtYhWrysMZ8WZhlMLJnl80pzqaaL5sytviE71Lek06KfBm
         sE2u4qo7CN0i2SxQMIsozTQVbfDugxcSb0Ixgy6FFcv1wuFiVKcTDFhQEA1qYsmr7Wo2
         o4Mw==
X-Gm-Message-State: AOAM531o/pJ61mD3ssL177u2/PAtwvDjTIpvpb9qH6qVnkMVEIJbRabo
	EuQf+Shn4nK47sXu2KH+izT2dULiO+pUWl3dOmo=
X-Google-Smtp-Source: ABdhPJxzKeolTMRCSzF1gZvCUSgga9kC27EC4hV9wjKJdhirzXNJgRkVrqDtPDetZQZot9oR8y1pLxP5YAk9oM8NPJ0=
X-Received: by 2002:a25:d90d:0:b0:615:e400:94c1 with SMTP id
 q13-20020a25d90d000000b00615e40094c1mr20140995ybg.81.1645471104673; Mon, 21
 Feb 2022 11:18:24 -0800 (PST)
MIME-Version: 1.0
References: <05530d163bb18634cceaf1f2b0b48409747d18d0.1644838495.git.yang.guang5@zte.com.cn>
In-Reply-To: <05530d163bb18634cceaf1f2b0b48409747d18d0.1644838495.git.yang.guang5@zte.com.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 21 Feb 2022 20:18:13 +0100
Message-ID: <CAJZ5v0iUVfc-hr_stEbNEv2Ana+g-44Qrtm1b490cLZTDe=YEQ@mail.gmail.com>
To: davidcomponentone@gmail.com
Message-ID-Hash: YYZ6YDN4PD6BQ4XNR52TKHC5XZBKWKD4
X-Message-ID-Hash: YYZ6YDN4PD6BQ4XNR52TKHC5XZBKWKD4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Yang Guang <yang.guang5@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: use swap() to make code cleaner
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YYZ6YDN4PD6BQ4XNR52TKHC5XZBKWKD4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 15, 2022 at 1:52 AM <davidcomponentone@gmail.com> wrote:
>
> From: Yang Guang <yang.guang5@zte.com.cn>
>
> Use the macro 'swap()' defined in 'include/linux/minmax.h' to avoid
> opencoding it.
>
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Yang Guang <yang.guang5@zte.com.cn>
> Signed-off-by: David Yang <davidcomponentone@gmail.com>
> ---
>  drivers/acpi/acpica/nsrepair2.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/acpica/nsrepair2.c b/drivers/acpi/acpica/nsrepair2.c
> index 14b71b41e845..ac6a5397660f 100644
> --- a/drivers/acpi/acpica/nsrepair2.c
> +++ b/drivers/acpi/acpica/nsrepair2.c
> @@ -875,7 +875,6 @@ acpi_ns_sort_list(union acpi_operand_object **elements,
>  {
>         union acpi_operand_object *obj_desc1;
>         union acpi_operand_object *obj_desc2;
> -       union acpi_operand_object *temp_obj;
>         u32 i;
>         u32 j;
>
> @@ -892,9 +891,7 @@ acpi_ns_sort_list(union acpi_operand_object **elements,
>                             || ((sort_direction == ACPI_SORT_DESCENDING)
>                                 && (obj_desc1->integer.value <
>                                     obj_desc2->integer.value))) {
> -                               temp_obj = elements[j - 1];
> -                               elements[j - 1] = elements[j];
> -                               elements[j] = temp_obj;
> +                               swap(elements[j - 1], elements[j]);
>                         }
>                 }
>         }
> --

This is an ACPICA change that should be routed through the upstream
project at https://github.com/acpica/acpica, but there is no
counterpart of swap() in the upstream code base.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
