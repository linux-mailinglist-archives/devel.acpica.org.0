Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C4D34D054
	for <lists+devel-acpica@lfdr.de>; Mon, 29 Mar 2021 14:48:27 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BEBA2100EBBB9;
	Mon, 29 Mar 2021 05:48:22 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.50; helo=mail-ot1-f50.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 89171100ED4BA
	for <devel@acpica.org>; Mon, 29 Mar 2021 05:48:19 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso12083654ott.13
        for <devel@acpica.org>; Mon, 29 Mar 2021 05:48:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2/qRvSZnocrUkJIjUj3RIeK2bv6WeJu2zPlnvgABVUs=;
        b=tbLbYymsj6yd7bHU/X+0ic/S0hfVy3i4wibvgvucWcytIolzKUBx5gB5Yi6dglGjpC
         Wy8XfnFrqQvqV8k38PFgogVIXNcNWIbH6pjk09/ylr3azFXGGQFwpsnP9/zuI2rQEms8
         ylBtBwc6y985L434/ui0eQhgFyVjNjIxCnO7KGZ8lGixUCIdEAQ3nZVaKxx1jJ8Qwru9
         eaT+cJg6XpNGh31+adpFu3jPt/fhEnUghN5N5ZEQsCb4yTJVmkmZheD/cyIxKpI2pdfo
         oNUdzI8tvQthtE8TSnroChIjQ7HcoXMQn0peBFdMU1t8YVyOvyU4nRKJEF+eigwSTkIq
         Dxag==
X-Gm-Message-State: AOAM533RUNazd6vVlulUFRQe4E1LlqfngCckYFwbsdTnEuIXDTNeSiLo
	p0RXduXnZeGao0NjgqDr9x4iChy+2hWZc5mRMUs=
X-Google-Smtp-Source: ABdhPJwkgJLl49WQ4DxYiQVIcNf/J/OnassAwchwhv0O0Rs+I5HMhr+pP4QpbTC0BN/6y8NIvD6p8GS/V8ODT7ZoALA=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr23083606otr.321.1617022098413;
 Mon, 29 Mar 2021 05:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210326001922.4767-1-unixbhaskar@gmail.com>
In-Reply-To: <20210326001922.4767-1-unixbhaskar@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 29 Mar 2021 14:48:03 +0200
Message-ID: <CAJZ5v0izUkL=7NSFuefNYcqdq2vSxseDCCLKUTOZGC82WjJNPg@mail.gmail.com>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: 235IQ4TRDG6AGY75GOCPTW2E4FBVG66D
X-Message-ID-Hash: 235IQ4TRDG6AGY75GOCPTW2E4FBVG66D
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Fix a typo
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/235IQ4TRDG6AGY75GOCPTW2E4FBVG66D/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 26, 2021 at 1:22 AM Bhaskar Chowdhury <unixbhaskar@gmail.com> wrote:
>
>
> s/optimzation/optimization/
>
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> ---
>  include/acpi/acoutput.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/acpi/acoutput.h b/include/acpi/acoutput.h
> index 1538a6853822..1b4c45815695 100644
> --- a/include/acpi/acoutput.h
> +++ b/include/acpi/acoutput.h
> @@ -362,7 +362,7 @@
>   *
>   * A less-safe version of the macros is provided for optional use if the
>   * compiler uses excessive CPU stack (for example, this may happen in the
> - * debug case if code optimzation is disabled.)
> + * debug case if code optimization is disabled.)
>   */
>
>  /* Exit trace helper macro */
> --

Erik, could you pick up this patch, please?  It is simple enough IMV ...
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
