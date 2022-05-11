Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7555235C7
	for <lists+devel-acpica@lfdr.de>; Wed, 11 May 2022 16:41:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 58794100F3FC1;
	Wed, 11 May 2022 07:41:23 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 3300E100EA2C1
	for <devel@acpica.org>; Wed, 11 May 2022 07:41:21 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBA7B1FB;
	Wed, 11 May 2022 07:41:20 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 395923F66F;
	Wed, 11 May 2022 07:41:19 -0700 (PDT)
Date: Wed, 11 May 2022 15:41:16 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Pierre Gondois <pierre.gondois@arm.com>
Message-ID: <20220511144116.ir2wyfqwdpnhkldx@bogus>
References: <20220511134559.1466925-1-pierre.gondois@arm.com>
 <20220511134559.1466925-4-pierre.gondois@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511134559.1466925-4-pierre.gondois@arm.com>
Message-ID-Hash: JGF3IBTQMW6FC24PHI3KCRQ2KZF2LUCO
X-Message-ID-Hash: JGF3IBTQMW6FC24PHI3KCRQ2KZF2LUCO
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-kernel@vger.kernel.org, Ionela.Voinescu@arm.com, Dietmar.Eggemann@arm.com, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 4/5] cpufreq: CPPC: Enable fast_switch
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JGF3IBTQMW6FC24PHI3KCRQ2KZF2LUCO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 11, 2022 at 03:45:58PM +0200, Pierre Gondois wrote:
> From: Pierre Gondois <Pierre.Gondois@arm.com>
> 
> The communication mean of the _CPC desired performance can be
> PCC, System Memory, System IO, or Functional Fixed Hardware.
> 
> commit b7898fda5bc7 ("cpufreq: Support for fast frequency switching")
> fast_switching is 'for switching CPU frequencies from interrupt
> context'.
> Writes to SystemMemory and SystemIo are fast and suitable this.
> This is not the case for PCC and might not be the case for FFH.
> 
> Enable fast_switching for the cppc_cpufreq driver in above cases.
> 
> Add cppc_allow_fast_switch() to check the desired performance
> register address space and set fast_switching accordingly.
>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
