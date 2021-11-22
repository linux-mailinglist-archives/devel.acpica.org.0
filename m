Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4031459471
	for <lists+devel-acpica@lfdr.de>; Mon, 22 Nov 2021 18:59:16 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 57F2C100F3931;
	Mon, 22 Nov 2021 09:59:15 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=sudeep.holla@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id E373A100EA2A4
	for <devel@acpica.org>; Mon, 22 Nov 2021 09:59:13 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 465811042;
	Mon, 22 Nov 2021 09:59:12 -0800 (PST)
Received: from bogus (unknown [10.57.46.248])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4833A3F73B;
	Mon, 22 Nov 2021 09:59:11 -0800 (PST)
Date: Mon, 22 Nov 2021 17:59:08 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <20211122175908.uprdvok2kruj4qko@bogus>
References: <20211102182542.3460787-1-sudeep.holla@arm.com>
 <CAJZ5v0jL2+1rzqB2aAJ0T6w3md2dyuHWZNKOk+AbioeD-4ccDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0jL2+1rzqB2aAJ0T6w3md2dyuHWZNKOk+AbioeD-4ccDA@mail.gmail.com>
Message-ID-Hash: ALK2EZI5A4CGWD2XWV4X6542KGYVT7AC
X-Message-ID-Hash: ALK2EZI5A4CGWD2XWV4X6542KGYVT7AC
X-MailFrom: sudeep.holla@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 0/3] ACPI: Add support for PCC Operation Region
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ALK2EZI5A4CGWD2XWV4X6542KGYVT7AC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Rafael,


Thanks for the response, sorry for the delay as I was away.

On Fri, Nov 05, 2021 at 03:58:14PM +0100, Rafael J. Wysocki wrote:
> Hi Sudeep,
> 
> On Tue, Nov 2, 2021 at 7:26 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Hi,
> >
> > This series adds support for ACPI PCC OpRegion added in ACPI 6.3
> > I understand that the ACPICA changes need to go via different route,
> > but I am posting it together to give complete narative/picture for
> > the review/discussion.
> >
> > Regards,
> > Sudeep
> >
> > Sudeep Holla (3):
> >   ACPICA: Fix wrong interpretation of PCC address
> >   ACPICA: Add support for PCC Opregion special context data
> 
> The above two need to be submitted to the upstream project via GitHub
> at https://github.com/acpica/acpica
> 

Thanks for the info, I had a rough idea but posted these for reference here
anyways.

> The will be applicable to the Linux code base only after they have
> been accepted by the upstream.
>

Sure, I have now sent the pull request(https://github.com/acpica/acpica/pull/735)

> >   ACPI: PCC: Implement OperationRegion handler for the PCC Type 3 subtype
> 
> And this one will be applied when the above happens.
>

Make sense.

-- 
Regards,
Sudeep
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
