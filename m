Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C020251ACC6
	for <lists+devel-acpica@lfdr.de>; Wed,  4 May 2022 20:26:46 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CA825100EAB61;
	Wed,  4 May 2022 11:26:44 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id F1531100EB341
	for <devel@acpica.org>; Wed,  4 May 2022 11:26:42 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 794BE1042;
	Wed,  4 May 2022 11:26:41 -0700 (PDT)
Received: from bogus (unknown [10.57.1.45])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22B433FA35;
	Wed,  4 May 2022 11:26:38 -0700 (PDT)
Date: Wed, 4 May 2022 19:26:33 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Besar Wicaksono <bwicaksono@nvidia.com>, rafael@kernel.org
Message-ID: <20220504182633.a3mwuiohfqtjvpep@bogus>
References: <20220419205432.46021-1-bwicaksono@nvidia.com>
 <20220419205432.46021-3-bwicaksono@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419205432.46021-3-bwicaksono@nvidia.com>
Message-ID-Hash: GXP2U77IBGWOPSA54BLVAWT2UBF66UJI
X-Message-ID-Hash: GXP2U77IBGWOPSA54BLVAWT2UBF66UJI
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: catalin.marinas@arm.com, will@kernel.org, lorenzo.pieralisi@arm.com, linux-tegra@vger.kernel.org, treding@nvidia.com, jonathanh@nvidia.com, linux-acpi@vger.kernel.org, devel@acpica.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 2/2] ACPI: ARM Performance Monitoring Unit Table (APMT) initial support
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GXP2U77IBGWOPSA54BLVAWT2UBF66UJI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Besar, Rafael,

Sorry for the delayed response.

On Tue, Apr 19, 2022 at 03:54:32PM -0500, Besar Wicaksono wrote:
> ARM Performance Monitoring Unit Table describes the properties of PMU
> support in ARM-based system. The APMT table contains a list of nodes,
> each represents a PMU in the system that conforms to ARM CoreSight PMU
> architecture. The properties of each node include information required
> to access the PMU (e.g. MMIO base address, interrupt number) and also
> identification. For more detailed information, please refer to the
> specification below:
>  * APMT: https://developer.arm.com/documentation/den0117/latest
>  * ARM Coresight PMU:
>         https://developer.arm.com/documentation/ihi0091/latest
> 
> The initial support adds the detection of APMT table and generic
> infrastructure to create platform devices for ARM CoreSight PMUs.
> Similar to IORT the root pointer of APMT is preserved during runtime
> and each PMU platform device is given a pointer to the corresponding
> APMT node.
>

Hi Besar,

This patch on its own looks fine and happy to ack. However I would like
to know general process on such changes that add platform or any bus
device but the driver itself is not upstream.

Any particular reason why you would like to rush and push this without
the actual driver to probe the device being added here ?

> Signed-off-by: Besar Wicaksono <bwicaksono@nvidia.com>
> ---
>  arch/arm64/Kconfig          |   1 +
>  drivers/acpi/arm64/Kconfig  |   3 +
>  drivers/acpi/arm64/Makefile |   1 +
>  drivers/acpi/arm64/apmt.c   | 176 ++++++++++++++++++++++++++++++++++++
>  drivers/acpi/bus.c          |   2 +
>  include/linux/acpi_apmt.h   |  19 ++++
>  6 files changed, 202 insertions(+)
>  create mode 100644 drivers/acpi/arm64/apmt.c
>  create mode 100644 include/linux/acpi_apmt.h
>

[...]

> diff --git a/drivers/acpi/arm64/apmt.c b/drivers/acpi/arm64/apmt.c
> new file mode 100644
> index 000000000000..8b8b9f480548
> --- /dev/null
> +++ b/drivers/acpi/arm64/apmt.c
> @@ -0,0 +1,176 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ARM APMT table support.
> + * Design document number: ARM DEN0117.
> + *
> + * Copyright (c) 2022, NVIDIA CORPORATION & AFFILIATES.
> + *
> + */
> +
> +#define pr_fmt(fmt)	"ACPI: APMT: " fmt
> +
> +#include <linux/acpi.h>
> +#include <linux/init.h>
> +#include <linux/kernel.h>
> +#include <linux/platform_device.h>
> +
> +#define DEV_NAME "arm-csite-pmu"
> +

I really don't prefer this name:
1. arm-coresight-pmu is much better than "csite". I see the short form
   used elsewhere in the kernel is just "cs" as in cs_etm,...etc
2. Since APMT is more generic than just coresight(I understand coresight
   was the initial motivation for the generic specification) and also
   the type list seem to cover memory controller, SMMU,..etc, does
   it make sense to call it "arm-generic-pmu" or something similar.

Anyways, it can be part of the driver discussion as people might have
opinion based on what and how the driver covers the variety of PMU
types possible as described in APMT.

Not sure if the same device name will be re-used or PMUs can be registered
with different name under perf subsystem, but the name matters for the user
space tools and decoders. They may use the name or type information to analyse
the data samples.

So it is better to wait for all those discussion as part of the driver
upstreaming before you use this device name unless we are absolutely sure
the PMUs can be registered with different names in the driver(which could
be possible, I just don't know)

Apart from this name, I am OK with the changes here and happy to ack if it
is OK to merge this without any driver to probe this device yet.

-- 
Regards,
Sudeep
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
