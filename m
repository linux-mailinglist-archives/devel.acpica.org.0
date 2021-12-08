Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E416D46D560
	for <lists+devel-acpica@lfdr.de>; Wed,  8 Dec 2021 15:13:05 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F2C11100F3935;
	Wed,  8 Dec 2021 06:13:03 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.53; helo=mail-ot1-f53.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4F534100EB331
	for <devel@acpica.org>; Wed,  8 Dec 2021 06:13:01 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id n17-20020a9d64d1000000b00579cf677301so2837942otl.8
        for <devel@acpica.org>; Wed, 08 Dec 2021 06:13:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kot1Vo3tW7X4q0oWAztyb7sc2d5t0hVeg+NoGlVrew8=;
        b=qiI+wtqsYPYPsvagG7NS2y+bj+bKUZPia6v396OXCntW3Ic4jIpftz90gQLXiGhw8g
         zpTjOqG29rZTwRufFYcxYgYbZ66Kgk6KBBawW7eDL9+nyq8y0Nx2t1FszQkCiW3pO/7f
         I6TyMMv0x3vy1hi9ktxPj/ZQYy2bzJAajb5Ck4X34filKcE39yHy0XPirvHUQG1z1eSA
         ziDnBOqaJ0M//pZzqJnwKjK96AAVBJ8wvg0M5oBd0/fFoM6w9GlN3TDtGqlMgx2Bcgnh
         oJDYucUZrBV2UBOCNGvJ7SuABSqlrW++jcOaadvv/bxwkYYXj6r/jOhpMdjdb5vb1q3f
         6Jjw==
X-Gm-Message-State: AOAM531sU/h33d3PVlAzupGdgPwGW1nktEHp3BOfyKFWAmJYA7OmsS82
	DLJbVqKQwRVA4DYrrWXvO42g8Uxxi+y11FZ6AG8=
X-Google-Smtp-Source: ABdhPJysPaLI98z7r5Jf+ITKMnCviwdGPrRqU1FNn7oQtauRkJLz5idaoWdf/ZmXXa2cs4/90nI/5pTEZ+rC2dd+W+w=
X-Received: by 2002:a9d:4c10:: with SMTP id l16mr41268530otf.198.1638972780217;
 Wed, 08 Dec 2021 06:13:00 -0800 (PST)
MIME-Version: 1.0
References: <20211123132330.1008671-1-yu.c.chen@intel.com>
In-Reply-To: <20211123132330.1008671-1-yu.c.chen@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 8 Dec 2021 15:12:49 +0100
Message-ID: <CAJZ5v0h6Hka8P9Ba9cYrWSwzfWtH=-prLXjOKBe+1-vEU6rH0A@mail.gmail.com>
To: Chen Yu <yu.c.chen@intel.com>
Message-ID-Hash: 7IMF5TA3SKR6CJ3IEAGLJLWCCMAHUUNW
X-Message-ID-Hash: 7IMF5TA3SKR6CJ3IEAGLJLWCCMAHUUNW
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] tools/power/acpi: Fix the compile error when output directory is specified
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7IMF5TA3SKR6CJ3IEAGLJLWCCMAHUUNW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 23, 2021 at 2:24 PM Chen Yu <yu.c.chen@intel.com> wrote:
>
> Compiling the tool when output directory parameter is specified would
> trigger the following error:
>
> make O=/data/test/tmp/ -C tools/power/acpi/
>
> make: Entering directory '/data/src/kernel/linux/tools/power/acpi'
>   DESCEND tools/acpidbg
> make[1]: Entering directory '/data/src/kernel/linux/tools/power/acpi/tools/acpidbg'
>   MKDIR    include
>   CP       include
>   CC       tools/acpidbg/acpidbg.o
> Assembler messages:
> Fatal error: can't create /data/test/tmp/tools/power/acpi/tools/acpidbg/acpidbg.o: No such file or directory
> make[1]: *** [../../Makefile.rules:24: /data/test/tmp/tools/power/acpi/tools/acpidbg/acpidbg.o] Error 1
> make[1]: Leaving directory '/data/src/kernel/linux/tools/power/acpi/tools/acpidbg'
> make: *** [Makefile:18: acpidbg] Error 2
> make: Leaving directory '/data/src/kernel/linux/tools/power/acpi'
>
> This is because the output directory has not been created yet. Fix this issue by
> creating the output directory before compiling.
>
> Reported-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> ---
>  tools/power/acpi/Makefile.config | 1 +
>  tools/power/acpi/Makefile.rules  | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/tools/power/acpi/Makefile.config b/tools/power/acpi/Makefile.config
> index 331f6d30f472..cd7106876a5f 100644
> --- a/tools/power/acpi/Makefile.config
> +++ b/tools/power/acpi/Makefile.config
> @@ -69,6 +69,7 @@ KERNEL_INCLUDE := $(OUTPUT)include
>  ACPICA_INCLUDE := $(srctree)/../../../drivers/acpi/acpica
>  CFLAGS += -D_LINUX -I$(KERNEL_INCLUDE) -I$(ACPICA_INCLUDE)
>  CFLAGS += $(WARNINGS)
> +MKDIR = mkdir
>
>  ifeq ($(strip $(V)),false)
>         QUIET=@
> diff --git a/tools/power/acpi/Makefile.rules b/tools/power/acpi/Makefile.rules
> index 2a6c170b57cd..1d7616f5d0ae 100644
> --- a/tools/power/acpi/Makefile.rules
> +++ b/tools/power/acpi/Makefile.rules
> @@ -21,6 +21,7 @@ $(KERNEL_INCLUDE):
>
>  $(objdir)%.o: %.c $(KERNEL_INCLUDE)
>         $(ECHO) "  CC      " $(subst $(OUTPUT),,$@)
> +       $(QUIET) $(MKDIR) -p $(objdir) 2>/dev/null
>         $(QUIET) $(CC) -c $(CFLAGS) -o $@ $<
>
>  all: $(OUTPUT)$(TOOL)
> --

Applied (with some edits in the subject and changelog) as 5.16-rc material.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
