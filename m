Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB91C49EB72
	for <lists+devel-acpica@lfdr.de>; Thu, 27 Jan 2022 20:58:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DF85C100EAB0D;
	Thu, 27 Jan 2022 11:58:53 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.179; helo=mail-yb1-f179.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A9E78100EB846
	for <devel@acpica.org>; Thu, 27 Jan 2022 11:58:51 -0800 (PST)
Received: by mail-yb1-f179.google.com with SMTP id 23so12013719ybf.7
        for <devel@acpica.org>; Thu, 27 Jan 2022 11:58:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JU0YS/R/EoprgrYZtkZ8RlkD/FefqeQsRVRgpn1yuvU=;
        b=JDJGz0U/cHp/cwu+6E9htGCH9CCVjKQ7TL5U3Bcs7bEgMPTLZqlmBZg1DaYuJKHXaP
         JNgJUCjW1v3IWGR/bvqMgDrLKCvcumfEgwkMSxyWnht4bAuNbk9fgs89S4XkJdhsFyv9
         vtggsFAwsXBqzbaYJX0SvMAOIk4XyzZMh/cfaZGkOYmstdeGMMAq7o/v2ub7+5b2HQws
         J+e/87QeEN076C4x/xtHOwbpdlRXTb8QNJ08imZJ4ybpNcDZtL25gdbwQAIT27vE/3iw
         vPV9H7HzeLaX53zPuCJ9HMnwqb+snfxcZqYp5tglYqYa96EzU1Kmokeyt3NxTP+/eVy+
         bNSw==
X-Gm-Message-State: AOAM533AoJcOh+t5p/+GIaWYnRWi5dL/LvmkftbP4TawJkEEqKcswpCn
	H9MWsDmsyVZi09UXbsUiVvv4kFAhd4YUFHHsFyk=
X-Google-Smtp-Source: ABdhPJyz77nvWofsixr5tBR8EvQ9OmH8a4W5IGTBg9xpuKoTd8vpYKqyYrvVybZ5UficWnOVaRv+dlsHu84LGDJiqww=
X-Received: by 2002:a25:2ac3:: with SMTP id q186mr7895749ybq.272.1643313530606;
 Thu, 27 Jan 2022 11:58:50 -0800 (PST)
MIME-Version: 1.0
References: <20220124164014.51658-1-zhou1615@umn.edu>
In-Reply-To: <20220124164014.51658-1-zhou1615@umn.edu>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 27 Jan 2022 20:58:39 +0100
Message-ID: <CAJZ5v0iVEQVMn4K6007jUaiJ1CNhaCTePhLSBrX=mONswM98-g@mail.gmail.com>
To: Zhou Qingyang <zhou1615@umn.edu>
Message-ID-Hash: 2M7234D4TER2NBQBKUCICQHL2F5W2CIV
X-Message-ID-Hash: 2M7234D4TER2NBQBKUCICQHL2F5W2CIV
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kangjie Lu <kjlu@umn.edu>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Lv Zheng <lv.zheng@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Linuxize: Fix a NULL pointer dereference in acpi_db_convert_to_package()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2M7234D4TER2NBQBKUCICQHL2F5W2CIV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 24, 2022 at 5:45 PM Zhou Qingyang <zhou1615@umn.edu> wrote:
>
> In acpi_db_convert_to_package(), the variable elements is assigned by
> ACPI_ALLOCATE_ZEROED() and passes its address to
> acpi_db_convert_to_object(). In that function we may have a dereference
> of elements without checks. ACPI_ALLOCATE_ZEROED() would return NULL on
> failure, which may lead to NULL pointer dereference.
>
> Fix this bug by adding a NULL check of elements.
>
> This bug was found by a static analyzer.
>
> Builds with 'make allyesconfig' show no new warnings,
> and our static analyzer no longer warns about this code.
>
> Fixes: 995751025572 ("ACPICA: Linuxize: Export debugger files to Linux")
> Signed-off-by: Zhou Qingyang <zhou1615@umn.edu>

This is ACPICA material and so it should be submitted as a change
against the upstream code via https://github.com/acpica/acpica

Thanks!

> ---
> The analysis employs differential checking to identify inconsistent
> security operations (e.g., checks or kfrees) between two code paths
> and confirms that the inconsistent operations are not recovered in the
> current function or the callers, so they constitute bugs.
>
> Note that, as a bug found by static analysis, it can be a false
> positive or hard to trigger. Multiple researchers have cross-reviewed
> the bug.
>
>  drivers/acpi/acpica/dbconvert.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/acpi/acpica/dbconvert.c b/drivers/acpi/acpica/dbconvert.c
> index 2b84ac093698..8dbab6932049 100644
> --- a/drivers/acpi/acpica/dbconvert.c
> +++ b/drivers/acpi/acpica/dbconvert.c
> @@ -174,6 +174,8 @@ acpi_status acpi_db_convert_to_package(char *string, union acpi_object *object)
>         elements =
>             ACPI_ALLOCATE_ZEROED(DB_DEFAULT_PKG_ELEMENTS *
>                                  sizeof(union acpi_object));
> +       if (!elements)
> +               return (AE_NO_MEMORY);
>
>         this = string;
>         for (i = 0; i < (DB_DEFAULT_PKG_ELEMENTS - 1); i++) {
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
