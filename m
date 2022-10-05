Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B0C5F5668
	for <lists+devel-acpica@lfdr.de>; Wed,  5 Oct 2022 16:28:56 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id EE394100EA2C8;
	Wed,  5 Oct 2022 07:28:54 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.52; helo=mail-qv1-f52.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7889C100F2257
	for <devel@acpica.org>; Wed,  5 Oct 2022 07:28:53 -0700 (PDT)
Received: by mail-qv1-f52.google.com with SMTP id i9so7050642qvu.1
        for <devel@acpica.org>; Wed, 05 Oct 2022 07:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N8pI7I5ab+a4QOVLrKQ1YzAPtKgXmSNDakBuY0ksuEA=;
        b=YaFq3Qrqvm4jDpdiQTFOywbZxVw7hNAihSKblW/VmvI6A9mkVV+i2qKXqlxMzAmfmw
         +dmd6vJJXqrUpGstG0NK3R2/Zuw9DGzDX+HqD5e2tB9+DwT9JAjhncm6Tmz4ngyJ0QYb
         ++xkvEhG2Vke90eKFcxwuuCyZEk1rh+TcYEkQ8cq1IoFA7ETFKFCHl9LjCeF/xbUeRtm
         cpdbe4++V1Iv5SSLPdk6V/G1u+MCxQKOQQ5QfrGTJ/RPt0nsZxTBKueaaHnlKPWw6orr
         ijQXWxG9GsH7YXXGgWvPzPwtJOvMNLHMU/at8w1SkxnBp4Bv+ZkrLfitLSTa+HnDPyE3
         rhrw==
X-Gm-Message-State: ACrzQf1sd9uadUNuOCUaVa7y1SOGVObwf9EJNqMWuS/RrxaIMbEor8tV
	J8cIA6XHOfl/hR/SztWEaLynM6XBro2n5LwAq0w=
X-Google-Smtp-Source: AMsMyM6T4AWz57OQSM9v2w7c8FKyTzATT5fhysEUhzNONmaQ1KdUJgfpDRxCXovL52Dy02H9+OsHv1DN6o8NvZ1Hb2c=
X-Received: by 2002:a0c:ac49:0:b0:4b1:ccd5:6bd6 with SMTP id
 m9-20020a0cac49000000b004b1ccd56bd6mr112721qvb.130.1664980131980; Wed, 05 Oct
 2022 07:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <20221004230541.449243-1-Ashish.Kalra@amd.com>
In-Reply-To: <20221004230541.449243-1-Ashish.Kalra@amd.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 5 Oct 2022 16:28:40 +0200
Message-ID: <CAJZ5v0h72L+U60=fBK5LOaNr5bCj9ukwcW8Pn2CCgx0jt1e1Kw@mail.gmail.com>
To: Ashish Kalra <Ashish.Kalra@amd.com>
Message-ID-Hash: 4ORXU4OQNWU3BS3HFT25D53OHPRRBU3C
X-Message-ID-Hash: 4ORXU4OQNWU3BS3HFT25D53OHPRRBU3C
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: rafael@kernel.org, tony.luck@intel.com, bp@alien8.de, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: APEI: Fix num_ghes to unsigned int
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4ORXU4OQNWU3BS3HFT25D53OHPRRBU3C/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 5, 2022 at 1:06 AM Ashish Kalra <Ashish.Kalra@amd.com> wrote:
>
> From: Ashish Kalra <ashish.kalra@amd.com>
>
> Change num_ghes from int to unsigned int, preventing an overflow
> and causing subsequent vmalloc to fail.

So do you have a system where int is not sufficient?

> Signed-off-by: Ashish Kalra <ashish.kalra@amd.com>
> ---
>  drivers/acpi/apei/ghes.c | 2 +-
>  include/acpi/ghes.h      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> index d91ad378c00d..6d7c202142a6 100644
> --- a/drivers/acpi/apei/ghes.c
> +++ b/drivers/acpi/apei/ghes.c
> @@ -163,7 +163,7 @@ static void ghes_unmap(void __iomem *vaddr, enum fixed_addresses fixmap_idx)
>         clear_fixmap(fixmap_idx);
>  }
>
> -int ghes_estatus_pool_init(int num_ghes)
> +int ghes_estatus_pool_init(unsigned int num_ghes)
>  {
>         unsigned long addr, len;
>         int rc;
> diff --git a/include/acpi/ghes.h b/include/acpi/ghes.h
> index 34fb3431a8f3..292a5c40bd0c 100644
> --- a/include/acpi/ghes.h
> +++ b/include/acpi/ghes.h
> @@ -71,7 +71,7 @@ int ghes_register_vendor_record_notifier(struct notifier_block *nb);
>  void ghes_unregister_vendor_record_notifier(struct notifier_block *nb);
>  #endif
>
> -int ghes_estatus_pool_init(int num_ghes);
> +int ghes_estatus_pool_init(unsigned int num_ghes);
>
>  /* From drivers/edac/ghes_edac.c */
>
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
