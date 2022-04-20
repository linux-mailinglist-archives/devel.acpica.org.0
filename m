Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E25D508C24
	for <lists+devel-acpica@lfdr.de>; Wed, 20 Apr 2022 17:31:58 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 05C44100EB829;
	Wed, 20 Apr 2022 08:31:57 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.171; helo=mail-yw1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0F071100EBB97
	for <devel@acpica.org>; Wed, 20 Apr 2022 08:31:54 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-2ec0bb4b715so22217807b3.5
        for <devel@acpica.org>; Wed, 20 Apr 2022 08:31:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BX4DYIsh9shdL0wVWNesEbyhwwCB5uGYwoFJu/5ZDOA=;
        b=uZkQ+CLCS9W3fXK1EWBt4lJG9u6r0AOJAOsuCfxs59UeghXV0hLYOg5LqTB6o0bjgW
         TBCFoVJZl/oeK7opmrJLn3xUTRXgoZnS05N6+xVajn3ujY8ULg/qnX34j6Ekr7twi6dV
         N50mvTzyO4Haue9lcXhv01G9xHvksEItAkA/5pOxuE/Zs+ZTD0iogtBZOxf6mcrpcnHI
         Q5jnyzl6A8GH2vqnK5oaNf9nudEsbkQv9V/3CKd0slsplUsPhw3eu3/Vdd6bbw5jalv9
         6qB6PHWmOMtUwAf0a0DfP/MWJeNjmXx78TPOvhl7yLu2lrwYDs1eBRdoIrx2tP5bx0Gz
         d+ig==
X-Gm-Message-State: AOAM530+NPB2HNOKF7qPIJMZQCLaVGnna/X76yBfEoK/7k5s9B+543Ot
	nwWrMfcaFzeoVBsAyFZvYmJRXlPRvvPWhuwz3lQ=
X-Google-Smtp-Source: ABdhPJx/esx+nly4Faz952uAqt/+ztWg0bemjimUpNFF9AVlh6yAb7iPTGu7hoW4PeNdbXsPUA7GPhieyCZyDrNQu/s=
X-Received: by 2002:a81:b89:0:b0:2eb:e9e6:470a with SMTP id
 131-20020a810b89000000b002ebe9e6470amr21757661ywl.7.1650468713921; Wed, 20
 Apr 2022 08:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220419205432.46021-1-bwicaksono@nvidia.com> <20220419205432.46021-2-bwicaksono@nvidia.com>
In-Reply-To: <20220419205432.46021-2-bwicaksono@nvidia.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 20 Apr 2022 17:31:43 +0200
Message-ID: <CAJZ5v0jUZSSvMGYhu44rSnEXmVve-wKXkUf-U_qy0ojn4v6kXA@mail.gmail.com>
To: Besar Wicaksono <bwicaksono@nvidia.com>
Message-ID-Hash: DEPACYV3QSTLSYTVLGVTBEU6KB6EGCWZ
X-Message-ID-Hash: DEPACYV3QSTLSYTVLGVTBEU6KB6EGCWZ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-tegra <linux-tegra@vger.kernel.org>, Thierry Reding <treding@nvidia.com>, Jon Hunter <jonathanh@nvidia.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/2] ACPICA: Add support for ARM Performance Monitoring Unit Table.
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DEPACYV3QSTLSYTVLGVTBEU6KB6EGCWZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 19, 2022 at 10:55 PM Besar Wicaksono <bwicaksono@nvidia.com> wrote:
>
> ACPICA commit 002165ecc0a3dc703bb24c789aaa02fdada01675
>
> The specification of this table is described in
> "ARM Performance Monitoring Unit Architecture 1.0 Platform Design Document"
> ARM DEN0117.
>
> This patch adds the necessary types and support for
> compiling/disassembling APMT.
>
> Link: https://github.com/acpica/acpica/commit/002165ec
> Signed-off-by: Besar Wicaksono <bwicaksono@nvidia.com>

It should be equivalent to this patch:

https://patchwork.kernel.org/project/linux-acpi/patch/3370028.QJadu78ljV@kreacher/

present in linux-next.

If the other patch in the series is ACKed by the ARM64 ACPi people, I
can take it too.

Thanks!

> ---
>  include/acpi/actbl2.h | 81 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
>
> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> index 16847c8d9d5f..8fc5cf318c15 100644
> --- a/include/acpi/actbl2.h
> +++ b/include/acpi/actbl2.h
> @@ -25,6 +25,7 @@
>   * the wrong signature.
>   */
>  #define ACPI_SIG_AGDI           "AGDI" /* Arm Generic Diagnostic Dump and Reset Device Interface */
> +#define ACPI_SIG_APMT           "APMT" /* Arm Performance Monitoring Unit table */
>  #define ACPI_SIG_BDAT           "BDAT" /* BIOS Data ACPI Table */
>  #define ACPI_SIG_IORT           "IORT" /* IO Remapping Table */
>  #define ACPI_SIG_IVRS           "IVRS" /* I/O Virtualization Reporting Structure */
> @@ -258,6 +259,86 @@ struct acpi_table_agdi {
>
>  #define ACPI_AGDI_SIGNALING_MODE (1)
>
> +/*******************************************************************************
> + *
> + * APMT - ARM Performance Monitoring Unit Table
> + *
> + * Conforms to:
> + * ARM Performance Monitoring Unit Architecture 1.0 Platform Design Document
> + * ARM DEN0117 v1.0 November 25, 2021
> + *
> + ******************************************************************************/
> +
> +struct acpi_table_apmt {
> +       struct acpi_table_header header;    /* Common ACPI table header */
> +};
> +
> +#define ACPI_APMT_NODE_ID_LENGTH                4
> +
> +/*
> + * APMT subtables
> + */
> +struct acpi_apmt_node {
> +       u16                                  length;
> +       u8                                   flags;
> +       u8                                   type;
> +       u32                                  id;
> +       u64                                  inst_primary;
> +       u32                                  inst_secondary;
> +       u64                                  base_address0;
> +       u64                                  base_address1;
> +       u32                                  ovflw_irq;
> +       u32                                  reserved;
> +       u32                                  ovflw_irq_flags;
> +       u32                                  proc_affinity;
> +       u32                                  impl_id;
> +};
> +
> +/* Masks for Flags field above */
> +
> +#define ACPI_APMT_FLAGS_DUAL_PAGE               (1<<0)
> +#define ACPI_APMT_FLAGS_AFFINITY                (1<<1)
> +#define ACPI_APMT_FLAGS_ATOMIC                  (1<<2)
> +
> +/* Values for Flags dual page field above */
> +
> +#define ACPI_APMT_FLAGS_DUAL_PAGE_NSUPP         (0<<0)
> +#define ACPI_APMT_FLAGS_DUAL_PAGE_SUPP          (1<<0)
> +
> +/* Values for Flags processor affinity field above */
> +#define ACPI_APMT_FLAGS_AFFINITY_PROC           (0<<1)
> +#define ACPI_APMT_FLAGS_AFFINITY_PROC_CONTAINER (1<<1)
> +
> +/* Values for Flags 64-bit atomic field above */
> +#define ACPI_APMT_FLAGS_ATOMIC_NSUPP            (0<<2)
> +#define ACPI_APMT_FLAGS_ATOMIC_SUPP             (1<<2)
> +
> +/* Values for Type field above */
> +
> +enum acpi_apmt_node_type {
> +       ACPI_APMT_NODE_TYPE_MC                      = 0x00,
> +       ACPI_APMT_NODE_TYPE_SMMU                    = 0x01,
> +       ACPI_APMT_NODE_TYPE_PCIE_ROOT               = 0x02,
> +       ACPI_APMT_NODE_TYPE_ACPI                    = 0x03,
> +       ACPI_APMT_NODE_TYPE_CACHE                   = 0x04,
> +       ACPI_APMT_NODE_TYPE_COUNT
> +};
> +
> +/* Masks for ovflw_irq_flags field above */
> +
> +#define ACPI_APMT_OVFLW_IRQ_FLAGS_MODE          (1<<0)
> +#define ACPI_APMT_OVFLW_IRQ_FLAGS_TYPE          (1<<1)
> +
> +/* Values for ovflw_irq_flags mode field above */
> +
> +#define ACPI_APMT_OVFLW_IRQ_FLAGS_MODE_LEVEL    (0<<0)
> +#define ACPI_APMT_OVFLW_IRQ_FLAGS_MODE_EDGE     (1<<0)
> +
> +/* Values for ovflw_irq_flags type field above */
> +
> +#define ACPI_APMT_OVFLW_IRQ_FLAGS_TYPE_WIRED    (0<<1)
> +
> +
>  /*******************************************************************************
>   *
>   * BDAT - BIOS Data ACPI Table
> --
> 2.17.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
