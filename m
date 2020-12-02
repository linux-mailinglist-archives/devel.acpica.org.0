Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 390282CC656
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Dec 2020 20:13:54 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8D382100EBB74;
	Wed,  2 Dec 2020 11:13:52 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.41; helo=mail-ot1-f41.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A1153100EBB73
	for <devel@acpica.org>; Wed,  2 Dec 2020 11:13:50 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id z24so2683793oto.6
        for <devel@acpica.org>; Wed, 02 Dec 2020 11:13:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CSgCPvyjSWwR5VuE/IAdVdzw2MyO2GOfuLQ4fVNgIpw=;
        b=CTGOumGUemDFIvFfyBRBYDI7rPHZv9jEK8EkZuIPz5E6FJg61x138Qv590VFLqgG2S
         bYxrNXE1TaT8dHS1tQzVPSq5j03CyFmN168ElIU/jqCw9dv7phnokicbwQQNLGEDT/jE
         pHVCm/nj4ig+2fCjvk5wj+wt1eT+3fXOuOi870OXtYuVfOwMdMqZZFQTnPDQP9Dv78Bz
         Gwg+7IRprBGml6zRiSlEucKZkx06oXlrsNM2OIQ/KHCgo8i38IbUBDLjrLLryPKwFRIN
         3L0sTXHoDKwi+LjPMtJxEa135gsjWyfx+Ek+0m8Ib3r3odlOa1olUIdy3BacUDiu1zoh
         GUKQ==
X-Gm-Message-State: AOAM531lYgJcE/P02MdEnpCIg+UuAyvWWK7wrrcQE31HbWp9WWblImOq
	dVqzWOKHa4EJUc2rCmk5pI5kYcvgTvcWNcZiOdLyHEtL
X-Google-Smtp-Source: ABdhPJw/JQjLLLN6CbYH3DtwCCSLVoGBAx5DynWnnuCt7W2OWszKJ3VbCibWMQVmo1d6njsDOMahJuK4GKi6nf7r3Tg=
X-Received: by 2002:a9d:171a:: with SMTP id i26mr2967213ota.260.1606936429762;
 Wed, 02 Dec 2020 11:13:49 -0800 (PST)
MIME-Version: 1.0
References: <87blkbx1gt.fsf@gmx.net> <87imdp5r80.fsf@rub.de>
 <20200811132955.wbt55ns7bu5mxouq@linutronix.de> <CAJZ5v0h+n9VCz5=VixVbe_b=ZbTU3D=46stGhE9z7Y7yaUMJzw@mail.gmail.com>
 <20200811152551.dmfw46urecbmeklr@linutronix.de> <87ft8tayic.fsf@gmx.net>
 <20200811184902.2fm4eyprmpkfon2j@linutronix.de> <20201006214927.4nsqtfji4fdv3oed@linutronix.de>
 <3fc9074b-c153-8446-0289-1e4dfab395eb@intel.com> <20201026172057.h5toqoobiyhc4g3g@linutronix.de>
 <20201202180350.kwmgfzkom7v7bzjg@linutronix.de> <CAJZ5v0j86pX_a4bSLP=sobLoYhfQYV9dWL8HHf2941kXgND79g@mail.gmail.com>
In-Reply-To: <CAJZ5v0j86pX_a4bSLP=sobLoYhfQYV9dWL8HHf2941kXgND79g@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 2 Dec 2020 20:13:38 +0100
Message-ID: <CAJZ5v0j7i86twMS+csYMaetUkvqjof4FD2GRNoZ_AN=SBF7F1w@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID-Hash: ZK6BOZG547C5ZSPKKH36QKWYPUKSKOVM
X-Message-ID-Hash: ZK6BOZG547C5ZSPKKH36QKWYPUKSKOVM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Berman <stephen.berman@gmx.net>, Erik Kaneda <erik.kaneda@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZK6BOZG547C5ZSPKKH36QKWYPUKSKOVM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Dec 2, 2020 at 7:31 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Wed, Dec 2, 2020 at 7:03 PM Sebastian Andrzej Siewior
> <bigeasy@linutronix.de> wrote:
> >
> > On 2020-10-26 18:20:59 [+0100], To Rafael J. Wysocki wrote:
> > > > > > > Done as Bug 208877.
> > > > > Rafael, do you have any suggestions?
> > > >
> > > > I've lost track of this sorry.
> > > >
> > > > I have ideas, let me get back to this next week.
> > >
> > > :)
> >
> > Rafael, any update? If you outline an idea or so then I may be able to
> > form a patch out of it. Otherwise I have no idea how to fix this - other
> > than telling the driver to not poll in smaller intervals than
> > 30secs.
>
> The idea, roughly speaking, is to limit the number of outstanding work
> items in the queue (basically, if there's a notification occurring
> before the previous one can be handled, there is no need to queue up
> another work item for it).

That's easier said than done, though, because of the way the work item
queue-up is hooked up into the ACPICA code.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
