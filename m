Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CB8369246
	for <lists+devel-acpica@lfdr.de>; Fri, 23 Apr 2021 14:38:55 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 113FD100EAAE8;
	Fri, 23 Apr 2021 05:38:54 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.172; helo=mail-oi1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8FAE0100EAAE6
	for <devel@acpica.org>; Fri, 23 Apr 2021 05:38:52 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id m13so49019001oiw.13
        for <devel@acpica.org>; Fri, 23 Apr 2021 05:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g+Cr6KRQiqW/QQh4fNj+YQmgd5j/X9ToNwhEzqEwqCo=;
        b=V937q1IA3PTf79An7V786OEJsoPKT76y5KbusVPk8QOkIZU3WkidBZ3hGmSkEsPLvW
         8k9H+XpbOa+cvZEMNQTnQa+iXyZwS5KxYVcHwDjm4HLds16Db+Tij/L3RY7pWqfsdBLo
         T8MVCORlL3u6hRHcnJmyNtTC2FXSWes0H7aIqLYEApxw4V1Uy50Rcttt0/KwS1qHKMMs
         v+3CcIocyG+vJWo4I3Z2295JaZLZLBP3jmCqExupkpAbM5QEkL8OchutFUa3/mi+BZtb
         K8Kyc0iDRYeDLQuiPn0IblyEU5DCF7aJa+vINeonFnQ1a/hcwlQFiMu++Es84X713qsu
         Mz1g==
X-Gm-Message-State: AOAM530HR8xDKDk26nGCZByuUtQ/bwn81xw+w7lzxTnQDO/taXrzgXDG
	26IheUE6Bb+GEttWVAMmNdm6B4uuDtFZ9dUaY5g=
X-Google-Smtp-Source: ABdhPJzbGPz2ugAvCKps+kiVe9FVh0OHyR+v6YWDecakD6U0egek7LXAYxlIUGwI4+h5Istp2xB227+RKnzqmJRkDoA=
X-Received: by 2002:aca:bc89:: with SMTP id m131mr2678202oif.71.1619181531825;
 Fri, 23 Apr 2021 05:38:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210422214708.716164-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <20210422214708.716164-3-sathyanarayanan.kuppuswamy@linux.intel.com>
In-Reply-To: <20210422214708.716164-3-sathyanarayanan.kuppuswamy@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 23 Apr 2021 14:38:41 +0200
Message-ID: <CAJZ5v0iwuqjPhceuO0dfq5zggpq9OHpv=bPtcZYhVtd-+-xyNQ@mail.gmail.com>
To: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
Message-ID-Hash: HHAFWYOFJOBFTU3AA2JMHOPZNISONIPB
X-Message-ID-Hash: HHAFWYOFJOBFTU3AA2JMHOPZNISONIPB
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael J Wysocki <rjw@rjwysocki.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 2/3] ACPI/table: Print MADT Wake table information
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HHAFWYOFJOBFTU3AA2JMHOPZNISONIPB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Apr 22, 2021 at 11:47 PM Kuppuswamy Sathyanarayanan
<sathyanarayanan.kuppuswamy@linux.intel.com> wrote:
>
> When MADT is parsed, print MADT Wake table information as
> debug message. It will be useful to debug CPU boot issues
> related to MADT wake table.
>
> Signed-off-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>

This obviously depends on the ACPICA changes from the previous patch,
so I can pick it up when that material gets integrated.

For now

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  drivers/acpi/tables.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/acpi/tables.c b/drivers/acpi/tables.c
> index 9d581045acff..206df4ad8b2b 100644
> --- a/drivers/acpi/tables.c
> +++ b/drivers/acpi/tables.c
> @@ -207,6 +207,17 @@ void acpi_table_print_madt_entry(struct acpi_subtable_header *header)
>                 }
>                 break;
>
> +       case ACPI_MADT_TYPE_MULTIPROC_WAKEUP:
> +               {
> +                       struct acpi_madt_multiproc_wakeup *p;
> +
> +                       p = (struct acpi_madt_multiproc_wakeup *) header;
> +
> +                       pr_debug("MP Wake (Mailbox version[%d] base_address[%llx])\n",
> +                                p->mailbox_version, p->base_address);
> +               }
> +               break;
> +
>         default:
>                 pr_warn("Found unsupported MADT entry (type = 0x%x)\n",
>                         header->type);
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
