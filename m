Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 703CE44C43C
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Nov 2021 16:19:39 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9A3D9100EB33A;
	Wed, 10 Nov 2021 07:19:06 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49; helo=mail-ot1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8AB6E100EB825
	for <devel@acpica.org>; Wed, 10 Nov 2021 07:19:04 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id h16-20020a9d7990000000b0055c7ae44dd2so4333713otm.10
        for <devel@acpica.org>; Wed, 10 Nov 2021 07:19:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Gn4NXulRfPuVM6KUv95m+3nADi6hotMYCA1rfCDNUYU=;
        b=ty5KRjOxMSbNZ5xqrnUrP36gxRYfpO/cir4IpeS5o6bMqOZ1MVOQU2vbYHnFmBNBUD
         nUmJgw5GPPeyOjIirviW5wkEZHVadwZAqeeVZSVR4Kz3/UogJFZYNiX2rJFJUHuP4isL
         y/biMRctyTxpOOhklrL/jMlT8cw1WOV0dpbVkcCeNewX/LxwMtyxctD4WDvAhcK3pCze
         8hrIVZNf02BlhCWf72XaT/UZq1VjWoLygyMowIKcReSbtKvYRwSqbQPzSxPB9Y1Jn4w/
         zXENpoEXcgERYc8C5nx8d7y1ZwVAnv3lDd5cV4dw7jYqQX384JkkX9uYNO9ozheQ9jV0
         Rpwg==
X-Gm-Message-State: AOAM533+Du8wIDVN+Hx9iVttbxN1zawIcgNebN8mfyg3MGOT1P8S81y6
	vTMFk2bfXWK5l+F1SVCEZpAQkGOFdiqYY93ra3dQX7N2AqI=
X-Google-Smtp-Source: ABdhPJxEoDknBuyxRYbB8eHBw8gzAsCfZbuy4YPeQ8DvlEGEZWVpK1ilNlBT5BrZN69YTfeATsp39ve5q/88cBFJAmI=
X-Received: by 2002:a4a:ab04:: with SMTP id i4mr321251oon.91.1636557528836;
 Wed, 10 Nov 2021 07:18:48 -0800 (PST)
MIME-Version: 1.0
References: <20211109010918.1192063-1-sashal@kernel.org> <20211109010918.1192063-15-sashal@kernel.org>
 <BYAPR11MB3256001FA32D50DE6F56425087939@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256001FA32D50DE6F56425087939@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 10 Nov 2021 16:18:37 +0100
Message-ID: <CAJZ5v0gwW=5CNObEi3SpXLhaA8oeP4VYfkWoQv9iDjwQLxE_yA@mail.gmail.com>
To: "Moore, Robert" <robert.moore@intel.com>
Message-ID-Hash: UBEPVKAOO6VN7AN4Q7BXBSD4KINYJ65A
X-Message-ID-Hash: UBEPVKAOO6VN7AN4Q7BXBSD4KINYJ65A
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sasha Levin <sashal@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, Reik Keutterling <spielkind@gmail.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH AUTOSEL 4.4 15/30] ACPICA: Avoid evaluating methods too early during system resume
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UBEPVKAOO6VN7AN4Q7BXBSD4KINYJ65A/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Bob,

This is the Linux version of ACPICA commit
0762982923f95eb652cf7ded27356b247c9774de and now it has been
automatically selected for backporting into the "stable" kernel
versions.

On Wed, Nov 10, 2021 at 4:10 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> Sasha,
> Can you re-do this patch in native ACPICA format, then add a pull request to our github?
>
> Thanks,
> Bob
>
>
> -----Original Message-----
> From: Sasha Levin <sashal@kernel.org>
> Sent: Monday, November 08, 2021 5:09 PM
> To: linux-kernel@vger.kernel.org; stable@vger.kernel.org
> Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Reik Keutterling <spielkind@gmail.com>; Sasha Levin <sashal@kernel.org>; Moore, Robert <robert.moore@intel.com>; linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: [PATCH AUTOSEL 4.4 15/30] ACPICA: Avoid evaluating methods too early during system resume
>
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> [ Upstream commit d3c4b6f64ad356c0d9ddbcf73fa471e6a841cc5c ]
>
> ACPICA commit 0762982923f95eb652cf7ded27356b247c9774de
>
> During wakeup from system-wide sleep states, acpi_get_sleep_type_data() is called and it tries to get memory from the slab allocator in order to evaluate a control method, but if KFENCE is enabled in the kernel, the memory allocation attempt causes an IRQ work to be queued and a self-IPI to be sent to the CPU running the code which requires the memory controller to be ready, so if that happens too early in the wakeup path, it doesn't work.
>
> Prevent that from taking place by calling acpi_get_sleep_type_data() for S0 upfront, when preparing to enter a given sleep state, and saving the data obtained by it for later use during system wakeup.
>
> BugLink: https://bugzilla.kernel.org/show_bug.cgi?id=214271
> Reported-by: Reik Keutterling <spielkind@gmail.com>
> Tested-by: Reik Keutterling <spielkind@gmail.com>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/acpi/acpica/acglobal.h  |  2 ++  drivers/acpi/acpica/hwesleep.c  |  8 ++------
>  drivers/acpi/acpica/hwsleep.c   | 11 ++++-------
>  drivers/acpi/acpica/hwxfsleep.c |  7 +++++++
>  4 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/acpi/acpica/acglobal.h b/drivers/acpi/acpica/acglobal.h index faa97604d878e..f178d11597c09 100644
> --- a/drivers/acpi/acpica/acglobal.h
> +++ b/drivers/acpi/acpica/acglobal.h
> @@ -256,6 +256,8 @@ extern struct acpi_bit_register_info
>
>  ACPI_GLOBAL(u8, acpi_gbl_sleep_type_a);  ACPI_GLOBAL(u8, acpi_gbl_sleep_type_b);
> +ACPI_GLOBAL(u8, acpi_gbl_sleep_type_a_s0); ACPI_GLOBAL(u8,
> +acpi_gbl_sleep_type_b_s0);
>
>  /*****************************************************************************
>   *
> diff --git a/drivers/acpi/acpica/hwesleep.c b/drivers/acpi/acpica/hwesleep.c index e5599f6108083..e4998cc0ce283 100644
> --- a/drivers/acpi/acpica/hwesleep.c
> +++ b/drivers/acpi/acpica/hwesleep.c
> @@ -184,17 +184,13 @@ acpi_status acpi_hw_extended_sleep(u8 sleep_state)
>
>  acpi_status acpi_hw_extended_wake_prep(u8 sleep_state)  {
> -       acpi_status status;
>         u8 sleep_type_value;
>
>         ACPI_FUNCTION_TRACE(hw_extended_wake_prep);
>
> -       status = acpi_get_sleep_type_data(ACPI_STATE_S0,
> -                                         &acpi_gbl_sleep_type_a,
> -                                         &acpi_gbl_sleep_type_b);
> -       if (ACPI_SUCCESS(status)) {
> +       if (acpi_gbl_sleep_type_a_s0 != ACPI_SLEEP_TYPE_INVALID) {
>                 sleep_type_value =
> -                   ((acpi_gbl_sleep_type_a << ACPI_X_SLEEP_TYPE_POSITION) &
> +                   ((acpi_gbl_sleep_type_a_s0 << ACPI_X_SLEEP_TYPE_POSITION) &
>                      ACPI_X_SLEEP_TYPE_MASK);
>
>                 (void)acpi_write((u64)(sleep_type_value | ACPI_X_SLEEP_ENABLE), diff --git a/drivers/acpi/acpica/hwsleep.c b/drivers/acpi/acpica/hwsleep.c index 7d21cae6d6028..7e44ba8c6a1ab 100644
> --- a/drivers/acpi/acpica/hwsleep.c
> +++ b/drivers/acpi/acpica/hwsleep.c
> @@ -217,7 +217,7 @@ acpi_status acpi_hw_legacy_sleep(u8 sleep_state)
>
>  acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)  {
> -       acpi_status status;
> +       acpi_status status = AE_OK;
>         struct acpi_bit_register_info *sleep_type_reg_info;
>         struct acpi_bit_register_info *sleep_enable_reg_info;
>         u32 pm1a_control;
> @@ -230,10 +230,7 @@ acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)
>          * This is unclear from the ACPI Spec, but it is required
>          * by some machines.
>          */
> -       status = acpi_get_sleep_type_data(ACPI_STATE_S0,
> -                                         &acpi_gbl_sleep_type_a,
> -                                         &acpi_gbl_sleep_type_b);
> -       if (ACPI_SUCCESS(status)) {
> +       if (acpi_gbl_sleep_type_a_s0 != ACPI_SLEEP_TYPE_INVALID) {
>                 sleep_type_reg_info =
>                     acpi_hw_get_bit_register_info(ACPI_BITREG_SLEEP_TYPE);
>                 sleep_enable_reg_info =
> @@ -254,9 +251,9 @@ acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)
>
>                         /* Insert the SLP_TYP bits */
>
> -                       pm1a_control |= (acpi_gbl_sleep_type_a <<
> +                       pm1a_control |= (acpi_gbl_sleep_type_a_s0 <<
>                                          sleep_type_reg_info->bit_position);
> -                       pm1b_control |= (acpi_gbl_sleep_type_b <<
> +                       pm1b_control |= (acpi_gbl_sleep_type_b_s0 <<
>                                          sleep_type_reg_info->bit_position);
>
>                         /* Write the control registers and ignore any errors */ diff --git a/drivers/acpi/acpica/hwxfsleep.c b/drivers/acpi/acpica/hwxfsleep.c index d62a61612b3f1..b04e2b0f62246 100644
> --- a/drivers/acpi/acpica/hwxfsleep.c
> +++ b/drivers/acpi/acpica/hwxfsleep.c
> @@ -372,6 +372,13 @@ acpi_status acpi_enter_sleep_state_prep(u8 sleep_state)
>                 return_ACPI_STATUS(status);
>         }
>
> +       status = acpi_get_sleep_type_data(ACPI_STATE_S0,
> +                                         &acpi_gbl_sleep_type_a_s0,
> +                                         &acpi_gbl_sleep_type_b_s0);
> +       if (ACPI_FAILURE(status)) {
> +               acpi_gbl_sleep_type_a_s0 = ACPI_SLEEP_TYPE_INVALID;
> +       }
> +
>         /* Execute the _PTS method (Prepare To Sleep) */
>
>         arg_list.count = 1;
> --
> 2.33.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
