Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 653241ED075
	for <lists+devel-acpica@lfdr.de>; Wed,  3 Jun 2020 15:04:41 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0EE5B100A6415;
	Wed,  3 Jun 2020 05:59:42 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.68; helo=mail-ot1-f68.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 32260100A6411
	for <devel@acpica.org>; Wed,  3 Jun 2020 05:59:40 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id m2so1750136otr.12
        for <devel@acpica.org>; Wed, 03 Jun 2020 06:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mtOO6Yo260XklTIiQiIWZ9Yju2CBqUc60RE+A6Pm0rA=;
        b=MGCP1+Xqoy0cBM2t7tMHeCNY/POVsFAifDGKbx0f5PiyVM2rhNOLBzWQg+OCfu5ul1
         n78VFCtyJmLuM9tADf3drzKXx5CPIubrs2rB4B+x1j1K3mdi1V7n8bTvhLb4UdeaolYs
         upp96lSuQUMxJ+VUvYMQhMg9kj71WtfPSvqFy7ssiuqbORjNr/591gEvblHQEpLgxQ9+
         qd8/BtScGLFIA8q5eveH3GlzhW9tEqygidHE92PIrheg4Z+97PJtuWidO4ewnKGRHg/K
         8vDZv27KEUp72JG7IKvmaPYdWO9Ne//EXYFERYdHrLkiSfC833oZfilV7t1+N8K1WUnu
         k3UQ==
X-Gm-Message-State: AOAM5334B/ibqOgxqkcbE1rzvnvfbUHbTXVpS7MAvgaMyZB9/utKsnMJ
	EueczQj3VT6HSpu+lAstPzEXQ6isZ9av8CHnbsA=
X-Google-Smtp-Source: ABdhPJx6us0pFTQb1gEUp5d/XmC4NV4kLDXSTNS709oXzUeSi+wWrPvST03n9hKL6tqPxXn6XgkrYN3yNPjvQvMtKmw=
X-Received: by 2002:a9d:6c0f:: with SMTP id f15mr2995408otq.118.1591189476842;
 Wed, 03 Jun 2020 06:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200602213958.GA32150@embeddedor>
In-Reply-To: <20200602213958.GA32150@embeddedor>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Jun 2020 15:04:22 +0200
Message-ID: <CAJZ5v0hd87G055A+ezkyF+UJQAeBvozFCvoC2Fxa1o-5YXrEhg@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: Z67TKVLXEO7MGBE7BN26YF2NHZKQI4NU
X-Message-ID-Hash: Z67TKVLXEO7MGBE7BN26YF2NHZKQI4NU
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] ACPICA: Replace one-element array with flexible-array
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Z67TKVLXEO7MGBE7BN26YF2NHZKQI4NU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jun 2, 2020 at 11:34 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> The current codebase makes use of one-element arrays in the following
> form:
>
> struct something {
>     int length;
>     u8 data[1];
> };
>
> struct something *instance;
>
> instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
> instance->length = size;
> memcpy(instance->data, source, size);
>
> but the preferred mechanism to declare variable-length types such as
> these ones is a flexible array member[1][2], introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
>
> This issue was found with the help of Coccinelle and audited _manually_.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Erik, can you take this to the upstream, please?

> ---
> Changes in v2:
>  - Don't use struct_size() for now.
>  - Update subject line and changelog text.
>
>  drivers/acpi/acpica/utids.c | 2 +-
>  include/acpi/actypes.h      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/acpi/acpica/utids.c b/drivers/acpi/acpica/utids.c
> index 3bb06935a2ad3..225f3c60203c7 100644
> --- a/drivers/acpi/acpica/utids.c
> +++ b/drivers/acpi/acpica/utids.c
> @@ -263,7 +263,7 @@ acpi_ut_execute_CID(struct acpi_namespace_node *device_node,
>          * 3) Size of the actual CID strings
>          */
>         cid_list_size = sizeof(struct acpi_pnp_device_id_list) +
> -           ((count - 1) * sizeof(struct acpi_pnp_device_id)) +
> +           count * sizeof(struct acpi_pnp_device_id) +
>             string_area_size;
>
>         cid_list = ACPI_ALLOCATE_ZEROED(cid_list_size);
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
> index 4defed58ea338..c7bcda0ad366a 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -1145,7 +1145,7 @@ struct acpi_pnp_device_id {
>  struct acpi_pnp_device_id_list {
>         u32 count;              /* Number of IDs in Ids array */
>         u32 list_size;          /* Size of list, including ID strings */
> -       struct acpi_pnp_device_id ids[1];       /* ID array */
> +       struct acpi_pnp_device_id ids[];        /* ID array */
>  };
>
>  /*
> --
> 2.27.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
