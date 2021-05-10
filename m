Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 570363794FD
	for <lists+devel-acpica@lfdr.de>; Mon, 10 May 2021 19:06:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E657C100EB823;
	Mon, 10 May 2021 10:06:18 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49; helo=mail-ot1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6360C100EBB61
	for <devel@acpica.org>; Mon, 10 May 2021 10:06:13 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id r26-20020a056830121ab02902a5ff1c9b81so15055192otp.11
        for <devel@acpica.org>; Mon, 10 May 2021 10:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h9Y41nhmPOPBNqykP2dYU1c45pvJNiEXKTzaxOZu5Kw=;
        b=m6S5u2IsqBpoyZv7LZjiJQqVRmvNoRnSRvhxU5pfFZNYUPYiPXs8Y0JOOltYhchu1t
         Dbd4is8jwnjbcvCTkqEIsMhU4VYiXETPdMWQnAT+ooMe+8mDYfEk2y6tdWatLb9Ipj+s
         ykYQniZotTZ6MjrJBwB1UXtQRvbS8rOS36twt7IkcgdYzVDfb2TIlF/iXqWvmOo5cjjb
         Q+vtKoQ3pSC5z9F8Ac9MMw1JdehHdhouO5T47Wz1OCd+lcqjTbHB+VH64eHiAEebbYyC
         G6yGcvCwtxpJnA7znPzedDzKrHORq4+A710KpvRS0rZxDmWjtQ2FnXKBpkL/CmHPyP+a
         Bmyg==
X-Gm-Message-State: AOAM530b6Y65ke2RTMojOsoqKc2tN2JPT9No+VgusWo8J/T2OXV7AmVM
	XN6sZlyUfq7hctPlXHlqiKUd5T3a0Sq8BLhgyZJLqrRO
X-Google-Smtp-Source: ABdhPJwXO1Jw0S4KQ/r/4CDdG06ee9HkhBEDrEUr3U13N8JuX70ha4RZNP2j2SuBwqJfzk5ake1vcXx10Au8gE+5XOU=
X-Received: by 2002:a9d:5a7:: with SMTP id 36mr22420958otd.321.1620666372712;
 Mon, 10 May 2021 10:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210506124912.7725-1-jj251510319013@gmail.com>
In-Reply-To: <20210506124912.7725-1-jj251510319013@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 10 May 2021 19:06:01 +0200
Message-ID: <CAJZ5v0hNXrh04yP3JA0OuvKx9v6b+BKROfX03RZYTC2-m4zkRg@mail.gmail.com>
To: Wei Ming Chen <jj251510319013@gmail.com>
Message-ID-Hash: J3CF74MODHSW5IWLMHZO72OJPVCXXZ34
X-Message-ID-Hash: J3CF74MODHSW5IWLMHZO72OJPVCXXZ34
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Use fallthrough pseudo-keyword
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/J3CF74MODHSW5IWLMHZO72OJPVCXXZ34/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 6, 2021 at 2:49 PM Wei Ming Chen <jj251510319013@gmail.com> wrote:
>
> Replace /* FALLTHROUGH */ comment with pseudo-keyword macro fallthrough[1]
>
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through
>
> Signed-off-by: Wei Ming Chen <jj251510319013@gmail.com>
> ---
>  drivers/acpi/acpica/utprint.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c
> index e37d612e8db5..0b511434b80b 100644
> --- a/drivers/acpi/acpica/utprint.c
> +++ b/drivers/acpi/acpica/utprint.c
> @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
>                 case 'X':
>
>                         type |= ACPI_FORMAT_UPPER;
> -                       /* FALLTHROUGH */
> +                       fallthrough;
>
>                 case 'x':
>
> --

This is ACPICA material, so I'm leaving it to Erik and Bob.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
