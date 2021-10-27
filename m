Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1395843D0E0
	for <lists+devel-acpica@lfdr.de>; Wed, 27 Oct 2021 20:37:37 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E0F1A100EBB94;
	Wed, 27 Oct 2021 11:37:34 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.181; helo=mail-oi1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 12997100EF27E
	for <devel@acpica.org>; Wed, 27 Oct 2021 11:37:31 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id q129so4783604oib.0
        for <devel@acpica.org>; Wed, 27 Oct 2021 11:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hVPuTQqP6aEFqO2fyoc1su/oe5Az3LSwCS4uRf5/p08=;
        b=Ki0YEQNq6E8PkOxudAZyFO6bmFG71pOXCRcY6FHySOBuYrwzoF9b+iFiX3lT/cf6cq
         kmEyLv1TrUQ4K+M5Nax6Jkx5k2fGGemTBoQ8rEtlOcjw2Syt67EXQzrU2HGn9lchJRkI
         UHmforMM8f2TkDBU6d7H4H7JqigynQCgDuGIfCvwluxF0PF8rK8KBQP3NHY/VTiTR+mu
         KHPtb/JVaw+B/rBDXuFtm8tMTqlVB47IR5XarNC+xq+BunsEDIfMXow5luwrOK3+n38F
         hDLTz9ZqMebCrPMmT7+3qVRe5TLsxGcca/RplsGWrCkQXBUIEkY6+mU13K4iH4XSlGoe
         RK3Q==
X-Gm-Message-State: AOAM530J0aR0E2xyUFxOSGND6IosFRkM6eWb9H0XLsg65Lp96mUfY9vK
	oeYujfmJ9q0/Pwc9WwHeA4KOPt/teQ7PRLcsfXw=
X-Google-Smtp-Source: ABdhPJzutzJ7/Yj893mdq8no4/lj/5r4vF4oW8JGvIk2VWf04ta96JHBQadGGsCMKVkQFFaoWhZrYdUCMLWXmITeCQE=
X-Received: by 2002:aca:5c5:: with SMTP id 188mr4840138oif.154.1635359850793;
 Wed, 27 Oct 2021 11:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20211027065438.1742175-1-hch@lst.de>
In-Reply-To: <20211027065438.1742175-1-hch@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 27 Oct 2021 20:37:20 +0200
Message-ID: <CAJZ5v0jYmrV7bMV0b9wB8L-bX6PU+yCDrK8s+jCJh1x3xCi_Rg@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID-Hash: 7KBQYVQA3FOAS6EHO4IUIDKTMGSHXH66
X-Message-ID-Hash: 7KBQYVQA3FOAS6EHO4IUIDKTMGSHXH66
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: APEI: mark apei_hest_parse
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7KBQYVQA3FOAS6EHO4IUIDKTMGSHXH66/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 27, 2021 at 8:54 AM Christoph Hellwig <hch@lst.de> wrote:
>
> apei_hest_parse is only used in hest.c, so mark it static.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/acpi/apei/hest.c | 5 +++--
>  include/acpi/apei.h      | 3 ---
>  2 files changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/acpi/apei/hest.c b/drivers/acpi/apei/hest.c
> index 277f00b288d14..0edc1ed476737 100644
> --- a/drivers/acpi/apei/hest.c
> +++ b/drivers/acpi/apei/hest.c
> @@ -86,7 +86,9 @@ static int hest_esrc_len(struct acpi_hest_header *hest_hdr)
>         return len;
>  };
>
> -int apei_hest_parse(apei_hest_func_t func, void *data)
> +typedef int (*apei_hest_func_t)(struct acpi_hest_header *hest_hdr, void *data);
> +
> +static int apei_hest_parse(apei_hest_func_t func, void *data)
>  {
>         struct acpi_hest_header *hest_hdr;
>         int i, rc, len;
> @@ -121,7 +123,6 @@ int apei_hest_parse(apei_hest_func_t func, void *data)
>
>         return 0;
>  }
> -EXPORT_SYMBOL_GPL(apei_hest_parse);
>
>  /*
>   * Check if firmware advertises firmware first mode. We need FF bit to be set
> diff --git a/include/acpi/apei.h b/include/acpi/apei.h
> index 680f80960c3dc..ece0a8af2bae7 100644
> --- a/include/acpi/apei.h
> +++ b/include/acpi/apei.h
> @@ -37,9 +37,6 @@ void __init acpi_hest_init(void);
>  static inline void acpi_hest_init(void) { return; }
>  #endif
>
> -typedef int (*apei_hest_func_t)(struct acpi_hest_header *hest_hdr, void *data);
> -int apei_hest_parse(apei_hest_func_t func, void *data);
> -
>  int erst_write(const struct cper_record_header *record);
>  ssize_t erst_get_record_count(void);
>  int erst_get_record_id_begin(int *pos);
> --

Applied as 5.16 material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
