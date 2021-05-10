Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C55E4379574
	for <lists+devel-acpica@lfdr.de>; Mon, 10 May 2021 19:24:56 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 96B40100EBB61;
	Mon, 10 May 2021 10:24:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.52; helo=mail-oo1-f52.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 242B7100EBBCB
	for <devel@acpica.org>; Mon, 10 May 2021 10:24:50 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id c12-20020a4ae24c0000b02901bad05f40e4so3632149oot.4
        for <devel@acpica.org>; Mon, 10 May 2021 10:24:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9SXuLvWg3KjN+JqmbvmLSLywnYwrjuAJqCkQskXCj0c=;
        b=ghQTlrS0n9lhirPsbWtusNbgkYQImTT2brU0uYeDvyxrufVn/wyU2FTS0ZiIv2xgkU
         JeeeDvAC7bz0H0RluZng4TNNq656yiATf482k9A+n2RU5ywqjbTNwSrurUmmpUsHwwRG
         TQhoQUa5C4p9wVM1qqtB6bxj2Ank9TwwMIJcaIqL4InJr997XadIw2kRwcgg/ogzWpj1
         JkzOllXd1svvDnkZjU+Uo22S5p3U+JstZZhtj8OyRq5j1RHysq3+RLZYl+bN3owvvPC8
         vNVBLWfPmNGG/OSYxQUzRxGkrJYpblZpXExJ3xOy2E79imnmmQbOp6jGm6qGtuP3K2wM
         dDBQ==
X-Gm-Message-State: AOAM530HW6XFC1ChKO44aThvecVlEJZlUWdBtkQZl2FliRKUed8z+Ao/
	2//s2YL1LxJ7HDX1ZArl7dC6EYNg81MBMJHdXIw=
X-Google-Smtp-Source: ABdhPJzwswJbWq9pBS/asjw2XXIwyKlMuYXJI2Y1gk1Yxte0zCZydzcU2dUf5kBLVvZdwuYdtU6sWEV1HxZ0wSIlbUc=
X-Received: by 2002:a4a:ab83:: with SMTP id m3mr6209836oon.2.1620667489272;
 Mon, 10 May 2021 10:24:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210426023941.729334-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <20210426023941.729334-4-sathyanarayanan.kuppuswamy@linux.intel.com>
 <97e14cdc-ea98-18b8-0c89-db52440a7716@linux.intel.com> <CAJZ5v0gsqyXSr+Kw603333PZ=gnsBizNhyLAcu588OChEHT=AQ@mail.gmail.com>
 <4fa40e7a-bcb2-db0f-8dc5-28728b14377d@linux.intel.com> <20210510172237.GU4032392@tassilo.jf.intel.com>
In-Reply-To: <20210510172237.GU4032392@tassilo.jf.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 10 May 2021 19:24:38 +0200
Message-ID: <CAJZ5v0iFsBWwXhqtLbTMicBSFme0HCvg+2xgtMgpkFMupk_Rkw@mail.gmail.com>
To: Andi Kleen <ak@linux.intel.com>
Message-ID-Hash: RG3TBAVXXZIBXTMKLKY3OX3BNZAZN7FG
X-Message-ID-Hash: RG3TBAVXXZIBXTMKLKY3OX3BNZAZN7FG
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Kuppuswamy, Sathyanarayanan" <sathyanarayanan.kuppuswamy@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Rafael J Wysocki <rjw@rjwysocki.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>, Sean Christopherson <sean.j.christopherson@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 3/3] x86/acpi, x86/boot: Add multiprocessor wake-up support
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RG3TBAVXXZIBXTMKLKY3OX3BNZAZN7FG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 10, 2021 at 7:22 PM Andi Kleen <ak@linux.intel.com> wrote:
>
> On Mon, May 10, 2021 at 10:10:24AM -0700, Kuppuswamy, Sathyanarayanan wrote:
> >
> >
> > On 5/10/21 9:55 AM, Rafael J. Wysocki wrote:
> > > I'm not sure how my comment regarding the fact that for a given CPU
> > > this function is only usable once has been addressed.
> > >
> > > While it may not be a practical concern in the use case that you are
> > > after (TDX), this is a generic mechanism and it needs to cover other
> > > possible usage scenarios.
> >
> > For the same CPU, if we try to use mailbox again, firmware will not
> > respond to it. So the command will timeout and return error.
>
> Right because the firmware code doesn't run anymore.
>
> The only possibility would be for Linux to put back some code that spins
> and waits again, but that would be quite pointless and wasteful.

The wakeup function can return an error when it is called for the
second time on the same CPU.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
