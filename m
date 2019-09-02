Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5029FA5D8F
	for <lists+devel-acpica@lfdr.de>; Mon,  2 Sep 2019 23:32:17 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E92D020215F45;
	Mon,  2 Sep 2019 14:33:33 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.210.65; helo=mail-ot1-f65.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 73D062020F92A
 for <devel@acpica.org>; Mon,  2 Sep 2019 14:33:33 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id r20so14727204ota.5
 for <devel@acpica.org>; Mon, 02 Sep 2019 14:32:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pRzaQ7RpTXTj09HDdlktAr/ebyQQrL0kch2BnxuHgVM=;
 b=FMkEYsqNXbL6dsAlS2Ups4bC/YzWtBjNV3dJGhm/oQ/fhdR604JyBWvFJWueOAvZol
 kzyUPMfpNHMWMWF1mL3vYm1wBkWeEe3rUiMMLe/aGLHA3Bvum24r1r/j8n+5HZld2Hu+
 qvhDPK+iZHGjwUegTryHOEVb8POVXdQuzWd/OOsOlEp2vvUEbSVVo5mmwg53OyLtdaFL
 acrrGe58cgiqQdb0JkFcOd0dgbp++SJoXhsdQtH9yfqx/bz27cBRWKgL5Z3M4tfQjhQG
 AEDVt63e9mLBShmPGU6o5RIQeRi1Fqe58cRCu4uH/iPk9gb1nnnw+zw/T4RfVMbQvLwc
 4oqQ==
X-Gm-Message-State: APjAAAXgvUihGwyejUirwcp1DNDGQoPXdpJi4FdpjKv2jJEVzwb5LvwE
 TbiI8BVQoAu72QIg9INODvaWdnmhxePqA2zOnKE=
X-Google-Smtp-Source: APXvYqxFaje6DHixq3AXTitOhl/CdjQent8WfatECLamdB5wUhfMK3ec5uVdGchXtjQ9kQC/iwqzzDSlffmJFXUHlug=
X-Received: by 2002:a9d:7411:: with SMTP id n17mr5860561otk.118.1567459933133; 
 Mon, 02 Sep 2019 14:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <1567240295-44686-1-git-send-email-tiantao6@huawei.com>
In-Reply-To: <1567240295-44686-1-git-send-email-tiantao6@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 2 Sep 2019 23:32:01 +0200
Message-ID: <CAJZ5v0huLagaNiK38JRaYY7=N38HSrHSqbw-HJiQDUmg_HTE2Q@mail.gmail.com>
To: tiantao <tiantao6@huawei.com>
Subject: Re: [Devel] [PATCH] ACPICA: Namespace: fix the no brace needed
 warning
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>, Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Sat, Aug 31, 2019 at 10:34 AM tiantao <tiantao6@huawei.com> wrote:
>
> for if else statements having single block no braces are needed fixed
> the following checkpatch warning
>
> WARNING: braces {} are not necessary for any arm of this statement
> +               if (!prev_node) {
> [...]
> +               } else {
> [...]
>
> Signed-off-by: tiantao <tiantao6@huawei.com>
> ---
>  drivers/acpi/acpica/nsaccess.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/acpi/acpica/nsaccess.c b/drivers/acpi/acpica/nsaccess.c
> index 2566e2d..7cef22a 100644
> --- a/drivers/acpi/acpica/nsaccess.c
> +++ b/drivers/acpi/acpica/nsaccess.c
> @@ -109,11 +109,10 @@ acpi_status acpi_ns_root_initialize(void)
>                 new_node->descriptor_type = ACPI_DESC_TYPE_NAMED;
>                 new_node->type = init_val->type;
>
> -               if (!prev_node) {
> +               if (!prev_node)
>                         acpi_gbl_root_node_struct.child = new_node;
> -               } else {
> +               else
>                         prev_node->peer = new_node;
> -               }
>
>                 new_node->parent = &acpi_gbl_root_node_struct;
>                 prev_node = new_node;
> --

The ACPICA code comes from an external project and the coding style in
it is different from the rest of the kernel, so the patch is not
applicable.

Thanks!
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
