Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A71F721F684
	for <lists+devel-acpica@lfdr.de>; Tue, 14 Jul 2020 17:53:30 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2911C1162E35D;
	Tue, 14 Jul 2020 08:53:29 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.194; helo=mail-oi1-f194.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6D07E11202ACA
	for <devel@acpica.org>; Tue, 14 Jul 2020 08:53:27 -0700 (PDT)
Received: by mail-oi1-f194.google.com with SMTP id l63so14261266oih.13
        for <devel@acpica.org>; Tue, 14 Jul 2020 08:53:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZsghvSlXCqKA5TycPVdHieRffX+h0fMKm3ZWSRwaSJk=;
        b=im0RTiAfEnk1ChYzyGvp5bRgQhA7zVrMYmQZmPD8R4ems3KImSVnaPKr52wjvBzW/a
         oFzSvlNHi5n9Tnmg1+YfpUvku2LcOVEivIY0OrfMeaLI2VNGif4RUJNlKTygkDo/X56h
         W9f/imxuY1/uCsnRnr6ADbTivKHCLf7w/hh8FfVC5nV2LoOZBq8O9bkTYZ57wiXaFZT1
         mUgwBgNZhYdfPHNDdv6YaayFmfZgbi8KSeZfFYM6FZqMbQDJKdjxz3p+zUuemMcawaq+
         Cl9RC2FR7YLT0LZh/4xwTekC0VWF3ku6VlVaxVll2zSkDryv39v3BM3MJ90ncibaS31a
         G2Jw==
X-Gm-Message-State: AOAM531Xc7X0uD4uV/yd60sXPTeFv8P/YkFH195ipUS6KUfdPzXH/Gox
	XaVdhH3GumfJybfIFmvNdHc833peXI+XBV7eP38=
X-Google-Smtp-Source: ABdhPJw9BaF0Zl8Hh2Y+DeuKLc3Omx2W+DkTyhLmTA9kzPXC1FceBizx/dz72dgTlAWyYI35nOkUk+YfKG0ktjpTRiY=
X-Received: by 2002:aca:f58a:: with SMTP id t132mr4103301oih.68.1594742006593;
 Tue, 14 Jul 2020 08:53:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200616073827.vysntufld3ves666@linutronix.de>
 <87o8pjh1i0.fsf@gmx.net> <20200616155501.psduxnisltitodme@linutronix.de>
 <871rmesqkk.fsf@gmx.net> <20200617142734.mxwfoblufmo6li5e@linutronix.de>
 <87ftatqu07.fsf@gmx.net> <20200624201156.xu6hel3drnhno6c3@linutronix.de>
 <87ftak2kxr.fsf@rub.de> <20200714134410.3odqfvjq6rndjjf6@linutronix.de>
 <CAJZ5v0hZSUkEMCszDADGWk-v0xNEiDE45B3CHLi05BX6rPfm6g@mail.gmail.com> <20200714141135.47adndrsdgpiqfy4@linutronix.de>
In-Reply-To: <20200714141135.47adndrsdgpiqfy4@linutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 14 Jul 2020 17:53:15 +0200
Message-ID: <CAJZ5v0iogereapmhcFi=iXHsjnzmC26mewUSTY3+5O3ei5kfDQ@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID-Hash: OMAZ7S275OLUBDWP5QGTMWLKTVV7GOI6
X-Message-ID-Hash: OMAZ7S275OLUBDWP5QGTMWLKTVV7GOI6
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Stephen Berman <stephen.berman@gmx.net>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OMAZ7S275OLUBDWP5QGTMWLKTVV7GOI6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 14, 2020 at 4:11 PM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2020-07-14 15:54:57 [+0200], Rafael J. Wysocki wrote:
> > On Tue, Jul 14, 2020 at 3:44 PM Sebastian Andrzej Siewior
> > <bigeasy@linutronix.de> wrote:>
> > > On 2020-06-24 23:49:52 [+0200], Stephen Berman wrote:
> > >
> > > Let me summarize the thread here:
> > >
> > > On Stephen's system, ACPI informs the thermal zone driver to poll the
> > > temperature every second and the driver does so.
> > > The driver queries the temperature by invoking acpi_evaluate_integer()
> > > which invokes (at some point) acpi_ev_queue_notify_request().
> >
> > Well, I don't quite see how acpi_ev_queue_notify_request() can be
> > invoked from the acpi_evaluate_integer() code path.
> >
> > Do you have a call trace showing that?
>
> So the trace in
>      https://lore.kernel.org/linux-acpi/87o8pjh1i0.fsf@gmx.net/
>
> shows the pattern and we nailed it down that it comes from
> thermal_get_temp().

acpi_evaluate_integer() doesn't show up in the trace, though, AFAICS.

> I assumed acpi_ex_opcode_2A_0T_0R() since the other
> candidate was acpi_ev_asynch_execute_gpe_method().

Which probably is the case.  Specifically

acpi_ev_asynch_execute_gpe_method: Evaluate _L66

is likely to cause the Notify() to be dispatched.

> Stephen, the patch attached adds a WARN_ON() statement which will
> produce a stack trace (4 or so). Could please run 'dmesg' after a while
> and send it back. There should be a
>     "WARNING in drivers/acpi/acpica/evmisc.c"
>
> statement or something along the lines.
>
> Rafael, are you also interested in an ACPI dump?

That might help a bit.

So what probably happens is that poking at the TZ causes a GPE to
trigger and a Notify() to be dispatched which then goes into the
workqueue for execution.

Now, I'm not sure what happens to those Notify() items, though.  They
each should cause a handler (in the thermal driver) to be executed,
but does that happen?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
