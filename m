Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C05819BE
	for <lists+devel-acpica@lfdr.de>; Tue, 26 Jul 2022 20:31:26 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5AE58100EAB68;
	Tue, 26 Jul 2022 11:31:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.179; helo=mail-yw1-f179.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E03C3100EB85F
	for <devel@acpica.org>; Tue, 26 Jul 2022 11:31:22 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-31f1d1c82c8so58995857b3.8
        for <devel@acpica.org>; Tue, 26 Jul 2022 11:31:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=n82DhlXUmmRWDBn1/90hG07HM42XaSvaAWKdxGdiSA8=;
        b=qQJqXMv6W6CGr0hivRzRb1X0OrpnX8wlLiOvn8v2EGDd2IBwszSpQ/u+eFqSnPOjSw
         AIpY+aWNLwGfa48kb3e4vdXpxaC/aIWYfagQxxD1WvadaoxX1Yg7m8h26ThEvFjz7HOP
         FsVrp47GPDnQw1Dnb9RyREfMp8qjFtuTm+3zwX3UJZR7rdLLQydvj4HDdi+ydhmqw9/F
         YIjEE+VQm/A3bTk+INtplqKjJnOeGesgYIwBRM9ADdPK5Cwmi4voEGdVRKjAt+Pns54Y
         seplN+Zs3Kahz70N2fvxwSnCADWKRyHdzuWS8pJRHbhqv63sLmgKD3uP1aJgUMaZFRqQ
         6IQw==
X-Gm-Message-State: AJIora8xhD13Ym8P64bXE1f3jltzSv3sPkjDlbZdzm/uojLphlWNj0Id
	xzWTbLBXgK1Oa89i1ZhuibqIoc3btZBM0TdUJqU=
X-Google-Smtp-Source: AGRyM1uqp5TiGgWPGpfJgth/RPy+WmH1BNU71XEuqnN0R9mspF9qNQtcS5mytBoJRoiS8F7w9kqb7y0aZRyHz6yivpM=
X-Received: by 2002:a81:1b97:0:b0:2db:640f:49d8 with SMTP id
 b145-20020a811b97000000b002db640f49d8mr15600692ywb.326.1658860281180; Tue, 26
 Jul 2022 11:31:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220726145948.2194684-1-jeremy.linton@arm.com>
In-Reply-To: <20220726145948.2194684-1-jeremy.linton@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 26 Jul 2022 20:31:10 +0200
Message-ID: <CAJZ5v0i-bCi0=FN=rMWCWCyKYQ6-upOhXteu9p6xAaf5=m93+w@mail.gmail.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Message-ID-Hash: O7J36ZDV37NWYBZUOUU2KLLF2R4W2OG6
X-Message-ID-Hash: O7J36ZDV37NWYBZUOUU2KLLF2R4W2OG6
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/O7J36ZDV37NWYBZUOUU2KLLF2R4W2OG6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 26, 2022 at 5:00 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
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
>  drivers/acpi/cppc_acpi.c       | 31 +++++++++++++++++++++++++++++++
>  drivers/cpufreq/cppc_cpufreq.c | 19 +++++++++++++++----
>  include/acpi/cppc_acpi.h       |  5 +++++
>  3 files changed, 51 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
> index 3c6d4ef87be0..ad84c55b6409 100644
> --- a/drivers/acpi/cppc_acpi.c
> +++ b/drivers/acpi/cppc_acpi.c
> @@ -1246,6 +1246,37 @@ int cppc_get_perf_caps(int cpunum, struct cppc_perf_caps *perf_caps)
>  }
>  EXPORT_SYMBOL_GPL(cppc_get_perf_caps);
>

A kerneldoc, please.

> +int cppc_perf_ctrs_in_pcc(void)

Why int and not bool?

> +{
> +       int cpu;
> +       struct cpc_desc *cpc_desc;
> +       struct cpc_register_resource *delivered_reg, *reference_reg,
> +               *ref_perf_reg, *ctr_wrap_reg;

No line wraps here, please and follow the reverse xmas tree convention.

> +
> +       for_each_present_cpu(cpu) {

Declare the variables only used in this loop here and you only need two.

> +               cpc_desc = per_cpu(cpc_desc_ptr, cpu);
> +               delivered_reg = &cpc_desc->cpc_regs[DELIVERED_CTR];
> +               reference_reg = &cpc_desc->cpc_regs[REFERENCE_CTR];
> +               ref_perf_reg = &cpc_desc->cpc_regs[REFERENCE_PERF];
> +               ctr_wrap_reg = &cpc_desc->cpc_regs[CTR_WRAP_TIME];

I would do

if (CPC_IN_PCC(&cpc_desc->cpc_regs[DELIVERED_CTR]) ||
    CPC_IN_PCC(&cpc_desc->cpc_regs[REFERENCE_CTR]) ||
    CPC_IN_PCC(&cpc_desc->cpc_regs[CTR_WRAP_TIME]))
        return true;

ref_perf_reg = &cpc_desc->cpc_regs[REFERENCE_PERF];
if (!CPC_SUPPORTED(ref_perf_reg))
    ref_perf_reg = &cpc_desc->cpc_regs[NOMINAL_PERF];

if (CPC_IN_PCC(ref_perf_reg))
    return true;

> +
> +               /*
> +                * If reference perf register is not supported then we should
> +                * use the nominal perf value
> +                */
> +               if (!CPC_SUPPORTED(ref_perf_reg))
> +                       ref_perf_reg = &cpc_desc->cpc_regs[NOMINAL_PERF];
> +
> +               /* Are any of the regs PCC ?*/
> +               if (CPC_IN_PCC(delivered_reg) || CPC_IN_PCC(reference_reg) ||
> +                       CPC_IN_PCC(ctr_wrap_reg) || CPC_IN_PCC(ref_perf_reg)) {
> +                       return true;
> +               }
> +       }
> +       return false;
> +}
> +EXPORT_SYMBOL_GPL(cppc_perf_ctrs_in_pcc);
> +
>  /**
>   * cppc_get_perf_ctrs - Read a CPU's performance feedback counters.
>   * @cpunum: CPU from which to read counters.
> diff --git a/drivers/cpufreq/cppc_cpufreq.c b/drivers/cpufreq/cppc_cpufreq.c
> index 24eaf0ec344d..a66d3013d0f8 100644
> --- a/drivers/cpufreq/cppc_cpufreq.c
> +++ b/drivers/cpufreq/cppc_cpufreq.c
> @@ -63,6 +63,10 @@ static struct cppc_workaround_oem_info wa_info[] = {
>
>  static struct cpufreq_driver cppc_cpufreq_driver;
>
> +static bool fie_disabled;
> +module_param(fie_disabled, bool, 0444);
> +MODULE_PARM_DESC(fie_disabled, "Disable Frequency Invariance Engine (FIE)");
> +
>  #ifdef CONFIG_ACPI_CPPC_CPUFREQ_FIE
>
>  /* Frequency invariance support */
> @@ -158,7 +162,7 @@ static void cppc_cpufreq_cpu_fie_init(struct cpufreq_policy *policy)
>         struct cppc_freq_invariance *cppc_fi;
>         int cpu, ret;
>
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (fie_disabled)
>                 return;
>
>         for_each_cpu(cpu, policy->cpus) {
> @@ -199,7 +203,7 @@ static void cppc_cpufreq_cpu_fie_exit(struct cpufreq_policy *policy)
>         struct cppc_freq_invariance *cppc_fi;
>         int cpu;
>
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (fie_disabled)
>                 return;
>
>         /* policy->cpus will be empty here, use related_cpus instead */
> @@ -229,7 +233,12 @@ static void __init cppc_freq_invariance_init(void)
>         };
>         int ret;
>
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (cppc_perf_ctrs_in_pcc()) {
> +               pr_debug("FIE not enabled on systems with registers in PCC\n");
> +               fie_disabled = true;
> +       }
> +
> +       if (fie_disabled)
>                 return;
>
>         kworker_fie = kthread_create_worker(0, "cppc_fie");
> @@ -247,7 +256,7 @@ static void __init cppc_freq_invariance_init(void)
>
>  static void cppc_freq_invariance_exit(void)
>  {
> -       if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
> +       if (fie_disabled)
>                 return;
>
>         kthread_destroy_worker(kworker_fie);
> @@ -940,6 +949,8 @@ static void cppc_check_hisi_workaround(void)
>                 }
>         }
>
> +       fie_disabled = true;
> +
>         acpi_put_table(tbl);
>  }
>
> diff --git a/include/acpi/cppc_acpi.h b/include/acpi/cppc_acpi.h
> index d389bab54241..f4ff571fcdcb 100644
> --- a/include/acpi/cppc_acpi.h
> +++ b/include/acpi/cppc_acpi.h
> @@ -140,6 +140,7 @@ extern int cppc_get_perf_ctrs(int cpu, struct cppc_perf_fb_ctrs *perf_fb_ctrs);
>  extern int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls);
>  extern int cppc_set_enable(int cpu, bool enable);
>  extern int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps);
> +extern int cppc_perf_ctrs_in_pcc(void);
>  extern bool acpi_cpc_valid(void);
>  extern bool cppc_allow_fast_switch(void);
>  extern int acpi_get_psd_map(unsigned int cpu, struct cppc_cpudata *cpu_data);
> @@ -173,6 +174,10 @@ static inline int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps)
>  {
>         return -ENOTSUPP;
>  }
> +extern int cppc_perf_ctrs_in_pcc(void)
> +{
> +       return false;
> +}
>  static inline bool acpi_cpc_valid(void)
>  {
>         return false;
> --
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
