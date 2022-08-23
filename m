Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C1B59E8A9
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Aug 2022 19:10:27 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B67D2100E6C3D;
	Tue, 23 Aug 2022 10:10:25 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.171; helo=mail-yw1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5F582100EA555
	for <devel@acpica.org>; Tue, 23 Aug 2022 10:10:24 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-31f445bd486so396194767b3.13
        for <devel@acpica.org>; Tue, 23 Aug 2022 10:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=aYLKVpg5yVDWtotHGoWYBt4fEQDgWxmuqw+G5UwcEAU=;
        b=c/C3hBkFnsiRXJKxyfi0dF09skwKt3FhFnH6T1EbPv49LYKffZs+DezoKuRqkYcUvz
         DTly4nPRjknEy53RVxp/d/KxzFAMuzwp1Y39hHSWyVZ8/ynx5AoP9aUVjYG31iHvcXxs
         JSH1UwmmXEqmpiq5wAUwn8vynN0RBfKfkvVRzaeO3jv2/ek85otAN27mcvJfLY99vNJj
         GdOZWdYCxc3WynUYmTXUzUIv1Du2k8Nm1zkPaB6b7Ht83gVkivVWJkDaqIBj+lUNmutK
         Ikg+/U6b02cWwx/o/ggXHvX05AOW6hdlZYDI1OI6gqxVJBuo9L1Ql/BMdthNPYZjbFjB
         8Vrg==
X-Gm-Message-State: ACgBeo0u73oMab+BdmweHh5NHZKdRz5x9OxEopUtPsdO7nIM7lfIN7UB
	8W7wYPM0PwYhw+58kyTqRgBpH0OPOiNe4jPOQsI=
X-Google-Smtp-Source: AA6agR44AtVGf3gmCvfccYN9fpIOVwfitY+Itybpcu+4MROlyuIqQd/ktBqJ6LrK7SdQu2x2pGJ8bnQ/1AFeeUQgnDg=
X-Received: by 2002:a25:8d84:0:b0:695:836a:fcaf with SMTP id
 o4-20020a258d84000000b00695836afcafmr14329754ybl.633.1661274623018; Tue, 23
 Aug 2022 10:10:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220818211619.4193362-1-jeremy.linton@arm.com> <20220818211619.4193362-2-jeremy.linton@arm.com>
In-Reply-To: <20220818211619.4193362-2-jeremy.linton@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Aug 2022 19:10:12 +0200
Message-ID: <CAJZ5v0h7s0WnyBtwuQbTZXwq+jmYDF74gjc9-c-=Krt23KgF1w@mail.gmail.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Message-ID-Hash: 7ZQWUTOUEN5I6EVB5ADPHBLPMKCYOFAK
X-Message-ID-Hash: 7ZQWUTOUEN5I6EVB5ADPHBLPMKCYOFAK
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.or>, Viresh Kumar <viresh.kumar@linaro.org>, Punit Agrawal <punit.agrawal@bytedance.com>, Lukasz Luba <lukasz.luba@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, Pierre Gondois <pierre.gondois@arm.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/2] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7ZQWUTOUEN5I6EVB5ADPHBLPMKCYOFAK/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Aug 18, 2022 at 11:24 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>
> PCC regions utilize a mailbox to set/retrieve register values used by
> the CPPC code. This is fine as long as the operations are
> infrequent. With the FIE code enabled though the overhead can range
> from 2-11% of system CPU overhead (ex: as measured by top) on Arm
> based machines.
>
> So, before enabling FIE assure none of the registers used by
> cppc_get_perf_ctrs() are in the PCC region. Furthermore lets also
> enable a module parameter which can also disable it at boot or module
> reload.
>
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/cppc_acpi.c       | 41 ++++++++++++++++++++++++++++++++++
>  drivers/cpufreq/cppc_cpufreq.c | 31 +++++++++++++++++++++----
>  include/acpi/cppc_acpi.h       |  5 +++++
>  3 files changed, 73 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
> index 1e15a9f25ae9..c840bf606b30 100644
> --- a/drivers/acpi/cppc_acpi.c
> +++ b/drivers/acpi/cppc_acpi.c
> @@ -1240,6 +1240,47 @@ int cppc_get_perf_caps(int cpunum, struct cppc_perf_caps *perf_caps)
>  }
>  EXPORT_SYMBOL_GPL(cppc_get_perf_caps);
>
> +/**
> + * cppc_perf_ctrs_in_pcc - Check if any perf counters are in a PCC region.
> + *
> + * CPPC has flexibility about how counters describing CPU perf are delivered.

"CPU performance counters are accessed"


> + * One of the choices is PCC regions, which can have a high access latency. This
> + * routine allows callers of cppc_get_perf_ctrs() to know this ahead of time.
> + *
> + * Return: true if any of the counters are in PCC regions, false otherwise
> + */
> +bool cppc_perf_ctrs_in_pcc(void)
> +{
> +       int cpu;
> +
> +       for_each_present_cpu(cpu) {
> +               struct cpc_register_resource *ref_perf_reg;
> +               struct cpc_desc *cpc_desc;
> +
> +               cpc_desc = per_cpu(cpc_desc_ptr, cpu);
> +
> +               if (CPC_IN_PCC(&cpc_desc->cpc_regs[DELIVERED_CTR]) ||
> +                   CPC_IN_PCC(&cpc_desc->cpc_regs[REFERENCE_CTR]) ||
> +                   CPC_IN_PCC(&cpc_desc->cpc_regs[CTR_WRAP_TIME]))
> +                       return true;
> +
> +
> +               ref_perf_reg = &cpc_desc->cpc_regs[REFERENCE_PERF];
> +
> +               /*
> +                * If reference perf register is not supported then we should
> +                * use the nominal perf value
> +                */
> +               if (!CPC_SUPPORTED(ref_perf_reg))
> +                       ref_perf_reg = &cpc_desc->cpc_regs[NOMINAL_PERF];
> +
> +               if (CPC_IN_PCC(ref_perf_reg))
> +                       return true;
> +       }
> +       return false;
> +}
> +EXPORT_SYMBOL_GPL(cppc_perf_ctrs_in_pcc);
> +
>  /**
>   * cppc_get_perf_ctrs - Read a CPU's performance feedback counters.
>   * @cpunum: CPU from which to read counters.
> diff --git a/drivers/cpufreq/cppc_cpufreq.c b/drivers/cpufreq/cppc_cpufreq.c
> index 24eaf0ec344d..32fcb0bf74a4 100644
> --- a/drivers/cpufreq/cppc_cpufreq.c
> +++ b/drivers/cpufreq/cppc_cpufreq.c
> @@ -63,7 +63,15 @@ static struct cppc_workaround_oem_info wa_info[] = {
>
>  static struct cpufreq_driver cppc_cpufreq_driver;
>
> +static enum {
> +       FIE_UNSET = -1,
> +       FIE_ENABLED,
> +       FIE_DISABLED
> +} fie_disabled = FIE_UNSET;
> +
>  #ifdef CONFIG_ACPI_CPPC_CPUFREQ_FIE
> +module_param(fie_disabled, int, 0444);
> +MODULE_PARM_DESC(fie_disabled, "Disable Frequency Invariance Engine (FIE)");
>
>  /* Frequency invariance support */
>  struct cppc_freq_invariance {
> @@ -158,7 +166,7 @@ static void cppc_cpufreq_cpu_fie_init(struct cpufreq_policy *policy)
>         struct cppc_freq_invariance *cppc_fi;
>         int cpu, ret;
>
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (fie_disabled)
>                 return;
>
>         for_each_cpu(cpu, policy->cpus) {
> @@ -199,7 +207,7 @@ static void cppc_cpufreq_cpu_fie_exit(struct cpufreq_policy *policy)
>         struct cppc_freq_invariance *cppc_fi;
>         int cpu;
>
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (fie_disabled)
>                 return;
>
>         /* policy->cpus will be empty here, use related_cpus instead */
> @@ -229,7 +237,21 @@ static void __init cppc_freq_invariance_init(void)
>         };
>         int ret;
>
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       switch (fie_disabled) {
> +       /* honor user request */
> +       case FIE_DISABLED:
> +       case FIE_ENABLED:
> +               break;
> +       case FIE_UNSET:
> +       default:

Would be more straightforward to do

if (fie_disabled == FIE_UNSET) {

here.

> +               fie_disabled = FIE_ENABLED;
> +               if (cppc_perf_ctrs_in_pcc()) {
> +                       pr_info("FIE not enabled on systems with registers in PCC\n");
> +                       fie_disabled = FIE_DISABLED;
> +               }
> +               break;
> +       }
> +       if (fie_disabled)
>                 return;
>
>         kworker_fie = kthread_create_worker(0, "cppc_fie");
> @@ -247,7 +269,7 @@ static void __init cppc_freq_invariance_init(void)
>
>  static void cppc_freq_invariance_exit(void)
>  {
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (fie_disabled)
>                 return;
>
>         kthread_destroy_worker(kworker_fie);
> @@ -936,6 +958,7 @@ static void cppc_check_hisi_workaround(void)
>                     wa_info[i].oem_revision == tbl->oem_revision) {
>                         /* Overwrite the get() callback */
>                         cppc_cpufreq_driver.get = hisi_cppc_cpufreq_get_rate;
> +                       fie_disabled = FIE_DISABLED;
>                         break;
>                 }
>         }
> diff --git a/include/acpi/cppc_acpi.h b/include/acpi/cppc_acpi.h
> index f73d357ecdf5..c5614444031f 100644
> --- a/include/acpi/cppc_acpi.h
> +++ b/include/acpi/cppc_acpi.h
> @@ -140,6 +140,7 @@ extern int cppc_get_perf_ctrs(int cpu, struct cppc_perf_fb_ctrs *perf_fb_ctrs);
>  extern int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls);
>  extern int cppc_set_enable(int cpu, bool enable);
>  extern int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps);
> +extern bool cppc_perf_ctrs_in_pcc(void);
>  extern bool acpi_cpc_valid(void);
>  extern bool cppc_allow_fast_switch(void);
>  extern int acpi_get_psd_map(unsigned int cpu, struct cppc_cpudata *cpu_data);
> @@ -173,6 +174,10 @@ static inline int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps)
>  {
>         return -ENOTSUPP;
>  }
> +static inline bool cppc_perf_ctrs_in_pcc(void)
> +{
> +       return false;
> +}
>  static inline bool acpi_cpc_valid(void)
>  {
>         return false;
> --

Apart from the above it looks fine to me, but I would like to get an
ACK from Viresh on the second patch.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
