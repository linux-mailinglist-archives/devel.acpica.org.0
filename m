Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 440051964B4
	for <lists+devel-acpica@lfdr.de>; Sat, 28 Mar 2020 10:14:18 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1AD5010FC36F9;
	Sat, 28 Mar 2020 02:15:06 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.195; helo=mail-oi1-f195.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A46BA10FC3605
	for <devel@acpica.org>; Sat, 28 Mar 2020 02:15:03 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id y71so11054890oia.7
        for <devel@acpica.org>; Sat, 28 Mar 2020 02:14:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pKuq7d8jIrlk/0WIZMtVXkIzDVpSUtAwY67akVyTnGQ=;
        b=K2fo8xwH4G+Jyfg27pTs3AJRIrl+4fERIJpDKdki/bWheVnBFdxKWifMPiEC2y6Do6
         qtsbZsXggKxRk6jVHJ09+xDhL0MURv9rW6bD7o7rprj+lo5p4Xo6soHL526ctVVghrdZ
         YRmDgdA5F+duG1NCdBydLrReuqj61crbkbFRGeiNDEoZjvfwiEItI4srUkofh6qRSmq9
         Vhw6aQyDOGGCcMLeVbb1MGikUaJVSv6Mx9nUopkE2joIY6u2BR/cndC08yU15B89e7l1
         DZpCm2nCSYmIjkb9MYEHc4eEnfexjxA7zRizHdiddkaKR36cfnpAq4JTt9GQAp8+5AZR
         hrNw==
X-Gm-Message-State: ANhLgQ3KX9zAmTHdhz9RyXNC4A8o1451/C+6TNgU462FP06WBYSXGrUE
	xCYzL6c2+pDc0AZz/YYwBRT+8JUK4KUSTkfw3A4=
X-Google-Smtp-Source: ADFU+vsfJR2e/2aZ0DaWjMu+tQUrurQ6g1o3VVqYm7WMOdLXNBdUKFaJxhA5WPw5Gut1INgv2J6DN7h1qQGSWlRPcTw=
X-Received: by 2002:aca:f07:: with SMTP id 7mr1821111oip.68.1585386852511;
 Sat, 28 Mar 2020 02:14:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200328034706.17840-1-yuehaibing@huawei.com>
In-Reply-To: <20200328034706.17840-1-yuehaibing@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 28 Mar 2020 10:14:01 +0100
Message-ID: <CAJZ5v0ikZoo5bgrfUsGic7FTCZQu7m_EYLDH1LMcMGNwNjtvqw@mail.gmail.com>
To: YueHaibing <yuehaibing@huawei.com>, Robert Moore <robert.moore@intel.com>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: TCDUPLNBZ6G3DRLWLI6S4BDMFLI4NKW4
X-Message-ID-Hash: TCDUPLNBZ6G3DRLWLI6S4BDMFLI4NKW4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH -next] ACPICA: Make acpi_protocol_lengths static
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TCDUPLNBZ6G3DRLWLI6S4BDMFLI4NKW4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Mar 28, 2020 at 4:47 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix sparse warning:
>
> drivers/acpi/acpica/exfield.c:25:10: warning:
>  symbol 'acpi_protocol_lengths' was not declared. Should it be static?
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Bob, Erik, I'm leaving this one to you.

> ---
>  drivers/acpi/acpica/exfield.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/exfield.c b/drivers/acpi/acpica/exfield.c
> index e85eb31e5075..3323a2ba6a31 100644
> --- a/drivers/acpi/acpica/exfield.c
> +++ b/drivers/acpi/acpica/exfield.c
> @@ -22,7 +22,7 @@ ACPI_MODULE_NAME("exfield")
>   */
>  #define ACPI_INVALID_PROTOCOL_ID        0x80
>  #define ACPI_MAX_PROTOCOL_ID            0x0F
> -const u8 acpi_protocol_lengths[] = {
> +static const u8 acpi_protocol_lengths[] = {
>         ACPI_INVALID_PROTOCOL_ID,       /* 0 - reserved */
>         ACPI_INVALID_PROTOCOL_ID,       /* 1 - reserved */
>         0x00,                   /* 2 - ATTRIB_QUICK */
> --
> 2.17.1
>
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
