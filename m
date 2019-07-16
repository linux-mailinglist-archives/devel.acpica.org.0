Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D84D66A621
	for <lists+devel-acpica@lfdr.de>; Tue, 16 Jul 2019 12:06:22 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C372E212B5F0B;
	Tue, 16 Jul 2019 03:08:49 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.167.193; helo=mail-oi1-f193.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id C9A61212B0836
 for <devel@acpica.org>; Tue, 16 Jul 2019 03:08:48 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id u15so15135588oiv.0
 for <devel@acpica.org>; Tue, 16 Jul 2019 03:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SKSKLDsZNWfrDqHnwOUMB50WqSsunNsqcQ+sfiyuXlw=;
 b=mu0yoxTnNTQjt3qeGpX3Y2srxVUPMH6boNYtAedCLrXqC1TdLCKpCR2LkRJZV9B/D1
 5w65XwSSeKlSbjl22WNINF6hh+M7AJhXxEQe8VXeSmyg8fbYuk0Y2lIzltQlZpW1j3/5
 C2mq4I3jePSYKdlcBo1IbTHe9r1TxvakIBQuUWn95Y9DUnezmph0ffFvo25jXQbxuXLd
 VuL9zlHRBFS9+EJ14q+2woBBTTsZjOB9iFzEsHS6AUF43i4RZkYkEm1sadWJJrpBYehV
 9FOMYj/sLi02bnEW0jCcL3+SkXrXlNr+GvKn9eQWPigeit5rBGS56HroAIrWJsUzDZUk
 z+QA==
X-Gm-Message-State: APjAAAV/lmK6aKisKrlhV6ZEopFNL4yxh9f0DzS4K9uYqBPfX/I95RAQ
 3852BM5RFOYCqwnHHSt0+2bWEPMJnXWWQBnpwXw=
X-Google-Smtp-Source: APXvYqz+9SLeYZezhd1CiiqSz9N5lOWLlOsr+u93YAb04Q18lnnuxQ5teq8PO6tM0DnrmvA9w9XvcWX+j6bgyJjGrm4=
X-Received: by 2002:aca:edc8:: with SMTP id
 l191mr15705198oih.103.1563271579314; 
 Tue, 16 Jul 2019 03:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563269894.git.viresh.kumar@linaro.org>
In-Reply-To: <cover.1563269894.git.viresh.kumar@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 16 Jul 2019 12:06:08 +0200
Message-ID: <CAJZ5v0iqYHNt6NQy3Fi1B=XtjNOm2x0mX3+7eWBREgFZRpUS+w@mail.gmail.com>
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

On Tue, Jul 16, 2019 at 11:49 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> Hello,
>
> Now that cpufreq core supports taking QoS requests for min/max cpu
> frequencies, lets migrate rest of the users to using them instead of the
> policy notifiers.

Technically, this still is linux-next only. :-)

> The CPUFREQ_NOTIFY and CPUFREQ_ADJUST events of the policy notifiers are
> removed as a result, but we have to add CPUFREQ_CREATE_POLICY and
> CPUFREQ_REMOVE_POLICY events to it for the acpi stuff specifically. So
> the policy notifiers aren't completely removed.

That's not entirely accurate, because arch_topology is going to use
CPUFREQ_CREATE_POLICY now too.

> Boot tested on my x86 PC and ARM hikey board. Nothing looked broken :)
>
> This has already gone through build bot for a few days now.

So I'd prefer patches [5-8] to go right after the first one and then
do the cleanups on top of that, as somebody may want to backport the
essential changes without the cleanups.
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
