Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 528FA455E78
	for <lists+devel-acpica@lfdr.de>; Thu, 18 Nov 2021 15:46:26 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6D62F100F4841;
	Thu, 18 Nov 2021 06:46:23 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.46; helo=mail-ot1-f46.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 06512100EAB17
	for <devel@acpica.org>; Thu, 18 Nov 2021 06:46:21 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id x19-20020a9d7053000000b0055c8b39420bso11350846otj.1
        for <devel@acpica.org>; Thu, 18 Nov 2021 06:46:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4fPLCC/lGDe6nSg2L0GXzk92DuK5SfiaVXrmm2j2MVs=;
        b=xAzYYHQiC4eVaiSTPFy/F8wLKYRakMXAOrezKcIEmFEli/x1aoLxWRA/9bTNF3ISBI
         q67cmiFZYV468E6HiQ7uqxQ2O2CW/rmi7pJa9Q9HGRCREu9xED3NI5DcxatbcAVq2Z2K
         bYFeeN5UvX5li+kTs1kJ21VhfAa8Wvd2DUCjcyfFwjjbLaeHRHCEZ0uB52kaEa/m/Fyi
         lS9iPhMMC+gctUtJjkAPONLJQz7yV8DjPpYPt6ScjsehfazX3/dzNM4imyuRukcEMYkV
         OXGQEFpLbjiZD9SzcE245+JKRskfdX4gIWmzETxyIDhZsnhq2qe0LMlFC78TUHjsutB+
         kFEg==
X-Gm-Message-State: AOAM532t7WYhPSqKXofdzEGrtk0TIfmw5WKz/EmaS7967Lyzi7ylL0p5
	O6pNpPpVajYr4B9KvPax3XEb8yPVvQyNCb42Vz8=
X-Google-Smtp-Source: ABdhPJy8QKzZL1z6g5aFUr30ddDVC64W+lwBHux0Ym4byl/nYpAo2gjoXbsVYpcnAXhv/onfFQfWeM7AeWVkSCP5Bsw=
X-Received: by 2002:a9d:a64:: with SMTP id 91mr21419631otg.198.1637246780981;
 Thu, 18 Nov 2021 06:46:20 -0800 (PST)
MIME-Version: 1.0
References: <20211109134728.1710-1-guozhengkui@vivo.com>
In-Reply-To: <20211109134728.1710-1-guozhengkui@vivo.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 18 Nov 2021 15:46:10 +0100
Message-ID: <CAJZ5v0ixtvzNiAwwLtXXgG-8FdvtWYy7RUh0pFz65sjcmyuNdQ@mail.gmail.com>
To: Guo Zhengkui <guozhengkui@vivo.com>
Message-ID-Hash: TPNBZ3AHXVJT5LPXR55MW4WNCHIYKSVK
X-Message-ID-Hash: TPNBZ3AHXVJT5LPXR55MW4WNCHIYKSVK
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel@vivo.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix swap.cocci warning
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TPNBZ3AHXVJT5LPXR55MW4WNCHIYKSVK/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 9, 2021 at 2:47 PM Guo Zhengkui <guozhengkui@vivo.com> wrote:
>
> Fix following swap.cocci warning:
> ./drivers/acpi/acpica/nsrepair2.c:896:33-34: WARNING
> opportunity for swap()
>
> Signed-off-by: Guo Zhengkui <guozhengkui@vivo.com>

This change needs to be submitted to the upstream ACPICA project via
https://github.com/acpica/acpica/

Thanks!

> ---
>  drivers/acpi/acpica/nsrepair2.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/acpica/nsrepair2.c b/drivers/acpi/acpica/nsrepair2.c
> index 14b71b41e845..02a904ca4caf 100644
> --- a/drivers/acpi/acpica/nsrepair2.c
> +++ b/drivers/acpi/acpica/nsrepair2.c
> @@ -8,6 +8,7 @@
>   *
>   *****************************************************************************/
>
> +#include <linux/minmax.h>
>  #include <acpi/acpi.h>
>  #include "accommon.h"
>  #include "acnamesp.h"
> @@ -875,7 +876,6 @@ acpi_ns_sort_list(union acpi_operand_object **elements,
>  {
>         union acpi_operand_object *obj_desc1;
>         union acpi_operand_object *obj_desc2;
> -       union acpi_operand_object *temp_obj;
>         u32 i;
>         u32 j;
>
> @@ -892,9 +892,7 @@ acpi_ns_sort_list(union acpi_operand_object **elements,
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
> 2.20.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
