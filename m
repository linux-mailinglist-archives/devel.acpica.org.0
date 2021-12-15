Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E83954758B0
	for <lists+devel-acpica@lfdr.de>; Wed, 15 Dec 2021 13:18:19 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D649C100F3FAD;
	Wed, 15 Dec 2021 04:18:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.48; helo=mail-oo1-f48.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f48.google.com (unknown [209.85.161.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6C0CB100F2274
	for <devel@acpica.org>; Wed, 15 Dec 2021 04:18:15 -0800 (PST)
Received: by mail-oo1-f48.google.com with SMTP id e17-20020a4a8291000000b002c5ee0645e7so5862396oog.2
        for <devel@acpica.org>; Wed, 15 Dec 2021 04:18:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3XfuAuI8r8gMaaT/FK+NBfoQJrnloschflDHzdC5Epg=;
        b=JOt/OLoskD85ihR9OytPXCrkM+95fuB1ruF7u7rwStbY4Nt2uhQrRDl8QmBJnGUYV5
         fbmaYLy2JaLQfS7Z5npklQWFun41oS6lWqZgJB78jvANt4bajk8NMoIcOqeo8hfibx/6
         8LK+x8i9ARyz60aGrqpVTHncRXdwkVtFjxelDzvAxElZDyj8vqkNl5PLQILzDmqOsTKx
         P+ceiOorQIeEjSkM3lIqUpjogUGjyMf8ISMeuwUQQxn6iZUhso2P3GkAkBRkwqiwSFDi
         +NCQcFYEqTx8L5GEk1+fVHuit1shA24YtEPLnVbZoCo/vAU4aNnLScwDLLuqEYrejqSn
         P83w==
X-Gm-Message-State: AOAM533eU+rRswnX7E6ei4s+g9moqqNe04DDrnWe5mqTq+gdMbyQkoR9
	8NpeMBw4BGrN24mW+Ruc3AJQQlNI5FDVl9bGlY0=
X-Google-Smtp-Source: ABdhPJwumDoqqi/fTVhsrj0sGJloO+psYXPTBFmlg4pq4svwED4dTqZ4uQlNYP9XVfPRwUiwGOjtmCwUO6v7+eFxY6o=
X-Received: by 2002:a4a:1d82:: with SMTP id 124mr6908688oog.91.1639570684529;
 Wed, 15 Dec 2021 04:18:04 -0800 (PST)
MIME-Version: 1.0
References: <20211214044036.48245-1-ilkka@os.amperecomputing.com> <20211214044036.48245-2-ilkka@os.amperecomputing.com>
In-Reply-To: <20211214044036.48245-2-ilkka@os.amperecomputing.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 15 Dec 2021 13:17:53 +0100
Message-ID: <CAJZ5v0jiLfL0k12y5RZ+9LjLqiBMPqRHrqNQGqQ5Le2yOv7QWQ@mail.gmail.com>
To: Ilkka Koskinen <ilkka@os.amperecomputing.com>
Message-ID-Hash: 4LA3YMFVBOIARSKGFF4E7322SNU7UGEU
X-Message-ID-Hash: 4LA3YMFVBOIARSKGFF4E7322SNU7UGEU
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Russell King - ARM Linux <linux@armlinux.org.uk>, "Rafael J. Wysocki" <rafael@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, patches@amperecomputing.com, scott@os.amperecomputing.com, darren@os.amperecomputing.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/2] ACPI: AGDI: Add AGDI tables to drivers/acpi
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4LA3YMFVBOIARSKGFF4E7322SNU7UGEU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 14, 2021 at 5:41 AM Ilkka Koskinen
<ilkka@os.amperecomputing.com> wrote:
>
> ACPI for Arm Components 1.1 Platform Design Document v1.1 [0] specifices
> Arm Generic Diagnostic Device Interface (AGDI). It allows an admin to
> issue diagnostic dump and reset via an SDEI event or an interrupt. This
> patch adds support to ACPI/AGDI tables.
>
> [0] https://developer.arm.com/documentation/den0093/latest/
>
> Signed-off-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>
> ---
>  drivers/acpi/tables.c |  2 +-
>  include/acpi/actbl2.h | 20 ++++++++++++++++++++
>  2 files changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/tables.c b/drivers/acpi/tables.c
> index 71419eb16e09..5e3169bcb9fb 100644
> --- a/drivers/acpi/tables.c
> +++ b/drivers/acpi/tables.c
> @@ -500,7 +500,7 @@ static const char table_sigs[][ACPI_NAMESEG_SIZE] __initconst = {
>         ACPI_SIG_WDDT, ACPI_SIG_WDRT, ACPI_SIG_DSDT, ACPI_SIG_FADT,
>         ACPI_SIG_PSDT, ACPI_SIG_RSDT, ACPI_SIG_XSDT, ACPI_SIG_SSDT,
>         ACPI_SIG_IORT, ACPI_SIG_NFIT, ACPI_SIG_HMAT, ACPI_SIG_PPTT,
> -       ACPI_SIG_NHLT };
> +       ACPI_SIG_NHLT, ACPI_SIG_AGDI };
>
>  #define ACPI_HEADER_SIZE sizeof(struct acpi_table_header)
>
> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> index 71ca090fd61b..66ca85b9f5fe 100644
> --- a/include/acpi/actbl2.h
> +++ b/include/acpi/actbl2.h

The changes in actbl2.h are ACPICA material and so they need to be
routed through the upstream ACPICA project.

Moreover, you have already submitted a pull request with them to the
upstream: https://github.com/acpica/acpica/pull/737/commits/cf36a6d658ca5aa8c329c2edfc3322c095ffd844

Please wait until this gets integrated and repost the rest of the
patches as incremental changes on top of that.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
