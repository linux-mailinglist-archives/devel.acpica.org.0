Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFE888B3B
	for <lists+devel-acpica@lfdr.de>; Sat, 10 Aug 2019 14:14:00 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B37C1212E4B7E;
	Sat, 10 Aug 2019 05:16:35 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.210.67; helo=mail-ot1-f67.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 65E1D212E4B65
 for <devel@acpica.org>; Sat, 10 Aug 2019 05:16:34 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id o101so8032752ota.8
 for <devel@acpica.org>; Sat, 10 Aug 2019 05:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ZnkZOGpm7fMZCQtnRk5YOnRU/xjpzAJ2pgksDjet3g=;
 b=aUMaweYs/TYyE9SFuMrMpcoZhB3C4PIqdcpSUaKF8SLukEhJg1SsjYMDW9fBEaLEZi
 9kPJRw+ks6UO6f/cLelzuPIeQh64TiWLn9T1COYKFwaKN1KAfhIk6SVVs8GJK8m28/Ly
 ZSaIY1zx7D5IOX+UZwfjQGIBYuAko7hlMn9AlwDQw3pYqQrdznbtrt/fX1SgvzmWn/Fa
 Uar5C7bsh8OwXHn90yiiOidugU3y/RTWL8V7F5PNvXI8m3PvPWXlegGEH2Z6UY6qsfRl
 Swcc9QQ3goHBypF8Lte2b35BRhH48UGoGX2sjj16I/lponbo7cNTTuxJ5d4NN3Q/cc+K
 IDXQ==
X-Gm-Message-State: APjAAAV6Yi8HD+yKxmTmcM6RAbmc7e+M2e11Vso+bJ8tf0a5tCetGg0m
 1j4wfAgPbqvY7aoBBOCXpQGtwTgoKSkQmjrv51I=
X-Google-Smtp-Source: APXvYqysOys+vcdQeS2+hVVfi2JMOy24gO9wV5R0INLsbbLGUAXtzA72PnqsG00VHZ/MkV9f7pu/o33iVbP0dJK5PkQ=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr20570943oto.167.1565439236121; 
 Sat, 10 Aug 2019 05:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563862014.git.viresh.kumar@linaro.org>
 <86dc4a082ea00c278c0e1d7f3fcbdc4ab9af2eec.1563862014.git.viresh.kumar@linaro.org>
 <1782403.O7LH3UnqfR@kreacher> <20190806043904.dbpon4qf3mfsm4vz@vireshk-i7>
 <CAJZ5v0iqwc4mvqHoTHwoNS-T1zueS07S2e-1STEsKhFhoOh0dA@mail.gmail.com>
 <20190806084750.rlhjt2cirttdek2v@vireshk-i7>
 <20190809023345.ax5zdcfsei4ijdeo@vireshk-i7>
In-Reply-To: <20190809023345.ax5zdcfsei4ijdeo@vireshk-i7>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 10 Aug 2019 14:13:44 +0200
Message-ID: <CAJZ5v0hfxZfcb7GriEkC=hnJ45b7BcMs3-kAu_wZpt55jsBbuQ@mail.gmail.com>
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Fri, Aug 9, 2019 at 4:33 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 06-08-19, 14:17, Viresh Kumar wrote:
> > On 06-08-19, 10:01, Rafael J. Wysocki wrote:
> > > Yes, it does, thanks!
> > >
> > > [No need to resend, I'll take it from this message.]
> >
> > Forgot to write CPU in caps in print messages, updated now.
>
> And here is another version.

Queuing up for v5.4, thanks!

>
> -------------------------8<-------------------------
> From 6d2c1e8034562043a758524d6078e2dd1624195c Mon Sep 17 00:00:00 2001
> Message-Id: <6d2c1e8034562043a758524d6078e2dd1624195c.1565317925.git.viresh.kumar@linaro.org>
> From: Viresh Kumar <viresh.kumar@linaro.org>
> Date: Mon, 15 Jul 2019 15:06:02 +0530
> Subject: [PATCH] ACPI: cpufreq: Switch to QoS requests instead of cpufreq
>  notifier
>
> The cpufreq core now takes the min/max frequency constraints via QoS
> requests and the CPUFREQ_ADJUST notifier shall get removed later on.
>
> Switch over to using the QoS request for maximum frequency constraint
> for acpi driver.
>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
> - dev_pm_qos_update_request() can return 1 on success
>
>  drivers/acpi/processor_driver.c  | 37 ++++++++++--
>  drivers/acpi/processor_perflib.c | 96 +++++++++++---------------------
>  drivers/acpi/processor_thermal.c | 81 +++++++++++++--------------
>  include/acpi/processor.h         | 21 ++++---
>  4 files changed, 118 insertions(+), 117 deletions(-)
>
> diff --git a/drivers/acpi/processor_driver.c b/drivers/acpi/processor_driver.c
> index aea8d674a33d..2c911fcaa4b4 100644
> --- a/drivers/acpi/processor_driver.c
> +++ b/drivers/acpi/processor_driver.c
> @@ -284,6 +284,29 @@ static int acpi_processor_stop(struct device *dev)
>         return 0;
>  }
>
> +bool acpi_processor_cpufreq_init;
> +
> +static int acpi_processor_notifier(struct notifier_block *nb,
> +                                  unsigned long event, void *data)
> +{
> +       struct cpufreq_policy *policy = data;
> +       int cpu = policy->cpu;
> +
> +       if (event == CPUFREQ_CREATE_POLICY) {
> +               acpi_thermal_cpufreq_init(cpu);
> +               acpi_processor_ppc_init(cpu);
> +       } else if (event == CPUFREQ_REMOVE_POLICY) {
> +               acpi_processor_ppc_exit(cpu);
> +               acpi_thermal_cpufreq_exit(cpu);
> +       }
> +
> +       return 0;
> +}
> +
> +static struct notifier_block acpi_processor_notifier_block = {
> +       .notifier_call = acpi_processor_notifier,
> +};
> +
>  /*
>   * We keep the driver loaded even when ACPI is not running.
>   * This is needed for the powernow-k8 driver, that works even without
> @@ -310,8 +333,10 @@ static int __init acpi_processor_driver_init(void)
>         cpuhp_setup_state_nocalls(CPUHP_ACPI_CPUDRV_DEAD, "acpi/cpu-drv:dead",
>                                   NULL, acpi_soft_cpu_dead);
>
> -       acpi_thermal_cpufreq_init();
> -       acpi_processor_ppc_init();
> +       if (!cpufreq_register_notifier(&acpi_processor_notifier_block,
> +                                      CPUFREQ_POLICY_NOTIFIER))
> +               acpi_processor_cpufreq_init = true;
> +
>         acpi_processor_throttling_init();
>         return 0;
>  err:
> @@ -324,8 +349,12 @@ static void __exit acpi_processor_driver_exit(void)
>         if (acpi_disabled)
>                 return;
>
> -       acpi_processor_ppc_exit();
> -       acpi_thermal_cpufreq_exit();
> +       if (acpi_processor_cpufreq_init) {
> +               cpufreq_unregister_notifier(&acpi_processor_notifier_block,
> +                                           CPUFREQ_POLICY_NOTIFIER);
> +               acpi_processor_cpufreq_init = false;
> +       }
> +
>         cpuhp_remove_state_nocalls(hp_online);
>         cpuhp_remove_state_nocalls(CPUHP_ACPI_CPUDRV_DEAD);
>         driver_unregister(&acpi_processor_driver);
> diff --git a/drivers/acpi/processor_perflib.c b/drivers/acpi/processor_perflib.c
> index ee87cb6f6e59..277fcbbe3be4 100644
> --- a/drivers/acpi/processor_perflib.c
> +++ b/drivers/acpi/processor_perflib.c
> @@ -50,57 +50,13 @@ module_param(ignore_ppc, int, 0644);
>  MODULE_PARM_DESC(ignore_ppc, "If the frequency of your machine gets wrongly" \
>                  "limited by BIOS, this should help");
>
> -#define PPC_REGISTERED   1
> -#define PPC_IN_USE       2
> -
> -static int acpi_processor_ppc_status;
> -
> -static int acpi_processor_ppc_notifier(struct notifier_block *nb,
> -                                      unsigned long event, void *data)
> -{
> -       struct cpufreq_policy *policy = data;
> -       struct acpi_processor *pr;
> -       unsigned int ppc = 0;
> -
> -       if (ignore_ppc < 0)
> -               ignore_ppc = 0;
> -
> -       if (ignore_ppc)
> -               return 0;
> -
> -       if (event != CPUFREQ_ADJUST)
> -               return 0;
> -
> -       mutex_lock(&performance_mutex);
> -
> -       pr = per_cpu(processors, policy->cpu);
> -       if (!pr || !pr->performance)
> -               goto out;
> -
> -       ppc = (unsigned int)pr->performance_platform_limit;
> -
> -       if (ppc >= pr->performance->state_count)
> -               goto out;
> -
> -       cpufreq_verify_within_limits(policy, 0,
> -                                    pr->performance->states[ppc].
> -                                    core_frequency * 1000);
> -
> -      out:
> -       mutex_unlock(&performance_mutex);
> -
> -       return 0;
> -}
> -
> -static struct notifier_block acpi_ppc_notifier_block = {
> -       .notifier_call = acpi_processor_ppc_notifier,
> -};
> +static bool acpi_processor_ppc_in_use;
>
>  static int acpi_processor_get_platform_limit(struct acpi_processor *pr)
>  {
>         acpi_status status = 0;
>         unsigned long long ppc = 0;
> -
> +       int ret;
>
>         if (!pr)
>                 return -EINVAL;
> @@ -112,7 +68,7 @@ static int acpi_processor_get_platform_limit(struct acpi_processor *pr)
>         status = acpi_evaluate_integer(pr->handle, "_PPC", NULL, &ppc);
>
>         if (status != AE_NOT_FOUND)
> -               acpi_processor_ppc_status |= PPC_IN_USE;
> +               acpi_processor_ppc_in_use = true;
>
>         if (ACPI_FAILURE(status) && status != AE_NOT_FOUND) {
>                 ACPI_EXCEPTION((AE_INFO, status, "Evaluating _PPC"));
> @@ -124,6 +80,16 @@ static int acpi_processor_get_platform_limit(struct acpi_processor *pr)
>
>         pr->performance_platform_limit = (int)ppc;
>
> +       if (ignore_ppc || ppc >= pr->performance->state_count)
> +               return 0;
> +
> +       ret = dev_pm_qos_update_request(&pr->perflib_req,
> +                       pr->performance->states[ppc].core_frequency * 1000);
> +       if (ret < 0) {
> +               pr_warn("Failed to update perflib freq constraint: CPU%d (%d)\n",
> +                       pr->id, ret);
> +       }
> +
>         return 0;
>  }
>
> @@ -184,23 +150,29 @@ int acpi_processor_get_bios_limit(int cpu, unsigned int *limit)
>  }
>  EXPORT_SYMBOL(acpi_processor_get_bios_limit);
>
> -void acpi_processor_ppc_init(void)
> +void acpi_processor_ppc_init(int cpu)
>  {
> -       if (!cpufreq_register_notifier
> -           (&acpi_ppc_notifier_block, CPUFREQ_POLICY_NOTIFIER))
> -               acpi_processor_ppc_status |= PPC_REGISTERED;
> -       else
> -               printk(KERN_DEBUG
> -                      "Warning: Processor Platform Limit not supported.\n");
> +       struct acpi_processor *pr = per_cpu(processors, cpu);
> +       int ret;
> +
> +       ret = dev_pm_qos_add_request(get_cpu_device(cpu),
> +                                    &pr->perflib_req, DEV_PM_QOS_MAX_FREQUENCY,
> +                                    INT_MAX);
> +       if (ret < 0) {
> +               pr_err("Failed to add freq constraint for CPU%d (%d)\n", cpu,
> +                      ret);
> +               return;
> +       }
> +
> +       if (ignore_ppc < 0)
> +               ignore_ppc = 0;
>  }
>
> -void acpi_processor_ppc_exit(void)
> +void acpi_processor_ppc_exit(int cpu)
>  {
> -       if (acpi_processor_ppc_status & PPC_REGISTERED)
> -               cpufreq_unregister_notifier(&acpi_ppc_notifier_block,
> -                                           CPUFREQ_POLICY_NOTIFIER);
> +       struct acpi_processor *pr = per_cpu(processors, cpu);
>
> -       acpi_processor_ppc_status &= ~PPC_REGISTERED;
> +       dev_pm_qos_remove_request(&pr->perflib_req);
>  }
>
>  static int acpi_processor_get_performance_control(struct acpi_processor *pr)
> @@ -477,7 +449,7 @@ int acpi_processor_notify_smm(struct module *calling_module)
>         static int is_done = 0;
>         int result;
>
> -       if (!(acpi_processor_ppc_status & PPC_REGISTERED))
> +       if (!acpi_processor_cpufreq_init)
>                 return -EBUSY;
>
>         if (!try_module_get(calling_module))
> @@ -513,7 +485,7 @@ int acpi_processor_notify_smm(struct module *calling_module)
>          * we can allow the cpufreq driver to be rmmod'ed. */
>         is_done = 1;
>
> -       if (!(acpi_processor_ppc_status & PPC_IN_USE))
> +       if (!acpi_processor_ppc_in_use)
>                 module_put(calling_module);
>
>         return 0;
> @@ -742,7 +714,7 @@ acpi_processor_register_performance(struct acpi_processor_performance
>  {
>         struct acpi_processor *pr;
>
> -       if (!(acpi_processor_ppc_status & PPC_REGISTERED))
> +       if (!acpi_processor_cpufreq_init)
>                 return -EINVAL;
>
>         mutex_lock(&performance_mutex);
> diff --git a/drivers/acpi/processor_thermal.c b/drivers/acpi/processor_thermal.c
> index 50fb0107375e..eb552ee086ad 100644
> --- a/drivers/acpi/processor_thermal.c
> +++ b/drivers/acpi/processor_thermal.c
> @@ -35,7 +35,6 @@ ACPI_MODULE_NAME("processor_thermal");
>  #define CPUFREQ_THERMAL_MAX_STEP 3
>
>  static DEFINE_PER_CPU(unsigned int, cpufreq_thermal_reduction_pctg);
> -static unsigned int acpi_thermal_cpufreq_is_init = 0;
>
>  #define reduction_pctg(cpu) \
>         per_cpu(cpufreq_thermal_reduction_pctg, phys_package_first_cpu(cpu))
> @@ -61,35 +60,11 @@ static int phys_package_first_cpu(int cpu)
>  static int cpu_has_cpufreq(unsigned int cpu)
>  {
>         struct cpufreq_policy policy;
> -       if (!acpi_thermal_cpufreq_is_init || cpufreq_get_policy(&policy, cpu))
> +       if (!acpi_processor_cpufreq_init || cpufreq_get_policy(&policy, cpu))
>                 return 0;
>         return 1;
>  }
>
> -static int acpi_thermal_cpufreq_notifier(struct notifier_block *nb,
> -                                        unsigned long event, void *data)
> -{
> -       struct cpufreq_policy *policy = data;
> -       unsigned long max_freq = 0;
> -
> -       if (event != CPUFREQ_ADJUST)
> -               goto out;
> -
> -       max_freq = (
> -           policy->cpuinfo.max_freq *
> -           (100 - reduction_pctg(policy->cpu) * 20)
> -       ) / 100;
> -
> -       cpufreq_verify_within_limits(policy, 0, max_freq);
> -
> -      out:
> -       return 0;
> -}
> -
> -static struct notifier_block acpi_thermal_cpufreq_notifier_block = {
> -       .notifier_call = acpi_thermal_cpufreq_notifier,
> -};
> -
>  static int cpufreq_get_max_state(unsigned int cpu)
>  {
>         if (!cpu_has_cpufreq(cpu))
> @@ -108,7 +83,10 @@ static int cpufreq_get_cur_state(unsigned int cpu)
>
>  static int cpufreq_set_cur_state(unsigned int cpu, int state)
>  {
> -       int i;
> +       struct cpufreq_policy *policy;
> +       struct acpi_processor *pr;
> +       unsigned long max_freq;
> +       int i, ret;
>
>         if (!cpu_has_cpufreq(cpu))
>                 return 0;
> @@ -121,33 +99,50 @@ static int cpufreq_set_cur_state(unsigned int cpu, int state)
>          * frequency.
>          */
>         for_each_online_cpu(i) {
> -               if (topology_physical_package_id(i) ==
> +               if (topology_physical_package_id(i) !=
>                     topology_physical_package_id(cpu))
> -                       cpufreq_update_policy(i);
> +                       continue;
> +
> +               pr = per_cpu(processors, i);
> +
> +               policy = cpufreq_cpu_get(i);
> +               if (!policy)
> +                       return -EINVAL;
> +
> +               max_freq = (policy->cpuinfo.max_freq * (100 - reduction_pctg(i) * 20)) / 100;
> +
> +               cpufreq_cpu_put(policy);
> +
> +               ret = dev_pm_qos_update_request(&pr->thermal_req, max_freq);
> +               if (ret < 0) {
> +                       pr_warn("Failed to update thermal freq constraint: CPU%d (%d)\n",
> +                               pr->id, ret);
> +               }
>         }
>         return 0;
>  }
>
> -void acpi_thermal_cpufreq_init(void)
> +void acpi_thermal_cpufreq_init(int cpu)
>  {
> -       int i;
> -
> -       i = cpufreq_register_notifier(&acpi_thermal_cpufreq_notifier_block,
> -                                     CPUFREQ_POLICY_NOTIFIER);
> -       if (!i)
> -               acpi_thermal_cpufreq_is_init = 1;
> +       struct acpi_processor *pr = per_cpu(processors, cpu);
> +       int ret;
> +
> +       ret = dev_pm_qos_add_request(get_cpu_device(cpu),
> +                                    &pr->thermal_req, DEV_PM_QOS_MAX_FREQUENCY,
> +                                    INT_MAX);
> +       if (ret < 0) {
> +               pr_err("Failed to add freq constraint for CPU%d (%d)\n", cpu,
> +                      ret);
> +               return;
> +       }
>  }
>
> -void acpi_thermal_cpufreq_exit(void)
> +void acpi_thermal_cpufreq_exit(int cpu)
>  {
> -       if (acpi_thermal_cpufreq_is_init)
> -               cpufreq_unregister_notifier
> -                   (&acpi_thermal_cpufreq_notifier_block,
> -                    CPUFREQ_POLICY_NOTIFIER);
> +       struct acpi_processor *pr = per_cpu(processors, cpu);
>
> -       acpi_thermal_cpufreq_is_init = 0;
> +       dev_pm_qos_remove_request(&pr->thermal_req);
>  }
> -
>  #else                          /* ! CONFIG_CPU_FREQ */
>  static int cpufreq_get_max_state(unsigned int cpu)
>  {
> diff --git a/include/acpi/processor.h b/include/acpi/processor.h
> index 1194a4c78d55..ea21a6d20da7 100644
> --- a/include/acpi/processor.h
> +++ b/include/acpi/processor.h
> @@ -4,6 +4,8 @@
>
>  #include <linux/kernel.h>
>  #include <linux/cpu.h>
> +#include <linux/cpufreq.h>
> +#include <linux/pm_qos.h>
>  #include <linux/thermal.h>
>  #include <asm/acpi.h>
>
> @@ -230,6 +232,8 @@ struct acpi_processor {
>         struct acpi_processor_limit limit;
>         struct thermal_cooling_device *cdev;
>         struct device *dev; /* Processor device. */
> +       struct dev_pm_qos_request perflib_req;
> +       struct dev_pm_qos_request thermal_req;
>  };
>
>  struct acpi_processor_errata {
> @@ -296,16 +300,17 @@ static inline void acpi_processor_ffh_cstate_enter(struct acpi_processor_cx
>  /* in processor_perflib.c */
>
>  #ifdef CONFIG_CPU_FREQ
> -void acpi_processor_ppc_init(void);
> -void acpi_processor_ppc_exit(void);
> +extern bool acpi_processor_cpufreq_init;
> +void acpi_processor_ppc_init(int cpu);
> +void acpi_processor_ppc_exit(int cpu);
>  void acpi_processor_ppc_has_changed(struct acpi_processor *pr, int event_flag);
>  extern int acpi_processor_get_bios_limit(int cpu, unsigned int *limit);
>  #else
> -static inline void acpi_processor_ppc_init(void)
> +static inline void acpi_processor_ppc_init(int cpu)
>  {
>         return;
>  }
> -static inline void acpi_processor_ppc_exit(void)
> +static inline void acpi_processor_ppc_exit(int cpu)
>  {
>         return;
>  }
> @@ -421,14 +426,14 @@ static inline int acpi_processor_hotplug(struct acpi_processor *pr)
>  int acpi_processor_get_limit_info(struct acpi_processor *pr);
>  extern const struct thermal_cooling_device_ops processor_cooling_ops;
>  #if defined(CONFIG_ACPI_CPU_FREQ_PSS) & defined(CONFIG_CPU_FREQ)
> -void acpi_thermal_cpufreq_init(void);
> -void acpi_thermal_cpufreq_exit(void);
> +void acpi_thermal_cpufreq_init(int cpu);
> +void acpi_thermal_cpufreq_exit(int cpu);
>  #else
> -static inline void acpi_thermal_cpufreq_init(void)
> +static inline void acpi_thermal_cpufreq_init(int cpu)
>  {
>         return;
>  }
> -static inline void acpi_thermal_cpufreq_exit(void)
> +static inline void acpi_thermal_cpufreq_exit(int cpu)
>  {
>         return;
>  }
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
