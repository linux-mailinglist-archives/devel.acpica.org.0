Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F00F0481E19
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Dec 2021 17:31:12 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E66C8100EA11C;
	Thu, 30 Dec 2021 08:31:03 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.222.181; helo=mail-qk1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2C122100EB847
	for <devel@acpica.org>; Thu, 30 Dec 2021 08:31:01 -0800 (PST)
Received: by mail-qk1-f181.google.com with SMTP id b85so23110888qkc.1
        for <devel@acpica.org>; Thu, 30 Dec 2021 08:31:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9LlQF8MrlSTCG8lhWUSBO1XvMJHfGDeoUE+4aAQrtQA=;
        b=soyGFaHNB5ym2s7TMu2j+FwcFCC1l/aBfLtLQd5hMLh7z4VNLwEjtUgp2pi27fiqMO
         +vYa+WRboQ0rIix9PHlsHqT9FtYZuI9WfgngQqSJhcUviFprDb+qYCe/KzJivzRUV5XF
         o9fLNMGJG2T2qbrZc/s90qDKFKhVlFRlxXEf3j8xoeS5YSspAWGLVAS2xM7QOVmOneuR
         Wck65Ze+/w5RMVvBkev5+Zaoimcgg96Lpba5E94Y2dRgx1m4x+o1LNHDmxorCWUwZarj
         cEoYK43FUv7u/kHDWkSZtcvE/rnnSHkVtPwpuPdqFCmEZ3UtT+DbrglPWo3oLScfnTT/
         XpQQ==
X-Gm-Message-State: AOAM531Jvi38AIWaC+6U00oI+7vzsKuonzA2Rts3rRGgN3M0PBEmXQEf
	XxWyJgEh34mwtO5JzdoKJsyQ28H2KS1s85gbSq8=
X-Google-Smtp-Source: ABdhPJwZPzCkL7MZH2MxAuFHP7hcaxGDZlNeR97Vr+vof5HsOVtkbRnoKbJ+gekALjs8/TanT8I5JJOjGq25l1T2mrs=
X-Received: by 2002:a05:620a:2001:: with SMTP id c1mr21983180qka.374.1640881859812;
 Thu, 30 Dec 2021 08:30:59 -0800 (PST)
MIME-Version: 1.0
References: <20211224091458.693093-1-yinxiujiang@kylinos.cn>
In-Reply-To: <20211224091458.693093-1-yinxiujiang@kylinos.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Dec 2021 17:30:48 +0100
Message-ID: <CAJZ5v0j1+p8E+BF_Ekmenpp+9WG7b3k5Y7YjyJzi7e+K1Nv2NQ@mail.gmail.com>
To: Yin Xiujiang <yinxiujiang@kylinos.cn>
Message-ID-Hash: 7VG52OVNAAN6PPPY6M7MRCF4ELKZTKFT
X-Message-ID-Hash: 7VG52OVNAAN6PPPY6M7MRCF4ELKZTKFT
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Remove initialization of static variables to 0
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7VG52OVNAAN6PPPY6M7MRCF4ELKZTKFT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Dec 24, 2021 at 10:15 AM Yin Xiujiang <yinxiujiang@kylinos.cn> wrote:
>
> Remove the initialization of three static variables to 0 which is
> pointless
>
> Signed-off-by: Yin Xiujiang <yinxiujiang@kylinos.cn>
> ---
>  drivers/acpi/acpica/dbhistry.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dbhistry.c b/drivers/acpi/acpica/dbhistry.c
> index fd813c5d3952..60b77b11c0f2 100644
> --- a/drivers/acpi/acpica/dbhistry.c
> +++ b/drivers/acpi/acpica/dbhistry.c
> @@ -24,9 +24,9 @@ typedef struct history_info {
>  } HISTORY_INFO;
>
>  static HISTORY_INFO acpi_gbl_history_buffer[HISTORY_SIZE];
> -static u16 acpi_gbl_lo_history = 0;
> -static u16 acpi_gbl_num_history = 0;
> -static u16 acpi_gbl_next_history_index = 0;
> +static u16 acpi_gbl_lo_history;
> +static u16 acpi_gbl_num_history;
> +static u16 acpi_gbl_next_history_index;
>
>  /*******************************************************************************
>   *
> --

This is ACPICA material, so please submit it to the upstream ACPICA
project via https://github.com/acpica/acpica/

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
