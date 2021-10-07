Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFB542593C
	for <lists+devel-acpica@lfdr.de>; Thu,  7 Oct 2021 19:20:07 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3CB7E100EA2A7;
	Thu,  7 Oct 2021 10:20:06 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.50; helo=mail-oo1-f50.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C3978100EA2A4
	for <devel@acpica.org>; Thu,  7 Oct 2021 10:20:04 -0700 (PDT)
Received: by mail-oo1-f50.google.com with SMTP id u5-20020a4ab5c5000000b002b6a2a05065so993080ooo.0
        for <devel@acpica.org>; Thu, 07 Oct 2021 10:20:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pRS9W9aYA7YdWQXQJjG/aiOW5ROYwoQLPuWu0OWbdFI=;
        b=I2xty9dAzCi66K/eiBeUsuAE2FZ46MEv8BXczDXzirXpSZW1kDZ6IL7l5oV+NmMJLV
         cD/NLbdhCLLyUt7OvX2clwtpthl6WVbqdFOAKilfyvNN/mKpnT7XR1qU5LyjaSYXdduc
         e3BOGcEGkJfLeT8kYNhfJNz2DMzPEHuzSsIi5L7aNQLtNG3cEhwA8xpPY99WKJuvAf7g
         HMBC0ETL19tkBOhMcuZtxtMClaJFumuXvOmjM+M2pJNjICEgTrW3eVdrsD6lLoSP6XO7
         D8Ocli8FVA6gjgOeva7IdfjLJGzI7BOzjO4Kanhe9ICcf9ZoCvKmSjGNUZw7ZBCpSEHt
         G7sQ==
X-Gm-Message-State: AOAM5325WXcGY3gHPYKaGeQ7SQnNe0zUNMiglvZ5kkck7WOV4RSKvYU4
	8cFOwHxCWmYvFWO2ZUyNv9cWRMTau6KZNwIavVI=
X-Google-Smtp-Source: ABdhPJzeFDGczUHdstuoM/GQcLNSMSRwrYuwJDUIsKQLkq5Ru7MjdScPDlrmNeRstIpg6hGwi6j8+iM/I/6PVL+DVY8=
X-Received: by 2002:a4a:ca98:: with SMTP id x24mr4183071ooq.91.1633627204058;
 Thu, 07 Oct 2021 10:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <20211006051318.117094-1-miguel.bernal.marin@linux.intel.com>
In-Reply-To: <20211006051318.117094-1-miguel.bernal.marin@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 7 Oct 2021 19:19:53 +0200
Message-ID: <CAJZ5v0h7OVzjJNP9BXw5XucL3JQ7tY9wHLD8TZXjAKx_gxiDtA@mail.gmail.com>
To: Miguel Bernal Marin <miguel.bernal.marin@linux.intel.com>
Message-ID-Hash: YFZEVLN74S4MLGAKARMFMVHX2VERKDE7
X-Message-ID-Hash: YFZEVLN74S4MLGAKARMFMVHX2VERKDE7
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael J Wysocki <rafael@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: tools: fix compilation error
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YFZEVLN74S4MLGAKARMFMVHX2VERKDE7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 6, 2021 at 7:13 AM Miguel Bernal Marin
<miguel.bernal.marin@linux.intel.com> wrote:
>
> When acpi tools are compiled the following error is showed:
>
>    $ cd tools/power/acpi
>    $ make
>      DESCEND tools/acpidbg
>      MKDIR    include
>      CP       include
>      CC       tools/acpidbg/acpidbg.o
>    In file included from /home/linux/tools/power/acpi/include/acpi/platform/acenv.h:152,
>                     from /home/linux/tools/power/acpi/include/acpi/acpi.h:22,
>                     from acpidbg.c:9:
>    /home/linux/tools/power/acpi/include/acpi/platform/acgcc.h:25:10: fatal error: linux/stdarg.h: No such file or directory
>       29 | #include <linux/stdarg.h>
>          |          ^~~~~~~~~~~~~~~~
>    compilation terminated.
>
> Keep the same logic from ACPICA, just identify when is used inside kernel
> or by acpi tool.
>
> Fixes: c0891ac15f04 ("isystem: ship and use stdarg.h")
> Signed-off-by: Miguel Bernal Marin <miguel.bernal.marin@linux.intel.com>
> ---
>  include/acpi/platform/acgcc.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/include/acpi/platform/acgcc.h b/include/acpi/platform/acgcc.h
> index fb172a03a753..20ecb004f5a4 100644
> --- a/include/acpi/platform/acgcc.h
> +++ b/include/acpi/platform/acgcc.h
> @@ -22,9 +22,14 @@ typedef __builtin_va_list va_list;
>  #define va_arg(v, l)            __builtin_va_arg(v, l)
>  #define va_copy(d, s)           __builtin_va_copy(d, s)
>  #else
> +#ifdef __KERNEL__
>  #include <linux/stdarg.h>
> -#endif
> -#endif
> +#else
> +/* Used to build acpi tools */
> +#include <stdarg.h>
> +#endif /* __KERNEL__ */
> +#endif /* ACPI_USE_BUILTIN_STDARG */
> +#endif /* ! va_arg */
>
>  #define ACPI_INLINE             __inline__
>
> --

Applied as 5.16 material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
