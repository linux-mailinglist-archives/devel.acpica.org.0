Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14C3151BC
	for <lists+devel-acpica@lfdr.de>; Tue,  9 Feb 2021 15:35:32 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E07C0100EAB7D;
	Tue,  9 Feb 2021 06:35:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.53; helo=mail-ot1-f53.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BF264100F227A
	for <devel@acpica.org>; Tue,  9 Feb 2021 06:35:28 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id t25so17670293otc.5
        for <devel@acpica.org>; Tue, 09 Feb 2021 06:35:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lZa1gL5UO1QVOwd/KPeOZtTkGeuyxn69fTmhbjihUsk=;
        b=pUB2UbFAa+yqq/R0gAbDfBcMnV1E2bHoFmMXnUYN/pH3IKb8Y0neqViLrfqpcKBiEM
         60b4grLarT0NdCI6sgOk1mcXkQh6hYjDlvcEUF95opB/Re5OYqn2lw/WXbPrhOoQTYg7
         0Emax15/1hC3tkQk8x8M3WqUQhPrXAOycubfAAx5tKgiQDu/rQJ20FklZnb7uk4/hB21
         DL7W+3u+OSr78Q2rIDIvB0hprEL1XCQu7kkStlnJOoLNDTieHpBOhR+UNJKef/eCE0+4
         s6f+JkRmXrlvNQ7WzD+BmYxwKt97QRbzkPXmh+ZrYVBHj6cIkfKnZKrx2YwYGE+qETXD
         duIQ==
X-Gm-Message-State: AOAM532vZhZNlUQ0GJCnES30z3H4xu+nR8V0THsfuOjxoAxBshO5zRih
	BO0rZu0RHM/tA1duwERkGoPEIllLc8UscOfW7Tk=
X-Google-Smtp-Source: ABdhPJw7RYC30OMzcFI0ZQqtGXBLiUxRNCQYDuo2ImGnO4Ce/C1BOgkndTGNVsYWfa83+pNi+h7/aZbkYDEscbISA7s=
X-Received: by 2002:a9d:a2d:: with SMTP id 42mr14909782otg.321.1612881327590;
 Tue, 09 Feb 2021 06:35:27 -0800 (PST)
MIME-Version: 1.0
References: <20210209031744.26474-1-weidongcui@gmail.com>
In-Reply-To: <20210209031744.26474-1-weidongcui@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 9 Feb 2021 15:35:14 +0100
Message-ID: <CAJZ5v0ifzqR90BJY3u6NGvMLuVn8YApLZH=oA5COcmjs_GKFqQ@mail.gmail.com>
To: Weidong Cui <weidongcui@gmail.com>
Message-ID-Hash: 2MDBUP6TLRBBCZI6H6HE3HPM3HR4BCJQ
X-Message-ID-Hash: 2MDBUP6TLRBBCZI6H6HE3HPM3HR4BCJQ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Xinyang Ge <aegiryy@gmail.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] Enable ACPI_ADR_SPACE_PCI_CONFIG in acpi_gbl_default_address_spaces only when ACPI_PCI_CONFIGURED is defined
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2MDBUP6TLRBBCZI6H6HE3HPM3HR4BCJQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 9, 2021 at 4:22 AM Weidong Cui <weidongcui@gmail.com> wrote:
>
> Signed-off-by: Weidong Cui <weidongcui@gmail.com>
> Signed-off-by: Xinyang Ge <aegiryy@gmail.com>

ACPICA material, left to Erik & Bob, thanks!

> ---
>  drivers/acpi/acpica/evhandler.c | 2 ++
>  include/acpi/acconfig.h         | 4 ++++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/acpi/acpica/evhandler.c b/drivers/acpi/acpica/evhandler.c
> index 5884eba04..4c25ad433 100644
> --- a/drivers/acpi/acpica/evhandler.c
> +++ b/drivers/acpi/acpica/evhandler.c
> @@ -26,7 +26,9 @@ acpi_ev_install_handler(acpi_handle obj_handle,
>  u8 acpi_gbl_default_address_spaces[ACPI_NUM_DEFAULT_SPACES] = {
>         ACPI_ADR_SPACE_SYSTEM_MEMORY,
>         ACPI_ADR_SPACE_SYSTEM_IO,
> +#ifdef ACPI_PCI_CONFIGURED
>         ACPI_ADR_SPACE_PCI_CONFIG,
> +#endif
>         ACPI_ADR_SPACE_DATA_TABLE
>  };
>
> diff --git a/include/acpi/acconfig.h b/include/acpi/acconfig.h
> index a225eff49..790999028 100644
> --- a/include/acpi/acconfig.h
> +++ b/include/acpi/acconfig.h
> @@ -162,7 +162,11 @@
>  /* Maximum space_ids for Operation Regions */
>
>  #define ACPI_MAX_ADDRESS_SPACE          255
> +#ifdef ACPI_PCI_CONFIGURED
>  #define ACPI_NUM_DEFAULT_SPACES         4
> +#else
> +#define ACPI_NUM_DEFAULT_SPACES         3
> +#endif
>
>  /* Array sizes.  Used for range checking also */
>
> --
> 2.24.3 (Apple Git-128)
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
