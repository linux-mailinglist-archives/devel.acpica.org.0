Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 199055B2603
	for <lists+devel-acpica@lfdr.de>; Thu,  8 Sep 2022 20:42:19 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 28F5B100EA2D9;
	Thu,  8 Sep 2022 11:42:16 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 5D927100EA2CB
	for <devel@acpica.org>; Thu,  8 Sep 2022 11:42:13 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25E00153B;
	Thu,  8 Sep 2022 11:42:19 -0700 (PDT)
Received: from [192.168.122.164] (U203867.austin.arm.com [10.118.30.29])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A55483F71A;
	Thu,  8 Sep 2022 11:42:12 -0700 (PDT)
Message-ID: <641496a1-86f9-6d56-c22c-a77b38a4cf7c@arm.com>
Date: Thu, 8 Sep 2022 13:42:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Punit Agrawal <punit.agrawal@bytedance.com>
References: <20220819162547.141333-1-jeremy.linton@arm.com>
 <20220819162547.141333-2-jeremy.linton@arm.com> <87pmg6arx2.fsf@stealth>
From: Jeremy Linton <jeremy.linton@arm.com>
In-Reply-To: <87pmg6arx2.fsf@stealth>
Message-ID-Hash: VGS2X3J4GBIIMYIGWWTFHAKUCHDNQ5XV
X-Message-ID-Hash: VGS2X3J4GBIIMYIGWWTFHAKUCHDNQ5XV
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-acpi@vger.kernel.org, rafael@kernel.org, viresh.kumar@linaro.org, lukasz.luba@arm.com, ionela.voinescu@arm.com, pierre.gondois@arm.com, linux-kernel@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v4 1/2] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VGS2X3J4GBIIMYIGWWTFHAKUCHDNQ5XV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

On 9/8/22 08:59, Punit Agrawal wrote:
> Hi Jeremy,
> 
> I missed the previous version (holidays) but hopefully still in time for
> this one. A query / comment below.
> 
> Jeremy Linton <jeremy.linton@arm.com> writes:
> 
>> PCC regions utilize a mailbox to set/retrieve register values used by
>> the CPPC code. This is fine as long as the operations are
>> infrequent. With the FIE code enabled though the overhead can range
>> from 2-11% of system CPU overhead (ex: as measured by top) on Arm
>> based machines.
>>
>> So, before enabling FIE assure none of the registers used by
>> cppc_get_perf_ctrs() are in the PCC region. Furthermore lets also
>> enable a module parameter which can also disable it at boot or module
>> reload.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/acpi/cppc_acpi.c       | 41 ++++++++++++++++++++++++++++++++++
>>   drivers/cpufreq/cppc_cpufreq.c | 31 +++++++++++++++++++++----
>>   include/acpi/cppc_acpi.h       |  5 +++++
>>   3 files changed, 73 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
>> index 1e15a9f25ae9..c840bf606b30 100644
>> --- a/drivers/acpi/cppc_acpi.c
>> +++ b/drivers/acpi/cppc_acpi.c
>> @@ -1240,6 +1240,47 @@ int cppc_get_perf_caps(int cpunum, struct cppc_perf_caps *perf_caps)
>>   }
>>   EXPORT_SYMBOL_GPL(cppc_get_perf_caps);
>>   
>> +/**
>> + * cppc_perf_ctrs_in_pcc - Check if any perf counters are in a PCC region.
>> + *
>> + * CPPC has flexibility about how counters describing CPU perf are delivered.
>> + * One of the choices is PCC regions, which can have a high access latency. This
>> + * routine allows callers of cppc_get_perf_ctrs() to know this ahead of time.
>> + *
>> + * Return: true if any of the counters are in PCC regions, false otherwise
>> + */
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
> 
> With this change, if FIE is enabled, the rest of the function will run
> even if the hisi workaround is enabled. Not sure if that is an
> intentional change. The same applies to similar other changes in the
> patch as well.

Yah, I think its intentional, unless i'm missing something. The hisi 
quirk detection path forces this off regardless of the user attempting 
to force it on. Which is part of why I think the enum states must be as 
above. The other reason is that the final result of whether FIE is 
disabled ends up in /sys/modules/cppc_cpufreq/parameters/fie_disabled 
which in this case may not reflect what the user requested.


I have another patch that might be worth posting that I created while 
implementing CPPC on a machine a year or so ago that removes this quirk 
entirely. Instead it detects counters that aren't incrementing properly 
and NULL's out the get routine so that cpupower/etc report that the 
frequency is being retrieved from the kernel rather than the hardware. 
Someone else will have to test it though, because I eventually figured 
out how to synthesize both counters in a way that is generic enough to 
work on most machines.

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
