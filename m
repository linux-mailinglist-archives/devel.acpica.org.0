Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F293C4A4EE7
	for <lists+devel-acpica@lfdr.de>; Mon, 31 Jan 2022 19:51:17 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D3640100F2245;
	Mon, 31 Jan 2022 10:51:15 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.178; helo=mail-yb1-f178.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 74AB3100EBB98
	for <devel@acpica.org>; Mon, 31 Jan 2022 10:51:13 -0800 (PST)
Received: by mail-yb1-f178.google.com with SMTP id i10so43407277ybt.10
        for <devel@acpica.org>; Mon, 31 Jan 2022 10:51:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C9elPeCurEKfBJHZDKjGhZVFvClsJXI5gGke2sVJMJc=;
        b=aUv+7GHjWGtO5xeEk9z/1wYVBUrfK0XJIY85C/zj/zVfBj/CAnhDdYZbPQri6emW0W
         7II/Tl6rO0Onq+YjKD2M6GyXIMpJI9YB8SS914tt+zegf1Dn6gi4rkjiPXkHkenk1b0D
         ex0Z/BD3IGq9gzykgSaM9l/YfyhLa5K/cA0AHgt0IpXSRpZTzTfeqAAubWnhKj5TI9FL
         /0HQY+3DBPCGi21EayoaCrlxBeeaiNAy6meWDCRMZ8wjeUq8wrlH7GnJjrkpDOEQb1YF
         h2gwdx0ApfggSuoJJoqdh8JTqgFfs1THNMX+5axnTwcBVYhuXMte0IvpVCy7DS7SPdjd
         3aZQ==
X-Gm-Message-State: AOAM5310MKRfo94BEGu82F9BcG3CxdWA+WZwZa4Hrq3W5OL2T4FAWA/t
	bbWe04vjaJM4j3AI9UAKVFGNHqM2qrTf79mxgMs=
X-Google-Smtp-Source: ABdhPJxJ8wSGW1W6Abc0F3zUPNSQyR+J6M9pEZwLaKO0V7/UUGGjFWaidDtzjEOhSnmVTS0yKoO/9pPaZBkCFTVbIsM=
X-Received: by 2002:a25:c102:: with SMTP id r2mr34056787ybf.330.1643655072465;
 Mon, 31 Jan 2022 10:51:12 -0800 (PST)
MIME-Version: 1.0
References: <20220131133337.1556355-1-trix@redhat.com>
In-Reply-To: <20220131133337.1556355-1-trix@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 31 Jan 2022 19:51:00 +0100
Message-ID: <CAJZ5v0g5Xxd9kBPUdsC6D4fVHfZafKiGgkTONo2mpqvfgoFDgw@mail.gmail.com>
To: Tom Rix <trix@redhat.com>
Message-ID-Hash: NSE45CEPZO4VG3LA32JQTXOVFMFSC6QG
X-Message-ID-Hash: NSE45CEPZO4VG3LA32JQTXOVFMFSC6QG
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: cleanup double word in comment
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NSE45CEPZO4VG3LA32JQTXOVFMFSC6QG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 31, 2022 at 2:33 PM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> Remove the second 'know'.
>
> Signed-off-by: Tom Rix <trix@redhat.com>

This is ACPICA material, so it needs to be submitted to the upstream
project via https://github.com/acpica/acpica/

Also, it would be good to combine all of the analogous changes in one patch.

> ---
>  drivers/acpi/acpica/exfldio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c
> index bdc7a30d1217c..b92605df3872c 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -104,7 +104,7 @@ acpi_ex_setup_region(union acpi_operand_object *obj_desc,
>  #ifdef ACPI_UNDER_DEVELOPMENT
>         /*
>          * If the Field access is any_acc, we can now compute the optimal
> -        * access (because we know know the length of the parent region)
> +        * access (because we know the length of the parent region)
>          */
>         if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
>                 if (ACPI_FAILURE(status)) {
> --
> 2.26.3
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
