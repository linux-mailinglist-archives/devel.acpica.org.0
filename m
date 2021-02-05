Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E6D310B55
	for <lists+devel-acpica@lfdr.de>; Fri,  5 Feb 2021 13:50:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 91347100EA2D6;
	Fri,  5 Feb 2021 04:50:11 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49; helo=mail-ot1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0A8ED100EA2D5
	for <devel@acpica.org>; Fri,  5 Feb 2021 04:49:26 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id t25so6763609otc.5
        for <devel@acpica.org>; Fri, 05 Feb 2021 04:49:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NqRyDP3o2KaV0mpb9HT15XfChTbTMwx2Qv/rMgDpYEw=;
        b=mZFqxjTckVqmx2cczn4YLK3WdXRzhphO1I37uvsnde5iZUewkrf10dySMGE9taL8vg
         RfVJjjxJ3XJQvkXuryUDIBbstFpwTCk91LSXAgxHFAtgFF4JYNPGAmCPkWpRGJTs3Hj2
         xyCLlETqXTVtHuU8x/DkywWnRLS6YQmJDuY0l2Q3ptyXMyKLaxI9VgXERs0RAIYUflWe
         ePuiGwNaTWmLDbctTVR17+KZPvTKXHkFw6U89b0RvwQsUpY07WBiEB3HgiFhzJZHvZuY
         5rQe+lhEgeAgFOQTkhlQxTIi1YO4FZjOBIDeg3wx1UA6lMlpKmF1KnSIb7KbI13HenXY
         lRZA==
X-Gm-Message-State: AOAM532OrhrBo4h4U3ZeG1QtiioN5DhdaAXzJzP8P6vbkcDD0pZhqU0c
	HpuSsUQDguDdQg7AO1+nsumE1Orcd1iGNWNiCac=
X-Google-Smtp-Source: ABdhPJxIPFvDHycbQBhWwuaGY1zHG6BD0M4BzNHUb6Ucxne4yGWgioJ9OdGOLZrLRU3//xDNrSTzUBj0T6tt0Kk847c=
X-Received: by 2002:a9d:7a4a:: with SMTP id z10mr3364809otm.206.1612529366005;
 Fri, 05 Feb 2021 04:49:26 -0800 (PST)
MIME-Version: 1.0
References: <20210203154437.15949-1-unixbhaskar@gmail.com>
In-Reply-To: <20210203154437.15949-1-unixbhaskar@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 5 Feb 2021 13:49:11 +0100
Message-ID: <CAJZ5v0i63RqvJNT1xfeX2yRvLkraj+89DW8z0XUZ2jHp0Bt40w@mail.gmail.com>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Message-ID-Hash: UKBZDONZUK6L5FEMUFRTBJ2BZPOONTFR
X-Message-ID-Hash: UKBZDONZUK6L5FEMUFRTBJ2BZPOONTFR
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] include: acpi: Correct spelling in the file acoutput.h is optimzation to optimization
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UKBZDONZUK6L5FEMUFRTBJ2BZPOONTFR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 3, 2021 at 4:45 PM Bhaskar Chowdhury <unixbhaskar@gmail.com> wrote:
>
>
> s/optimzation/optimization/
>
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> ---
>  include/acpi/acoutput.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/acpi/acoutput.h b/include/acpi/acoutput.h
> index c5d900c0ecda..1ba212372e79 100644
> --- a/include/acpi/acoutput.h
> +++ b/include/acpi/acoutput.h
> @@ -362,7 +362,7 @@
>   *
>   * A less-safe version of the macros is provided for optional use if the
>   * compiler uses excessive CPU stack (for example, this may happen in the
> - * debug case if code optimzation is disabled.)
> + * debug case if code optimization is disabled.)
>   */
>
>  /* Exit trace helper macro */
> --

The file being updated is part of ACPICA, so I'm leaving this to Erik
& Bob, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
