Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF18481E1D
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Dec 2021 17:32:08 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 102F2100EA11E;
	Thu, 30 Dec 2021 08:32:07 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.222.172; helo=mail-qk1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 62FA4100EB847
	for <devel@acpica.org>; Thu, 30 Dec 2021 08:32:04 -0800 (PST)
Received: by mail-qk1-f172.google.com with SMTP id w27so16985359qkj.7
        for <devel@acpica.org>; Thu, 30 Dec 2021 08:32:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SMR3MPLmeBapB7tPMkt4p+dub4AFSu/Ecw/CYlkb3Qg=;
        b=4sflX8N4Ep4zhFgqnPwHWXo8uj907RkNDTfht6g6rHGQMiuLM06+6Uda7DAOqvsjRO
         mYXUXOdpVznT620fyCoRPyzLQ2Sf/w8i5NxwvUfNxFE99NgjlvbRGJfJfJstoXOLOa62
         Z83sP+mkY16IkDIjPyaqNNNPbDwFZEsTZw+P+LXoDZC+AgOjPi5rzZjYDZX1HK+kcQMX
         7Xi23LznoCuLX+yCKPBL2oeonQMVzVKMZ/VvMV1sBe4Tw3fKBNGAFzM16qOa/9Y9OoLw
         xT91wb6VAvJuBnj+kJ25mseXUuSkyWw+v5EYPAIRaUFA0jb9nj7Vpz+5hFuP1AC1wyJh
         2r/g==
X-Gm-Message-State: AOAM531nIa4Ja3QGYcoRIHFZDYW1sat659RpmJyd3TjZ9EyYJpaW8yWw
	9Yl5KcPxout8UEaMPfkeFoeS/baoZ7fmFzW2AHM=
X-Google-Smtp-Source: ABdhPJzsKgoPVIRt1f1dGhol687DGA5SJ3uvWtKWwXyUEjSvbZ9NpgoMTPiBslL5ME5a+nsfvibwS/JBDv0D7eRoe9M=
X-Received: by 2002:a05:620a:4721:: with SMTP id bs33mr22857201qkb.8.1640881920167;
 Thu, 30 Dec 2021 08:32:00 -0800 (PST)
MIME-Version: 1.0
References: <20211229174058.11350-1-shenzijun@kylinos.cn>
In-Reply-To: <20211229174058.11350-1-shenzijun@kylinos.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Dec 2021 17:31:49 +0100
Message-ID: <CAJZ5v0jef5a=3w6bsh6CwEYixTwVgTaT6BBwYym3Sut6KToJsg@mail.gmail.com>
To: shenzijun <shenzijun@kylinos.cn>
Message-ID-Hash: V5XRGJX6WOFSNSQKAPLG2YKKCMWP4QGR
X-Message-ID-Hash: V5XRGJX6WOFSNSQKAPLG2YKKCMWP4QGR
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, jinzi120021@sina.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: DEBUGGER: Add return value check to acpi_db_walk_for_fields()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/V5XRGJX6WOFSNSQKAPLG2YKKCMWP4QGR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Dec 29, 2021 at 10:41 AM shenzijun <shenzijun@kylinos.cn> wrote:
>
> From: Zijun Shen <shenzijun@kylinos.cn>
>
> The function acpi_db_walk_for_fields frees buffer.pointer by the
> first ACPI_FREE. And then uses the second ACPI_FREE to free
> buffer.pointer which may assigns again in acpi_evaluate_object.
> It's necessary to make sure that buffer.pointer get a block of
> memory in acpi_evaluate_object and acpi_evaluate_object return 0.
>
> Signed-off-by: Zijun Shen <shenzijun@kylinos.cn>
> ---
>  drivers/acpi/acpica/dbnames.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/dbnames.c b/drivers/acpi/acpica/dbnames.c
> index 3615e1a6efd8..7a2d980cb2b8 100644
> --- a/drivers/acpi/acpica/dbnames.c
> +++ b/drivers/acpi/acpica/dbnames.c
> @@ -550,7 +550,10 @@ acpi_db_walk_for_fields(acpi_handle obj_handle,
>         ACPI_FREE(buffer.pointer);
>
>         buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;
> -       acpi_evaluate_object(obj_handle, NULL, NULL, &buffer);
> +       status = acpi_evaluate_object(obj_handle, NULL, NULL, &buffer);
> +       if (ACPI_FAILURE(status)) {
> +               return (AE_OK);
> +       }
>
>         /*
>          * Since this is a field unit, surround the output in braces
> --


This is ACPICA material, so please submit it to the upstream ACPICA
project via https://github.com/acpica/acpica/

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
