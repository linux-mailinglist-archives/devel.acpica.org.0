Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 810B952357F
	for <lists+devel-acpica@lfdr.de>; Wed, 11 May 2022 16:30:11 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 834E1100F3FBE;
	Wed, 11 May 2022 07:30:09 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id D279B100EA2C1
	for <devel@acpica.org>; Wed, 11 May 2022 07:30:07 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B787ED1;
	Wed, 11 May 2022 07:30:07 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4AA413F66F;
	Wed, 11 May 2022 07:30:04 -0700 (PDT)
Date: Wed, 11 May 2022 15:30:01 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Pierre Gondois <pierre.gondois@arm.com>
Message-ID: <20220511143001.ewba7sovabinnajz@bogus>
References: <20220511134559.1466925-1-pierre.gondois@arm.com>
 <20220511134559.1466925-3-pierre.gondois@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511134559.1466925-3-pierre.gondois@arm.com>
Message-ID-Hash: U47SP7KBEXWP5K65NTFEEMHVPZI3BCEU
X-Message-ID-Hash: U47SP7KBEXWP5K65NTFEEMHVPZI3BCEU
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-kernel@vger.kernel.org, Ionela.Voinescu@arm.com, Dietmar.Eggemann@arm.com, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 3/5] ACPI: CPPC: Assume no transition latency if no PCCT
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/U47SP7KBEXWP5K65NTFEEMHVPZI3BCEU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 11, 2022 at 03:45:57PM +0200, Pierre Gondois wrote:
> From: Pierre Gondois <Pierre.Gondois@arm.com>
> 
> The transition_delay_us (struct cpufreq_policy) is currently defined
> as:
>   Preferred average time interval between consecutive invocations of
>   the driver to set the frequency for this policy.  To be set by the
>   scaling driver (0, which is the default, means no preference).
> The transition_latency represents the amount of time necessary for a
> CPU to change its frequency.
> 
> A PCCT table advertises mutliple values:
> - pcc_nominal: Expected latency to process a command, in microseconds
> - pcc_mpar: The maximum number of periodic requests that the subspace
>   channel can support, reported in commands per minute. 0 indicates no
>   limitation.
> - pcc_mrtt: The minimum amount of time that OSPM must wait after the
>   completion of a command before issuing the next command,
>   in microseconds.
> cppc_get_transition_latency() allows to get the max of them.
> 
> commit d4f3388afd48 ("cpufreq / CPPC: Set platform specific
> transition_delay_us") allows to select transition_delay_us based on
> the platform, and fallbacks to cppc_get_transition_latency()
> otherwise.
> 
> If _CPC objects are not using PCC channels (no PPCT table), the
> transition_delay_us is set to CPUFREQ_ETERNAL, leading to really long
> periods between frequency updates (~4s).
> 
> If the desired_reg, where performance requests are written, is in
> SystemMemory or SystemIo ACPI address space, there is no delay
> in requests. So return 0 instead of CPUFREQ_ETERNAL, leading to
> transition_delay_us being set to LATENCY_MULTIPLIER us (1000 us).
> 
> This patch also adds two macros to check the address spaces.
> 
> Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>
> ---
>  drivers/acpi/cppc_acpi.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
> index 6f09fe011544..cc932ec1b613 100644
> --- a/drivers/acpi/cppc_acpi.c
> +++ b/drivers/acpi/cppc_acpi.c
> @@ -100,6 +100,16 @@ static DEFINE_PER_CPU(struct cpc_desc *, cpc_desc_ptr);
>  				(cpc)->cpc_entry.reg.space_id ==	\
>  				ACPI_ADR_SPACE_PLATFORM_COMM)
>  
> +/* Check if a CPC register is in SystemMemory */
> +#define CPC_IN_SM(cpc) ((cpc)->type == ACPI_TYPE_BUFFER &&		\
> +				(cpc)->cpc_entry.reg.space_id ==	\
> +				ACPI_ADR_SPACE_SYSTEM_MEMORY)
> +

Again my taste or preference: s/SM/SYS_MEM or SYSTEM_MEM

> +/* Check if a CPC register is in SystemIo */
> +#define CPC_IN_SIO(cpc) ((cpc)->type == ACPI_TYPE_BUFFER &&		\
> +				(cpc)->cpc_entry.reg.space_id ==	\
> +				ACPI_ADR_SPACE_SYSTEM_IO)
> +

Ditto, s/SM/SYS_IO or SYSTEM_IO

I need not refer back to the macro when reading the code. SM/SIO is too
short and makes it hard to infer from the name in general.

>  /* Evaluates to True if reg is a NULL register descriptor */
>  #define IS_NULL_REG(reg) ((reg)->space_id ==  ACPI_ADR_SPACE_SYSTEM_MEMORY && \
>  				(reg)->address == 0 &&			\
> @@ -1456,6 +1466,9 @@ EXPORT_SYMBOL_GPL(cppc_set_perf);
>   * transition latency for performance change requests. The closest we have
>   * is the timing information from the PCCT tables which provides the info
>   * on the number and frequency of PCC commands the platform can handle.
> + *
> + * If desired_reg is in the SystemMemory or SystemIo ACPI address space,
> + * then assume there is no latency.
>   */
>  unsigned int cppc_get_transition_latency(int cpu_num)
>  {
> @@ -1481,7 +1494,9 @@ unsigned int cppc_get_transition_latency(int cpu_num)
>  		return CPUFREQ_ETERNAL;
>  
>  	desired_reg = &cpc_desc->cpc_regs[DESIRED_PERF];
> -	if (!CPC_IN_PCC(desired_reg))
> +	if (CPC_IN_SM(desired_reg) || CPC_IN_SIO(desired_reg))
> +		return 0;
> +	else if (!CPC_IN_PCC(desired_reg))
>  		return CPUFREQ_ETERNAL;

Apart from the above,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
