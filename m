Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CA13EDB0C
	for <lists+devel-acpica@lfdr.de>; Mon, 16 Aug 2021 18:39:48 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D7BBF100EB825;
	Mon, 16 Aug 2021 09:39:46 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.182; helo=mail-oi1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A30CB100EBB9C
	for <devel@acpica.org>; Mon, 16 Aug 2021 09:39:44 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id w6so27461652oiv.11
        for <devel@acpica.org>; Mon, 16 Aug 2021 09:39:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NPGtgvFIqUx3vK3Op89ueWs/a1jCj1XrScm2f+zVuLU=;
        b=XiVOtdYzgj+agLQpih+hc1OGfxdaby3Cbq/ewHe558RlY9TdBxGxB0a5qzgsuP3sG5
         AzBs8L8203EKKgucKSN0RSo5gInTzjPiwsHsBBom6cpOk1r3EXGdGL7Ywx3etvhsSF+C
         i5IFtEVHcijUS06RhWTQFeNMc0VJFX2NSeQ8Ujr/3iWwrVY/IDOYQb4J88zx995LuvSB
         lcP+XH9KBy8UHFDEyHEwl9zvAwoVVyPsFt6T50RmDjT1LVwgEvZ7JVQQoUFC94+kN5cJ
         UwJB0kaoqUlhLc8NsHb9FjpGAUuUl+bZffQO1T6kuNnygM5H1GnoNAXNAvnCG0erKOUx
         Xmaw==
X-Gm-Message-State: AOAM532/spSuxA4ZAmNGYOsw9y1k7ze+6YXnmiJRWYJJIaw19lcUpK0O
	bM011PUKBc0I+ViFfHj40xdrElL5ihP+C8P4g4c=
X-Google-Smtp-Source: ABdhPJzbFDRF2s2lkiW9qW3ocAuPdizsEFD6bAZiZv88fahHFEZvSSGzBNmyqwKbruliSyE5Imrq7nMpEkGH63GLwtY=
X-Received: by 2002:a05:6808:10c1:: with SMTP id s1mr1629991ois.69.1629131983535;
 Mon, 16 Aug 2021 09:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210714214346.1397942-1-mw@semihalf.com> <20210714214346.1397942-3-mw@semihalf.com>
In-Reply-To: <20210714214346.1397942-3-mw@semihalf.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 16 Aug 2021 18:39:32 +0200
Message-ID: <CAJZ5v0gAmajYYDhYhum-QbyreWYf-4R0ecrDL_hLXp=w4T1FBQ@mail.gmail.com>
To: Marcin Wojtas <mw@semihalf.com>
Message-ID-Hash: 33BCXU34WJZGD7JEEP3WI67EN46OQDZC
X-Message-ID-Hash: 33BCXU34WJZGD7JEEP3WI67EN46OQDZC
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Grzegorz Jaszczyk <jaz@semihalf.com>, Grzegorz Bernacki <gjb@semihalf.com>, upstream@semihalf.com, Samer El-Haj-Mahmoud <Samer.El-Haj-Mahmoud@arm.com>, Jon <jon@solid-run.com>, Tomasz Nowicki <tn@semihalf.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 2/2] ACPI: SPCR: Add support for the new 16550-compatible Serial Port Subtype
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/33BCXU34WJZGD7JEEP3WI67EN46OQDZC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jul 14, 2021 at 11:46 PM Marcin Wojtas <mw@semihalf.com> wrote:
>
> The Microsoft Debug Port Table 2 (DBG2) specification revision
> May 31, 2017 added definition of the 16550-compatible Serial Port
> Subtype with parameters defined in Generic Address Structure (GAS) [1]
>
> Add its support in the SPCR table parsing routine.
>
> [1] https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-debug-port-table
>
> Signed-off-by: Marcin Wojtas <mw@semihalf.com>
> ---
>  drivers/acpi/spcr.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/acpi/spcr.c b/drivers/acpi/spcr.c
> index 88460bacd5ae..25c2d0be953e 100644
> --- a/drivers/acpi/spcr.c
> +++ b/drivers/acpi/spcr.c
> @@ -136,6 +136,7 @@ int __init acpi_parse_spcr(bool enable_earlycon, bool enable_console)
>                 break;
>         case ACPI_DBG2_16550_COMPATIBLE:
>         case ACPI_DBG2_16550_SUBSET:
> +       case ACPI_DBG2_16550_WITH_GAS:
>                 uart = "uart";
>                 break;
>         default:
> --

Applied as 5.15 material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
