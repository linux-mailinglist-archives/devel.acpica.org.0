Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A3045AABF
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Nov 2021 19:03:39 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 19807100EAB18;
	Tue, 23 Nov 2021 10:03:37 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.174; helo=mail-oi1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4BAFC100EB83A
	for <devel@acpica.org>; Tue, 23 Nov 2021 10:03:34 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id q25so46307774oiw.0
        for <devel@acpica.org>; Tue, 23 Nov 2021 10:03:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6eTpqnVuWiy6J9/pK85SFmtlKrVau8JlSwHmWLQrrZc=;
        b=EZ/jo7GcpVmOUJJhuJEmhokSQwAr290szkZyB9iAb4nP0lwZmT821grAkrA4wC4/Id
         d32kET8IvIqTSi1sSP2WGILpIULSKeyKKh6OQO99BNCkE0jEjrx9fVtitpwFJ08vpuiR
         rEtIUSubWrVgG0JKLnqW8Gs+aZtDo0uP9as0IWCuKtK6N9dxmPP7fmV7vmHcFzRjRnqH
         7P9g8ht3NFBDUdqWl94cb/2fnqfn5U9oCUF2l1vNcClE4DO3jfezm1lnIqdq0Bpxw0/1
         is2QCDEIekwpEbpD1b+1EL3EI3zG7UUGEtYiP5+/GqheSADpsWRWcxr9H4Sg8UsGrjs3
         j8cA==
X-Gm-Message-State: AOAM531qFdPASODTgCNXgT8HiLwFR4a3B9wEfVoz71wMRn3f1k2Z/ZJt
	9GM7oAQQ7z8A4sScdf2ZibOQOYgZ3qyloRy6/EQ=
X-Google-Smtp-Source: ABdhPJw3CPdiusK2j7KExKEEOfGfmKQp+tyKGKo2YlgWNtr7tduXngTF0kV4LWdRMiGXU6lIL7vAAyhpi+UipVAcmyY=
X-Received: by 2002:a05:6808:e90:: with SMTP id k16mr4287594oil.166.1637690612921;
 Tue, 23 Nov 2021 10:03:32 -0800 (PST)
MIME-Version: 1.0
References: <20211110111640.62807-1-andriy.shevchenko@linux.intel.com> <YZ0XXoH05cUQ+UMj@smile.fi.intel.com>
In-Reply-To: <YZ0XXoH05cUQ+UMj@smile.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Nov 2021 19:03:21 +0100
Message-ID: <CAJZ5v0iz-rRV8dktYCe5L-u_zG3vp5S2ZuF=gjrsfgLgcQSnow@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: VO3L2MPAXDFZPIDIANCQZOWOOKCHUBTP
X-Message-ID-Hash: VO3L2MPAXDFZPIDIANCQZOWOOKCHUBTP
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Wei Liu <wei.liu@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: Replace kernel.h with the necessary inclusions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VO3L2MPAXDFZPIDIANCQZOWOOKCHUBTP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 23, 2021 at 5:31 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Nov 10, 2021 at 01:16:40PM +0200, Andy Shevchenko wrote:
> > When kernel.h is used in the headers it adds a lot into dependency hell,
> > especially when there are circular dependencies are involved.
> >
> > Replace kernel.h inclusion with the list of what is really being used.
>
> Anybody any comments on this? I really want to shrink kernel.h usage in
> headers rather sooner than later...

Patch applied as 5.17 material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
