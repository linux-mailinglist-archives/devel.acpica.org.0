Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE705411EC0
	for <lists+devel-acpica@lfdr.de>; Mon, 20 Sep 2021 19:33:12 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 69E07100EB83C;
	Mon, 20 Sep 2021 10:33:11 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.54; helo=mail-ot1-f54.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7EE59100EB83B
	for <devel@acpica.org>; Mon, 20 Sep 2021 10:33:09 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id k12-20020a056830150c00b0051abe7f680bso24650199otp.1
        for <devel@acpica.org>; Mon, 20 Sep 2021 10:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D/fnKawn3e+PlYXmYSKy1jDEJMKkz3oshJ3rc6YnaMw=;
        b=4bCqFipujxGpeoS6NpdjAwysUhAfRQ9fra7B+EwY37dNGOeqj8Ngt/swbo4GcMG04n
         Pyh8bl6q2Te1b9rCmcHUDhoof99tbbWaZ4VgVIu9R5FsWB3waGDvtGMp2XnoTWVqfQ4H
         hGYm8lO/BsBq/Yu7f4aLkjdxQUr1VszxqqxZb87cADS/h9K3CFu7tqfJGSBQwbZvZj3D
         3lqtBlN44xw6yEn+z2YwkjnHEjedCaQugS2mdQua1iIVRZ3aXuB+ybI3O5ZAAwEsjpRV
         u7BJzBy1up2QoYf3rldGMu4uKQKoHQqI5u3z87j2gLlMOfJ1FahkLZCFUGSJ70UFf6xx
         NvvQ==
X-Gm-Message-State: AOAM530sq+dd4g6dYZvayYrMt2PY4c/8SNVRKGT7cCwwgzyNHtT5SmHK
	TOUneWz8gzHfdMKAYIFR7A/VN9dLo5zDTHa/3aw=
X-Google-Smtp-Source: ABdhPJzJCYEFPitZMZzYluNMtLoOtNASKL6dUFfbGgBbEnA/TfjStj/Yb08kNaZPL2SgbMtzdMvOTkrcrIWJAA/2jzg=
X-Received: by 2002:a9d:4d93:: with SMTP id u19mr22249291otk.86.1632159187086;
 Mon, 20 Sep 2021 10:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210910122820.26886-1-justin.he@arm.com> <20210910143223.6705-1-justin.he@arm.com>
 <CAMj1kXG6Gu=g8P902NB2b+OvzqwJQPqQewYX5UwMiXALYAFkDw@mail.gmail.com>
 <20210916160827.GA4525@lpieralisi> <20210920170055.GA13861@lpieralisi>
In-Reply-To: <20210920170055.GA13861@lpieralisi>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 20 Sep 2021 19:32:56 +0200
Message-ID: <CAJZ5v0iee2j=NoPFpNstEZYJXWvFYfv22hK7QeH6+kdP6+MhLw@mail.gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Message-ID-Hash: TW6KHWTOKV4ZG4OKGPDLH54LBL6N457J
X-Message-ID-Hash: TW6KHWTOKV4ZG4OKGPDLH54LBL6N457J
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ard Biesheuvel <ardb@kernel.org>, Rafael Wysocki <rafael.j.wysocki@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Jia He <justin.he@arm.com>, Will Deacon <will@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Catalin Marinas <catalin.marinas@arm.com>, Harb Abdulhamid <harb@amperecomputing.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] Revert "ACPI: Add memory semantics to acpi_os_map_memory()"
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TW6KHWTOKV4ZG4OKGPDLH54LBL6N457J/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 20, 2021 at 7:03 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Sep 16, 2021 at 05:08:27PM +0100, Lorenzo Pieralisi wrote:
> > On Fri, Sep 10, 2021 at 07:28:49PM +0200, Ard Biesheuvel wrote:
> > > On Fri, 10 Sept 2021 at 16:32, Jia He <justin.he@arm.com> wrote:
> > > >
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
> > >
> > > Can we try to find the root cause first? -rc1 is not even out yet, and
> > > reverting it now means we can not resubmit it until the next merge
> > > window.
> >
> > I am waiting to debug this on an eMAG but I noticed something that
> > I wanted to bring up.
> >
> > SystemMemory Operation region handler - ie
> >
> > acpi_ex_system_memory_space_handler()
> >
> > maps the Operation Region (that AFAICS is MMIO, it is _not_ memory)
> > with acpi_os_map_memory() and I believe that's what is causing this
> > bug.
> >
> > On the other hand, acpi_os_map_generic_address(), to handle spaceid
> > ACPI_ADR_SPACE_SYSTEM_MEMORY, uses acpi_os_map_iomem() that is more
> > in line with my expectations.
>
> Hi Rafael,
>
> I wanted to ask please if you have any insights on why
>
> (1) acpi_ex_system_memory_space_handler()
> (2) acpi_os_map_generic_address()
>
> Use two different calls to map memory for the _same_ address space ID
> (SystemMemory).
>
> (3) acpi_os_map_memory()
> vs
> (4) acpi_os_map_iomem()

I don't really have a good answer here.

On x86 this doesn't really matter and that's where
acpi_ex_system_memory_space_handler() was first introduced.  It is not
only used for IOMEM (there are SystemMemory operation regions in RAM),
but since it may be in IOMEM, it should assume so.

> I am struggling to understand why (1) uses (3) ("memory semantics") when
> (2) uses (4) - it is actually unclear how the distinction between
> the two mapping APIs is to be drawn and on what basis one should
> choose which one to use.
>
> I am still waiting to grab some HW to debug this report but the issue
> here is that we are mapping an OpRegion SystemMemory with (3) in the
> memory space handler and given the patch we are reverting we end up
> mapping the operation region with normal non-cacheable memory attributes
> that probably the physical address range behind the OpRegion does not
> support.

If that is the case, there needs to be a mechanism to decide what kind
of mapping to use for SystemMemory operation regions based on the type
of physical memory the address range in question is located in.


> > Question is: is the mapping in acpi_ex_system_memory_space_handler()
> > wrong (and should be patched with acpi_os_map_iomem() ?)
> >
> > On x86 this should not change a thing, on ARM it would.
> >
> > I don't think it is right to map SystemMemory Operation regions with
> > memory semantics but on the other hand, other than the EFI memory map,
> > there is nothing we can do to determine what a SystemMemory Operation
> > region address space actually represents.
> >
> > Thoughts ? Before embarking on patching
> >
> > acpi_ex_system_memory_space_handler()
> >
> > I want to make sure my understanding of the SystemMemory space is
> > correct, comments welcome.
> >
> > I will pinpoint the trigger for this bug shortly and before doing
> > anything else.
> >
> > Thanks,
> > Lorenzo
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
