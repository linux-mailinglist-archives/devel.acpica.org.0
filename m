Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2AF3ED8A7
	for <lists+devel-acpica@lfdr.de>; Mon, 16 Aug 2021 16:05:27 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 14017100EBB96;
	Mon, 16 Aug 2021 07:05:26 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.172; helo=mail-oi1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5A4B6100EBB72
	for <devel@acpica.org>; Mon, 16 Aug 2021 07:05:24 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id bd1so19366563oib.3
        for <devel@acpica.org>; Mon, 16 Aug 2021 07:05:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iRKDceU3mYZYX25ILhTGVfCF7ZiGQ+F4qa4yz3TodTY=;
        b=X9NaoTXL4IPIZ+OED66zSvlbY7Y7jrg6Vt9xVWDu+kKgt+Q1ff4R5SBFbwB6a8KK6M
         6BAs1zaPvtFmgYLo8bZYJ51JUbt19YulTfgblZlW5rgzsodes+jSLx2m8UaD7j85Jrp8
         Cw6WPsUd1Oi1c5srUW3qE7igz601oq1OiTQLdHYLc+hPZfYiVnU0E8cq0MVd4+twjIUA
         YWS7fhKo4dSQ99ROHuv1DXsr6QE9XgL+d8md0Q/odV+m853I2MSv4YEgg8MePZQc6yom
         MPs+Im0vohbXc5lgBL0Eir5G+9AW2m0e3PcAjVq/rWzKfJQQM0SOKZV7A/Y5a4oADmLz
         mydg==
X-Gm-Message-State: AOAM533rH7RhlFoXsLAfJxGYAvWFmqof5tTLwJCSz3oLwSC/juOClbWR
	0mqzqJrmqBqIyE3sm8g9OcqGgZYB61jIwbORHBI=
X-Google-Smtp-Source: ABdhPJzOdg3EzWB1728dV5c78AxtjaL0FOKppTxbZlVBy1uVvoUG+e3bXhxL9cLwgjZnAzYITWjRnwYsZLREFWQZJLM=
X-Received: by 2002:a05:6808:220c:: with SMTP id bd12mr12187934oib.157.1629122722961;
 Mon, 16 Aug 2021 07:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210813161842.222414-1-mario.limonciello@amd.com>
In-Reply-To: <20210813161842.222414-1-mario.limonciello@amd.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 16 Aug 2021 16:04:57 +0200
Message-ID: <CAJZ5v0jynpMMnMBQuyJPYfSG-6JSe5=a6wW0UtUnpGuh68CqkA@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@amd.com>
Message-ID-Hash: 7WPC3OCHTRJ7FQIHACDM2GJRE7SZAVXA
X-Message-ID-Hash: 7WPC3OCHTRJ7FQIHACDM2GJRE7SZAVXA
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Borislav Petkov <bp@alien8.de>, Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, Alexander Deucher <Alexander.Deucher@amd.com>, Ray Huang <Ray.Huang@amd.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Erik Kaneda <erik.kaneda@intel.com>, "open list:SUSPEND TO RAM" <linux-pm@vger.kernel.org>, "open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>, "open list:ACPI" <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] x86/acpi: Don't add CPUs that are not online capable
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7WPC3OCHTRJ7FQIHACDM2GJRE7SZAVXA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Aug 13, 2021 at 6:19 PM Mario Limonciello
<mario.limonciello@amd.com> wrote:
>
> A number of systems are showing "hotplug capable" CPUs when they
> are not really hotpluggable.  This is because the MADT has extra
> CPU entries to support different CPUs that may be inserted into
> the socket with different numbers of cores.
>
> Starting with ACPI 6.3 the spec has an Online Capable bit in the
> MADT used to determine whether or not a CPU is hotplug capable
> when the enabled bit is not set.
>
> Link: https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/05_ACPI_Software_Programming_Model/ACPI_Software_Programming_Model.html?#local-apic-flags
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  arch/x86/kernel/acpi/boot.c | 10 ++++++++++
>  include/acpi/actbl2.h       |  1 +
>  2 files changed, 11 insertions(+)
>
> Changes from v1->v2:
>  * Check the revision field in MADT to determine if it matches the
>    bump from ACPI 6.3 as suggested by Hanjun Guo
>  * Update description
>
> diff --git a/arch/x86/kernel/acpi/boot.c b/arch/x86/kernel/acpi/boot.c
> index e55e0c1fad8c..bfa69a5c9c0b 100644
> --- a/arch/x86/kernel/acpi/boot.c
> +++ b/arch/x86/kernel/acpi/boot.c
> @@ -53,6 +53,8 @@ int acpi_ioapic;
>  int acpi_strict;
>  int acpi_disable_cmcff;
>
> +bool acpi_support_online_capable;

Missing static?

> +
>  /* ACPI SCI override configuration */
>  u8 acpi_sci_flags __initdata;
>  u32 acpi_sci_override_gsi __initdata = INVALID_ACPI_IRQ;
> @@ -138,6 +140,8 @@ static int __init acpi_parse_madt(struct acpi_table_header *table)
>
>                 pr_debug("Local APIC address 0x%08x\n", madt->address);
>         }
> +       if (madt->header.revision >= 5)
> +               acpi_support_online_capable = true;
>
>         default_acpi_madt_oem_check(madt->header.oem_id,
>                                     madt->header.oem_table_id);
> @@ -239,6 +243,12 @@ acpi_parse_lapic(union acpi_subtable_headers * header, const unsigned long end)
>         if (processor->id == 0xff)
>                 return 0;
>
> +       /* don't register processors that can not be onlined */
> +       if (acpi_support_online_capable &&
> +           !(processor->lapic_flags & ACPI_MADT_ENABLED) &&
> +           !(processor->lapic_flags & ACPI_MADT_ONLINE_CAPABLE))
> +               return 0;
> +
>         /*
>          * We need to register disabled CPU as well to permit
>          * counting disabled CPUs. This allows us to size
> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> index 2069ac38a4e2..fae45e383987 100644
> --- a/include/acpi/actbl2.h
> +++ b/include/acpi/actbl2.h

The one below is an ACPICA change and I'd prefer it to be integrated
via the upstream ACPICA.

Could you prepare an ACPICA pull request for just the bit below and
send it via GitHub?

> @@ -808,6 +808,7 @@ struct acpi_madt_multiproc_wakeup_mailbox {
>  /* MADT Local APIC flags */
>
>  #define ACPI_MADT_ENABLED           (1)        /* 00: Processor is usable if set */
> +#define ACPI_MADT_ONLINE_CAPABLE    (2)        /* 01: System HW supports enabling processor at runtime */
>
>  /* MADT MPS INTI flags (inti_flags) */
>
> --
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
