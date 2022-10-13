Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBF05FE1E2
	for <lists+devel-acpica@lfdr.de>; Thu, 13 Oct 2022 20:46:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8FB66100EA91C;
	Thu, 13 Oct 2022 11:46:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.173; helo=mail-qt1-f173.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5F7C6100EA918
	for <devel@acpica.org>; Thu, 13 Oct 2022 11:46:00 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id c23so2292938qtw.8
        for <devel@acpica.org>; Thu, 13 Oct 2022 11:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=myRigzNXG3k4UY83qj9yevV968JdHZojuu1Y05TXW7I=;
        b=voPgNrxMee56i+WC6/lJKrNZpzuPkd+xVlMV881IAPRf/NxAKRv5dqn19yrVwKtvDg
         ANnUasppJPBnfAnGO6kH4Dtfnk6CGvzYp3Ru5ckKxrNF5rJyINpDX5Xw/Hmx02IYidhE
         7oMnvFWZ9lCNweqVZ7P2wLKaDal5V72w3Xaytx4XnWN7dj3fI2CrsKHZ2hQh/CSEolUz
         pjqO6Mfq0tf8GpWJw6xEagSKUUzoiHxlGhR3mQX243GiMTXSeCt9u+pqjTVFPV2xFijk
         HHHGjy3fxEUPOOuOg9YJMCsQvhdBSiOh3nWMBun0jJaZW/q5MTevknGaml5RMwsZL76g
         tZxw==
X-Gm-Message-State: ACrzQf0b4kA9GBpkTuwodgYBzhqMCE6o7aiIxC2fGejaNCXZDJJQcGCd
	ZY/lIIERmld6dbFSeWeU9z0V2tOwWBgmVOjVt7DE+uzf
X-Google-Smtp-Source: AMsMyM58cV2G273bYp95dss3gDJzvQYc6JYdmrYwbtjZHdZy/tOT0FZJ78ERZdv5zsMwQy9Pz4Yitrvp3YYZwM6K8QM=
X-Received: by 2002:ac8:5a07:0:b0:39c:1de3:e75c with SMTP id
 n7-20020ac85a07000000b0039c1de3e75cmr1094335qta.49.1665686758938; Thu, 13 Oct
 2022 11:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20221005163253.455910-1-Ashish.Kalra@amd.com>
In-Reply-To: <20221005163253.455910-1-Ashish.Kalra@amd.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 13 Oct 2022 20:45:48 +0200
Message-ID: <CAJZ5v0gsnVTwPX+hrB4-hUtESsBC1dot3vFh_8qe4cb8ChDYtA@mail.gmail.com>
To: Ashish Kalra <Ashish.Kalra@amd.com>
Message-ID-Hash: ZZY6GH5VJ5XPQEHDGUFNIVNP35FYOJAF
X-Message-ID-Hash: ZZY6GH5VJ5XPQEHDGUFNIVNP35FYOJAF
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: rafael@kernel.org, tony.luck@intel.com, bp@alien8.de, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] ACPI: APEI: Fix num_ghes to unsigned int
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZZY6GH5VJ5XPQEHDGUFNIVNP35FYOJAF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 5, 2022 at 6:33 PM Ashish Kalra <Ashish.Kalra@amd.com> wrote:
>
> From: Ashish Kalra <ashish.kalra@amd.com>
>
> Change num_ghes from int to unsigned int, preventing an overflow
> and causing subsequent vmalloc to fail.
>
> The overflow happens in the ghes_estatus_pool_init() when calculating
> len during execution of the statement below as both multiplication
> operands here are signed int :
>
> len += (num_ghes * GHES_ESOURCE_PREALLOC_MAX_SIZE);
>
> The following call trace is observed because of this bug:
>
> [    9.317108] swapper/0: vmalloc error: size 18446744071562596352, exceeds total pages, mode:0xcc0(GFP_KERNEL), nodemask=(null),cpuset=/,mems_allowed=0-1
> [    9.317131] Call Trace:
> [    9.317134]  <TASK>
> [    9.317137]  dump_stack_lvl+0x49/0x5f
> [    9.317145]  dump_stack+0x10/0x12
> [    9.317146]  warn_alloc.cold+0x7b/0xdf
> [    9.317150]  ? __device_attach+0x16a/0x1b0
> [    9.317155]  __vmalloc_node_range+0x702/0x740
> [    9.317160]  ? device_add+0x17f/0x920
> [    9.317164]  ? dev_set_name+0x53/0x70
> [    9.317166]  ? platform_device_add+0xf9/0x240
> [    9.317168]  __vmalloc_node+0x49/0x50
> [    9.317170]  ? ghes_estatus_pool_init+0x43/0xa0
> [    9.317176]  vmalloc+0x21/0x30
> [    9.317177]  ghes_estatus_pool_init+0x43/0xa0
> [    9.317179]  acpi_hest_init+0x129/0x19c
> [    9.317185]  acpi_init+0x434/0x4a4
> [    9.317188]  ? acpi_sleep_proc_init+0x2a/0x2a
> [    9.317190]  do_one_initcall+0x48/0x200
> [    9.317195]  kernel_init_freeable+0x221/0x284
> [    9.317200]  ? rest_init+0xe0/0xe0
> [    9.317204]  kernel_init+0x1a/0x130
> [    9.317205]  ret_from_fork+0x22/0x30
> [    9.317208]  </TASK>
>
> Signed-off-by: Ashish Kalra <ashish.kalra@amd.com>
> ---
>  drivers/acpi/apei/ghes.c | 2 +-
>  include/acpi/ghes.h      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> index d91ad378c00d..6d7c202142a6 100644
> --- a/drivers/acpi/apei/ghes.c
> +++ b/drivers/acpi/apei/ghes.c
> @@ -163,7 +163,7 @@ static void ghes_unmap(void __iomem *vaddr, enum fixed_addresses fixmap_idx)
>         clear_fixmap(fixmap_idx);
>  }
>
> -int ghes_estatus_pool_init(int num_ghes)
> +int ghes_estatus_pool_init(unsigned int num_ghes)
>  {
>         unsigned long addr, len;
>         int rc;
> diff --git a/include/acpi/ghes.h b/include/acpi/ghes.h
> index 34fb3431a8f3..292a5c40bd0c 100644
> --- a/include/acpi/ghes.h
> +++ b/include/acpi/ghes.h
> @@ -71,7 +71,7 @@ int ghes_register_vendor_record_notifier(struct notifier_block *nb);
>  void ghes_unregister_vendor_record_notifier(struct notifier_block *nb);
>  #endif
>
> -int ghes_estatus_pool_init(int num_ghes);
> +int ghes_estatus_pool_init(unsigned int num_ghes);
>
>  /* From drivers/edac/ghes_edac.c */
>
> --

Applied as 6.1 material with some edits in the subject and changelog.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
