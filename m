Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6DC3445B1
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Mar 2021 14:27:44 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 989C3100EBB6F;
	Mon, 22 Mar 2021 06:27:42 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.45; helo=mail-ot1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E4E0A100EC1EE
	for <devel@acpica.org>; Mon, 22 Mar 2021 06:27:39 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id l23-20020a05683004b7b02901b529d1a2fdso15886130otd.8
        for <devel@acpica.org>; Mon, 22 Mar 2021 06:27:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x7NLjzCmdc7lqJFi0FRfh6j8DYgTAI55Gdto//+9wfc=;
        b=saVx40PmrdCQQUCb7jlIBNilp5Rv4FuSw6sarDxmOyHG9JyNPxY6Ta0t9sEKceYbPN
         ZITfdYYe/0zENDoN4eHVK+cn+poX1y8GeAHyd7lfH43ikWdcyicQslAEyOQDiuZNkLEh
         AjOLQsfvAOYUOk3cB4HBBOkjRMz9jqlI4av+aY15HN7SYhHprHgBWMVg6UenNSyJKRV0
         RL0Qh/8mzN0inVaNUL4sB039F8TxYyBNy4xq5WRP3RoW6aUr7Lq/rIXokkvd4il0q+W/
         +vTexKRKNsiL+DICsYnJtzKoQlcWD2J7qrfGPmPiVSiK7RbJfOltaAetegb8+swxMZKr
         h0bg==
X-Gm-Message-State: AOAM531vsh/yfCiF4nnpngmgKi+b/FxmgU0dc/DcsXeMGq1fLgOIJcN6
	RimDIDdule/pdM5rBgSTqA/J92k0L7nf+2onlbk=
X-Google-Smtp-Source: ABdhPJwoZAbuzFvJN4AM4LX7CnRAX3/NRAdpDKl5lAPXhxKPAOZcq+So6bIupxyrfvzrZJd0xZ/j8HVZpcO3HoDgHCk=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr12036047otr.321.1616419658585;
 Mon, 22 Mar 2021 06:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210322105805.1498602-1-arnd@kernel.org>
In-Reply-To: <20210322105805.1498602-1-arnd@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 22 Mar 2021 14:27:23 +0100
Message-ID: <CAJZ5v0jbKmkWxV0CFpQ+3q5GOJVVx5QfzLVu-Mvo-subYdjuPA@mail.gmail.com>
To: Arnd Bergmann <arnd@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>,
	Robert Moore <robert.moore@intel.com>
Message-ID-Hash: NZISADKBOXAYGS4MNA4RPHMLTLP5JQSN
X-Message-ID-Hash: NZISADKBOXAYGS4MNA4RPHMLTLP5JQSN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Arnd Bergmann <arnd@arndb.de>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] acpi: avoid -Wempty-body warnings
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NZISADKBOXAYGS4MNA4RPHMLTLP5JQSN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 22, 2021 at 11:59 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> The acpi drivers produce a number of avoidable warnings for empty macros
> when building with 'make W=1':
>
> drivers/acpi/acpi_processor.c: In function 'acpi_processor_errata_piix4':
> drivers/acpi/acpi_processor.c:133:95: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
>   133 |                                   "Bus master activity detection (BM-IDE) erratum enabled\n"));
>       |                                                                                               ^
> drivers/acpi/acpi_processor.c:136:82: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
>   136 |                                   "Type-F DMA livelock erratum (C3 disabled)\n"));
>       |                                                                                  ^
> drivers/acpi/acpi_processor.c: In function 'acpi_processor_get_info':
> drivers/acpi/acpi_processor.c:251:77: error: suggest braces around empty body in an 'else' statement [-Werror=empty-body]
>   251 |                                   "No bus mastering arbitration control\n"));
>       |                                                                             ^
> drivers/acpi/processor_pdc.c: In function 'acpi_processor_eval_pdc':
> drivers/acpi/processor_pdc.c:136:79: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
>   136 |                     "Could not evaluate _PDC, using legacy perf. control.\n"));
>       |                                                                               ^
>
> I tried making these call no_printk() instead, which would add proper
> format string checking, but that turned out to be a rather invasive
> change, so just shut up the warning by turning the macros into empty
> "do {} while (0)" statements.

This is part of ACPICA, so handing it to Erik and Bob.


> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  include/acpi/acoutput.h | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/include/acpi/acoutput.h b/include/acpi/acoutput.h
> index 1538a6853822..b5484ef31f27 100644
> --- a/include/acpi/acoutput.h
> +++ b/include/acpi/acoutput.h
> @@ -433,23 +433,23 @@
>   * This is the non-debug case -- make everything go away,
>   * leaving no executable debug code!
>   */
> -#define ACPI_DEBUG_PRINT(pl)
> -#define ACPI_DEBUG_PRINT_RAW(pl)
> -#define ACPI_DEBUG_EXEC(a)
> -#define ACPI_DEBUG_ONLY_MEMBERS(a)
> -#define ACPI_FUNCTION_NAME(a)
> -#define ACPI_FUNCTION_TRACE(a)
> -#define ACPI_FUNCTION_TRACE_PTR(a, b)
> -#define ACPI_FUNCTION_TRACE_U32(a, b)
> -#define ACPI_FUNCTION_TRACE_STR(a, b)
> -#define ACPI_FUNCTION_ENTRY()
> -#define ACPI_DUMP_STACK_ENTRY(a)
> -#define ACPI_DUMP_OPERANDS(a, b, c)
> -#define ACPI_DUMP_ENTRY(a, b)
> -#define ACPI_DUMP_PATHNAME(a, b, c, d)
> -#define ACPI_DUMP_BUFFER(a, b)
> +#define ACPI_DEBUG_PRINT(pl)                   do { } while (0)
> +#define ACPI_DEBUG_PRINT_RAW(pl)               do { } while (0)
> +#define ACPI_DEBUG_EXEC(a)                     do { } while (0)
> +#define ACPI_DEBUG_ONLY_MEMBERS(a)             do { } while (0)
> +#define ACPI_FUNCTION_NAME(a)                  do { } while (0)
> +#define ACPI_FUNCTION_TRACE(a)                 do { } while (0)
> +#define ACPI_FUNCTION_TRACE_PTR(a, b)          do { } while (0)
> +#define ACPI_FUNCTION_TRACE_U32(a, b)          do { } while (0)
> +#define ACPI_FUNCTION_TRACE_STR(a, b)          do { } while (0)
> +#define ACPI_FUNCTION_ENTRY()                  do { } while (0)
> +#define ACPI_DUMP_STACK_ENTRY(a)               do { } while (0)
> +#define ACPI_DUMP_OPERANDS(a, b, c)            do { } while (0)
> +#define ACPI_DUMP_ENTRY(a, b)                  do { } while (0)
> +#define ACPI_DUMP_PATHNAME(a, b, c, d)         do { } while (0)
> +#define ACPI_DUMP_BUFFER(a, b)                 do { } while (0)
>  #define ACPI_IS_DEBUG_ENABLED(level, component) 0
> -#define ACPI_TRACE_POINT(a, b, c, d)
> +#define ACPI_TRACE_POINT(a, b, c, d)           do { } while (0)
>
>  /* Return macros must have a return statement at the minimum */
>
> --
> 2.29.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
