Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C53241C76
	for <lists+devel-acpica@lfdr.de>; Tue, 11 Aug 2020 16:34:28 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5F00212E4BD59;
	Tue, 11 Aug 2020 07:34:27 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.65; helo=mail-oo1-f65.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2F7C912E4BD56
	for <devel@acpica.org>; Tue, 11 Aug 2020 07:34:23 -0700 (PDT)
Received: by mail-oo1-f65.google.com with SMTP id z11so2662566oon.5
        for <devel@acpica.org>; Tue, 11 Aug 2020 07:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KIC4cfW+RcaIaHxzET6Mv7HV0tRxX9+Hs/NGmdFDqgQ=;
        b=LsFc+xg9xOqkfhN319rE64qYorYMBkhpE6XIVP5+yOdwLZO1ZM407+kt6GXFp32tW1
         T5zNzhT0DvMb79C5LlAgJFy8aecsxi1cRto8ij8osClqs6nC2Daaa6s9yB4mPscIFvG8
         J4zroV5v1aW/V/0DXNJHeQaqq6YVGOgfvFTPHcSHX4jubpjAK52SCSZjpgdTXD38yRI7
         g7ltYyPr62hsACfZI32oHufa3xUbdvF1yhAw8ujumgQlhRUKQfUT40oL7zM+WKpWoDPP
         7JdOfNST6N1H1Kc4Sz1Isaa9sawcJjYIXL/EV+W0C2ej9+FaC1pi7+egvs2FWbmgpExX
         /VuA==
X-Gm-Message-State: AOAM532CY+Mu+eOzdGJfiafblGH9mhEPOqIg3TIcXTJiloQNhjnXjGIS
	SQdUf8vF4vqBicoQ2oViA4417DKYsbO51hZP3Zu9nA==
X-Google-Smtp-Source: ABdhPJzlzVsSL+6xjj+8UpyK2xzCh7cJEzoW8doRs3Y9Ve3BiPOquBNUZU2eVdJdyNiRRO9V88pV93P7wpUziQEvOHo=
X-Received: by 2002:a4a:4201:: with SMTP id h1mr5401194ooj.1.1597156462415;
 Tue, 11 Aug 2020 07:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <871rmesqkk.fsf@gmx.net> <20200617142734.mxwfoblufmo6li5e@linutronix.de>
 <87ftatqu07.fsf@gmx.net> <20200624201156.xu6hel3drnhno6c3@linutronix.de>
 <87ftak2kxr.fsf@rub.de> <20200714134410.3odqfvjq6rndjjf6@linutronix.de>
 <CAJZ5v0hZSUkEMCszDADGWk-v0xNEiDE45B3CHLi05BX6rPfm6g@mail.gmail.com>
 <20200714141135.47adndrsdgpiqfy4@linutronix.de> <87blkbx1gt.fsf@gmx.net>
 <87imdp5r80.fsf@rub.de> <20200811132955.wbt55ns7bu5mxouq@linutronix.de>
In-Reply-To: <20200811132955.wbt55ns7bu5mxouq@linutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 11 Aug 2020 16:34:09 +0200
Message-ID: <CAJZ5v0h+n9VCz5=VixVbe_b=ZbTU3D=46stGhE9z7Y7yaUMJzw@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID-Hash: 34ZTVY7366OU4TSCB4MG3LG4EWEPV4SE
X-Message-ID-Hash: 34ZTVY7366OU4TSCB4MG3LG4EWEPV4SE
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Stephen Berman <stephen.berman@gmx.net>, "Rafael J. Wysocki" <rafael@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/34ZTVY7366OU4TSCB4MG3LG4EWEPV4SE/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Aug 11, 2020 at 3:29 PM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2020-08-11 13:58:39 [+0200], Stephen Berman wrote:
> > him about your workaround of adding 'thermal.tzp=300' to the kernel
> > commandline, and he replied that this works for him too.  And it turns
> > out we have similar motherboards: I have a Gigabyte Z390 M Gaming
> > Rev. 1001 board and he has Gigabyte Z390 Designare rev 1.0.
>
> Yes. Based on latest dmesg, the ACPI tables contain code which schedules
> the worker and takes so long. It is possible / likely that his board
> contains the same tables which leads to the same effect. After all those
> two boards are very similar from the naming part :)
> Would you mind to dump the ACPI tables and send them? There might be
> some hints.

Do we have a BZ for this?  It would be useful to open one if not.

> It might be possible that a BIOS update fixes the problem but I would
> prefer very much to fix this in kernel to ensure that such a BIOS does
> not lead to this problem again.

I agree.

It looks like one way to address this issue might be to add a rate
limit for thermal notifications on a given zone.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
