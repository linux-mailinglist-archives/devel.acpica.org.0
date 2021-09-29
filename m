Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B7441C5B0
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Sep 2021 15:31:45 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 22FF3100EB82A;
	Wed, 29 Sep 2021 06:31:43 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172; helo=foss.arm.com; envelope-from=lorenzo.pieralisi@arm.com; receiver=<UNKNOWN> 
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by ml01.01.org (Postfix) with ESMTP id 1736A100ED482
	for <devel@acpica.org>; Wed, 29 Sep 2021 06:31:41 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33FC16D;
	Wed, 29 Sep 2021 06:31:40 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1CD8F3F70D;
	Wed, 29 Sep 2021 06:31:38 -0700 (PDT)
Date: Wed, 29 Sep 2021 14:31:31 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Message-ID: <20210929133131.GA20191@lpieralisi>
References: <20210910122820.26886-1-justin.he@arm.com>
 <20210910143223.6705-1-justin.he@arm.com>
 <20210922163336.GA24633@lpieralisi>
 <56147a0b8b9fba46@bloch.sibelius.xs4all.nl>
 <20210923094031.GA6454@lpieralisi>
 <CAJZ5v0g+OVbhuUUDrLUCfX_mVqY_e8ubgLTU98=jfjTeb4t+Pw@mail.gmail.com>
 <56147c6e73afe9f6@bloch.sibelius.xs4all.nl>
 <CAJZ5v0j7=EGbtGw+FOMwyNWoyRoaeT1cvu6si7nPVVFh307J0g@mail.gmail.com>
 <20210924090409.GA26089@lpieralisi>
 <44f20f07-257b-a1a5-23d9-ffd66bf45887@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44f20f07-257b-a1a5-23d9-ffd66bf45887@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Message-ID-Hash: W32OWD4KJWUP3O5HDJRXOWQF7WVEVTIT
X-Message-ID-Hash: W32OWD4KJWUP3O5HDJRXOWQF7WVEVTIT
X-MailFrom: lorenzo.pieralisi@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Mark Kettenis <mark.kettenis@xs4all.nl>, Jia He <justin.he@arm.com>, Harb Abdulhamid <harb@amperecomputing.com>, Will Deacon <will@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, tony.luck@intel.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] Revert "ACPI: Add memory semantics to acpi_os_map_memory()"
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/W32OWD4KJWUP3O5HDJRXOWQF7WVEVTIT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[+Tony]

On Tue, Sep 28, 2021 at 07:26:52PM +0200, Rafael J. Wysocki wrote:
> On 9/24/2021 11:04 AM, Lorenzo Pieralisi wrote:
> > On Thu, Sep 23, 2021 at 02:54:52PM +0200, Rafael J. Wysocki wrote:
> > > On Thu, Sep 23, 2021 at 2:26 PM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
> > > > > From: "Rafael J. Wysocki" <rafael@kernel.org>
> > > > > Date: Thu, 23 Sep 2021 13:05:05 +0200
> > > > > 
> > > > > On Thu, Sep 23, 2021 at 11:40 AM Lorenzo Pieralisi
> > > > > <lorenzo.pieralisi@arm.com> wrote:
> > > > > > On Thu, Sep 23, 2021 at 01:09:58AM +0200, Mark Kettenis wrote:
> > > > > > > > Date: Wed, 22 Sep 2021 17:33:36 +0100
> > > > > > > > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > > > > > 
> > > > > > > > On Fri, Sep 10, 2021 at 10:32:23PM +0800, Jia He wrote:
> > > > > > > > > This reverts commit 437b38c51162f8b87beb28a833c4d5dc85fa864e.
> > > > > > > > > 
> > > > > > > > > After this commit, a boot panic is alway hit on an Ampere EMAG server
> > > > > > > > > with call trace as follows:
> > > > > > > > >   Internal error: synchronous external abort: 96000410 [#1] SMP
> > > > > > > > >   Modules linked in:
> > > > > > > > >   CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.14.0+ #462
> > > > > > > > >   Hardware name: MiTAC RAPTOR EV-883832-X3-0001/RAPTOR, BIOS 0.14 02/22/2019
> > > > > > > > >   pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > > > > > > > > [...snip...]
> > > > > > > > >   Call trace:
> > > > > > > > >    acpi_ex_system_memory_space_handler+0x26c/0x2c8
> > > > > > > > >    acpi_ev_address_space_dispatch+0x228/0x2c4
> > > > > > > > >    acpi_ex_access_region+0x114/0x268
> > > > > > > > >    acpi_ex_field_datum_io+0x128/0x1b8
> > > > > > > > >    acpi_ex_extract_from_field+0x14c/0x2ac
> > > > > > > > >    acpi_ex_read_data_from_field+0x190/0x1b8
> > > > > > > > >    acpi_ex_resolve_node_to_value+0x1ec/0x288
> > > > > > > > >    acpi_ex_resolve_to_value+0x250/0x274
> > > > > > > > >    acpi_ds_evaluate_name_path+0xac/0x124
> > > > > > > > >    acpi_ds_exec_end_op+0x90/0x410
> > > > > > > > >    acpi_ps_parse_loop+0x4ac/0x5d8
> > > > > > > > >    acpi_ps_parse_aml+0xe0/0x2c8
> > > > > > > > >    acpi_ps_execute_method+0x19c/0x1ac
> > > > > > > > >    acpi_ns_evaluate+0x1f8/0x26c
> > > > > > > > >    acpi_ns_init_one_device+0x104/0x140
> > > > > > > > >    acpi_ns_walk_namespace+0x158/0x1d0
> > > > > > > > >    acpi_ns_initialize_devices+0x194/0x218
> > > > > > > > >    acpi_initialize_objects+0x48/0x50
> > > > > > > > >    acpi_init+0xe0/0x498
> > > > > > > > > 
> > > > > > > > > As mentioned by Lorenzo:
> > > > > > > > >    "We are forcing memory semantics mappings to PROT_NORMAL_NC, which
> > > > > > > > >    eMAG does not like at all and I'd need to understand why. It looks
> > > > > > > > >    like the issue happen in SystemMemory Opregion handler."
> > > > > > > > > 
> > > > > > > > > Hence just revert it before everything is clear.
> > > > > > > > > 
> > > > > > > > > Fixes: 437b38c51162 ("ACPI: Add memory semantics to acpi_os_map_memory()")
> > > > > > > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > > > > > > Cc: Ard Biesheuvel <ardb@kernel.org>
> > > > > > > > > Cc: Hanjun Guo <guohanjun@huawei.com>
> > > > > > > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > > > > > > > Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > > > > > > Cc: Harb Abdulhamid <harb@amperecomputing.com>
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Jia He <justin.he@arm.com>
> > > > > > > > Rewrote the commit log, please take the patch below and repost
> > > > > > > > it as a v3.
> > > > > > > > 
> > > > > > > > It would still be great if Ampere can help us understand why
> > > > > > > > the NormalNC attributes trigger a sync abort on the opregion
> > > > > > > > before merging it.
> > > > > > > To be honest, I don't think you really need an explanation from Ampere
> > > > > > > here.  Mapping a part of the address space that doesn't provide memory
> > > > > > > semantics with NormalNC attributes is wrong and triggering a sync
> > > > > > > abort in that case is way better than silently ignoring the access.
> > > > > > That's understood and that's what I explained in the revert commit
> > > > > > log, no question about it.
> > > > > > 
> > > > > > I was just asking to confirm if that's what's actually happening.
> > > > > > 
> > > > > > > Putting my OpenBSD hat on (where we have our own ACPI OSPM
> > > > > > > implementation) I must say that we always interpreted SystemMemory as
> > > > > > > memory mapped IO and I think that is a logical choice as SystemIO is
> > > > > > > used for (non-memory mapped) IO.  And I'd say that the ACPI OSPM code
> > > > > > > should make sure that it uses properly aligned access to any Field
> > > > > > > object that doesn't use AnyAcc as its access type.  Even on x86!  And
> > > > > > > I'd say that AML that uses AnyAcc fields for SystemMemory OpRegions on
> > > > > > > arm64 is buggy.
> > > > > > > 
> > > > > > > But maybe relaxing this when the EFI memory map indicates that the
> > > > > > > address space in question does provide memory semantics does make
> > > > > > > sense.  That should defenitely be documented in the ACPI standard
> > > > > > > though.
> > > > > > Mapping SystemMemory Opregions as "memory" does not make sense
> > > > > > at all to me. Still, that's what Linux ACPICA code does (*if*
> > > > > > that's what acpi_os_map_memory() is supposed to mean).
> > > > > > 
> > > > > > https://lore.kernel.org/linux-acpi/20210916160827.GA4525@lpieralisi
> > > > > It doesn't need to do that, though, if there are good enough arguments
> > > > > to change the current behavior (and the argument here is that it may
> > > > > be an MMIO region, so mapping it as memory doesn't really work, but it
> > > > > also may be a region in memory - there is no rule in the spec by which
> > > > > SystemMemory Opregions cannot be "memory" AFAICS) and if that change
> > > > > doesn't introduce regressions in the installed base.
> > > > > 
> > > > > > Where do we go from here, to be defined, we still have a bug
> > > > > > to fix after the revert is applied.
> > > > > > 
> > > > > > drivers/acpi/sysfs.c
> > > > > > 
> > > > > > maps BERT error regions with acpi_os_map_memory().
> > > > > That mechanism is basically used for exporting ACPI tables to user
> > > > > space and they are known to reside in memory.  Whether or not BERT
> > > > > regions should be mapped in the same way is a good question.
> > > > It is not inconceivable that BERT regions actually live in memory of
> > > > the BMC that is exposed over a bus that doesn't implement memory
> > > > semantics is it?
> > > No, it isn't, which is why I think that mapping them as RAM may not be
> > > a good idea in general.
> > Should I patch acpi_data_show() to map BERT error regions (well, that's
> > what acpi_data_show() is used on at the moment) as MMIO and use the
> > related memcpy routine to read them then :) ?
> 
> It actually would be good to clean it up so it is clear that this is only
> used for BERT.
> 
> And then there is this question: if this is not RAM (so effectively it is
> device memory), should it be exposed directly to user space?

Do you mean from a security standpoint ? I believe there might be users
out there so if we want to remove that sysfs entry it may be
problematic.

Maybe Tony has more insights into this than I do:

commit 7dae6326ed76 ("ACPI / sysfs: Extend ACPI sysfs to provide access to boot error region")

Thanks,
Lorenzo
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
