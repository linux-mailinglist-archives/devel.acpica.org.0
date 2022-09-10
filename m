Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AA45B4782
	for <lists+devel-acpica@lfdr.de>; Sat, 10 Sep 2022 18:32:29 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id ACBD2100EAB53;
	Sat, 10 Sep 2022 09:32:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.176; helo=mail-yb1-f176.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 05105100EAB45
	for <devel@acpica.org>; Sat, 10 Sep 2022 09:32:22 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id a67so6919311ybb.3
        for <devel@acpica.org>; Sat, 10 Sep 2022 09:32:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GkMFjVtDr0W10OJLyjB1PHKjRI7ZFioNTd0VYLRMl94=;
        b=ovE8L4d8bJ5vRY09JyUOpmrfUJb4OEMQR31ljvNhzLsQOYSiIpCSGRfsTajPQ+4o+6
         iIHpeFwxDFJisUWtrLym/OgXrqrjz8Vgf9ydhtfQNH/vMZFkPoecBY6hj22SieBZMWnp
         Z/JdHll+y9YiQ52AnR/lYEk2tOC8I2gD/+lgnIpuNee3/93MufKOkY15BCMMk1/U2T3j
         Ohy0zd9t3MbbcQSqjyy3GRXgzBNP3FJKSyxSsaPUS+hJNWsN7dsQIBCP0DD5UUwxwyGn
         B60Vknq8jtspnEGLuWy+v5npV9FFnDp3CHnazWX72nplSH3f+uIhKDBaVc9hSMvQeZ6j
         uucQ==
X-Gm-Message-State: ACgBeo2ZwvvikvmjybxTtxGL8+spf1X8SXp87DJBpQXimL41NswokOQz
	tp5gmul2ksPe9b/VwLc27AzeB/q0MYpQT/iRLiQ=
X-Google-Smtp-Source: AA6agR4n7pXTzaWGoZwbXMPbML7j3aWjxBABW4Ue2CuqwFbK1YnZzMiGo3Y8jNXuTBWAX9gMGWr6mCabLDZaslxS/Ik=
X-Received: by 2002:a25:2f0c:0:b0:6a8:f230:12ed with SMTP id
 v12-20020a252f0c000000b006a8f23012edmr15745127ybv.633.1662827541557; Sat, 10
 Sep 2022 09:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220908132910.62122-1-andriy.shevchenko@linux.intel.com> <YxnwMLvgQAPOkeeK@smile.fi.intel.com>
In-Reply-To: <YxnwMLvgQAPOkeeK@smile.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 10 Sep 2022 18:32:10 +0200
Message-ID: <CAJZ5v0j5FO+OcX6VdiR-tuDCrHFwErquxzZGUu3ZLQ1G57T-+Q@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: BUQUDPPLQOJHVZXVEI32F7VARKTQWJRA
X-Message-ID-Hash: BUQUDPPLQOJHVZXVEI32F7VARKTQWJRA
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-spi <linux-spi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Elie Morisse <syniurge@gmail.com>, Nehal Shah <nehal-bakulchandra.shah@amd.com>, Shyam Sundar S K <shyam-sundar.s-k@amd.com>, Khalil Blaiech <kblaiech@nvidia.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojia
 n.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, Wolfram Sang <wsa@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 0/8] ACPI: unify _UID handling as integer
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BUQUDPPLQOJHVZXVEI32F7VARKTQWJRA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 8, 2022 at 3:38 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Sep 08, 2022 at 04:29:02PM +0300, Andy Shevchenko wrote:
> > This series is about unification on how we handle ACPI _UID when
> > it's known to be an integer-in-the-string.
> >
> > The idea of merging either all via ACPI tree, or taking ACPI stuff
> > for the v6.1 while the rest may be picked up later on by respective
> > maintainers separately
>
> >(currently all depends on Wolfram, other
> > patches have got the tags from the maintainers).
>
> I stand corrected, the perf patch is not tagged yet.
>
> > Partially compile-tested (x86-64).

Tentatively applied as 6.1 material.

If there are updates, we'll make changes as they go.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
