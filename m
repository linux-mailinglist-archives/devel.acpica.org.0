Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1133C8478
	for <lists+devel-acpica@lfdr.de>; Wed, 14 Jul 2021 14:30:53 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A78B9100EB35A;
	Wed, 14 Jul 2021 05:30:51 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.173; helo=mail-oi1-f173.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 988CD100EB34D
	for <devel@acpica.org>; Wed, 14 Jul 2021 05:30:49 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id c197so2017429oib.11
        for <devel@acpica.org>; Wed, 14 Jul 2021 05:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rWjs+l2KRQxhNxy2IfZ3C4oLVq4qtI5HHK2Spq22OdY=;
        b=A382W35LfkDuZe8l1sr3U/x+MTrMIpqKpWOZZ2LiAa6KTsgn4cIKlZd0CtMk5etvLJ
         AtYY93uYvRe5Vqu/b91MjKnNrgfHQTlZDw8lVmQz154UuPB8AuseNfAwUrNhU0xPDD/S
         43qxgY8V+uveWKGh71q9waIG11Kg56Mq1TYfztKZ0TGc/85E+HpADKyiULMcMs5Bfeba
         jDuuQDVBzOVnrO7gQ4CiaePGP63RFAYEHxz9aGooIbRjNVlvREMYq9kr9d+8zcc1H1N+
         gg9lhn5Nmq+ANSjUmoAcnqfBuMKnLFm6qdC/LEQzdKHicQqPibTK7f5bnfU80eUMPw/8
         fO5A==
X-Gm-Message-State: AOAM532CdElKWABHak6c6Mgx7bWAP6J5UHSrc3LUII7bwc+K0mK/VENQ
	kdx6ElM/2Pj1M5V99cm8+++pdwE/uTMmfsFUB0Q=
X-Google-Smtp-Source: ABdhPJw27x2/gF/JpIqFRGtZCA5yTdAIx9dyGZ8AH8Jl5ocHToKpNtDpx2xbNWDRJF4JN1uVeLx6ABg2uLvEnT4hxW8=
X-Received: by 2002:aca:3502:: with SMTP id c2mr649070oia.157.1626265844194;
 Wed, 14 Jul 2021 05:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210705124206.1228958-1-chenhuacai@loongson.cn> <20210705124206.1228958-2-chenhuacai@loongson.cn>
In-Reply-To: <20210705124206.1228958-2-chenhuacai@loongson.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 14 Jul 2021 14:30:33 +0200
Message-ID: <CAJZ5v0gyun_85uXrH6jt-d3XjaOFZmHEYGnKKGL-XUb=4ZcrMQ@mail.gmail.com>
To: Huacai Chen <chenhuacai@loongson.cn>
Message-ID-Hash: ZN4SQQK3PLRJSJSKP3CLWB6BIXBZIZD5
X-Message-ID-Hash: ZN4SQQK3PLRJSJSKP3CLWB6BIXBZIZD5
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Xuefeng Li <lixuefeng@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/3] ACPI: Add LoongArch support for ACPI_PROCESSOR/ACPI_NUMA
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZN4SQQK3PLRJSJSKP3CLWB6BIXBZIZD5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 5, 2021 at 2:41 PM Huacai Chen <chenhuacai@loongson.cn> wrote:
>
> We are preparing to add new Loongson (based on LoongArch, not MIPS)
> support. LoongArch use ACPI other than DT as its boot protocol, so
> add its support for ACPI_PROCESSOR/ACPI_NUMA.
>
> Signed-off-by: Huacai Chen <chenhuacai@loongson.cn>
> ---
>  drivers/acpi/Kconfig      | 4 ++--
>  drivers/acpi/numa/Kconfig | 2 +-
>  drivers/acpi/numa/srat.c  | 2 +-
>  include/linux/acpi.h      | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/acpi/Kconfig b/drivers/acpi/Kconfig
> index fe0bb6277e4d..90afa44efcba 100644
> --- a/drivers/acpi/Kconfig
> +++ b/drivers/acpi/Kconfig
> @@ -280,9 +280,9 @@ config ACPI_CPPC_LIB
>
>  config ACPI_PROCESSOR
>         tristate "Processor"
> -       depends on X86 || IA64 || ARM64
> +       depends on X86 || IA64 || ARM64 || LOONGARCH
>         select ACPI_PROCESSOR_IDLE
> -       select ACPI_CPU_FREQ_PSS if X86 || IA64
> +       select ACPI_CPU_FREQ_PSS if X86 || IA64 || LOONGARCH
>         default y
>         help
>           This driver adds support for the ACPI Processor package. It is required
> diff --git a/drivers/acpi/numa/Kconfig b/drivers/acpi/numa/Kconfig
> index fcf2e556d69d..39b1f34c21df 100644
> --- a/drivers/acpi/numa/Kconfig
> +++ b/drivers/acpi/numa/Kconfig
> @@ -2,7 +2,7 @@
>  config ACPI_NUMA
>         bool "NUMA support"
>         depends on NUMA
> -       depends on (X86 || IA64 || ARM64)
> +       depends on (X86 || IA64 || ARM64 || LOONGARCH)
>         default y if IA64 || ARM64
>
>  config ACPI_HMAT
> diff --git a/drivers/acpi/numa/srat.c b/drivers/acpi/numa/srat.c
> index 6021a1013442..b8795fc49097 100644
> --- a/drivers/acpi/numa/srat.c
> +++ b/drivers/acpi/numa/srat.c
> @@ -206,7 +206,7 @@ int __init srat_disabled(void)
>         return acpi_numa < 0;
>  }
>
> -#if defined(CONFIG_X86) || defined(CONFIG_ARM64)
> +#if defined(CONFIG_X86) || defined(CONFIG_ARM64) || defined(CONFIG_LOONGARCH)
>  /*
>   * Callback for SLIT parsing.  pxm_to_node() returns NUMA_NO_NODE for
>   * I/O localities since SRAT does not list them.  I/O localities are
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index 6bb36fd6ba31..3ba8511cbede 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -249,7 +249,7 @@ void acpi_table_print_madt_entry (struct acpi_subtable_header *madt);
>  /* the following numa functions are architecture-dependent */
>  void acpi_numa_slit_init (struct acpi_table_slit *slit);
>
> -#if defined(CONFIG_X86) || defined(CONFIG_IA64)
> +#if defined(CONFIG_X86) || defined(CONFIG_IA64) || defined(CONFIG_LOONGARCH)
>  void acpi_numa_processor_affinity_init (struct acpi_srat_cpu_affinity *pa);
>  #else
>  static inline void
> --

Does this patch alone make sense without the other two in the series?
If so, I can queue it up for 5.15, so please let me know.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
