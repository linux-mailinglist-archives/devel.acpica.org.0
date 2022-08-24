Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B60C59FF38
	for <lists+devel-acpica@lfdr.de>; Wed, 24 Aug 2022 18:14:07 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B9653100E5D98;
	Wed, 24 Aug 2022 09:14:05 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id F30CD100EA2C8
	for <devel@acpica.org>; Wed, 24 Aug 2022 09:14:02 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71299106F;
	Wed, 24 Aug 2022 09:14:05 -0700 (PDT)
Received: from [192.168.122.164] (U203867.austin.arm.com [10.118.30.29])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EF5D3FAF5;
	Wed, 24 Aug 2022 09:14:01 -0700 (PDT)
Message-ID: <f08d1b2e-9367-6a47-b0e4-81797afa0961@arm.com>
Date: Wed, 24 Aug 2022 11:14:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20220818211619.4193362-1-jeremy.linton@arm.com>
 <20220818211619.4193362-2-jeremy.linton@arm.com>
 <20220824061337.dtgfmhgossyhzjpy@vireshk-i7>
From: Jeremy Linton <jeremy.linton@arm.com>
In-Reply-To: <20220824061337.dtgfmhgossyhzjpy@vireshk-i7>
Message-ID-Hash: G3OXT32GXLX7FF4ZO5R6XKCMUYAWDKSH
X-Message-ID-Hash: G3OXT32GXLX7FF4ZO5R6XKCMUYAWDKSH
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-acpi@vger.kernel.org, rafael@kernel.or, punit.agrawal@bytedance.com, lukasz.luba@arm.com, ionela.voinescu@arm.com, pierre.gondois@arm.com, linux-kernel@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/2] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/G3OXT32GXLX7FF4ZO5R6XKCMUYAWDKSH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

On 8/24/22 01:13, Viresh Kumar wrote:
> On 18-08-22, 16:16, Jeremy Linton wrote:
>> diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
>> +bool cppc_perf_ctrs_in_pcc(void)
>> +{
>> +	int cpu;
>> +
>> +	for_each_present_cpu(cpu) {
>> +		struct cpc_register_resource *ref_perf_reg;
>> +		struct cpc_desc *cpc_desc;
>> +
>> +		cpc_desc = per_cpu(cpc_desc_ptr, cpu);
>> +
>> +		if (CPC_IN_PCC(&cpc_desc->cpc_regs[DELIVERED_CTR]) ||
>> +		    CPC_IN_PCC(&cpc_desc->cpc_regs[REFERENCE_CTR]) ||
>> +		    CPC_IN_PCC(&cpc_desc->cpc_regs[CTR_WRAP_TIME]))
>> +			return true;
>> +
>> +
>> +		ref_perf_reg = &cpc_desc->cpc_regs[REFERENCE_PERF];
>> +
>> +		/*
>> +		 * If reference perf register is not supported then we should
>> +		 * use the nominal perf value
>> +		 */
>> +		if (!CPC_SUPPORTED(ref_perf_reg))
>> +			ref_perf_reg = &cpc_desc->cpc_regs[NOMINAL_PERF];
>> +
>> +		if (CPC_IN_PCC(ref_perf_reg))
>> +			return true;
>> +	}
> 
> Add a blank line here please.

Sure,

> 
>> +	return false;
>> +}
>> +EXPORT_SYMBOL_GPL(cppc_perf_ctrs_in_pcc);
>> +
>>   /**
>>    * cppc_get_perf_ctrs - Read a CPU's performance feedback counters.
>>    * @cpunum: CPU from which to read counters.
>> diff --git a/drivers/cpufreq/cppc_cpufreq.c b/drivers/cpufreq/cppc_cpufreq.c
>> index 24eaf0ec344d..32fcb0bf74a4 100644
>> --- a/drivers/cpufreq/cppc_cpufreq.c
>> +++ b/drivers/cpufreq/cppc_cpufreq.c
>> @@ -63,7 +63,15 @@ static struct cppc_workaround_oem_info wa_info[] = {
>>   
>>   static struct cpufreq_driver cppc_cpufreq_driver;
>>   
>> +static enum {
>> +	FIE_UNSET = -1,
>> +	FIE_ENABLED,
>> +	FIE_DISABLED
>> +} fie_disabled = FIE_UNSET;
>> +
>>   #ifdef CONFIG_ACPI_CPPC_CPUFREQ_FIE
>> +module_param(fie_disabled, int, 0444);
>> +MODULE_PARM_DESC(fie_disabled, "Disable Frequency Invariance Engine (FIE)");
>>   
>>   /* Frequency invariance support */
>>   struct cppc_freq_invariance {
>> @@ -158,7 +166,7 @@ static void cppc_cpufreq_cpu_fie_init(struct cpufreq_policy *policy)
>>   	struct cppc_freq_invariance *cppc_fi;
>>   	int cpu, ret;
>>   
>> -	if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
>> +	if (fie_disabled)
>>   		return;
>>   
>>   	for_each_cpu(cpu, policy->cpus) {
>> @@ -199,7 +207,7 @@ static void cppc_cpufreq_cpu_fie_exit(struct cpufreq_policy *policy)
>>   	struct cppc_freq_invariance *cppc_fi;
>>   	int cpu;
>>   
>> -	if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
>> +	if (fie_disabled)
>>   		return;
>>   
>>   	/* policy->cpus will be empty here, use related_cpus instead */
>> @@ -229,7 +237,21 @@ static void __init cppc_freq_invariance_init(void)
>>   	};
>>   	int ret;
>>   
>> -	if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
>> +	switch (fie_disabled) {
>> +	/* honor user request */
>> +	case FIE_DISABLED:
>> +	case FIE_ENABLED:
>> +		break;
>> +	case FIE_UNSET:
>> +	default:
>> +		fie_disabled = FIE_ENABLED;
>> +		if (cppc_perf_ctrs_in_pcc()) {
>> +			pr_info("FIE not enabled on systems with registers in PCC\n");
>> +			fie_disabled = FIE_DISABLED;
>> +		}
>> +		break;
>> +	}
> 
> here too.

Sure,

> 
>> +	if (fie_disabled)
>>   		return;
>>   
>>   	kworker_fie = kthread_create_worker(0, "cppc_fie");
>> @@ -247,7 +269,7 @@ static void __init cppc_freq_invariance_init(void)
>>   
>>   static void cppc_freq_invariance_exit(void)
>>   {
>> -	if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
>> +	if (fie_disabled)
>>   		return;
>>   
>>   	kthread_destroy_worker(kworker_fie);
>> @@ -936,6 +958,7 @@ static void cppc_check_hisi_workaround(void)
>>   		    wa_info[i].oem_revision == tbl->oem_revision) {
>>   			/* Overwrite the get() callback */
>>   			cppc_cpufreq_driver.get = hisi_cppc_cpufreq_get_rate;
>> +			fie_disabled = FIE_DISABLED;
>>   			break;
>>   		}
>>   	}
>> diff --git a/include/acpi/cppc_acpi.h b/include/acpi/cppc_acpi.h
>> index f73d357ecdf5..c5614444031f 100644
>> --- a/include/acpi/cppc_acpi.h
>> +++ b/include/acpi/cppc_acpi.h
>> @@ -140,6 +140,7 @@ extern int cppc_get_perf_ctrs(int cpu, struct cppc_perf_fb_ctrs *perf_fb_ctrs);
>>   extern int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls);
>>   extern int cppc_set_enable(int cpu, bool enable);
>>   extern int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps);
>> +extern bool cppc_perf_ctrs_in_pcc(void);
>>   extern bool acpi_cpc_valid(void);
>>   extern bool cppc_allow_fast_switch(void);
>>   extern int acpi_get_psd_map(unsigned int cpu, struct cppc_cpudata *cpu_data);
>> @@ -173,6 +174,10 @@ static inline int cppc_get_perf_caps(int cpu, struct cppc_perf_caps *caps)
>>   {
>>   	return -ENOTSUPP;
>>   }
>> +static inline bool cppc_perf_ctrs_in_pcc(void)
>> +{
>> +	return false;
>> +}
>>   static inline bool acpi_cpc_valid(void)
>>   {
>>   	return false;
> 
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> 


Thanks for looking at this.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
