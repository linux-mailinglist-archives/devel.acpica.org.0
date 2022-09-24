Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACB25E8E8E
	for <lists+devel-acpica@lfdr.de>; Sat, 24 Sep 2022 18:45:42 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3C1D7100EB33F;
	Sat, 24 Sep 2022 09:45:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.169; helo=mail-qt1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 56765100EB32F
	for <devel@acpica.org>; Sat, 24 Sep 2022 09:45:36 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id c11so1818584qtw.8
        for <devel@acpica.org>; Sat, 24 Sep 2022 09:45:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=77zeF3ZT5F5GaWcTglxaesCMWwfWcqS9vVjkWun32sA=;
        b=Logwgwj2Iwxc3bEmMTyvUDBAg9B2u7cBgaWYyTpXoROAVjO+f1yNM+/Bkj4auMGsLJ
         h9xZt2ACGPTH1EzxuQia9HkjgWOvPCjRTCn+9d51gGHMObJ+HFCyQHsPbsm70+JEgd9H
         NfMVCI1T3pePM71UuYURUkQpB+zX9XC9nwWEEMBaAVtJLHP0uwCkbSt26IEBKyPWTylO
         j39ETyTVHF+kDYT1ytKMpdG58oFyOk6UUckHrPHUbfs5HU2BrLmiXcrtN6CLqKEFIFHd
         zFse4Xu+kJdNzLjyXKaGCUvVz7qAJJTpQtJEfO+VvA1OyRYUn90lFknKkt9Oz0xDKQJM
         dI1w==
X-Gm-Message-State: ACrzQf0sxVbP6ocPS7sBe1+JYNhd4oLvLtqJaNsVh/ej8FGrSyX9n7Yf
	QxiaApVPHxbZQChWMi4iuN3PbMpEQYySyyqa5QA=
X-Google-Smtp-Source: AMsMyM7aGAfr4ilz45D3XBuDqe9Os7d/BOKSMI7+TnH2rxt2VqKuNkV7MVt2og6n8aG5DVuezz+99MznWCj2Q1k0IBU=
X-Received: by 2002:a05:622a:11c8:b0:35c:e912:a8ea with SMTP id
 n8-20020a05622a11c800b0035ce912a8eamr11811695qtk.17.1664037934750; Sat, 24
 Sep 2022 09:45:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220912203722.205185-1-jeremy.linton@arm.com>
 <20220912203722.205185-2-jeremy.linton@arm.com> <Yy3fTFVyAEx9R/qQ@arm.com>
In-Reply-To: <Yy3fTFVyAEx9R/qQ@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 24 Sep 2022 18:45:23 +0200
Message-ID: <CAJZ5v0jb_50v-3mX1=FzDTx9mjmrg16QezQAd8-qc9Bd8DJWdw@mail.gmail.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>, Jeremy Linton <jeremy.linton@arm.com>
Message-ID-Hash: IVZGAVMB3MSDDOQ2EDKKZ7M5VH3OADHW
X-Message-ID-Hash: IVZGAVMB3MSDDOQ2EDKKZ7M5VH3OADHW
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, Punit Agrawal <punit.agrawal@bytedance.com>, Lukasz Luba <lukasz.luba@arm.com>, Pierre Gondois <pierre.gondois@arm.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 1/1] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IVZGAVMB3MSDDOQ2EDKKZ7M5VH3OADHW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Sep 23, 2022 at 6:31 PM Ionela Voinescu <ionela.voinescu@arm.com> wrote:
>
> Hi Jeremy,
>
> On Monday 12 Sep 2022 at 15:37:22 (-0500), Jeremy Linton wrote:
> > PCC regions utilize a mailbox to set/retrieve register values used by
> > the CPPC code. This is fine as long as the operations are
> > infrequent. With the FIE code enabled though the overhead can range
> > from 2-11% of system CPU overhead (ex: as measured by top) on Arm
> > based machines.
> >
> > So, before enabling FIE assure none of the registers used by
> > cppc_get_perf_ctrs() are in the PCC region. Finally, add a module
> > parameter which can override the PCC region detection at boot or
> > module reload.
> >
> > Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> >  drivers/acpi/cppc_acpi.c       | 42 ++++++++++++++++++++++++++++++++++
> >  drivers/cpufreq/cppc_cpufreq.c | 25 ++++++++++++++++----
> >  include/acpi/cppc_acpi.h       |  5 ++++
> >  3 files changed, 68 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
> > index 1e15a9f25ae9..55693e6f7153 100644
> > --- a/drivers/acpi/cppc_acpi.c
> > +++ b/drivers/acpi/cppc_acpi.c
> > @@ -1240,6 +1240,48 @@ int cppc_get_perf_caps(int cpunum, struct cppc_perf_caps *perf_caps)
> >  }
> >  EXPORT_SYMBOL_GPL(cppc_get_perf_caps);
> >
> > +/**
> > + * cppc_perf_ctrs_in_pcc - Check if any perf counters are in a PCC region.
> > + *
> > + * CPPC has flexibility about how CPU performance counters are accessed.
> > + * One of the choices is PCC regions, which can have a high access latency. This
> > + * routine allows callers of cppc_get_perf_ctrs() to know this ahead of time.
> > + *
> > + * Return: true if any of the counters are in PCC regions, false otherwise
> > + */
> > +bool cppc_perf_ctrs_in_pcc(void)
> > +{
> > +     int cpu;
> > +
> > +     for_each_present_cpu(cpu) {
> > +             struct cpc_register_resource *ref_perf_reg;
> > +             struct cpc_desc *cpc_desc;
> > +
> > +             cpc_desc = per_cpu(cpc_desc_ptr, cpu);
> > +
> > +             if (CPC_IN_PCC(&cpc_desc->cpc_regs[DELIVERED_CTR]) ||
> > +                 CPC_IN_PCC(&cpc_desc->cpc_regs[REFERENCE_CTR]) ||
> > +                 CPC_IN_PCC(&cpc_desc->cpc_regs[CTR_WRAP_TIME]))
> > +                     return true;
> > +
> > +
> > +             ref_perf_reg = &cpc_desc->cpc_regs[REFERENCE_PERF];
> > +
> > +             /*
> > +              * If reference perf register is not supported then we should
> > +              * use the nominal perf value
> > +              */
> > +             if (!CPC_SUPPORTED(ref_perf_reg))
> > +                     ref_perf_reg = &cpc_desc->cpc_regs[NOMINAL_PERF];
> > +
> > +             if (CPC_IN_PCC(ref_perf_reg))
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +EXPORT_SYMBOL_GPL(cppc_perf_ctrs_in_pcc);
> > +
> >  /**
> >   * cppc_get_perf_ctrs - Read a CPU's performance feedback counters.
> >   * @cpunum: CPU from which to read counters.
> > diff --git a/drivers/cpufreq/cppc_cpufreq.c b/drivers/cpufreq/cppc_cpufreq.c
> > index 24eaf0ec344d..9e2a48ac5830 100644
> > --- a/drivers/cpufreq/cppc_cpufreq.c
> > +++ b/drivers/cpufreq/cppc_cpufreq.c
> > @@ -63,7 +63,15 @@ static struct cppc_workaround_oem_info wa_info[] = {
> >
> >  static struct cpufreq_driver cppc_cpufreq_driver;
> >
> > +static enum {
> > +     FIE_UNSET = -1,
> > +     FIE_ENABLED,
> > +     FIE_DISABLED
> > +} fie_disabled = FIE_UNSET;
> > +
> >  #ifdef CONFIG_ACPI_CPPC_CPUFREQ_FIE
> > +module_param(fie_disabled, int, 0444);
>
> Why 'int' and not 'bool' here?
>
> IIUC, if you use 'bool' the user can pass any int/0/1/y/n/Y/N, which
> will result in fie_disabled properly having either the value 0 or 1
> (or default FIE_UNSET) if a parameter is not passed.
>
> Then
> 'if (fie_disabled != FIE_ENABLED && fie_disabled != FIE_DISABLED)'
> can become
> 'if (fie_disabled == FIE_UNSET)' or 'if (fie_disabled < 0)'.
>
> I feel I'm missing something, otherwise you would have done this
> already.
>
> Otherwise FWIW, it looks good to me.
> Reviewed-by: Ionela Voinescu <ionela.voinescu@arm.com>

Applied as 6.1 material, thanks!

> > +MODULE_PARM_DESC(fie_disabled, "Disable Frequency Invariance Engine (FIE)");
> >
> >  /* Frequency invariance support */
> >  struct cppc_freq_invariance {
> > @@ -158,7 +166,7 @@ static void cppc_cpufreq_cpu_fie_init(struct cpufreq_policy *policy)
> >       struct cppc_freq_invariance *cppc_fi;
> >       int cpu, ret;
> >
> > -     if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> > +     if (fie_disabled)
> >               return;
> >
> >       for_each_cpu(cpu, policy->cpus) {
> > @@ -199,7 +207,7 @@ static void cppc_cpufreq_cpu_fie_exit(struct cpufreq_policy *policy)
> >       struct cppc_freq_invariance *cppc_fi;
> >       int cpu;
> >
> > -     if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> > +     if (fie_disabled)
> >               return;
> >
> >       /* policy->cpus will be empty here, use related_cpus instead */
> > @@ -229,7 +237,15 @@ static void __init cppc_freq_invariance_init(void)
> >       };
> >       int ret;
> >
> > -     if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> > +     if (fie_disabled != FIE_ENABLED && fie_disabled != FIE_DISABLED) {
> > +             fie_disabled = FIE_ENABLED;
> > +             if (cppc_perf_ctrs_in_pcc()) {
> > +                     pr_info("FIE not enabled on systems with registers in PCC\n");
> > +                     fie_disabled = FIE_DISABLED;
> > +             }
> > +     }
> > +
> > +     if (fie_disabled)
> >               return;
> >
> >       kworker_fie = kthread_create_worker(0, "cppc_fie");
> > @@ -247,7 +263,7 @@ static void __init cppc_freq_invariance_init(void)
> >
> >  static void cppc_freq_invariance_exit(void)
> >  {
> > -     if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> > +     if (fie_disabled)
> >               return;
> >
> >       kthread_destroy_worker(kworker_fie);
> > @@ -936,6 +952,7 @@ static void cppc_check_hisi_workaround(void)
> >                   wa_info[i].oem_revision == tbl->oem_revision) {
> >                       /* Overwrite the get() callback */
> >                       cppc_cpufreq_driver.get = hisi_cppc_cpufreq_get_rate;
> > +                     fie_disabled = FIE_DISABLED;
> >                       break;
> >               }
> >       }
> > diff --git a/include/acpi/cppc_acpi.h b/include/acpi/cppc_acpi.h
> > index f73d357ecdf5..c5614444031f 100644
> > --- a/include/acpi/cppc_acpi.h
> > +++ b/include/acpi/cppc_acpi.h
> > @@ -140,6 +140,7 @@ extern int cppc_get_perf_ctrs(int cpu, struct cppc_perf_fb_ctrs *perf_fb_ctrs);
> >  extern int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls);
> >  extern int cppc_set_enable(int cpu, bool enable);
> >  extern int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps);
> > +extern bool cppc_perf_ctrs_in_pcc(void);
> >  extern bool acpi_cpc_valid(void);
> >  extern bool cppc_allow_fast_switch(void);
> >  extern int acpi_get_psd_map(unsigned int cpu, struct cppc_cpudata *cpu_data);
> > @@ -173,6 +174,10 @@ static inline int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps)
> >  {
> >       return -ENOTSUPP;
> >  }
> > +static inline bool cppc_perf_ctrs_in_pcc(void)
> > +{
> > +     return false;
> > +}
> >  static inline bool acpi_cpc_valid(void)
> >  {
> >       return false;
> > --
> > 2.37.1
> >
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
