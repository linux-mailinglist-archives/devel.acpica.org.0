Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA7C1D944C
	for <lists+devel-acpica@lfdr.de>; Tue, 19 May 2020 12:25:29 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3FA1C11EC9661;
	Tue, 19 May 2020 03:22:11 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.65; helo=mail-ot1-f65.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 851AA11EC965F
	for <devel@acpica.org>; Tue, 19 May 2020 03:22:09 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id 63so10678422oto.8
        for <devel@acpica.org>; Tue, 19 May 2020 03:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eV7W0QRQXtndP6jkP/fVWb+3f6ZswnL5HLdjdhMzchY=;
        b=GBsPVuf08fzEbHuO7ymoYxIwPf6Qa/9Xcb6klnvaIKjr6iwRqhvtJ24RCQQ5jqhTic
         3aVxSazPMqMwXvWpeIk/GfQOk1kEgug3UZPlBvh6ouL7+LuaP2IJgpT+X+Ib55o0PzBv
         dIDu6sS32HuBLi9QtLe3OixAJZ0FQdkynDXVDJDPzWoaG5ihw1ebTqqJHfFRpEqboLmR
         i4xRgL6Ykhge8XuHnN7J0vJBA94aMxCJtM9/wxOmVJvlTMV7yjW3zPghRE3mls0/BR25
         UmRDeGewe3G4Sx1fIBfSqZ7SI5sSBEKDmI3uX3d1lcRt4RxTPM8/cbeQJQW6m3KbWPJR
         s3Kg==
X-Gm-Message-State: AOAM5316yYy+NK7tvAOHjO6v1DuwBo8c+G6+JsHmB+gme/DLVRFc4qTq
	Q+FX/wY6xVYLjnpqQ2eox/J7mHtUNxGcvqvyDWM=
X-Google-Smtp-Source: ABdhPJxsHZmJ0GxGhgBhGR2E78WtzR03gWHvv1HislPOLfyFU37t73pV2JWpfKyHtneguOkz8Su1AOTRYH864ZCfDwc=
X-Received: by 2002:a9d:3d05:: with SMTP id a5mr4477701otc.262.1589883925192;
 Tue, 19 May 2020 03:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200518222722.GA7791@embeddedor>
In-Reply-To: <20200518222722.GA7791@embeddedor>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 19 May 2020 12:25:13 +0200
Message-ID: <CAJZ5v0goZpvRQ6du214FqvFNQnqZHR9-kz=WhEgRsMJ3Zx0WiQ@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID-Hash: CRVWMFNYPHMRSRUCEQK64XTRCTE4VCJ2
X-Message-ID-Hash: CRVWMFNYPHMRSRUCEQK64XTRCTE4VCJ2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Kees Cook <keescook@chromium.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Replace one-element array and use struct_size() helper
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CRVWMFNYPHMRSRUCEQK64XTRCTE4VCJ2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 19, 2020 at 12:22 AM Gustavo A. R. Silva
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

However, the ACPICA code in the kernel comes from an external project
and changes of this type are generally not applicable to it unless
accepted upstream.

I'll let Erik and Bob take over.

> Also, make use of the new struct_size() helper to properly calculate the
> size of struct acpi_pnp_device_id_list.
>
> This issue was found with the help of Coccinellea and, audited and
> fixed _manually_.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/acpi/acpica/utids.c | 4 +---
>  include/acpi/actypes.h      | 2 +-
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/acpica/utids.c b/drivers/acpi/acpica/utids.c
> index 3bb06935a2ad3..c2f819a39424a 100644
> --- a/drivers/acpi/acpica/utids.c
> +++ b/drivers/acpi/acpica/utids.c
> @@ -262,9 +262,7 @@ acpi_ut_execute_CID(struct acpi_namespace_node *device_node,
>          * 2) Size of the CID PNP_DEVICE_ID array +
>          * 3) Size of the actual CID strings
>          */
> -       cid_list_size = sizeof(struct acpi_pnp_device_id_list) +
> -           ((count - 1) * sizeof(struct acpi_pnp_device_id)) +
> -           string_area_size;
> +       cid_list_size = struct_size(cid_list, ids, count) + string_area_size;
>
>         cid_list = ACPI_ALLOCATE_ZEROED(cid_list_size);
>         if (!cid_list) {
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
> 2.26.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
