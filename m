Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4104F3320
	for <lists+devel-acpica@lfdr.de>; Tue,  5 Apr 2022 15:11:33 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6A47A100F47A9;
	Tue,  5 Apr 2022 06:11:31 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.171; helo=mail-yb1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3C829100EB32D
	for <devel@acpica.org>; Tue,  5 Apr 2022 06:11:29 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id o62so8207230ybo.2
        for <devel@acpica.org>; Tue, 05 Apr 2022 06:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pAsOg6u+dg8eBbb3CVSjFCBlnUar5puK/bkdtZok73E=;
        b=mjOMFHr4k4iXR4BJD+YQ4twFSFtio6MaDFelRiw4h7ndvtzfFeFpFYfHAe849UoPej
         C3C64rLje0i6oupzTJVNnv6wI2OtjLCAr6QdYGFOQCcjnhZYSTlkv3t3IF4rUo64H+O2
         3StszLVwourrB6AJz7e12pPtM1DEw1s3s72SE4V9QnANyY1HzEwyPBAu6fd7ysPncWNv
         sNsDQB827/GC8YJo0Qj7pt90NC+N/3E58T2I68wK1elmfMJO0Qth0g7niBiLH+jeWEAk
         22Lfm9hm46ZxmEFByoHog/rGFtye7Hoaa/lV9RHJI+wrTCw2/5vBil4viI1hAyH/LpQ9
         tJMQ==
X-Gm-Message-State: AOAM533qVoMSr4QAEVxzxa98pGCD1l8sJatP1ovaXOp0J8TXNCXfJczJ
	BVcXAjlQ9VyQa/1f004fHyyb0IVORsPQJ+sN4x0=
X-Google-Smtp-Source: ABdhPJyVsjELcDDNs+Rco1Cbg0YxYcCGONQb5xUjKRULd+J6rZz6LFzO2hTQvNMTlzwIrPpPXTxadfxySE4uUhEAsM0=
X-Received: by 2002:a25:9d8a:0:b0:633:9668:c48a with SMTP id
 v10-20020a259d8a000000b006339668c48amr2551773ybp.153.1649164288285; Tue, 05
 Apr 2022 06:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1647525033.git.vit@kabele.me> <YjM/yphbAQHxJIxg@czspare1-lap.sysgo.cz>
In-Reply-To: <YjM/yphbAQHxJIxg@czspare1-lap.sysgo.cz>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 5 Apr 2022 15:11:17 +0200
Message-ID: <CAJZ5v0gBbdzUO9MRxbKESEnaeaNAu-+3oP6ADMretch=iHPNJA@mail.gmail.com>
To: platform-driver-x86@kernel.org, r.marek@assembler.cz,
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Ingo Molnar <mingo@redhat.com>,
	Robert Moore <robert.moore@intel.com>, linux-kernel@kernel.org,
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>
Message-ID-Hash: 3NVSAY6WJKGEQWUABR5TEIGSB7EPRW3I
X-Message-ID-Hash: 3NVSAY6WJKGEQWUABR5TEIGSB7EPRW3I
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: vit@kabele.me
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/3] platform/x86: Check validity of EBDA pointer in mpparse.c
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3NVSAY6WJKGEQWUABR5TEIGSB7EPRW3I/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

First off, this is not platform/x86, but arch/x86.

On Thu, Mar 17, 2022 at 3:12 PM Vit Kabele <vit@kabele.me> wrote:
>
> The pointer to EBDA area is retrieved from a word at 0x40e in BDA.
> In case that the memory there is not initialized and contains garbage,
> it might happen that the kernel touches memory above 640K.
>
> This may cause unwanted reads from VGA memory which may not be decoded,
> or even present when running under virtualization.
>
> This patch adds sanity check for the EBDA pointer retrieved from the memory
> so that scanning EBDA does not leave the low memory.
>
> Signed-off-by: Vit Kabele <vit@kabele.me>
> Reviewed-by: Rudolf Marek <r.marek@assembler.cz>
> ---
>  arch/x86/include/asm/bios_ebda.h |  3 +++
>  arch/x86/kernel/ebda.c           |  3 ---
>  arch/x86/kernel/mpparse.c        | 12 +++++++++++-
>  3 files changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/include/asm/bios_ebda.h b/arch/x86/include/asm/bios_ebda.h
> index 4d5a17e2febe..c3133c01d5b7 100644
> --- a/arch/x86/include/asm/bios_ebda.h
> +++ b/arch/x86/include/asm/bios_ebda.h
> @@ -4,6 +4,9 @@
>
>  #include <asm/io.h>
>
> +#define BIOS_START_MIN         0x20000U        /* 128K, less than this is insane */
> +#define BIOS_START_MAX         0x9f000U        /* 640K, absolute maximum */
> +
>  /*
>   * Returns physical address of EBDA.  Returns 0 if there is no EBDA.
>   */
> diff --git a/arch/x86/kernel/ebda.c b/arch/x86/kernel/ebda.c
> index 38e7d597b660..86c0801fc3ce 100644
> --- a/arch/x86/kernel/ebda.c
> +++ b/arch/x86/kernel/ebda.c
> @@ -50,9 +50,6 @@
>
>  #define BIOS_RAM_SIZE_KB_PTR   0x413
>
> -#define BIOS_START_MIN         0x20000U        /* 128K, less than this is insane */
> -#define BIOS_START_MAX         0x9f000U        /* 640K, absolute maximum */
> -
>  void __init reserve_bios_regions(void)
>  {
>         unsigned int bios_start, ebda_start;
> diff --git a/arch/x86/kernel/mpparse.c b/arch/x86/kernel/mpparse.c
> index fed721f90116..6bba0744d32d 100644
> --- a/arch/x86/kernel/mpparse.c
> +++ b/arch/x86/kernel/mpparse.c
> @@ -633,7 +633,17 @@ void __init default_find_smp_config(void)
>          */
>
>         address = get_bios_ebda();
> -       if (address)
> +
> +       /* Check that the EBDA address is sane and the get_bios_ebda() did not

Comment format not adhering to coding-style.

> +        * return just garbage from memory.
> +        * The upper bound is considered valid if it points below 1K before
> +        * end of the lower memory (i.e. 639K). The EBDA can be smaller
> +        * than 1K in which case the pointer will point above 639K but that
> +        * case is handled in step 2) above, and we don't need to adjust scan
> +        * size to not bump into the memory above 640K.
> +        */
> +       if (address >= BIOS_START_MIN &&
> +           address < 639 * 0x400)

This line doesn't need to be broken and maybe define a symbol for the
upper bound limit.

And if the 0x400 simply means 1KiB, it would be less confusing to use
a decimal number IMO.

>                 smp_scan_config(address, 0x400);
>  }
>
> --
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
