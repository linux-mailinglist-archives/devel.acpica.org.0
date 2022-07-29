Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5896A585247
	for <lists+devel-acpica@lfdr.de>; Fri, 29 Jul 2022 17:20:55 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A4313100F3FDD;
	Fri, 29 Jul 2022 08:20:51 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=jeremy.linton@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id CA2BE100EA11E
	for <devel@acpica.org>; Fri, 29 Jul 2022 08:20:49 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4275B1063;
	Fri, 29 Jul 2022 08:20:48 -0700 (PDT)
Received: from [192.168.122.164] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53E383F73B;
	Fri, 29 Jul 2022 08:20:47 -0700 (PDT)
Message-ID: <a0bdc45a-c5c6-65ba-1ab8-e52dd26652d7@arm.com>
Date: Fri, 29 Jul 2022 10:20:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Punit Agrawal <punit.agrawal@bytedance.com>
References: <20220728221043.4161903-1-jeremy.linton@arm.com>
 <20220728221043.4161903-2-jeremy.linton@arm.com> <871qu4krb4.fsf@stealth>
From: Jeremy Linton <jeremy.linton@arm.com>
In-Reply-To: <871qu4krb4.fsf@stealth>
Message-ID-Hash: 5JNR62HTESIDD2HW5TLWS6WFFRSKIH2J
X-Message-ID-Hash: 5JNR62HTESIDD2HW5TLWS6WFFRSKIH2J
X-MailFrom: jeremy.linton@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-pm@vger.kernel.org, rafael@kernel.org, viresh.kumar@linaro.org, devel@acpica.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPI: CPPC: Disable FIE if registers in PCC regions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5JNR62HTESIDD2HW5TLWS6WFFRSKIH2J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

On 7/29/22 07:59, Punit Agrawal wrote:
> Hi Jeremy,
> 
> One comment / query below.
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
>>   drivers/cpufreq/cppc_cpufreq.c | 19 ++++++++++++----
>>   include/acpi/cppc_acpi.h       |  5 +++++
>>   3 files changed, 61 insertions(+), 4 deletions(-)
>>
> 
> [...]
> 
>> diff --git a/drivers/cpufreq/cppc_cpufreq.c b/drivers/cpufreq/cppc_cpufreq.c
>> index 24eaf0ec344d..ed607e27d6bb 100644
>> --- a/drivers/cpufreq/cppc_cpufreq.c
>> +++ b/drivers/cpufreq/cppc_cpufreq.c
> 
> [...]
> 
>> @@ -229,7 +233,12 @@ static void __init cppc_freq_invariance_init(void)
>>   	};
>>   	int ret;
>>   
>> -	if (cppc_cpufreq_driver.get == hisi_cppc_cpufreq_get_rate)
>> +	if (cppc_perf_ctrs_in_pcc()) {
>> +		pr_debug("FIE not enabled on systems with registers in PCC\n");
> 
> The message should probably be promoted to a pr_info() and exposed as
> part of the kernel logs. It is a change in the default behaviour we've
> had until now. The message will provide some hint about why it was
> disabled.
> 
> Thoughts?

I personally flip flopped between making it pr_info or pr_debug and 
settled on debug because no one else was complaining about the cppc_fie 
consumption. Which to me, meant that the users of platforms utilizing 
PCC regions weren't sensitive to the problem, or weren't yet running a 
distro/kernel with it enabled, or any number of other reasons why the 
problem wasn't getting more attention. Mostly I concluded the FIE code 
hadn't shown up in "enterprise" distros yet..


But, yah, if no one is going to complain about the extra messages 
pr_info() is a better plan.

Thanks for looking at this!


_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
