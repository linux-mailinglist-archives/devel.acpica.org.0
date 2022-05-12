Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EF05250D1
	for <lists+devel-acpica@lfdr.de>; Thu, 12 May 2022 17:05:06 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A5050100F47B1;
	Thu, 12 May 2022 08:05:04 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.175; helo=mail-yb1-f175.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E9474100EB33C
	for <devel@acpica.org>; Thu, 12 May 2022 08:05:02 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id y76so10338957ybe.1
        for <devel@acpica.org>; Thu, 12 May 2022 08:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3m1cLce0U7sWwoPRoIzSnGNl6tg1bkDp1pFDNxtbcTk=;
        b=bCoJH/2EKlqOiXRyxN+7EmMSypEhX2WDNy6DlIGjXJ3E80wAcJxaJkvmTwmpUqHzfQ
         gyE7Kkz5FTMsPk5xCSgUOh8buZTIV4fUpqboQd+yVCAAb/5pY3eguKtdAPobsyCsLUf+
         LhGED0zcCqlTqEijLWmPzcAoyLIq2Q/LBrQG04qBcn9Am8gDlIETY4xv6TcIEokB9UeP
         a06FN6WAQ1dRCi7tyPgciph1yY9YhMBglHzuCJHzc4vSl6gUCv5w/GBOVZzH5XX2kgCa
         WrnEWudEodufWLbrsCoM4HlQk8K3Fb9c0VZTLHv318Z8VojhMeo1IkN40ofxszZi5aFx
         vz5A==
X-Gm-Message-State: AOAM530awPAqzH2LqM+6ScogoyBR+Gohn+0wvFWON/bVBEkg7ZO72UvJ
	umnPosByCxwugDjB0NLJ9EehI9nYBPMVb0TMvA8=
X-Google-Smtp-Source: ABdhPJyVyp4by0cL7EufgP8w7GRukzsRyDSHhJZOpF+poV1MdPj+Aq7HO3eT2LyRF32MRAnkZMgy6LoFj0Yeo/byNy0=
X-Received: by 2002:a25:d288:0:b0:64b:4bb5:32be with SMTP id
 j130-20020a25d288000000b0064b4bb532bemr173435ybg.633.1652367901673; Thu, 12
 May 2022 08:05:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220511134559.1466925-1-pierre.gondois@arm.com>
 <20220511134559.1466925-3-pierre.gondois@arm.com> <20220511143001.ewba7sovabinnajz@bogus>
In-Reply-To: <20220511143001.ewba7sovabinnajz@bogus>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 12 May 2022 17:04:50 +0200
Message-ID: <CAJZ5v0i5h+JYd=jXsgfcuA8_XnUV0RenqFZ0ALhCVt1eZtKnrQ@mail.gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Message-ID-Hash: P4WPP2C55AAY2WKUBGFGNY2M37ZLSFMF
X-Message-ID-Hash: P4WPP2C55AAY2WKUBGFGNY2M37ZLSFMF
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pierre Gondois <pierre.gondois@arm.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Ionela Voinescu <Ionela.Voinescu@arm.com>, Dietmar Eggemann <Dietmar.Eggemann@arm.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 3/5] ACPI: CPPC: Assume no transition latency if no PCCT
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/P4WPP2C55AAY2WKUBGFGNY2M37ZLSFMF/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 11, 2022 at 4:30 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, May 11, 2022 at 03:45:57PM +0200, Pierre Gondois wrote:
> > From: Pierre Gondois <Pierre.Gondois@arm.com>
> >
> > The transition_delay_us (struct cpufreq_policy) is currently defined
> > as:
> >   Preferred average time interval between consecutive invocations of
> >   the driver to set the frequency for this policy.  To be set by the
> >   scaling driver (0, which is the default, means no preference).
> > The transition_latency represents the amount of time necessary for a
> > CPU to change its frequency.
> >
> > A PCCT table advertises mutliple values:
> > - pcc_nominal: Expected latency to process a command, in microseconds
> > - pcc_mpar: The maximum number of periodic requests that the subspace
> >   channel can support, reported in commands per minute. 0 indicates no
> >   limitation.
> > - pcc_mrtt: The minimum amount of time that OSPM must wait after the
> >   completion of a command before issuing the next command,
> >   in microseconds.
> > cppc_get_transition_latency() allows to get the max of them.
> >
> > commit d4f3388afd48 ("cpufreq / CPPC: Set platform specific
> > transition_delay_us") allows to select transition_delay_us based on
> > the platform, and fallbacks to cppc_get_transition_latency()
> > otherwise.
> >
> > If _CPC objects are not using PCC channels (no PPCT table), the
> > transition_delay_us is set to CPUFREQ_ETERNAL, leading to really long
> > periods between frequency updates (~4s).
> >
> > If the desired_reg, where performance requests are written, is in
> > SystemMemory or SystemIo ACPI address space, there is no delay
> > in requests. So return 0 instead of CPUFREQ_ETERNAL, leading to
> > transition_delay_us being set to LATENCY_MULTIPLIER us (1000 us).
> >
> > This patch also adds two macros to check the address spaces.
> >
> > Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>
> > ---
> >  drivers/acpi/cppc_acpi.c | 17 ++++++++++++++++-
> >  1 file changed, 16 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
> > index 6f09fe011544..cc932ec1b613 100644
> > --- a/drivers/acpi/cppc_acpi.c
> > +++ b/drivers/acpi/cppc_acpi.c
> > @@ -100,6 +100,16 @@ static DEFINE_PER_CPU(struct cpc_desc *, cpc_desc_ptr);
> >                               (cpc)->cpc_entry.reg.space_id ==        \
> >                               ACPI_ADR_SPACE_PLATFORM_COMM)
> >
> > +/* Check if a CPC register is in SystemMemory */
> > +#define CPC_IN_SM(cpc) ((cpc)->type == ACPI_TYPE_BUFFER &&           \
> > +                             (cpc)->cpc_entry.reg.space_id ==        \
> > +                             ACPI_ADR_SPACE_SYSTEM_MEMORY)
> > +
>
> Again my taste or preference: s/SM/SYS_MEM or SYSTEM_MEM

SYSTEM_MEMORY even.

>
> > +/* Check if a CPC register is in SystemIo */
> > +#define CPC_IN_SIO(cpc) ((cpc)->type == ACPI_TYPE_BUFFER &&          \
> > +                             (cpc)->cpc_entry.reg.space_id ==        \
> > +                             ACPI_ADR_SPACE_SYSTEM_IO)
> > +
>
> Ditto, s/SM/SYS_IO or SYSTEM_IO
>
> I need not refer back to the macro when reading the code. SM/SIO is too
> short and makes it hard to infer from the name in general.

Right.

> >  /* Evaluates to True if reg is a NULL register descriptor */
> >  #define IS_NULL_REG(reg) ((reg)->space_id ==  ACPI_ADR_SPACE_SYSTEM_MEMORY && \
> >                               (reg)->address == 0 &&                  \
> > @@ -1456,6 +1466,9 @@ EXPORT_SYMBOL_GPL(cppc_set_perf);
> >   * transition latency for performance change requests. The closest we have
> >   * is the timing information from the PCCT tables which provides the info
> >   * on the number and frequency of PCC commands the platform can handle.
> > + *
> > + * If desired_reg is in the SystemMemory or SystemIo ACPI address space,
> > + * then assume there is no latency.
> >   */
> >  unsigned int cppc_get_transition_latency(int cpu_num)
> >  {
> > @@ -1481,7 +1494,9 @@ unsigned int cppc_get_transition_latency(int cpu_num)
> >               return CPUFREQ_ETERNAL;
> >
> >       desired_reg = &cpc_desc->cpc_regs[DESIRED_PERF];
> > -     if (!CPC_IN_PCC(desired_reg))
> > +     if (CPC_IN_SM(desired_reg) || CPC_IN_SIO(desired_reg))
> > +             return 0;
> > +     else if (!CPC_IN_PCC(desired_reg))
> >               return CPUFREQ_ETERNAL;
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
