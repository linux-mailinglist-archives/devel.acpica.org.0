Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9060C13D716
	for <lists+devel-acpica@lfdr.de>; Thu, 16 Jan 2020 10:40:26 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3705A10096C96;
	Thu, 16 Jan 2020 01:43:43 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.193; helo=mail-oi1-f193.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0D44610096C92
	for <devel@acpica.org>; Thu, 16 Jan 2020 01:43:40 -0800 (PST)
Received: by mail-oi1-f193.google.com with SMTP id 18so18326614oin.9
        for <devel@acpica.org>; Thu, 16 Jan 2020 01:40:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ehZVRRgGA6K7LYKERYT9m9Kqby1XUIRO5leJf884LQg=;
        b=PA4QRC9n5xXY6b/jZGWCeGwcxWDPDsXHkVIDIuDVAFfnEnC2li9Cvv8hKjzU+eUVd/
         J3NXhleSjy9scaCwiLU+/E3EKNp2jLdbvXyBfNmkjMRfvNH2f3iwryVoFlqp4ZxaqYE9
         jhERjbRR482j+bGbKzWJ2FWU0rO4ZaLPrywo45Fqgyao5vKknQyFFWNCCjXXd5vSJawp
         7nOgMh93HqbeUyYgeRtPDUNSrfIadGZV94PWboHom2KI2BRMn/UgHBP0A24ODG1nIf6Q
         VAXk9KcKXr8g7b5IORazzYHedVyDc1roqc+a9mxkyvRHFWk2ypbwwY3M+lxbRWJszQH6
         QKOA==
X-Gm-Message-State: APjAAAUPOg86sk6LDeX3OpYp2C8LrDNV36HJiqPPilZKRRdAcE2lkNgC
	bJZghZZqauGSyjyF+onq+P1BTgOq+528tgwx0fw=
X-Google-Smtp-Source: APXvYqycvvoo15q+FPGQpz1gedkk2HzrTF+WByd8rPEEEg6NgUkf5VAlB3qg+1sxI+fx5OiEllxn+V4E7zXAb2JHu2Y=
X-Received: by 2002:aca:cd92:: with SMTP id d140mr3388803oig.68.1579167621279;
 Thu, 16 Jan 2020 01:40:21 -0800 (PST)
MIME-Version: 1.0
References: <20200115232629.GA9231@dev-dsk-anchalag-2a-9c2d1d96.us-west-2.amazon.com>
In-Reply-To: <20200115232629.GA9231@dev-dsk-anchalag-2a-9c2d1d96.us-west-2.amazon.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 16 Jan 2020 10:40:08 +0100
Message-ID: <CAJZ5v0iHVzDzS5zZSTWOdy2CCSkyW74+p2-Et0+EcysOvL2CDg@mail.gmail.com>
To: Anchal Agarwal <anchalag@amazon.com>, Erik Kaneda <erik.kaneda@intel.com>,
	Robert Moore <robert.moore@intel.com>
Message-ID-Hash: CNETZAGAGFCTDWTW4VUFMXEVNKU24UF7
X-Message-ID-Hash: CNETZAGAGFCTDWTW4VUFMXEVNKU24UF7
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Singh, Balbir" <sblbir@amazon.com>, fllinden@amazon.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RESEND PATCH] ACPICA: Enable sleep button on ACPI legacy wake
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CNETZAGAGFCTDWTW4VUFMXEVNKU24UF7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 16, 2020 at 12:26 AM Anchal Agarwal <anchalag@amazon.com> wrote:
>
> Currently we do not see sleep_enable bit set after guest resumes
> from hibernation. Hibernation is triggered in guest on receiving
> a sleep trigger from the hypervisor(S4 state). We see that power
> button is enabled on wake up from S4 state however sleep button
> isn't. This causes subsequent invocation of sleep state to fail
> in the guest. Any environment  going through acpi_hw_legacy_wake()
> won't have sleep button enabled.
>
> Signed-off-by: Anchal Agarwal <anchalag@amazon.com>
> Reviewed-by: Balbir Singh <sblbir@amazon.com>
> Reviewed-by: Frank van der Linden <fllinden@amazon.com>
> ---
>  drivers/acpi/acpica/hwsleep.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/acpi/acpica/hwsleep.c b/drivers/acpi/acpica/hwsleep.c
> index b62db8ec446f..a176c7802760 100644
> --- a/drivers/acpi/acpica/hwsleep.c
> +++ b/drivers/acpi/acpica/hwsleep.c
> @@ -300,6 +300,17 @@ acpi_status acpi_hw_legacy_wake(u8 sleep_state)
>                                     [ACPI_EVENT_POWER_BUTTON].
>                                     status_register_id, ACPI_CLEAR_STATUS);
>
> +       /* Enable sleep button */
> +       (void)
> +             acpi_write_bit_register(acpi_gbl_fixed_event_info
> +                                     [ACPI_EVENT_SLEEP_BUTTON].
> +                                     enable_register_id, ACPI_ENABLE_EVENT);
> +
> +       (void)
> +             acpi_write_bit_register(acpi_gbl_fixed_event_info
> +                                     [ACPI_EVENT_SLEEP_BUTTON].
> +                                     status_register_id, ACPI_CLEAR_STATUS);
> +
>         acpi_hw_execute_sleep_method(METHOD_PATHNAME__SST, ACPI_SST_WORKING);
>         return_ACPI_STATUS(status);
>  }

Erik, Bob, please pick this up if you don't have specific objections against it.

I'll wait for it to show up in an upstream release.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
