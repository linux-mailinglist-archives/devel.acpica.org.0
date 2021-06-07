Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A054B39DCDB
	for <lists+devel-acpica@lfdr.de>; Mon,  7 Jun 2021 14:45:51 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 498BB100EF271;
	Mon,  7 Jun 2021 05:45:49 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.54; helo=mail-ot1-f54.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 92A11100EF25B
	for <devel@acpica.org>; Mon,  7 Jun 2021 05:45:46 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so16572500otg.2
        for <devel@acpica.org>; Mon, 07 Jun 2021 05:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ne/p4NOGCwVSG6gGyVyzO7r+FfStromPMY+PxpPNydI=;
        b=ff7sDHHWeiK++OTYwPkGdzTzUC1/K8do3mI2MO6xG3nNkLLPQgMRdHFLMVRPv/YIuf
         oRDoqtb8Qr2zKVNj1YfO7eV4A79hmm6mQHC3rNCPolPZ2+UeKDktEU0AA4PSAoP2jPyi
         W+rSBte4doFv5l42qxD4R/TAKJVXiCazhhm1GulU6J4w2CVYshKgKJqFiTNHvONOIHs0
         7Vkt8xYBjhDNBpIoSFhcZdnXTfMhSWDBlgPnrKzg5K5+sM0LGrQP6b8XvsVb6ENb9sfk
         vgyb6Wgmp57ys+WDkAsRZ5G2oZKype8+DwjCh5d8D1yvT6rDGq2E2Sz23tg1KZ7G4v/d
         /Klw==
X-Gm-Message-State: AOAM5334YlqawrgIeQ2oXCUCC+N3YUp7jkGlNpYk7g/6HdNOvaWcTlSd
	xkMRLaPNRJNfEj2NM9jh+fSENCSv232HyzfU5n4=
X-Google-Smtp-Source: ABdhPJy+PE0k4m3sO4C/+M2oB5Dp8/vHSk6ur8aGkSkM/rVZq77o5QtmrOm/ZEAzeGQHKTEXMYlTP/dDBrFFSjW8XnE=
X-Received: by 2002:a9d:3e53:: with SMTP id h19mr13451517otg.260.1623069943825;
 Mon, 07 Jun 2021 05:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210604165047.13243-1-andriy.shevchenko@linux.intel.com> <20210604165047.13243-3-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210604165047.13243-3-andriy.shevchenko@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 7 Jun 2021 14:45:32 +0200
Message-ID: <CAJZ5v0hk8BiDt5e_P=KXkj3datr_WTCUe7k2u_TkFUPjWm79Aw@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: EWMUQGH5YGL4JX6NXVPDO5GYQJIVEQWI
X-Message-ID-Hash: EWMUQGH5YGL4JX6NXVPDO5GYQJIVEQWI
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 3/3] device property: Unify access to of_node
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EWMUQGH5YGL4JX6NXVPDO5GYQJIVEQWI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jun 4, 2021 at 6:50 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> Historically we have a few variants how we access dev->fwnode
> and dev->of_node. Some of the functions during development
> gained different versions of the getters. Unify access to of_node
> and as a side change slightly refactor ACPI specific branches.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v3: no changes
> v2: no changes
>  drivers/base/property.c  | 29 +++++++++++++----------------
>  include/linux/property.h |  2 +-
>  2 files changed, 14 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/base/property.c b/drivers/base/property.c
> index c26370aacdc6..d0874f6c29bb 100644
> --- a/drivers/base/property.c
> +++ b/drivers/base/property.c
> @@ -759,13 +759,8 @@ EXPORT_SYMBOL_GPL(fwnode_get_next_available_child_node);
>  struct fwnode_handle *device_get_next_child_node(struct device *dev,
>                                                  struct fwnode_handle *child)
>  {
> -       struct acpi_device *adev = ACPI_COMPANION(dev);
> -       struct fwnode_handle *fwnode = NULL, *next;
> -
> -       if (dev->of_node)
> -               fwnode = of_fwnode_handle(dev->of_node);
> -       else if (adev)
> -               fwnode = acpi_fwnode_handle(adev);
> +       const struct fwnode_handle *fwnode = dev_fwnode(dev);
> +       struct fwnode_handle *next;
>
>         /* Try to find a child in primary fwnode */
>         next = fwnode_get_next_child_node(fwnode, child);
> @@ -868,28 +863,31 @@ EXPORT_SYMBOL_GPL(device_get_child_node_count);
>
>  bool device_dma_supported(struct device *dev)
>  {
> +       const struct fwnode_handle *fwnode = dev_fwnode(dev);
> +
>         /* For DT, this is always supported.
>          * For ACPI, this depends on CCA, which
>          * is determined by the acpi_dma_supported().
>          */
> -       if (IS_ENABLED(CONFIG_OF) && dev->of_node)
> +       if (is_of_node(fwnode))
>                 return true;
>
> -       return acpi_dma_supported(ACPI_COMPANION(dev));
> +       return acpi_dma_supported(to_acpi_device_node(fwnode));
>  }
>  EXPORT_SYMBOL_GPL(device_dma_supported);
>
>  enum dev_dma_attr device_get_dma_attr(struct device *dev)
>  {
> +       const struct fwnode_handle *fwnode = dev_fwnode(dev);
>         enum dev_dma_attr attr = DEV_DMA_NOT_SUPPORTED;
>
> -       if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> -               if (of_dma_is_coherent(dev->of_node))
> +       if (is_of_node(fwnode)) {
> +               if (of_dma_is_coherent(to_of_node(fwnode)))
>                         attr = DEV_DMA_COHERENT;
>                 else
>                         attr = DEV_DMA_NON_COHERENT;
>         } else
> -               attr = acpi_get_dma_attr(ACPI_COMPANION(dev));
> +               attr = acpi_get_dma_attr(to_acpi_device_node(fwnode));
>
>         return attr;
>  }
> @@ -1007,14 +1005,13 @@ EXPORT_SYMBOL(device_get_mac_address);
>   * Returns Linux IRQ number on success. Other values are determined
>   * accordingly to acpi_/of_ irq_get() operation.
>   */
> -int fwnode_irq_get(struct fwnode_handle *fwnode, unsigned int index)
> +int fwnode_irq_get(const struct fwnode_handle *fwnode, unsigned int index)
>  {
> -       struct device_node *of_node = to_of_node(fwnode);
>         struct resource res;
>         int ret;
>
> -       if (IS_ENABLED(CONFIG_OF) && of_node)
> -               return of_irq_get(of_node, index);
> +       if (is_of_node(fwnode))
> +               return of_irq_get(to_of_node(fwnode), index);
>
>         ret = acpi_irq_get(ACPI_HANDLE_FWNODE(fwnode), index, &res);
>         if (ret)
> diff --git a/include/linux/property.h b/include/linux/property.h
> index 0d876316e61d..073e680c35e2 100644
> --- a/include/linux/property.h
> +++ b/include/linux/property.h
> @@ -119,7 +119,7 @@ struct fwnode_handle *device_get_named_child_node(struct device *dev,
>  struct fwnode_handle *fwnode_handle_get(struct fwnode_handle *fwnode);
>  void fwnode_handle_put(struct fwnode_handle *fwnode);
>
> -int fwnode_irq_get(struct fwnode_handle *fwnode, unsigned int index);
> +int fwnode_irq_get(const struct fwnode_handle *fwnode, unsigned int index);
>
>  unsigned int device_get_child_node_count(struct device *dev);
>
> --

Applied as 5.14 material along with the [1-2/3], thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
