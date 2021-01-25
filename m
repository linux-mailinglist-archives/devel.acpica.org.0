Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D073027FA
	for <lists+devel-acpica@lfdr.de>; Mon, 25 Jan 2021 17:37:20 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 26F0F100EBBA2;
	Mon, 25 Jan 2021 08:37:19 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.182; helo=mail-oi1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DE3CD100EBBA0
	for <devel@acpica.org>; Mon, 25 Jan 2021 08:37:16 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id j25so9971307oii.0
        for <devel@acpica.org>; Mon, 25 Jan 2021 08:37:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3xeQ4V23Ajf5fj66wtkSzJjEt/RWXVdHo+ey/AICDyc=;
        b=GDZr+iLinj70kurQg2y+yMW+WM2YyqSUZQyR4YOg8AQ3x17uoF+vdyE21dKblkpWGG
         g/eifl9YW1jLpoXpGHtXPuKCEGVxdh0GmhxfwJoj+7iwEqacELSCI7N7XburaSjB/1CE
         MDn7HSWI7RjOp5h5Il6t1t5akDPt58LOjgda2pkRjLT5DOoxpYvf/fSKyf7fFLL+9gBX
         7VPqFn51wxNyCBqaW68zdByW7Q//2nvifskVEeu/EurL44ubS1krTdezoDuOjay72zMN
         9jB3bIYVwOO36YIU5qwDFvsVpS5F1j4BF6ePGjnXxQX6CXooBrkHU29OAAcGNAI6WcC+
         50zA==
X-Gm-Message-State: AOAM532GzCoLhCj9cXHJb6x7ONRi+eQbbxK6MbJtfnIZQ3St/HcLIZuR
	QQx4igyN0MJNO7uhQ0oGQ/cu+XwkcEzw6qr4X4w=
X-Google-Smtp-Source: ABdhPJxjRlUgCEKHb3d4EfwuMsvvXF/vB9vBF321DUZ5odkmJ08s6Xskq8JzSa+KaGuiD2jSk/yXwGJx+kFv8DTR/UI=
X-Received: by 2002:aca:fc84:: with SMTP id a126mr641643oii.71.1611592635634;
 Mon, 25 Jan 2021 08:37:15 -0800 (PST)
MIME-Version: 1.0
References: <20210124113252.733716-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20210124113252.733716-1-christophe.jaillet@wanadoo.fr>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 25 Jan 2021 17:37:03 +0100
Message-ID: <CAJZ5v0hooTkVjXg-Emsr49aqV3PukEJYSJw03PEXxPYtSu+j0w@mail.gmail.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID-Hash: XKY6CHDDGQ7NHT7X636G37HSC4IYQDFD
X-Message-ID-Hash: XKY6CHDDGQ7NHT7X636G37HSC4IYQDFD
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Common: Fix a typo
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XKY6CHDDGQ7NHT7X636G37HSC4IYQDFD/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jan 24, 2021 at 12:35 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:
>
> This module is 'cmfsize', not 'cfsize'.
> Fix it.
>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

I'm leaving this one to Bob and Erik, thanks!

> ---
>  tools/power/acpi/common/cmfsize.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/power/acpi/common/cmfsize.c b/tools/power/acpi/common/cmfsize.c
> index 9ea2c0aeb86c..185b8c588e1d 100644
> --- a/tools/power/acpi/common/cmfsize.c
> +++ b/tools/power/acpi/common/cmfsize.c
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: BSD-3-Clause OR GPL-2.0
>  /******************************************************************************
>   *
> - * Module Name: cfsize - Common get file size function
> + * Module Name: cmfsize - Common get file size function
>   *
>   * Copyright (C) 2000 - 2021, Intel Corp.
>   *
> --
> 2.27.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
