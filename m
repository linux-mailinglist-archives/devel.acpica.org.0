Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7F40DF58
	for <lists+devel-acpica@lfdr.de>; Thu, 16 Sep 2021 18:08:38 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 67B00100EB32F;
	Thu, 16 Sep 2021 09:08:36 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=lorenzo.pieralisi@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id C8932100EB32C
	for <devel@acpica.org>; Thu, 16 Sep 2021 09:08:34 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9DCE101E;
	Thu, 16 Sep 2021 09:08:33 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D5453F5A1;
	Thu, 16 Sep 2021 09:08:32 -0700 (PDT)
Date: Thu, 16 Sep 2021 17:08:27 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Message-ID: <20210916160827.GA4525@lpieralisi>
References: <20210910122820.26886-1-justin.he@arm.com>
 <20210910143223.6705-1-justin.he@arm.com>
 <CAMj1kXG6Gu=g8P902NB2b+OvzqwJQPqQewYX5UwMiXALYAFkDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXG6Gu=g8P902NB2b+OvzqwJQPqQewYX5UwMiXALYAFkDw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Message-ID-Hash: 6Y53QQFCFYHZ7BN7JGWV3K33FEAO3YZI
X-Message-ID-Hash: 6Y53QQFCFYHZ7BN7JGWV3K33FEAO3YZI
X-MailFrom: lorenzo.pieralisi@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Jia He <justin.he@arm.com>, Will Deacon <will@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Catalin Marinas <catalin.marinas@arm.com>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Harb Abdulhamid <harb@amperecomputing.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] Revert "ACPI: Add memory semantics to acpi_os_map_memory()"
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6Y53QQFCFYHZ7BN7JGWV3K33FEAO3YZI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Sep 10, 2021 at 07:28:49PM +0200, Ard Biesheuvel wrote:
> On Fri, 10 Sept 2021 at 16:32, Jia He <justin.he@arm.com> wrote:
> >
> > This reverts commit 437b38c51162f8b87beb28a833c4d5dc85fa864e.
> >
> > After this commit, a boot panic is alway hit on an Ampere EMAG server
> > with call trace as follows:
> >  Internal error: synchronous external abort: 96000410 [#1] SMP
> >  Modules linked in:
> >  CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.14.0+ #462
> >  Hardware name: MiTAC RAPTOR EV-883832-X3-0001/RAPTOR, BIOS 0.14 02/22/2019
> >  pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > [...snip...]
> >  Call trace:
> >   acpi_ex_system_memory_space_handler+0x26c/0x2c8
> >   acpi_ev_address_space_dispatch+0x228/0x2c4
> >   acpi_ex_access_region+0x114/0x268
> >   acpi_ex_field_datum_io+0x128/0x1b8
> >   acpi_ex_extract_from_field+0x14c/0x2ac
> >   acpi_ex_read_data_from_field+0x190/0x1b8
> >   acpi_ex_resolve_node_to_value+0x1ec/0x288
> >   acpi_ex_resolve_to_value+0x250/0x274
> >   acpi_ds_evaluate_name_path+0xac/0x124
> >   acpi_ds_exec_end_op+0x90/0x410
> >   acpi_ps_parse_loop+0x4ac/0x5d8
> >   acpi_ps_parse_aml+0xe0/0x2c8
> >   acpi_ps_execute_method+0x19c/0x1ac
> >   acpi_ns_evaluate+0x1f8/0x26c
> >   acpi_ns_init_one_device+0x104/0x140
> >   acpi_ns_walk_namespace+0x158/0x1d0
> >   acpi_ns_initialize_devices+0x194/0x218
> >   acpi_initialize_objects+0x48/0x50
> >   acpi_init+0xe0/0x498
> >
> > As mentioned by Lorenzo:
> >   "We are forcing memory semantics mappings to PROT_NORMAL_NC, which
> >   eMAG does not like at all and I'd need to understand why. It looks
> >   like the issue happen in SystemMemory Opregion handler."
> >
> > Hence just revert it before everything is clear.
> >
> 
> Can we try to find the root cause first? -rc1 is not even out yet, and
> reverting it now means we can not resubmit it until the next merge
> window.

I am waiting to debug this on an eMAG but I noticed something that
I wanted to bring up.

SystemMemory Operation region handler - ie

acpi_ex_system_memory_space_handler()

maps the Operation Region (that AFAICS is MMIO, it is _not_ memory)
with acpi_os_map_memory() and I believe that's what is causing this
bug.

On the other hand, acpi_os_map_generic_address(), to handle spaceid
ACPI_ADR_SPACE_SYSTEM_MEMORY, uses acpi_os_map_iomem() that is more
in line with my expectations.

Question is: is the mapping in acpi_ex_system_memory_space_handler()
wrong (and should be patched with acpi_os_map_iomem() ?)

On x86 this should not change a thing, on ARM it would.

I don't think it is right to map SystemMemory Operation regions with
memory semantics but on the other hand, other than the EFI memory map,
there is nothing we can do to determine what a SystemMemory Operation
region address space actually represents.

Thoughts ? Before embarking on patching

acpi_ex_system_memory_space_handler()

I want to make sure my understanding of the SystemMemory space is
correct, comments welcome.

I will pinpoint the trigger for this bug shortly and before doing
anything else.

Thanks,
Lorenzo
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
