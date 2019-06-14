Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBD345855
	for <lists+devel-acpica@lfdr.de>; Fri, 14 Jun 2019 11:13:07 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 33E832129DBAF;
	Fri, 14 Jun 2019 02:13:06 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.210.66; helo=mail-ot1-f66.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id E24E42194D3B3
 for <devel@acpica.org>; Fri, 14 Jun 2019 02:13:04 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id j19so2003427otq.2
 for <devel@acpica.org>; Fri, 14 Jun 2019 02:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iQKOlho3IePwEIN90jAdwdDwovI9WsnmIGTODVgkjRA=;
 b=jA3Ln0+xXgvnVMiv1LXMILGnKoxrOrWnWzbYOR0fZS2oKw2eHoqCY592ogvx5HRypI
 U7hLiK86LKdV3qyL4G1Deat6JUKjkTju2cULWFcdfaRA0R/tEgTskBarruocLOePBk86
 Z7M7gBHAb5dkKqHcQky3+5oXJ6eQJogj7y+KO6LTloMxxX7WUQmGQt97h55I2algNuXX
 gzMrRWHeRNRTDIaX9dofdidR5VqUL6x7AXmnxdnwy3WlKQPec1u0WqzXS34OmjtYzOUZ
 21ZcXxUTQ1fOSDhyeY+fR6oX2G1YONH2lxJaF11zXnMrcu2/UUaNHPTog19JnUXKKtw5
 q7MA==
X-Gm-Message-State: APjAAAV3ISd/XiU4I9LyBczimgEQxVhq9byVrzyEfZn3nqrxm9HiMmN2
 BA3fcJgfGijhOZuUei8nHidKCW7mcsC1eXM8Psw=
X-Google-Smtp-Source: APXvYqwmdZTMd2v6GPlEy1a/TL7qrJsrqpXKgBAz63iJnH2gtW407SGicB8TN5jAyyOvInGV4i/vIKKPF+eAlUMk8A4=
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr2077918otp.189.1560503583969; 
 Fri, 14 Jun 2019 02:13:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <e2a4ddfd93a904b50b7ccc074e00e14dc4661963.1560327219.git.nikolaus.voss@loewensteinmedical.de>
In-Reply-To: <e2a4ddfd93a904b50b7ccc074e00e14dc4661963.1560327219.git.nikolaus.voss@loewensteinmedical.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 14 Jun 2019 11:12:53 +0200
Message-ID: <CAJZ5v0jqxWs=PPik-TCDqQiyxCSyRP7HTue1WsdWP9e-nik2eA@mail.gmail.com>
To: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
Subject: Re: [Devel] [PATCH v2 1/3] ACPI: Resolve objects on host-directed
 table loads
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 nv@vosn.de,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Wed, Jun 12, 2019 at 10:36 AM Nikolaus Voss
<nikolaus.voss@loewensteinmedical.de> wrote:
>
> If an ACPI SSDT overlay is loaded after built-in tables
> have been loaded e.g. via configfs or efivar_ssdt_load()
> it is necessary to rewalk the namespace to resolve
> references. Without this, relative and absolute paths
> like ^PCI0.SBUS or \_SB.PCI0.SBUS are not resolved
> correctly.
>
> Make configfs load use the same method as efivar_ssdt_load().
>
> Signed-off-by: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>

This is fine by me, so

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Or if you want me to take this patch (without the other two in the
series), please let me know.

As for the other two patches, someone else needs to review them for
you as I'm not particularly familiar with the PWM subsystem.

> ---
>  drivers/acpi/acpi_configfs.c   |  6 +-----
>  drivers/acpi/acpica/tbxfload.c | 11 +++++++++++
>  2 files changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/acpi/acpi_configfs.c b/drivers/acpi/acpi_configfs.c
> index f92033661239..663f0d88f912 100644
> --- a/drivers/acpi/acpi_configfs.c
> +++ b/drivers/acpi/acpi_configfs.c
> @@ -56,11 +56,7 @@ static ssize_t acpi_table_aml_write(struct config_item *cfg,
>         if (!table->header)
>                 return -ENOMEM;
>
> -       ACPI_INFO(("Host-directed Dynamic ACPI Table Load:"));
> -       ret = acpi_tb_install_and_load_table(
> -                       ACPI_PTR_TO_PHYSADDR(table->header),
> -                       ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL, FALSE,
> -                       &table->index);
> +       ret = acpi_load_table(table->header);
>         if (ret) {
>                 kfree(table->header);
>                 table->header = NULL;
> diff --git a/drivers/acpi/acpica/tbxfload.c b/drivers/acpi/acpica/tbxfload.c
> index 4f30f06a6f78..ef8f8a9f3c9c 100644
> --- a/drivers/acpi/acpica/tbxfload.c
> +++ b/drivers/acpi/acpica/tbxfload.c
> @@ -297,6 +297,17 @@ acpi_status acpi_load_table(struct acpi_table_header *table)
>         status = acpi_tb_install_and_load_table(ACPI_PTR_TO_PHYSADDR(table),
>                                                 ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL,
>                                                 FALSE, &table_index);
> +
> +       if (ACPI_SUCCESS(status)) {
> +               /* Complete the initialization/resolution of package objects */
> +
> +               status = acpi_ns_walk_namespace(ACPI_TYPE_PACKAGE,
> +                                               ACPI_ROOT_OBJECT,
> +                                               ACPI_UINT32_MAX, 0,
> +                                               acpi_ns_init_one_package,
> +                                               NULL, NULL, NULL);
> +       }
> +
>         return_ACPI_STATUS(status);
>  }
>
> --
> 2.17.1
>
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
