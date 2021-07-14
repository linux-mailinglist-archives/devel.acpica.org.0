Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E63D23C8469
	for <lists+devel-acpica@lfdr.de>; Wed, 14 Jul 2021 14:27:16 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 62777100EB35A;
	Wed, 14 Jul 2021 05:27:15 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.44; helo=mail-ot1-f44.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 085EC100EB34D
	for <devel@acpica.org>; Wed, 14 Jul 2021 05:27:13 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id f93-20020a9d03e60000b02904b1f1d7c5f4so2223576otf.9
        for <devel@acpica.org>; Wed, 14 Jul 2021 05:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mhl126D+5KrvqHUg8Mnu6CpT2565vYX+nBypTu9pEdQ=;
        b=GOGlgQrGrd7cESlgwfbWTSkLMfmb8TAtPW7FQt14vUZbQte9eMziNlzY+noBe0z6SH
         jiwIQrj4lHTgUcxYIAi7BkuWCeM43y1tXyac/agPCNs9L3f04VzH8i7gNDD/8vT00dGf
         pKoz8YkXmfANmvYMSksTMSqaYrjkzPH55n6aK9OYjtfRdM/JCrznEZOoZckXj3Vb/vFW
         xWTgxQbsm7JpdwvIBMLMAic5lZAP/e+87jiqw+PTEFN2MxVi62acPUj0zNBIQe+Qp0rz
         4T5UU9wnVhbCZtTG6PAmjYomEJI/LL90WaO1G7fKetq6gYOoLggjbfAvzvBLlyPf0uKE
         Jksg==
X-Gm-Message-State: AOAM532n9cMqw/fb61KqBAhzpNI1quiuVay1evH9l9sZgMpshP0m15mn
	HiQcQOeEqR0ofvND1DoB7zvGuYlm09Pkh00JiJ8=
X-Google-Smtp-Source: ABdhPJyFbDsKylVuWlvXABz7iW3sGVVm5eX1+HmtYHYKTF69l/8pIq15gHIJUzZBPfkTb2+HYbBKYrXviDCow7Axg7A=
X-Received: by 2002:a9d:5f19:: with SMTP id f25mr8376874oti.206.1626265632099;
 Wed, 14 Jul 2021 05:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210621200459.3558199-1-mw@semihalf.com>
In-Reply-To: <20210621200459.3558199-1-mw@semihalf.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 14 Jul 2021 14:27:01 +0200
Message-ID: <CAJZ5v0jegOF85Zvo8Oyio9cSvb_WfUCG0oNsXzWHSCTi151u0A@mail.gmail.com>
To: Marcin Wojtas <mw@semihalf.com>
Message-ID-Hash: QOEYXUIBERUKD5FYCIIGLHRI3CYCVEMT
X-Message-ID-Hash: QOEYXUIBERUKD5FYCIIGLHRI3CYCVEMT
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Grzegorz Jaszczyk <jaz@semihalf.com>, Grzegorz Bernacki <gjb@semihalf.com>, upstream@semihalf.com, Samer El-Haj-Mahmoud <Samer.El-Haj-Mahmoud@arm.com>, Jon <jon@solid-run.com>, Tomasz Nowicki <tn@semihalf.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [net-next: PATCH v3 1/1] ACPI: SPCR: Add new 16550-compatible Serial Port Subtype
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QOEYXUIBERUKD5FYCIIGLHRI3CYCVEMT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry for the delay.

On Mon, Jun 21, 2021 at 10:05 PM Marcin Wojtas <mw@semihalf.com> wrote:
>
> The Microsoft Debug Port Table 2 (DBG2) specification revision
> May 31, 2017 adds support for 16550-compatible Serial Port
> Subtype with parameters defined in Generic Address Structure (GAS) [1]
>
> Add its support in SPCR parsing routine.
>
> [1] https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-debug-port-table
>
> Signed-off-by: Marcin Wojtas <mw@semihalf.com>
> ---
>  include/acpi/actbl1.h | 1 +
>  drivers/acpi/spcr.c   | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/include/acpi/actbl1.h b/include/acpi/actbl1.h
> index ce59903c2695..f746012eba8d 100644
> --- a/include/acpi/actbl1.h
> +++ b/include/acpi/actbl1.h

This is an ACPICA header, so the first part of the patch should go in
via the ACPICA upstream repository.

Can you please resend this as two patches to make it easier to process it?

> @@ -498,6 +498,7 @@ struct acpi_dbg2_device {
>  #define ACPI_DBG2_ARM_SBSA_GENERIC  0x000E
>  #define ACPI_DBG2_ARM_DCC           0x000F
>  #define ACPI_DBG2_BCM2835           0x0010
> +#define ACPI_DBG2_16550_WITH_GAS    0x0012
>
>  #define ACPI_DBG2_1394_STANDARD     0x0000
>
> diff --git a/drivers/acpi/spcr.c b/drivers/acpi/spcr.c
> index 88460bacd5ae..25c2d0be953e 100644
> --- a/drivers/acpi/spcr.c
> +++ b/drivers/acpi/spcr.c
> @@ -136,6 +136,7 @@ int __init acpi_parse_spcr(bool enable_earlycon, bool enable_console)
>                 break;
>         case ACPI_DBG2_16550_COMPATIBLE:
>         case ACPI_DBG2_16550_SUBSET:
> +       case ACPI_DBG2_16550_WITH_GAS:
>                 uart = "uart";
>                 break;
>         default:
> --
> 2.29.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
