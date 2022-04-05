Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 352D24F332E
	for <lists+devel-acpica@lfdr.de>; Tue,  5 Apr 2022 15:14:44 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AA358100E6B8B;
	Tue,  5 Apr 2022 06:14:41 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.178; helo=mail-yb1-f178.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BFE46100F47B7
	for <devel@acpica.org>; Tue,  5 Apr 2022 06:14:39 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id o62so8223169ybo.2
        for <devel@acpica.org>; Tue, 05 Apr 2022 06:14:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zvOaH0ER71tusCcIPLqQC4dJdJu4fGW+h9h/KwcZ8Y8=;
        b=MgGyf2MkkogJwu81JJYWrxj+aBug5v+xxHkGGrC1rk2UjADP/E81bUsR26vkGzlbk/
         bnX/vy8AnZ6vPGaGpkjJd7ttHJ6N1TcOFqEEplCUSutRUbygDbsOQFppK0P9ay7Rxe8n
         526ZMEY64hNdIPjL4LjwPj7r1Z018vdozwTx/yo+FyRBfw7lCsXjZXT4Us00dDUUDSx1
         RuSjoplLdVJUDEjdS6uP69Bx+xJICWLKjsuBjcdjilV88mTrDUGgVFaD94ClFx98Citd
         8Jox68Lh61C/nBX6iAMKosH0rWpYqTqnmldULLGI0lt+gvfsvZs+rVS7LG6AhiFGeR4t
         N3lQ==
X-Gm-Message-State: AOAM532LxELwyeTLSi8Y4mNh8y/PG+RY/9OyckXt0UbfU01OB6PGM9pb
	Cfu41NABEwD3JZBa2On5DJ0hKPgqUhAxq3+9guE=
X-Google-Smtp-Source: ABdhPJyQFt/MP1BpjrApObfcj1Gi1R/qyxjxsm0AbmN2lntNyuWJq9z9W/qYAInQcwlCtizabIjuuzArYHpSytEd7cM=
X-Received: by 2002:a05:6902:1544:b0:63d:d3a7:8cc4 with SMTP id
 r4-20020a056902154400b0063dd3a78cc4mr2540036ybu.622.1649164478907; Tue, 05
 Apr 2022 06:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1647525033.git.vit@kabele.me> <YjM/6rqxZN19en2I@czspare1-lap.sysgo.cz>
In-Reply-To: <YjM/6rqxZN19en2I@czspare1-lap.sysgo.cz>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 5 Apr 2022 15:14:27 +0200
Message-ID: <CAJZ5v0iSCrU3AeEaTxVkbma_0Wi9LPPRiP_NbmuAgDOeDS9c0g@mail.gmail.com>
To: platform-driver-x86@kernel.org, r.marek@assembler.cz,
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Ingo Molnar <mingo@redhat.com>,
	Robert Moore <robert.moore@intel.com>, linux-kernel@kernel.org,
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>
Message-ID-Hash: OXPL2PJTJGPVYR7GOMDLSOAERF2HDASD
X-Message-ID-Hash: OXPL2PJTJGPVYR7GOMDLSOAERF2HDASD
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: vit@kabele.me
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 2/3] acpica: Check that the EBDA pointer is in valid range
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OXPL2PJTJGPVYR7GOMDLSOAERF2HDASD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 17, 2022 at 3:12 PM Vit Kabele <vit@kabele.me> wrote:
>
> If the memory at 0x40e is uninitialized, the retrieved physical_memory
> address of EBDA may be beyond the low memory (i.e. above 640K).
>
> If so, the kernel may unintentionally access the VGA memory, that
> might not be decoded or even present in case of virtualization.
>
> Signed-off-by: Vit Kabele <vit@kabele.me>
> Reviewed-by: Rudolf Marek <r.marek@assembler.cz>
> ---
>  drivers/acpi/acpica/tbxfroot.c | 7 +++++--

Changes in the ACPICA code need to be submitted to the upstream ACPICA
project via https://github.com/acpica/acpica and they are pulled from
there into the kernel.

Of course, this applies to the next patch in the series too.

>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/acpi/acpica/tbxfroot.c b/drivers/acpi/acpica/tbxfroot.c
> index 9fec3df6c3ba..67b7df1c0520 100644
> --- a/drivers/acpi/acpica/tbxfroot.c
> +++ b/drivers/acpi/acpica/tbxfroot.c
> @@ -138,8 +138,11 @@ acpi_find_root_pointer(acpi_physical_address *table_address)
>         acpi_os_unmap_memory(table_ptr, ACPI_EBDA_PTR_LENGTH);
>
>         /* EBDA present? */
> -
> -       if (physical_address > 0x400) {
> +       /* Check that the EBDA pointer from 0x40e is sane and does not point
> +        * above valid low memory
> +        */
> +       if (physical_address > 0x400 &&
> +           physical_address < 0xA0000) {
>                 /*
>                  * 1b) Search EBDA paragraphs (EBDA is required to be a
>                  *     minimum of 1K length)
> --
> 2.30.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
