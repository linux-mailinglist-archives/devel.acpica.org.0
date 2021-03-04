Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDE232D2B2
	for <lists+devel-acpica@lfdr.de>; Thu,  4 Mar 2021 13:15:06 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CF201100ED4AC;
	Thu,  4 Mar 2021 04:15:04 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.51; helo=mail-ot1-f51.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C5749100ED4A4
	for <devel@acpica.org>; Thu,  4 Mar 2021 04:15:02 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id h22so27013645otr.6
        for <devel@acpica.org>; Thu, 04 Mar 2021 04:15:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6C1ZutBSyK6kqUR+ByrPHry2A5Xu5UnDxFmzQsZQ8F0=;
        b=MngHOIJPSjZs0xYdwdFNC9qiZqeOMXk3lk9+J6/TvK+Yc1Q+0OjaYlz854sqagSzQ1
         d1iCMEq8iSzbrtzR7z3R0jRh29ITMLsCgDpwi5R/V6GtMro7cXiMzCDYAUu2rAbuTINn
         q3oOodasNX8HSYOf/pUz0xLBL7j6us6U9pFMbNrjLpHVS5vFxVrDAV1SXoUUahH2JbMt
         itlDKGI5xHs7k9uLQfs0QnEG9cadogNl0GSd5EnhOTOOQJGcRMbJwUskCZt72jQSGJAI
         wJ5nceubVzFI2GlE4jLqSrGbGLTfQIERnpNDnysScN/3MEaLo/WVowyZh4a2U+B47APx
         TP9A==
X-Gm-Message-State: AOAM530DdfH5PLtZVSxRawb+KC7jRJQ81PZK8JtDbXPAfRRwCEuKQPMb
	LM00kstA95DJCjvwBl7IhzWTl3C3PooraCcX0iM=
X-Google-Smtp-Source: ABdhPJy98h8ozgdO0m0No+u1zxOVZo7NAoKFN15Arj0BKyQ2mtdeexjpzGxgb2cv+nG9IityJHPwqzMBgAFeBV/AztY=
X-Received: by 2002:a05:6830:1057:: with SMTP id b23mr3365157otp.206.1614860100740;
 Thu, 04 Mar 2021 04:15:00 -0800 (PST)
MIME-Version: 1.0
References: <1614802160-29362-1-git-send-email-george.kennedy@oracle.com>
In-Reply-To: <1614802160-29362-1-git-send-email-george.kennedy@oracle.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 4 Mar 2021 13:14:49 +0100
Message-ID: <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
To: George Kennedy <george.kennedy@oracle.com>
Message-ID-Hash: YGETFT673DUHHWOI6R2HH44M4EYF75GQ
X-Message-ID-Hash: YGETFT673DUHHWOI6R2HH44M4EYF75GQ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mike Rapoport <rppt@linux.ibm.com>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YGETFT673DUHHWOI6R2HH44M4EYF75GQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 4, 2021 at 2:22 AM George Kennedy <george.kennedy@oracle.com> wrote:
>
> Since commit 7fef431be9c9 ("mm/page_alloc: place pages to tail
> in __free_pages_core()") the following use after free occurs
> intermittently when acpi tables are accessed.
>
> BUG: KASAN: use-after-free in ibft_init+0x134/0xc49
> Read of size 4 at addr ffff8880be453004 by task swapper/0/1
> CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5.12.0-rc1-7a7fd0d #1
> Call Trace:
>  dump_stack+0xf6/0x158
>  print_address_description.constprop.9+0x41/0x60
>  kasan_report.cold.14+0x7b/0xd4
>  __asan_report_load_n_noabort+0xf/0x20
>  ibft_init+0x134/0xc49
>  do_one_initcall+0xc4/0x3e0
>  kernel_init_freeable+0x5af/0x66b
>  kernel_init+0x16/0x1d0
>  ret_from_fork+0x22/0x30
>
> ACPI tables mapped via kmap() do not have their mapped pages
> reserved and the pages can be "stolen" by the buddy allocator.

What do you mean by this?

> Use memblock_reserve() to reserve all the ACPI table pages.

How is this going to help?

> Signed-off-by: George Kennedy <george.kennedy@oracle.com>
> ---
>  arch/x86/kernel/setup.c        | 3 +--
>  drivers/acpi/acpica/tbinstal.c | 4 ++++
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index d883176..97deea3 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -1046,6 +1046,7 @@ void __init setup_arch(char **cmdline_p)
>         cleanup_highmap();
>
>         memblock_set_current_limit(ISA_END_ADDRESS);
> +       acpi_boot_table_init();

This cannot be moved before the acpi_table_upgrade() invocation AFAICS.

Why exactly do you want to move it?

>         e820__memblock_setup();
>
>         /*
> @@ -1139,8 +1140,6 @@ void __init setup_arch(char **cmdline_p)
>         /*
>          * Parse the ACPI tables for possible boot-time SMP configuration.
>          */
> -       acpi_boot_table_init();
> -
>         early_acpi_boot_init();
>
>         initmem_init();
> diff --git a/drivers/acpi/acpica/tbinstal.c b/drivers/acpi/acpica/tbinstal.c
> index 8d1e5b5..4e32b22 100644
> --- a/drivers/acpi/acpica/tbinstal.c
> +++ b/drivers/acpi/acpica/tbinstal.c
> @@ -8,6 +8,7 @@
>   *****************************************************************************/
>
>  #include <acpi/acpi.h>
> +#include <linux/memblock.h>
>  #include "accommon.h"
>  #include "actables.h"
>
> @@ -58,6 +59,9 @@
>                                       new_table_desc->flags,
>                                       new_table_desc->pointer);
>
> +       memblock_reserve(new_table_desc->address,
> +                        PAGE_ALIGN(new_table_desc->pointer->length));
> +

Why do you want to do this here in the first place?

Things like that cannot be done in the ACPICA code in general.

>         acpi_tb_print_table_header(new_table_desc->address,
>                                    new_table_desc->pointer);
>
> --
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
