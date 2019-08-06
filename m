Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F4582D4B
	for <lists+devel-acpica@lfdr.de>; Tue,  6 Aug 2019 10:01:20 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8A71C2130C488;
	Tue,  6 Aug 2019 01:03:49 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.210.68; helo=mail-ot1-f68.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 519F1213030B2
 for <devel@acpica.org>; Tue,  6 Aug 2019 01:03:48 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id j19so13647690otq.2
 for <devel@acpica.org>; Tue, 06 Aug 2019 01:01:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zUs0xIhgTH6wwFy+pIi473fY3cNI70KH0eyUmBXIqyE=;
 b=huJ7tgGj4YNm7/MqwaOWwj5uoexZaEoZ4osTm8VG/Cj9KZYCgDv1abwTOdC6Ddmq+Q
 lL2GFfjmwbExal4kGaYzI1ktB5EmPIrL/WPFIqNZ6zFj/RxT4slYjRa+MckSElkFNVvD
 /3fKeDZSZ/fkMLsbAnxqeDYIsb6f78OeY06l5hygZoqEXOEAzq2EjiSDhu10HXql4bRw
 wunzdOQrR9C+vMxxm4ydYp8SXSfVrRrwgvXghO4njaOE7iTVq9LdiMHquNscSBavsaNe
 eDfAU9bBJppYWfsyOfys1idNNr5JP1YGTUBSOC2EXdyEXj09DrDgHfyp48I4e8NsTM0T
 XicA==
X-Gm-Message-State: APjAAAXFLOa2UwV54XNyw1PtZKDfdv1aa04+8ILPbDrZzHS8CSy1VX55
 FIU0tyErcJISgJAIhvg7fQezFb1xq4d1BryIKD0=
X-Google-Smtp-Source: APXvYqywCxq1EnPd1Un9O/Ra9WUoJF8y5q5e6rNxxbDtgntcVTWejmBx8iAPavHTpNCItROyJW0urUxcpUKxGieVl4A=
X-Received: by 2002:a9d:6b96:: with SMTP id b22mr2075090otq.262.1565078476888; 
 Tue, 06 Aug 2019 01:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563862014.git.viresh.kumar@linaro.org>
 <86dc4a082ea00c278c0e1d7f3fcbdc4ab9af2eec.1563862014.git.viresh.kumar@linaro.org>
 <1782403.O7LH3UnqfR@kreacher> <20190806043904.dbpon4qf3mfsm4vz@vireshk-i7>
In-Reply-To: <20190806043904.dbpon4qf3mfsm4vz@vireshk-i7>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 6 Aug 2019 10:01:05 +0200
Message-ID: <CAJZ5v0iqwc4mvqHoTHwoNS-T1zueS07S2e-1STEsKhFhoOh0dA@mail.gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [Devel] [PATCH V2 05/10] ACPI: cpufreq: Switch to QoS requests
 instead of cpufreq notifier
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
Cc: Vincent Guittot <vincent.guittot@linaro.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Tue, Aug 6, 2019 at 6:39 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 05-08-19, 11:42, Rafael J. Wysocki wrote:
> > On Tuesday, July 23, 2019 8:14:05 AM CEST Viresh Kumar wrote:
> > > @@ -310,8 +339,11 @@ static int __init acpi_processor_driver_init(void)
> > >     cpuhp_setup_state_nocalls(CPUHP_ACPI_CPUDRV_DEAD, "acpi/cpu-drv:dead",
> > >                               NULL, acpi_soft_cpu_dead);
> > >
> > > -   acpi_thermal_cpufreq_init();
> > > -   acpi_processor_ppc_init();
> > > +   if (!cpufreq_register_notifier(&acpi_processor_notifier_block,
> > > +                                  CPUFREQ_POLICY_NOTIFIER)) {
> > > +           acpi_processor_cpufreq_init = true;
> >
> > Can't that be set/cleared by acpi_processor_notifier() itself?
>
> This is required to be done only once at initialization and setting it
> to true again and again on every invocation of the notifier callback
> doesn't look right.
>
> I have updated the patch based on rest of your suggestions, please see
> if it looks okay now.

Yes, it does, thanks!

[No need to resend, I'll take it from this message.]
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
