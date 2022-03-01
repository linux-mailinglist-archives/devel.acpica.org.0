Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8224C9486
	for <lists+devel-acpica@lfdr.de>; Tue,  1 Mar 2022 20:40:42 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5F32E100EA13C;
	Tue,  1 Mar 2022 11:40:40 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.175; helo=mail-yw1-f175.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A4E6F100EB83B
	for <devel@acpica.org>; Tue,  1 Mar 2022 11:40:38 -0800 (PST)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-2dbd8777564so41499647b3.0
        for <devel@acpica.org>; Tue, 01 Mar 2022 11:40:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rC4BvLXBCXqc68pcQ7m+8z/EJtaEH/MsSh5u4qPMaYc=;
        b=W1RhvnWQG7iaqhD1DaWqK5r85g9hcQAhOeUGo0zwqgqY3ZcpQqyrB99Pt5B8O3we4e
         NYxG1dlG8s/ipyw2umi0G4xS7yZ3y2ezx2nBe32G0IxSgHcrxFTGXvkLhHgk6m69cKaE
         SFW5aUKyhavUeL9+BIAa5WKDZb3BcINeDgNDUW0kGFXYDdoib9DofZcipI9QQSvx88w6
         +4dgH3z/kW/2SJ2kRQ1eO88aSuN+L8kph5QMoJ5g+K44SYg7Erml2eneTqnfAxPWkRvT
         B+NdH2M8Fkt9xwNMybt5zqFcyDdhJPVAms+JaNJqAldkIlJflAce3TOlVmt2CbzXOVPv
         13cg==
X-Gm-Message-State: AOAM533A/xQpz5AxFtRVbVCpG8ZhHq0e92TZ20FVHzaHtBAWJaIUkWZw
	1Q0k0OQsXKG05FKhHrHg6QxVo+4pDbdgX79SZa0=
X-Google-Smtp-Source: ABdhPJzqz8NvN2OYlSJ4r049oH9twxzobfp3rZ5a9AqKOhlvAWL0GuQURf4suVyw4zXef72pObOLA5ljD92LHelrPUU=
X-Received: by 2002:a81:1611:0:b0:2d6:3290:9bd3 with SMTP id
 17-20020a811611000000b002d632909bd3mr26858713yww.19.1646163637141; Tue, 01
 Mar 2022 11:40:37 -0800 (PST)
MIME-Version: 1.0
References: <20220224113807.91771-1-pmenzel@molgen.mpg.de>
In-Reply-To: <20220224113807.91771-1-pmenzel@molgen.mpg.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 1 Mar 2022 20:40:26 +0100
Message-ID: <CAJZ5v0iCwJ10gM0+LsOMU9X3X4ToN_OHBW=9vVsfEP3+cRpudQ@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID-Hash: 6JG7PZL6ED7E6KI6O37AMBP4W5S4TGFQ
X-Message-ID-Hash: 6JG7PZL6ED7E6KI6O37AMBP4W5S4TGFQ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/4] acpi: exsystem: Add units to time variable names
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6JG7PZL6ED7E6KI6O37AMBP4W5S4TGFQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Feb 24, 2022 at 12:38 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> `how_long` uses different units in both functions, so make it more
> clear, what unit they expect.
>
> Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>  drivers/acpi/acpica/exsystem.c | 20 ++++++++++----------

As ACPICA material, this should be submitted to the upstream project
via https://github.com/acpica/acpica/.

This applies to the other patches in the series too.

>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/acpi/acpica/exsystem.c b/drivers/acpi/acpica/exsystem.c
> index 1281c07112de..6bc5b46e6927 100644
> --- a/drivers/acpi/acpica/exsystem.c
> +++ b/drivers/acpi/acpica/exsystem.c
> @@ -107,7 +107,7 @@ acpi_status acpi_ex_system_wait_mutex(acpi_mutex mutex, u16 timeout)
>   *
>   * FUNCTION:    acpi_ex_system_do_stall
>   *
> - * PARAMETERS:  how_long        - The amount of time to stall,
> + * PARAMETERS:  how_long_us     - The amount of time to stall,
>   *                                in microseconds
>   *
>   * RETURN:      Status
> @@ -120,13 +120,13 @@ acpi_status acpi_ex_system_wait_mutex(acpi_mutex mutex, u16 timeout)
>   *
>   ******************************************************************************/
>
> -acpi_status acpi_ex_system_do_stall(u32 how_long)
> +acpi_status acpi_ex_system_do_stall(u32 how_long_us)
>  {
>         acpi_status status = AE_OK;
>
>         ACPI_FUNCTION_ENTRY();
>
> -       if (how_long > 255) {   /* 255 microseconds */
> +       if (how_long_us > 255) {        /* 255 microseconds */
>                 /*
>                  * Longer than 255 usec, this is an error
>                  *
> @@ -134,10 +134,10 @@ acpi_status acpi_ex_system_do_stall(u32 how_long)
>                  * order to support existing BIOSs)
>                  */
>                 ACPI_ERROR((AE_INFO,
> -                           "Time parameter is too large (%u)", how_long));
> +                           "Time parameter is too large (%u)", how_long_us));
>                 status = AE_AML_OPERAND_VALUE;
>         } else {
> -               acpi_os_stall(how_long);
> +               acpi_os_stall(how_long_us);
>         }
>
>         return (status);
> @@ -147,7 +147,7 @@ acpi_status acpi_ex_system_do_stall(u32 how_long)
>   *
>   * FUNCTION:    acpi_ex_system_do_sleep
>   *
> - * PARAMETERS:  how_long        - The amount of time to sleep,
> + * PARAMETERS:  how_long_ms     - The amount of time to sleep,
>   *                                in milliseconds
>   *
>   * RETURN:      None
> @@ -156,7 +156,7 @@ acpi_status acpi_ex_system_do_stall(u32 how_long)
>   *
>   ******************************************************************************/
>
> -acpi_status acpi_ex_system_do_sleep(u64 how_long)
> +acpi_status acpi_ex_system_do_sleep(u64 how_long_ms)
>  {
>         ACPI_FUNCTION_ENTRY();
>
> @@ -168,11 +168,11 @@ acpi_status acpi_ex_system_do_sleep(u64 how_long)
>          * For compatibility with other ACPI implementations and to prevent
>          * accidental deep sleeps, limit the sleep time to something reasonable.
>          */
> -       if (how_long > ACPI_MAX_SLEEP) {
> -               how_long = ACPI_MAX_SLEEP;
> +       if (how_long_ms > ACPI_MAX_SLEEP) {
> +               how_long_ms = ACPI_MAX_SLEEP;
>         }
>
> -       acpi_os_sleep(how_long);
> +       acpi_os_sleep(how_long_ms);
>
>         /* And now we must get the interpreter again */
>
> --
> 2.35.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
