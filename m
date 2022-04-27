Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 466CE511C62
	for <lists+devel-acpica@lfdr.de>; Wed, 27 Apr 2022 18:35:25 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BB568100F3945;
	Wed, 27 Apr 2022 09:35:22 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.174; helo=mail-yw1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 218D5100F3944
	for <devel@acpica.org>; Wed, 27 Apr 2022 09:35:21 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-2f7b815ac06so25309487b3.3
        for <devel@acpica.org>; Wed, 27 Apr 2022 09:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tbuwDWtsgKpXw2cvHqL9DgcuBeP4KgEq2sSeMFKnM9g=;
        b=x/7khx8tFN+XGRZjCzBIZO4fmqzXDvCT9vODz6sIhyw+jzi550Rv3zVM4XoUnBN/kC
         DICxNHHzz+u2pgxSE70coOKpUxv0JLZqLG6JFA2MwtJGWWyhd7GBKrEdGd4rv1QShO5o
         4CxfMlsPxBGnjoZLwKKNhyamzGQKSqnuAO67NUydYR0k+1jxE+pdZpkWrefO25jzfQ1j
         KtwWrWxYj/bpU+IygIN0KvPWV9Vdz0DVQAg9wvc+yXQ+qQ2C1bSKpSu4pLNU9k56IAmW
         fJ4+GMqAsQdLJP6ZwCWVEBaLHy5lVmbOnosjsm7HAVmng1/B0zAEcPL3cI8W/zTD3/bm
         Y2dw==
X-Gm-Message-State: AOAM5306L1kiCScDALsavMrztIaskV2KbS88b3v5dzy/lilUlkSduDSq
	7d48TunqAgldHCwtQzdceIhwEpJ+2vo3J6S3oJ4=
X-Google-Smtp-Source: ABdhPJzk8Ye5AlpT8WvpF/StZYpfaAxQ/q+rn62t2z8WVPvDhoorzSXraFaJjbWmO/LhNNeWjkZQtDNJBfEIICXyqQM=
X-Received: by 2002:a81:36cf:0:b0:2e5:2597:a026 with SMTP id
 d198-20020a8136cf000000b002e52597a026mr28172217ywa.301.1651077320099; Wed, 27
 Apr 2022 09:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220427104957.956673-1-sakari.ailus@linux.intel.com>
In-Reply-To: <20220427104957.956673-1-sakari.ailus@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 27 Apr 2022 18:35:09 +0200
Message-ID: <CAJZ5v0ivSqJeMEYtJGQ7_Cic88L=H4Vc1k8by4hi6rP3_wXz3g@mail.gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Message-ID-Hash: NCIQVMANLP7PVBIGH4A7UH73AXA2M5YN
X-Message-ID-Hash: NCIQVMANLP7PVBIGH4A7UH73AXA2M5YN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] Constify AcpiGetHandle pathname argument
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NCIQVMANLP7PVBIGH4A7UH73AXA2M5YN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Apr 27, 2022 at 12:48 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> AcpiGetHandle doesn't write to the pathname argument, therefore make it
> const.
>
> This allows later on passing pathname to AcpiGetHandle which is const,
> without creating a copy of it.
>
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
> Hi folks,
>
> This isn't required by acpica internally as such but upcoming patches to
> Linux depend on it.

I'm afraid that the kernel source cannot depart from the upstream
ACPICA this way, though.

>  source/components/namespace/nsxfname.c | 2 +-
>  source/include/acpixf.h                | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/source/components/namespace/nsxfname.c b/source/components/namespace/nsxfname.c
> index 7a7393b61..da89b2d8e 100644
> --- a/source/components/namespace/nsxfname.c
> +++ b/source/components/namespace/nsxfname.c
> @@ -192,7 +192,7 @@ AcpiNsCopyDeviceId (
>  ACPI_STATUS
>  AcpiGetHandle (
>      ACPI_HANDLE             Parent,
> -    ACPI_STRING             Pathname,
> +    const char              *Pathname,
>      ACPI_HANDLE             *RetHandle)
>  {
>      ACPI_STATUS             Status;
> diff --git a/source/include/acpixf.h b/source/include/acpixf.h
> index 7610f2e30..a3f7397e7 100644
> --- a/source/include/acpixf.h
> +++ b/source/include/acpixf.h
> @@ -766,7 +766,7 @@ ACPI_EXTERNAL_RETURN_STATUS (
>  ACPI_STATUS
>  AcpiGetHandle (
>      ACPI_HANDLE             Parent,
> -    ACPI_STRING             Pathname,
> +    const char              *Pathname,
>      ACPI_HANDLE             *RetHandle))
>
>  ACPI_EXTERNAL_RETURN_STATUS (
> --
> 2.30.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
