Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C2921F321
	for <lists+devel-acpica@lfdr.de>; Tue, 14 Jul 2020 15:55:16 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 462ED115765F6;
	Tue, 14 Jul 2020 06:55:15 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.45; helo=mail-ot1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 31B0B1155FE9A
	for <devel@acpica.org>; Tue, 14 Jul 2020 06:55:10 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id w17so13102573otl.4
        for <devel@acpica.org>; Tue, 14 Jul 2020 06:55:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2DHbXEMPR9kKKspzgGqTKK3b3d08bDvPNu5F8TGYfWU=;
        b=cJIE3FXU8XNZR27wBxhIRJ9D76lBIagOTB4+WcQJhtVHuIabdeHl9ODFarfAQ+Vnub
         ordbpOygZFe1xHt+akSkj4DURx9+m0Vxw/jR+GRnx1UHOpsrW0zEpnmaflf2RldbHyUF
         POhoG8vKU9PHxyfgxOTvfWp4MXdk5eStgnmQe/A6QvG1kwkAke/YD/XFhRJrg+AAnL1m
         ZjXjujvJKvqW1DRwvSNNhhV5gyj3hkuxcjswryprRQ/5TAwnKfdiT+CsD/B7EaYlGCzH
         iZGRJuYzYQ3iAdDZIW+DCcrckW4V3ZrmoBXlwWcx8h+hifukEuENnGWLgQOX7axO9rxt
         Tz5Q==
X-Gm-Message-State: AOAM530iu5Nm4ghbzNvAVoVhnGSTSmliQzOG7oAZQpn0AhrYY/Lr3JyH
	132wYx/EIvwp6mggB5DnQOtKpRruAZR2TVLGhIA=
X-Google-Smtp-Source: ABdhPJxwEm4PTUOI0UF+niRi3EZCrOpeSa0d4wfKvfZGhADzLG6hbvLCLsM2/amZ+VypzLrCVW+fSTq5yBHWYfZZe20=
X-Received: by 2002:a05:6830:30ba:: with SMTP id g26mr4048682ots.118.1594734908915;
 Tue, 14 Jul 2020 06:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200615145130.bcdidqkp6w23xb6c@linutronix.de>
 <87tuzbh482.fsf@gmx.net> <20200616073827.vysntufld3ves666@linutronix.de>
 <87o8pjh1i0.fsf@gmx.net> <20200616155501.psduxnisltitodme@linutronix.de>
 <871rmesqkk.fsf@gmx.net> <20200617142734.mxwfoblufmo6li5e@linutronix.de>
 <87ftatqu07.fsf@gmx.net> <20200624201156.xu6hel3drnhno6c3@linutronix.de>
 <87ftak2kxr.fsf@rub.de> <20200714134410.3odqfvjq6rndjjf6@linutronix.de>
In-Reply-To: <20200714134410.3odqfvjq6rndjjf6@linutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 14 Jul 2020 15:54:57 +0200
Message-ID: <CAJZ5v0hZSUkEMCszDADGWk-v0xNEiDE45B3CHLi05BX6rPfm6g@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID-Hash: O6PAFLBIMXMMZOJJT6TVKPLGIOXELFMQ
X-Message-ID-Hash: O6PAFLBIMXMMZOJJT6TVKPLGIOXELFMQ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Stephen Berman <stephen.berman@gmx.net>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O6PAFLBIMXMMZOJJT6TVKPLGIOXELFMQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 14, 2020 at 3:44 PM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:>
> On 2020-06-24 23:49:52 [+0200], Stephen Berman wrote:
>
> Let me summarize the thread here:
>
> On Stephen's system, ACPI informs the thermal zone driver to poll the
> temperature every second and the driver does so.
> The driver queries the temperature by invoking acpi_evaluate_integer()
> which invokes (at some point) acpi_ev_queue_notify_request().

Well, I don't quite see how acpi_ev_queue_notify_request() can be
invoked from the acpi_evaluate_integer() code path.

Do you have a call trace showing that?

> This then invokes acpi_os_execute_deferred() via
>     queue_work_on(, kacpi_notify_wq, )
>
> acpi_os_execute_deferred() invokes acpi_ev_notify_dispatch() and this is
> no longer synchronised with the initial acpi_evaluate_integer() request.

That indeed would be the case, but I first need to understand what's
going on with the acpi_evaluate_integer() causing a Notify () to be
queued up.

Cheers!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
