Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 632E9415C80
	for <lists+devel-acpica@lfdr.de>; Thu, 23 Sep 2021 13:05:21 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 27D0B100EB349;
	Thu, 23 Sep 2021 04:05:20 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49; helo=mail-ot1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DF7E8100EB337
	for <devel@acpica.org>; Thu, 23 Sep 2021 04:05:17 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id l7-20020a0568302b0700b0051c0181deebso7919032otv.12
        for <devel@acpica.org>; Thu, 23 Sep 2021 04:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bpOeDRvPfljLyF5wASvtNjai/+9liEiaQSxwkm2X1A0=;
        b=eZALJ/8HWQwv202lx9+dVts8da4z0XBMhl/kwJPR6QXSv5MqKMxkKhpGi+73UNUBTA
         A+srQJym4waKdlaoMRNVSwdXsCn2ziyoEGNNigUjOGjA+qspyP6qGstuNVpYHkasxObL
         Rgz3JcledqNF3xJO/o2qrtSUpyvYIff+ICspo6XNz5uzqwQuj3SF6gVS8JHVFpB57gi+
         L4CbQ04GnFN55F0/7IdEzh907ssLqfqhRYS7faXrGbrRZUgOx1iurt6HaSG49p19pTmW
         iJoEuxqi6UN8i6QAj1GXYHEmXpOv0lU0AXKt43dWwAzd20X36OKON8q0VBUHBb03E0df
         BL4g==
X-Gm-Message-State: AOAM533VcBGqeODd7Ftq78me6e33E5hHmtb0ERf7Lig/4elEkZRBnSxf
	q9kXjkuXUeNIg2SBcMEnjJKcSJW+notnHCTD8qc=
X-Google-Smtp-Source: ABdhPJxIGpgVOyr1vxubbLoXLJ51nxTVlhPQZ5W6UT7iXCqziuK7aRDcRSffvu9mQtcFRN0AienGJANLuFj1NdF0LD0=
X-Received: by 2002:a05:6830:165a:: with SMTP id h26mr3838730otr.301.1632395116880;
 Thu, 23 Sep 2021 04:05:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210910122820.26886-1-justin.he@arm.com> <20210910143223.6705-1-justin.he@arm.com>
 <20210922163336.GA24633@lpieralisi> <56147a0b8b9fba46@bloch.sibelius.xs4all.nl>
 <20210923094031.GA6454@lpieralisi>
In-Reply-To: <20210923094031.GA6454@lpieralisi>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 23 Sep 2021 13:05:05 +0200
Message-ID: <CAJZ5v0g+OVbhuUUDrLUCfX_mVqY_e8ubgLTU98=jfjTeb4t+Pw@mail.gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Message-ID-Hash: QNVJZI2WQIPKIDNE2DPWL6WI7M2LWRUN
X-Message-ID-Hash: QNVJZI2WQIPKIDNE2DPWL6WI7M2LWRUN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mark Kettenis <mark.kettenis@xs4all.nl>, Jia He <justin.he@arm.com>, Harb Abdulhamid <harb@amperecomputing.com>, Will Deacon <will@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] Revert "ACPI: Add memory semantics to acpi_os_map_memory()"
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QNVJZI2WQIPKIDNE2DPWL6WI7M2LWRUN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 23, 2021 at 11:40 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Sep 23, 2021 at 01:09:58AM +0200, Mark Kettenis wrote:
> > > Date: Wed, 22 Sep 2021 17:33:36 +0100
> > > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > >
> > > On Fri, Sep 10, 2021 at 10:32:23PM +0800, Jia He wrote:
> > > > This reverts commit 437b38c51162f8b87beb28a833c4d5dc85fa864e.
> > > >
> > > > After this commit, a boot panic is alway hit on an Ampere EMAG server
> > > > with call trace as follows:
> > > >  Internal error: synchronous external abort: 96000410 [#1] SMP
> > > >  Modules linked in:
> > > >  CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.14.0+ #462
> > > >  Hardware name: MiTAC RAPTOR EV-883832-X3-0001/RAPTOR, BIOS 0.14 02/22/2019
> > > >  pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > > > [...snip...]
> > > >  Call trace:
> > > >   acpi_ex_system_memory_space_handler+0x26c/0x2c8
> > > >   acpi_ev_address_space_dispatch+0x228/0x2c4
> > > >   acpi_ex_access_region+0x114/0x268
> > > >   acpi_ex_field_datum_io+0x128/0x1b8
> > > >   acpi_ex_extract_from_field+0x14c/0x2ac
> > > >   acpi_ex_read_data_from_field+0x190/0x1b8
> > > >   acpi_ex_resolve_node_to_value+0x1ec/0x288
> > > >   acpi_ex_resolve_to_value+0x250/0x274
> > > >   acpi_ds_evaluate_name_path+0xac/0x124
> > > >   acpi_ds_exec_end_op+0x90/0x410
> > > >   acpi_ps_parse_loop+0x4ac/0x5d8
> > > >   acpi_ps_parse_aml+0xe0/0x2c8
> > > >   acpi_ps_execute_method+0x19c/0x1ac
> > > >   acpi_ns_evaluate+0x1f8/0x26c
> > > >   acpi_ns_init_one_device+0x104/0x140
> > > >   acpi_ns_walk_namespace+0x158/0x1d0
> > > >   acpi_ns_initialize_devices+0x194/0x218
> > > >   acpi_initialize_objects+0x48/0x50
> > > >   acpi_init+0xe0/0x498
> > > >
> > > > As mentioned by Lorenzo:
> > > >   "We are forcing memory semantics mappings to PROT_NORMAL_NC, which
> > > >   eMAG does not like at all and I'd need to understand why. It looks
> > > >   like the issue happen in SystemMemory Opregion handler."
> > > >
> > > > Hence just revert it before everything is clear.
> > > >
> > > > Fixes: 437b38c51162 ("ACPI: Add memory semantics to acpi_os_map_memory()")
> > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Cc: Ard Biesheuvel <ardb@kernel.org>
> > > > Cc: Hanjun Guo <guohanjun@huawei.com>
> > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > > Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > Cc: Harb Abdulhamid <harb@amperecomputing.com>
> > > >
> > > > Signed-off-by: Jia He <justin.he@arm.com>
> > >
> > > Rewrote the commit log, please take the patch below and repost
> > > it as a v3.
> > >
> > > It would still be great if Ampere can help us understand why
> > > the NormalNC attributes trigger a sync abort on the opregion
> > > before merging it.
> >
> > To be honest, I don't think you really need an explanation from Ampere
> > here.  Mapping a part of the address space that doesn't provide memory
> > semantics with NormalNC attributes is wrong and triggering a sync
> > abort in that case is way better than silently ignoring the access.
>
> That's understood and that's what I explained in the revert commit
> log, no question about it.
>
> I was just asking to confirm if that's what's actually happening.
>
> > Putting my OpenBSD hat on (where we have our own ACPI OSPM
> > implementation) I must say that we always interpreted SystemMemory as
> > memory mapped IO and I think that is a logical choice as SystemIO is
> > used for (non-memory mapped) IO.  And I'd say that the ACPI OSPM code
> > should make sure that it uses properly aligned access to any Field
> > object that doesn't use AnyAcc as its access type.  Even on x86!  And
> > I'd say that AML that uses AnyAcc fields for SystemMemory OpRegions on
> > arm64 is buggy.
> >
> > But maybe relaxing this when the EFI memory map indicates that the
> > address space in question does provide memory semantics does make
> > sense.  That should defenitely be documented in the ACPI standard
> > though.
>
> Mapping SystemMemory Opregions as "memory" does not make sense
> at all to me. Still, that's what Linux ACPICA code does (*if*
> that's what acpi_os_map_memory() is supposed to mean).
>
> https://lore.kernel.org/linux-acpi/20210916160827.GA4525@lpieralisi

It doesn't need to do that, though, if there are good enough arguments
to change the current behavior (and the argument here is that it may
be an MMIO region, so mapping it as memory doesn't really work, but it
also may be a region in memory - there is no rule in the spec by which
SystemMemory Opregions cannot be "memory" AFAICS) and if that change
doesn't introduce regressions in the installed base.

> Where do we go from here, to be defined, we still have a bug
> to fix after the revert is applied.
>
> drivers/acpi/sysfs.c
>
> maps BERT error regions with acpi_os_map_memory().

That mechanism is basically used for exporting ACPI tables to user
space and they are known to reside in memory.  Whether or not BERT
regions should be mapped in the same way is a good question.

> If the BERT error
> region is not in the EFI memory map, we map that memory as device-nGnRnE
> and we execute memory semantics operation on it.
>
> https://lore.kernel.org/linux-acpi/e548e72c-83a4-2366-dd57-3e746040fea9@arm.com
>
> I could change that code to map those regions as ioremap_wc() because
> supposedly we *know* that's memory but this is becoming a slippery
> slope to follow IMO.
>
> > > -- >8 --
> > > Subject: [PATCH] Revert "ACPI: Add memory semantics to acpi_os_map_memory()"
> > >
> > > This reverts commit 437b38c51162f8b87beb28a833c4d5dc85fa864e.
> > >
> > > The memory semantics added in commit 437b38c51162 causes SystemMemory
> > > Operation region, whose address range is not described in the EFI memory
> > > map to be mapped as NormalNC memory on arm64 platforms (through
> > > acpi_os_map_memory() in acpi_ex_system_memory_space_handler()).
> > >
> > > This triggers the following abort on an ARM64 Ampere eMAG machine,
> > > because presumably the physical address range area backing the Opregion
> > > does not support NormalNC memory attributes driven on the bus.
> > >
> > >  Internal error: synchronous external abort: 96000410 [#1] SMP
> > >  Modules linked in:
> > >  CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.14.0+ #462
> > >  Hardware name: MiTAC RAPTOR EV-883832-X3-0001/RAPTOR, BIOS 0.14 02/22/2019
> > >  pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > > [...snip...]
> > >  Call trace:
> > >   acpi_ex_system_memory_space_handler+0x26c/0x2c8
> > >   acpi_ev_address_space_dispatch+0x228/0x2c4
> > >   acpi_ex_access_region+0x114/0x268
> > >   acpi_ex_field_datum_io+0x128/0x1b8
> > >   acpi_ex_extract_from_field+0x14c/0x2ac
> > >   acpi_ex_read_data_from_field+0x190/0x1b8
> > >   acpi_ex_resolve_node_to_value+0x1ec/0x288
> > >   acpi_ex_resolve_to_value+0x250/0x274
> > >   acpi_ds_evaluate_name_path+0xac/0x124
> > >   acpi_ds_exec_end_op+0x90/0x410
> > >   acpi_ps_parse_loop+0x4ac/0x5d8
> > >   acpi_ps_parse_aml+0xe0/0x2c8
> > >   acpi_ps_execute_method+0x19c/0x1ac
> > >   acpi_ns_evaluate+0x1f8/0x26c
> > >   acpi_ns_init_one_device+0x104/0x140
> > >   acpi_ns_walk_namespace+0x158/0x1d0
> > >   acpi_ns_initialize_devices+0x194/0x218
> > >   acpi_initialize_objects+0x48/0x50
> > >   acpi_init+0xe0/0x498
> > >
> > > If the Opregion address range is not present in the EFI memory map there
> > > is no way for us to determine the memory attributes to use to map it -
> > > defaulting to NormalNC does not work (and it is not correct on a memory
> > > region that may have read side-effects) and therefore commit
> > > 437b38c51162 should be reverted, which means reverting back to the
> > > original behavior whereby address ranges that are mapped using
> > > acpi_os_map_memory() default to the safe devicenGnRnE attributes on
> > > ARM64 if the mapped address range is not defined in the EFI memory map.
> > >
> > > Fixes: 437b38c51162 ("ACPI: Add memory semantics to acpi_os_map_memory()")
> > > Signed-off-by: Jia He <justin.he@arm.com>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Ard Biesheuvel <ardb@kernel.org>
> > > Cc: Hanjun Guo <guohanjun@huawei.com>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > Cc: Harb Abdulhamid <harb@amperecomputing.com>
> > > ---
> > >  arch/arm64/include/asm/acpi.h |  3 ---
> > >  arch/arm64/kernel/acpi.c      | 19 +++----------------
> > >  drivers/acpi/osl.c            | 23 +++++++----------------
> > >  include/acpi/acpi_io.h        |  8 --------
> > >  4 files changed, 10 insertions(+), 43 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
> > > index 7535dc7cc5aa..bd68e1b7f29f 100644
> > > --- a/arch/arm64/include/asm/acpi.h
> > > +++ b/arch/arm64/include/asm/acpi.h
> > > @@ -50,9 +50,6 @@ pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
> > >  void __iomem *acpi_os_ioremap(acpi_physical_address phys, acpi_size size);
> > >  #define acpi_os_ioremap acpi_os_ioremap
> > >
> > > -void __iomem *acpi_os_memmap(acpi_physical_address phys, acpi_size size);
> > > -#define acpi_os_memmap acpi_os_memmap
> > > -
> > >  typedef u64 phys_cpuid_t;
> > >  #define PHYS_CPUID_INVALID INVALID_HWID
> > >
> > > diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> > > index 1c9c2f7a1c04..f3851724fe35 100644
> > > --- a/arch/arm64/kernel/acpi.c
> > > +++ b/arch/arm64/kernel/acpi.c
> > > @@ -273,8 +273,7 @@ pgprot_t __acpi_get_mem_attribute(phys_addr_t addr)
> > >     return __pgprot(PROT_DEVICE_nGnRnE);
> > >  }
> > >
> > > -static void __iomem *__acpi_os_ioremap(acpi_physical_address phys,
> > > -                                  acpi_size size, bool memory)
> > > +void __iomem *acpi_os_ioremap(acpi_physical_address phys, acpi_size size)
> > >  {
> > >     efi_memory_desc_t *md, *region = NULL;
> > >     pgprot_t prot;
> > > @@ -300,11 +299,9 @@ static void __iomem *__acpi_os_ioremap(acpi_physical_address phys,
> > >      * It is fine for AML to remap regions that are not represented in the
> > >      * EFI memory map at all, as it only describes normal memory, and MMIO
> > >      * regions that require a virtual mapping to make them accessible to
> > > -    * the EFI runtime services. Determine the region default
> > > -    * attributes by checking the requested memory semantics.
> > > +    * the EFI runtime services.
> > >      */
> > > -   prot = memory ? __pgprot(PROT_NORMAL_NC) :
> > > -                   __pgprot(PROT_DEVICE_nGnRnE);
> > > +   prot = __pgprot(PROT_DEVICE_nGnRnE);
> > >     if (region) {
> > >             switch (region->type) {
> > >             case EFI_LOADER_CODE:
> > > @@ -364,16 +361,6 @@ static void __iomem *__acpi_os_ioremap(acpi_physical_address phys,
> > >     return __ioremap(phys, size, prot);
> > >  }
> > >
> > > -void __iomem *acpi_os_ioremap(acpi_physical_address phys, acpi_size size)
> > > -{
> > > -   return __acpi_os_ioremap(phys, size, false);
> > > -}
> > > -
> > > -void __iomem *acpi_os_memmap(acpi_physical_address phys, acpi_size size)
> > > -{
> > > -   return __acpi_os_ioremap(phys, size, true);
> > > -}
> > > -
> > >  /*
> > >   * Claim Synchronous External Aborts as a firmware first notification.
> > >   *
> > > diff --git a/drivers/acpi/osl.c b/drivers/acpi/osl.c
> > > index a43f1521efe6..45c5c0e45e33 100644
> > > --- a/drivers/acpi/osl.c
> > > +++ b/drivers/acpi/osl.c
> > > @@ -284,8 +284,7 @@ acpi_map_lookup_virt(void __iomem *virt, acpi_size size)
> > >  #define should_use_kmap(pfn)   page_is_ram(pfn)
> > >  #endif
> > >
> > > -static void __iomem *acpi_map(acpi_physical_address pg_off, unsigned long pg_sz,
> > > -                         bool memory)
> > > +static void __iomem *acpi_map(acpi_physical_address pg_off, unsigned long pg_sz)
> > >  {
> > >     unsigned long pfn;
> > >
> > > @@ -295,8 +294,7 @@ static void __iomem *acpi_map(acpi_physical_address pg_off, unsigned long pg_sz,
> > >                     return NULL;
> > >             return (void __iomem __force *)kmap(pfn_to_page(pfn));
> > >     } else
> > > -           return memory ? acpi_os_memmap(pg_off, pg_sz) :
> > > -                           acpi_os_ioremap(pg_off, pg_sz);
> > > +           return acpi_os_ioremap(pg_off, pg_sz);
> > >  }
> > >
> > >  static void acpi_unmap(acpi_physical_address pg_off, void __iomem *vaddr)
> > > @@ -311,10 +309,9 @@ static void acpi_unmap(acpi_physical_address pg_off, void __iomem *vaddr)
> > >  }
> > >
> > >  /**
> > > - * __acpi_os_map_iomem - Get a virtual address for a given physical address range.
> > > + * acpi_os_map_iomem - Get a virtual address for a given physical address range.
> > >   * @phys: Start of the physical address range to map.
> > >   * @size: Size of the physical address range to map.
> > > - * @memory: true if remapping memory, false if IO
> > >   *
> > >   * Look up the given physical address range in the list of existing ACPI memory
> > >   * mappings.  If found, get a reference to it and return a pointer to it (its
> > > @@ -324,8 +321,8 @@ static void acpi_unmap(acpi_physical_address pg_off, void __iomem *vaddr)
> > >   * During early init (when acpi_permanent_mmap has not been set yet) this
> > >   * routine simply calls __acpi_map_table() to get the job done.
> > >   */
> > > -static void __iomem __ref
> > > -*__acpi_os_map_iomem(acpi_physical_address phys, acpi_size size, bool memory)
> > > +void __iomem __ref
> > > +*acpi_os_map_iomem(acpi_physical_address phys, acpi_size size)
> > >  {
> > >     struct acpi_ioremap *map;
> > >     void __iomem *virt;
> > > @@ -356,7 +353,7 @@ static void __iomem __ref
> > >
> > >     pg_off = round_down(phys, PAGE_SIZE);
> > >     pg_sz = round_up(phys + size, PAGE_SIZE) - pg_off;
> > > -   virt = acpi_map(phys, size, memory);
> > > +   virt = acpi_map(phys, size);
> > >     if (!virt) {
> > >             mutex_unlock(&acpi_ioremap_lock);
> > >             kfree(map);
> > > @@ -375,17 +372,11 @@ static void __iomem __ref
> > >     mutex_unlock(&acpi_ioremap_lock);
> > >     return map->virt + (phys - map->phys);
> > >  }
> > > -
> > > -void __iomem *__ref
> > > -acpi_os_map_iomem(acpi_physical_address phys, acpi_size size)
> > > -{
> > > -   return __acpi_os_map_iomem(phys, size, false);
> > > -}
> > >  EXPORT_SYMBOL_GPL(acpi_os_map_iomem);
> > >
> > >  void *__ref acpi_os_map_memory(acpi_physical_address phys, acpi_size size)
> > >  {
> > > -   return (void *)__acpi_os_map_iomem(phys, size, true);
> > > +   return (void *)acpi_os_map_iomem(phys, size);
> > >  }
> > >  EXPORT_SYMBOL_GPL(acpi_os_map_memory);
> > >
> > > diff --git a/include/acpi/acpi_io.h b/include/acpi/acpi_io.h
> > > index a0212e67d6f4..027faa8883aa 100644
> > > --- a/include/acpi/acpi_io.h
> > > +++ b/include/acpi/acpi_io.h
> > > @@ -14,14 +14,6 @@ static inline void __iomem *acpi_os_ioremap(acpi_physical_address phys,
> > >  }
> > >  #endif
> > >
> > > -#ifndef acpi_os_memmap
> > > -static inline void __iomem *acpi_os_memmap(acpi_physical_address phys,
> > > -                                       acpi_size size)
> > > -{
> > > -   return ioremap_cache(phys, size);
> > > -}
> > > -#endif
> > > -
> > >  extern bool acpi_permanent_mmap;
> > >
> > >  void __iomem __ref
> > > --
> > > 2.31.0
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > >
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
