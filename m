Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E0D425915
	for <lists+devel-acpica@lfdr.de>; Thu,  7 Oct 2021 19:15:00 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CE49F100EA2A6;
	Thu,  7 Oct 2021 10:14:57 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.42; helo=mail-ot1-f42.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 48AF7100EA2A4
	for <devel@acpica.org>; Thu,  7 Oct 2021 10:14:55 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id l7-20020a0568302b0700b0054e40740571so2620948otv.0
        for <devel@acpica.org>; Thu, 07 Oct 2021 10:14:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o3T+99c1VzdeIyWusVw2Hmd834PbhCd+xwBC9PQfBAU=;
        b=TSJEPTX6br8rMjSlmJZBpQopWgnZ/ugouxd8k+HxiuDOpUtjfU37V+sbwiIdwnYXFp
         7iX2N2lD5MWKQJPL+pJ0ypwCesLEbxwIRF3jFzCs5Gjfw4O2af37IBhMM0TrRx3Uwh6O
         0DzTWh7ywyoCMjWaoHOOGLFnQyhE1ksglJINdEG2cK+QVmFyg+9KnkASbT7hD5SYneKq
         0XldkMAzVdKc61GdlzRKGxvQSzWLM/DsrgWa0NZ3UJ/nELfPPQqDTfAM9/Fp1SumJTVZ
         zDfBy/6w/KU9hfSKTNwaMEXyQ87wVzlP9o29y6S5YgB6xl8edP78CRz5TxFgwmI3CXBZ
         49PA==
X-Gm-Message-State: AOAM533rGj1g4vamJ9+78Dvh6hjpdjrkm7XaFD1cpX8yc3J57OCiwWmO
	IH1e0fY+E/Naf/Vi8nt0YJZO0NPkLtFuChkUAO0=
X-Google-Smtp-Source: ABdhPJzPyc5/odlg3KjW2vM3IxGJxxUY7A2LQ1173rtZ7uvV+MchTgq6oN7E52MCLQ63VXxcwWhf/yUYCdwcF3wla6I=
X-Received: by 2002:a9d:3783:: with SMTP id x3mr4690364otb.16.1633626894283;
 Thu, 07 Oct 2021 10:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20211006113745.60186-1-sohaib.amhmd@gmail.com>
In-Reply-To: <20211006113745.60186-1-sohaib.amhmd@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 7 Oct 2021 19:14:43 +0200
Message-ID: <CAJZ5v0jzmGWR82zfpGjd2K_YfvzS_ktVeq6oX-p=tx9OXjOTxA@mail.gmail.com>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Message-ID-Hash: JMMZCPJEK3GUOMJLBM4JGD2YP4IUPYLF
X-Message-ID-Hash: JMMZCPJEK3GUOMJLBM4JGD2YP4IUPYLF
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: drop unneeded initialization value
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JMMZCPJEK3GUOMJLBM4JGD2YP4IUPYLF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 6, 2021 at 1:37 PM Sohaib Mohamed <sohaib.amhmd@gmail.com> wrote:
>
> Do not initialise statics to 0
>
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
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

Please submit ACPICA changes like this to the upstream ACPICA project
as per MAINTANIERS.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
