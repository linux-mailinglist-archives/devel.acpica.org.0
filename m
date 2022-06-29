Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F915606BB
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Jun 2022 18:53:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 97DEC100EAB18;
	Wed, 29 Jun 2022 09:53:22 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.182; helo=mail-yb1-f182.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E3519100F227A
	for <devel@acpica.org>; Wed, 29 Jun 2022 09:53:19 -0700 (PDT)
Received: by mail-yb1-f182.google.com with SMTP id q132so28991255ybg.10
        for <devel@acpica.org>; Wed, 29 Jun 2022 09:53:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cN6Ljuohbb0Vlk0TDH1NJISR1t0bRPA1FSG4C0YqDUA=;
        b=xGCrErbnDBPWCiChNvS+G1l1X33vl3r+/AdZF3sqICVCJrU6sjotUYyKC0Wmne62IP
         q8AA7mjrS8QuPkoWaVrAfN09hC1N+l8nk3y4uKqDUNe1l42D0n/VU94c0muC/7NEz+NS
         9hcoJD17XJ839xYdMJHru+aBRA0b4in1Mi1+/T3QBhwp7viQNdtRMm/U1r/98ENAhBY0
         SIwc2jUVEl7gsitR4w0PPOmlTQDeOOhT/th+9UGoRX3xfX2mZfhVJID262IekpjiQOf8
         ABBLZd//WIss7Kov+9hxyB1vcigLpAy/viiYKscUiAH6ONOL2oixuQxI+hcmYc1XXZkD
         3/hw==
X-Gm-Message-State: AJIora9pL5t1hkn9Jr3x4NS9owL0oyCVvn0C1QspFm/Q4dQtJwW0jcIn
	BdLbTilTrrhyMQ4BdQbf/xQzI1vWi+Ky3hA+PaY=
X-Google-Smtp-Source: AGRyM1t3o9GsoqPByrdcwwMReVyOghctXRZ85jfyKlh8iiyQixMj21AmpSZwxGzKdeoP+bInImchsDTHeYc9Yc5KQTk=
X-Received: by 2002:a25:664f:0:b0:66c:d0f4:36cc with SMTP id
 z15-20020a25664f000000b0066cd0f436ccmr4277441ybm.482.1656521598411; Wed, 29
 Jun 2022 09:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <TYWP286MB2601965DDE4D251807F70415B1AF9@TYWP286MB2601.JPNP286.PROD.OUTLOOK.COM>
 <871qvnpro3.fsf@stealth>
In-Reply-To: <871qvnpro3.fsf@stealth>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Jun 2022 18:53:07 +0200
Message-ID: <CAJZ5v0gbqxWjJjEJWJUt3HCMARtaewewNSHuD1zjoxOUeE89Rg@mail.gmail.com>
To: Punit Agrawal <punit.agrawal@bytedance.com>, Riwen Lu <luriwen@hotmail.com>
Message-ID-Hash: YXAEBEILMDMGCM7LZG2FCSO5GLSAW4LA
X-Message-ID-Hash: YXAEBEILMDMGCM7LZG2FCSO5GLSAW4LA
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Riwen Lu <luriwen@kylinos.cn>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3] ACPI: Split out processor thermal register from ACPI PSS
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YXAEBEILMDMGCM7LZG2FCSO5GLSAW4LA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jun 17, 2022 at 11:26 AM Punit Agrawal
<punit.agrawal@bytedance.com> wrote:
>
> Riwen Lu <luriwen@hotmail.com> writes:
>
> > From: Riwen Lu <luriwen@kylinos.cn>
> >
> > Commit 239708a3af44 ("ACPI: Split out ACPI PSS from ACPI Processor
> > driver"), moves processor thermal registration to acpi_pss_perf_init(),
> > which doesn't get executed if ACPI_CPU_FREQ_PSS is not enabled.
> >
> > As ARM64 supports P-states using CPPC, it should be possible to also
> > support processor passive cooling even if PSS is not enabled. Split
> > out the processor thermal cooling register from ACPI PSS to support
> > this, and move it into a separate function in processor_thermal.c.
> >
> > Signed-off-by: Riwen Lu <luriwen@kylinos.cn>
> >
> > ---
> > v1 -> v2:
> >  - Reword the commit message.
> >  - Update the signature of acpi_pss_perf_init() to void, and remove the
> >    acpi_device parameter.
> >  - Move the processor thermal register/remove into a separate function in
> >    processor_thermal.c.
> >
> > v2 -> v3:
> >  - Remove the "pr" NULL check in processor thermal init/exit fuction.
> >  - Pass the acpi_device into processor thermal init/exit, and remove the
> >    convert in it.
> > ---
> >  drivers/acpi/Kconfig             |  2 +-
> >  drivers/acpi/Makefile            |  5 +--
> >  drivers/acpi/processor_driver.c  | 72 ++++----------------------------
> >  drivers/acpi/processor_thermal.c | 54 ++++++++++++++++++++++++
> >  include/acpi/processor.h         |  8 +++-
> >  5 files changed, 71 insertions(+), 70 deletions(-)
> >
> > diff --git a/drivers/acpi/Kconfig b/drivers/acpi/Kconfig
> > index 1e34f846508f..2457ade3f82d 100644
> > --- a/drivers/acpi/Kconfig
> > +++ b/drivers/acpi/Kconfig
> > @@ -255,7 +255,6 @@ config ACPI_DOCK
> >
> >  config ACPI_CPU_FREQ_PSS
> >       bool
> > -     select THERMAL
> >
> >  config ACPI_PROCESSOR_CSTATE
> >       def_bool y
> > @@ -287,6 +286,7 @@ config ACPI_PROCESSOR
> >       depends on X86 || IA64 || ARM64 || LOONGARCH
> >       select ACPI_PROCESSOR_IDLE
> >       select ACPI_CPU_FREQ_PSS if X86 || IA64 || LOONGARCH
> > +     select THERMAL
> >       default y
> >       help
> >         This driver adds support for the ACPI Processor package. It is required
> > diff --git a/drivers/acpi/Makefile b/drivers/acpi/Makefile
> > index b5a8d3e00a52..0002eecbf870 100644
> > --- a/drivers/acpi/Makefile
> > +++ b/drivers/acpi/Makefile
> > @@ -109,10 +109,9 @@ obj-$(CONFIG_ACPI_PPTT)  += pptt.o
> >  obj-$(CONFIG_ACPI_PFRUT)     += pfr_update.o pfr_telemetry.o
> >
> >  # processor has its own "processor." module_param namespace
> > -processor-y                  := processor_driver.o
> > +processor-y                  := processor_driver.o processor_thermal.o
> >  processor-$(CONFIG_ACPI_PROCESSOR_IDLE) += processor_idle.o
> > -processor-$(CONFIG_ACPI_CPU_FREQ_PSS)        += processor_throttling.o       \
> > -     processor_thermal.o
> > +processor-$(CONFIG_ACPI_CPU_FREQ_PSS)        += processor_throttling.o
> >  processor-$(CONFIG_CPU_FREQ) += processor_perflib.o
> >
> >  obj-$(CONFIG_ACPI_PROCESSOR_AGGREGATOR) += acpi_pad.o
> > diff --git a/drivers/acpi/processor_driver.c b/drivers/acpi/processor_driver.c
> > index 368a9edefd0c..1278969eec1f 100644
> > --- a/drivers/acpi/processor_driver.c
> > +++ b/drivers/acpi/processor_driver.c
> > @@ -139,75 +139,17 @@ static int acpi_soft_cpu_dead(unsigned int cpu)
> >  }
> >
> >  #ifdef CONFIG_ACPI_CPU_FREQ_PSS
> > -static int acpi_pss_perf_init(struct acpi_processor *pr,
> > -             struct acpi_device *device)
> > +static void acpi_pss_perf_init(struct acpi_processor *pr)
> >  {
> > -     int result = 0;
> > -
> >       acpi_processor_ppc_has_changed(pr, 0);
> >
> >       acpi_processor_get_throttling_info(pr);
> >
> >       if (pr->flags.throttling)
> >               pr->flags.limit = 1;
> > -
> > -     pr->cdev = thermal_cooling_device_register("Processor", device,
> > -                                                &processor_cooling_ops);
> > -     if (IS_ERR(pr->cdev)) {
> > -             result = PTR_ERR(pr->cdev);
> > -             return result;
> > -     }
> > -
> > -     dev_dbg(&device->dev, "registered as cooling_device%d\n",
> > -             pr->cdev->id);
> > -
> > -     result = sysfs_create_link(&device->dev.kobj,
> > -                                &pr->cdev->device.kobj,
> > -                                "thermal_cooling");
> > -     if (result) {
> > -             dev_err(&device->dev,
> > -                     "Failed to create sysfs link 'thermal_cooling'\n");
> > -             goto err_thermal_unregister;
> > -     }
> > -
> > -     result = sysfs_create_link(&pr->cdev->device.kobj,
> > -                                &device->dev.kobj,
> > -                                "device");
> > -     if (result) {
> > -             dev_err(&pr->cdev->device,
> > -                     "Failed to create sysfs link 'device'\n");
> > -             goto err_remove_sysfs_thermal;
> > -     }
> > -
> > -     return 0;
> > -
> > - err_remove_sysfs_thermal:
> > -     sysfs_remove_link(&device->dev.kobj, "thermal_cooling");
> > - err_thermal_unregister:
> > -     thermal_cooling_device_unregister(pr->cdev);
> > -
> > -     return result;
> > -}
> > -
> > -static void acpi_pss_perf_exit(struct acpi_processor *pr,
> > -             struct acpi_device *device)
> > -{
> > -     if (pr->cdev) {
> > -             sysfs_remove_link(&device->dev.kobj, "thermal_cooling");
> > -             sysfs_remove_link(&pr->cdev->device.kobj, "device");
> > -             thermal_cooling_device_unregister(pr->cdev);
> > -             pr->cdev = NULL;
> > -     }
> >  }
> >  #else
> > -static inline int acpi_pss_perf_init(struct acpi_processor *pr,
> > -             struct acpi_device *device)
> > -{
> > -     return 0;
> > -}
> > -
> > -static inline void acpi_pss_perf_exit(struct acpi_processor *pr,
> > -             struct acpi_device *device) {}
> > +static inline void acpi_pss_perf_init(struct acpi_processor *pr) {}
> >  #endif /* CONFIG_ACPI_CPU_FREQ_PSS */
> >
> >  static int __acpi_processor_start(struct acpi_device *device)
> > @@ -229,7 +171,9 @@ static int __acpi_processor_start(struct acpi_device *device)
> >       if (!cpuidle_get_driver() || cpuidle_get_driver() == &acpi_idle_driver)
> >               acpi_processor_power_init(pr);
> >
> > -     result = acpi_pss_perf_init(pr, device);
> > +     acpi_pss_perf_init(pr);
> > +
> > +     result = acpi_processor_thermal_init(pr, device);
> >       if (result)
> >               goto err_power_exit;
> >
> > @@ -239,7 +183,7 @@ static int __acpi_processor_start(struct acpi_device *device)
> >               return 0;
> >
> >       result = -ENODEV;
> > -     acpi_pss_perf_exit(pr, device);
> > +     acpi_processor_thermal_exit(pr, device);
> >
> >  err_power_exit:
> >       acpi_processor_power_exit(pr);
> > @@ -277,10 +221,10 @@ static int acpi_processor_stop(struct device *dev)
> >               return 0;
> >       acpi_processor_power_exit(pr);
> >
> > -     acpi_pss_perf_exit(pr, device);
> > -
> >       acpi_cppc_processor_exit(pr);
> >
> > +     acpi_processor_thermal_exit(pr, device);
> > +
> >       return 0;
> >  }
> >
> > diff --git a/drivers/acpi/processor_thermal.c b/drivers/acpi/processor_thermal.c
> > index d8b2dfcd59b5..db6ac540e924 100644
> > --- a/drivers/acpi/processor_thermal.c
> > +++ b/drivers/acpi/processor_thermal.c
> > @@ -266,3 +266,57 @@ const struct thermal_cooling_device_ops processor_cooling_ops = {
> >       .get_cur_state = processor_get_cur_state,
> >       .set_cur_state = processor_set_cur_state,
> >  };
> > +
> > +int acpi_processor_thermal_init(struct acpi_processor *pr,
> > +                             struct acpi_device *device)
> > +{
> > +     int result = 0;
> > +
> > +     pr->cdev = thermal_cooling_device_register("Processor", device,
> > +                                                &processor_cooling_ops);
> > +     if (IS_ERR(pr->cdev)) {
> > +             result = PTR_ERR(pr->cdev);
> > +             return result;
> > +     }
> > +
> > +     dev_dbg(&device->dev, "registered as cooling_device%d\n",
> > +             pr->cdev->id);
> > +
> > +     result = sysfs_create_link(&device->dev.kobj,
> > +                                &pr->cdev->device.kobj,
> > +                                "thermal_cooling");
> > +     if (result) {
> > +             dev_err(&device->dev,
> > +                     "Failed to create sysfs link 'thermal_cooling'\n");
> > +             goto err_thermal_unregister;
> > +     }
> > +
> > +     result = sysfs_create_link(&pr->cdev->device.kobj,
> > +                                &device->dev.kobj,
> > +                                "device");
> > +     if (result) {
> > +             dev_err(&pr->cdev->device,
> > +                     "Failed to create sysfs link 'device'\n");
> > +             goto err_remove_sysfs_thermal;
> > +     }
> > +
> > +     return 0;
> > +
> > +err_remove_sysfs_thermal:
> > +     sysfs_remove_link(&device->dev.kobj, "thermal_cooling");
> > +err_thermal_unregister:
> > +     thermal_cooling_device_unregister(pr->cdev);
> > +
> > +     return result;
> > +}
> > +
> > +void acpi_processor_thermal_exit(struct acpi_processor *pr,
> > +                              struct acpi_device *device)
> > +{
> > +     if (pr->cdev) {
> > +             sysfs_remove_link(&device->dev.kobj, "thermal_cooling");
> > +             sysfs_remove_link(&pr->cdev->device.kobj, "device");
> > +             thermal_cooling_device_unregister(pr->cdev);
> > +             pr->cdev = NULL;
> > +     }
> > +}
> > diff --git a/include/acpi/processor.h b/include/acpi/processor.h
> > index 194027371928..ba1e3ed98d3d 100644
> > --- a/include/acpi/processor.h
> > +++ b/include/acpi/processor.h
> > @@ -442,8 +442,12 @@ static inline int acpi_processor_hotplug(struct acpi_processor *pr)
> >
> >  /* in processor_thermal.c */
> >  int acpi_processor_get_limit_info(struct acpi_processor *pr);
> > +int acpi_processor_thermal_init(struct acpi_processor *pr,
> > +                             struct acpi_device *device);
> > +void acpi_processor_thermal_exit(struct acpi_processor *pr,
> > +                              struct acpi_device *device);
> >  extern const struct thermal_cooling_device_ops processor_cooling_ops;
> > -#if defined(CONFIG_ACPI_CPU_FREQ_PSS) & defined(CONFIG_CPU_FREQ)
> > +#ifdef CONFIG_CPU_FREQ
> >  void acpi_thermal_cpufreq_init(struct cpufreq_policy *policy);
> >  void acpi_thermal_cpufreq_exit(struct cpufreq_policy *policy);
> >  #else
> > @@ -455,6 +459,6 @@ static inline void acpi_thermal_cpufreq_exit(struct cpufreq_policy *policy)
> >  {
> >       return;
> >  }
> > -#endif       /* CONFIG_ACPI_CPU_FREQ_PSS */
> > +#endif       /* CONFIG_CPU_FREQ */
> >
> >  #endif
>
> Thanks for updating the patch.
>
> FWIW,
>
> Reviewed-by: Punit Agrawal <punit.agrawal@bytedance.com>

Applied as 5.20 material under edited subject, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
