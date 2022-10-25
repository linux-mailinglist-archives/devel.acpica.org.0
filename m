Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDE360CC08
	for <lists+devel-acpica@lfdr.de>; Tue, 25 Oct 2022 14:38:55 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D97BA100EA2C9;
	Tue, 25 Oct 2022 05:38:52 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id E1DE3100EA2C3
	for <devel@acpica.org>; Tue, 25 Oct 2022 05:38:50 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07AECD6E;
	Tue, 25 Oct 2022 05:38:56 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4F9D3F7B4;
	Tue, 25 Oct 2022 05:38:48 -0700 (PDT)
Date: Tue, 25 Oct 2022 13:38:46 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <20221025123846.o6ufodigshvyqhqj@bogus>
References: <20221025113643.79743-1-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221025113643.79743-1-wangxiongfeng2@huawei.com>
Message-ID-Hash: R4XZGKE2ZI3G5BBRVANYTLCDLRICMRA2
X-Message-ID-Hash: R4XZGKE2ZI3G5BBRVANYTLCDLRICMRA2
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: rafael.j.wysocki@intel.com, linux-acpi@vger.kernel.org, devel@acpica.org, linux-kernel@vger.kernel.org, liwei391@huawei.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: add missing macro ACPI_FUNCTION_TRACE() for ns_repair_HID()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/R4XZGKE2ZI3G5BBRVANYTLCDLRICMRA2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Xiongfeng,

On Tue, Oct 25, 2022 at 07:36:43PM +0800, Xiongfeng Wang wrote:
> The following commit add function tracing macros for the namespace repair
> mechanism.
> 
>   commit 0766efdf9a9d24eaefe260c787f49af225018b16
>   ACPICA: Add function trace macros to improve debugging
> 
> But it missed the trace macro for the entry of ns_repair_HID(). Let's
> add it.
>

Generally all ACPICA changes need to be submitted to the upstream project
via GitHub at https://github.com/acpica/acpica. It will be imported to the
Linux project from there.

-- 
Regards,
Sudeep
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
