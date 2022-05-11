Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 838FE52362C
	for <lists+devel-acpica@lfdr.de>; Wed, 11 May 2022 16:51:04 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 42E69100F3FD2;
	Wed, 11 May 2022 07:51:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id E3BA0100F3FD1
	for <devel@acpica.org>; Wed, 11 May 2022 07:50:57 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69684ED1;
	Wed, 11 May 2022 07:50:57 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CBF2A3F66F;
	Wed, 11 May 2022 07:50:55 -0700 (PDT)
Date: Wed, 11 May 2022 15:50:53 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Pierre Gondois <pierre.gondois@arm.com>
Message-ID: <20220511145053.mszsbcqsytf6tmfh@bogus>
References: <20220511134559.1466925-1-pierre.gondois@arm.com>
 <20220511134559.1466925-5-pierre.gondois@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511134559.1466925-5-pierre.gondois@arm.com>
Message-ID-Hash: 43BUJYGA6FY3WZE7TCKUF7DC6GR2R3CL
X-Message-ID-Hash: 43BUJYGA6FY3WZE7TCKUF7DC6GR2R3CL
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linuix-kernel@vger.kernel.org, Ionela.Voinescu@arm.com, Dietmar.Eggemann@arm.com, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 5/5] cpufreq: CPPC: Enable dvfs_possible_from_any_cpu
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/43BUJYGA6FY3WZE7TCKUF7DC6GR2R3CL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 11, 2022 at 03:45:59PM +0200, Pierre Gondois wrote:
> From: Pierre Gondois <Pierre.Gondois@arm.com>
> 
> The communication mean of the _CPC desired performance can be
> PCC, System Memory, System IO, or Functional Fixed Hardware (FFH).
> 
> PCC, SystemMemory and SystemIo address spaces are available from any
> CPU. Thus, dvfs_possible_from_any_cpu should be enabled in such case.
> For FFH, let the FFH implementation do smp_call_function_*() calls.
>

Fair enough. I just thought it would be good to check if this is already
taken care for Arm platforms and found that we don't support it yet. So all
is fine :).

> Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>
> ---
>  drivers/cpufreq/cppc_cpufreq.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cppc_cpufreq.c b/drivers/cpufreq/cppc_cpufreq.c
> index 000a0c610c30..ad1535fbf389 100644
> --- a/drivers/cpufreq/cppc_cpufreq.c
> +++ b/drivers/cpufreq/cppc_cpufreq.c
> @@ -558,6 +558,7 @@ static int cppc_cpufreq_cpu_init(struct cpufreq_policy *policy)
>  	}
>  
>  	policy->fast_switch_possible = cppc_allow_fast_switch();
> +	policy->dvfs_possible_from_any_cpu = true;
>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
