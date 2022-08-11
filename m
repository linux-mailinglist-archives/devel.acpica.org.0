Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC2259036D
	for <lists+devel-acpica@lfdr.de>; Thu, 11 Aug 2022 18:25:26 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D0CE8100EA900;
	Thu, 11 Aug 2022 09:25:22 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.181; helo=mail-yw1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AF433100EAB1F
	for <devel@acpica.org>; Thu, 11 Aug 2022 09:25:20 -0700 (PDT)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-31f661b3f89so177679367b3.11
        for <devel@acpica.org>; Thu, 11 Aug 2022 09:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=JGzD77U2Oto0Aqe+gV/4YCX3SgodzAwICFq6gJm9KqQ=;
        b=Hbmj7JgLKFP4sj7CVbeEvMe5J3sFbCayZ51yKlnEGcW7xolrojZAyv14RuUFntBQ33
         qX9Yn0C9jIGQPMvHUI83XhalHJdUnT0fZiP4ryjKI4FYh+YD886hf4rMdyvmDtIveZDY
         JkK7R3z7ffTKU9TYstwChUnXtKWT2wp3gF/T0ogJUDEYQeLUAEcM6uH0zewelUppukzh
         YP263rpKGt2qtCusvr1SPv5RQPOmmXntIOoVnKLIrcqhDUd8F5gPJo7ze0uGXeiuv0Fg
         9dsfEuQVjR8CyUIGYDR1I+WNprd2xWwlhWB4kIviBYazB/+HVyVONTaflu63Dj4ppZnn
         1dBQ==
X-Gm-Message-State: ACgBeo0mUgIeOf06UuMWD48Jx/hi9AWWEJFrhMLOO3syaGC8ys2nc/nK
	J90/vYISz0zP5B2mOOQejr9zSjJOSwH6kpbh+YM=
X-Google-Smtp-Source: AA6agR7xQjC2PfNKM8PnGugI3psJeIEWfvzwZah5ZiCgr9LZ9PxKFGb9Z0NdfE7pGOMoE9xaZ+b4si/z8AoIkxnSrz4=
X-Received: by 2002:a81:ae0a:0:b0:324:59ab:feec with SMTP id
 m10-20020a81ae0a000000b0032459abfeecmr34997601ywh.7.1660235118995; Thu, 11
 Aug 2022 09:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220811154357.18674-1-dengshaomin@cdjrlc.com>
In-Reply-To: <20220811154357.18674-1-dengshaomin@cdjrlc.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 11 Aug 2022 18:25:08 +0200
Message-ID: <CAJZ5v0gRUmMu7zGgH3F32C8DB6RsOqnNPw+L8023A89Tiqy-qw@mail.gmail.com>
To: Shaomin Deng <dengshaomin@cdjrlc.com>
Message-ID-Hash: WQCWFDUHDW3WA6NAXMNDESMHON3BUBWU
X-Message-ID-Hash: WQCWFDUHDW3WA6NAXMNDESMHON3BUBWU
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Fix typo in comments
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WQCWFDUHDW3WA6NAXMNDESMHON3BUBWU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Aug 11, 2022 at 5:53 PM Shaomin Deng <dengshaomin@cdjrlc.com> wrote:
>
> Delete the repeated word "method" in comments.
>
> Signed-off-by: Shaomin Deng <dengshaomin@cdjrlc.com>

Please note that the ACPICA changes need to be submitted to the
upstream ACPICA project on github.  If your change is applicable to
that code base, please consider submitting a pull request for it on
github.

> ---
>  drivers/acpi/acpica/psparse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/psparse.c b/drivers/acpi/acpica/psparse.c
> index ba93f359760a..b0faab1e6d3f 100644
> --- a/drivers/acpi/acpica/psparse.c
> +++ b/drivers/acpi/acpica/psparse.c
> @@ -508,7 +508,7 @@ acpi_status acpi_ps_parse_aml(struct acpi_walk_state *walk_state)
>                         }
>
>                         /*
> -                        * If the transfer to the new method method call worked,
> +                        * If the transfer to the new method call worked,
>                          * a new walk state was created -- get it
>                          */
>                         walk_state = acpi_ds_get_current_walk_state(thread);
> --
> 2.35.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
