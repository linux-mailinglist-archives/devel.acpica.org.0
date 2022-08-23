Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CD759E8AA
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Aug 2022 19:13:09 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EF7AB100E6C3E;
	Tue, 23 Aug 2022 10:13:06 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.169; helo=mail-yw1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1FEC9100EA555
	for <devel@acpica.org>; Tue, 23 Aug 2022 10:13:03 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-33387bf0c4aso396170037b3.11
        for <devel@acpica.org>; Tue, 23 Aug 2022 10:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=xjbcbO8Zt7nAdCqR/OOnim/u0BKXicwexFKdBPWF5UA=;
        b=DFGlk0vOj53L2DGcaqKiP0bGMUM22gikWUa3QkZQGZB4M/yaatmzChfHq/OjtRGf1J
         ErQ2AkeSHHmdSLE0o5Dj2TxB9L8xxR7iyoOIg/1/AGYa7IPNq7RcbTljM4jluUItGmvW
         bZbZrL/UC8j7WRVNj4kN7ektGIuQp39gISnQkr6whbz1C5UlxYSfK7b+XOPSBy1HDuAI
         I7sfSGbJlnsEfcDpItZrJcVNfDKXSkO/jNdl77F8nvLKYJnuxKhHBAT6lswd/K437dQ8
         GRBI5tFZteqwRxfxKzOpwxSxMEIPs8D9l/tE93dfsts4ns425Zkqs2mjAOAjAODeHUnB
         xKYg==
X-Gm-Message-State: ACgBeo3zSmyAkAB7Tq933bYggQtGEW8zs/WuqMP4GIMfxR3mXcWdOw3G
	NgrOT18RgInarkCd6/5DIv9Y/tOn1OfP+V3LsC8=
X-Google-Smtp-Source: AA6agR5RwwEAYHTEyDT9M8GfloXYOsPsrh7q7Mo2LXQKsUHGZLrxmsJXZfYn8sTtMQ3Ac2o8Z2P/Avkd9oxF2VclUyw=
X-Received: by 2002:a81:104e:0:b0:336:37f1:9686 with SMTP id
 75-20020a81104e000000b0033637f19686mr27748007ywq.149.1661274782976; Tue, 23
 Aug 2022 10:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220822062420.4815-1-chuanjian@nfschina.com>
In-Reply-To: <20220822062420.4815-1-chuanjian@nfschina.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Aug 2022 19:12:52 +0200
Message-ID: <CAJZ5v0iQsmPS2F-hTKhhHho2+=UgAfag6jNs=m-WQY0CL6t=Lw@mail.gmail.com>
To: Dong Chuanjian <chuanjian@nfschina.com>
Message-ID-Hash: ICWAUVOF2JZTBVOU7ILHZAGNUTKPLEZB
X-Message-ID-Hash: ICWAUVOF2JZTBVOU7ILHZAGNUTKPLEZB
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] tools/power/acpi/os_specific/service_layers/osunixxf.c:remove unnecessary (void*) conversions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ICWAUVOF2JZTBVOU7ILHZAGNUTKPLEZB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 22, 2022 at 8:24 AM Dong Chuanjian <chuanjian@nfschina.com> wrote:
>
> remove unnecessary void* type casting
>
> Signed-off-by: Dong Chuanjian <chuanjian@nfschina.com>

This is ACPICA code, so please submit changes against it to the
upstream ACPICA project on GitHub.  Thanks!

> diff --git a/tools/power/acpi/os_specific/service_layers/osunixxf.c b/tools/power/acpi/os_specific/service_layers/osunixxf.c
> index b3651a04d68c..a7e65fb95caf 100644
> --- a/tools/power/acpi/os_specific/service_layers/osunixxf.c
> +++ b/tools/power/acpi/os_specific/service_layers/osunixxf.c
> @@ -679,7 +679,7 @@ acpi_os_create_semaphore(u32 max_units,
>
>  acpi_status acpi_os_delete_semaphore(acpi_handle handle)
>  {
> -       sem_t *sem = (sem_t *) handle;
> +       sem_t *sem = handle;
>
>         if (!sem) {
>                 return (AE_BAD_PARAMETER);
> @@ -715,7 +715,7 @@ acpi_status
>  acpi_os_wait_semaphore(acpi_handle handle, u32 units, u16 msec_timeout)
>  {
>         acpi_status status = AE_OK;
> -       sem_t *sem = (sem_t *) handle;
> +       sem_t *sem = handle;
>         int ret_val;
>  #ifndef ACPI_USE_ALTERNATE_TIMEOUT
>         struct timespec time;
> @@ -832,7 +832,7 @@ acpi_os_wait_semaphore(acpi_handle handle, u32 units, u16 msec_timeout)
>
>  acpi_status acpi_os_signal_semaphore(acpi_handle handle, u32 units)
>  {
> -       sem_t *sem = (sem_t *) handle;
> +       sem_t *sem = handle;
>
>         if (!sem) {
>                 return (AE_BAD_PARAMETER);
> --
> 2.18.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
