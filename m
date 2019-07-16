Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FB46A681
	for <lists+devel-acpica@lfdr.de>; Tue, 16 Jul 2019 12:28:01 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 673C1212BC468;
	Tue, 16 Jul 2019 03:30:28 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.210.66; helo=mail-ot1-f66.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id D87C1212B5EF4
 for <devel@acpica.org>; Tue, 16 Jul 2019 03:30:26 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id o101so20481207ota.8
 for <devel@acpica.org>; Tue, 16 Jul 2019 03:27:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=InV49k/g4n8kkX89qOOPmJMNqj/Q2fuW/aBD6hhUrXA=;
 b=KbJNTiR3obwzzYq0aSVd+InxVYRHkC0J5kvDdWZavEzsK2Z2cec8psYRArlnBUJzyQ
 eA8zYQah6NGT2HXuMgeZxJGdV3BjEA94EjSHTJlbdsqO2tru5KqGZOB9sM4C70oqHz5u
 VEwvVA/b03zMyCWSA9aTg9OeFHI2jmRy+ASmvNxFAfbnuMOLnEnDRhFvLLSqhNpNo3Ai
 UDLd4p/4Nl5CG1QdwnE8c1cEwhzkVrxhi/wG0l01+HSa7Vamh0gwyKCtVXNwi118MQac
 Xo0GyDzOUZXyW4/uQ2zpjxe8UPDBVXhU3zTRjkMAl0hJadtSrg5x6QC/H1LC7Bm35ZtE
 oQ+w==
X-Gm-Message-State: APjAAAX5vimnoHBRFtAkcIQ29uNO3Drq93n6MGRnqulgFXFXTyk4IdbQ
 eWzFaYvLnhFOipibcNqqp1XjJrh/0N+6BDjDOfA=
X-Google-Smtp-Source: APXvYqwNxa4ESy69KwPnztnMj6Vvcz27ajFqshxcVQs8WVfJTe1ykblJ31kt949Zta05jFdEjaTLyPSqql/gvXR4C4Y=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr18446800oto.167.1563272877613; 
 Tue, 16 Jul 2019 03:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563269894.git.viresh.kumar@linaro.org>
 <CAJZ5v0iqYHNt6NQy3Fi1B=XtjNOm2x0mX3+7eWBREgFZRpUS+w@mail.gmail.com>
 <20190716101416.ntk353cfnrcykoek@vireshk-i7>
In-Reply-To: <20190716101416.ntk353cfnrcykoek@vireshk-i7>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 16 Jul 2019 12:27:46 +0200
Message-ID: <CAJZ5v0jZfmXN=juHX11vmSFj=vxS2Mu_b-OZprB9S+3LJjDb+g@mail.gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [Devel] [PATCH 00/10] cpufreq: Migrate users of policy
 notifiers to QoS requests
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rafael Wysocki <rjw@rjwysocki.net>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, Javi Merino <javi.merino@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Tue, Jul 16, 2019 at 12:14 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 16-07-19, 12:06, Rafael J. Wysocki wrote:
> > On Tue, Jul 16, 2019 at 11:49 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > Hello,
> > >
> > > Now that cpufreq core supports taking QoS requests for min/max cpu
> > > frequencies, lets migrate rest of the users to using them instead of the
> > > policy notifiers.
> >
> > Technically, this still is linux-next only. :-)
>
> True :)
>
> > > The CPUFREQ_NOTIFY and CPUFREQ_ADJUST events of the policy notifiers are
> > > removed as a result, but we have to add CPUFREQ_CREATE_POLICY and
> > > CPUFREQ_REMOVE_POLICY events to it for the acpi stuff specifically. So
> > > the policy notifiers aren't completely removed.
> >
> > That's not entirely accurate, because arch_topology is going to use
> > CPUFREQ_CREATE_POLICY now too.
>
> Yeah, I thought about that while writing this patchset and
> coverletter. But had it not been required for ACPI, I would have done
> it differently for the arch-topology code. Maybe direct calling of
> arch-topology routine from cpufreq core. I wanted to get rid of the
> policy notifiers completely but I couldn't find a better way of doing
> it for ACPI stuff.
>
> > > Boot tested on my x86 PC and ARM hikey board. Nothing looked broken :)
> > >
> > > This has already gone through build bot for a few days now.
> >
> > So I'd prefer patches [5-8] to go right after the first one and then
> > do the cleanups on top of that, as somebody may want to backport the
> > essential changes without the cleanups.
>
> In the exceptional case where nobody finds anything wrong with the
> patches (highly unlikely), do you want me to resend with reordering or
> you can reorder them while applying? There are no dependencies between
> those patches anyway.

Please resend the reordered set when the merge window closes.
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
