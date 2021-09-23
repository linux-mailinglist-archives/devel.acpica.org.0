Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE33941654F
	for <lists+devel-acpica@lfdr.de>; Thu, 23 Sep 2021 20:42:36 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D7524100EB355;
	Thu, 23 Sep 2021 11:42:34 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.44; helo=mail-ot1-f44.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B8721100EB352
	for <devel@acpica.org>; Thu, 23 Sep 2021 11:42:32 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id o59-20020a9d2241000000b0054745f28c69so7749130ota.13
        for <devel@acpica.org>; Thu, 23 Sep 2021 11:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A1nz/2r9dfa/43uvC8GU09aHy0M9gShwuzvCZZpWMOk=;
        b=OQuF8/Byvo5tXJCd6cHDvDHzwRCfr07L/jKNOUEJABD4LRNBteoN2jQer3Y9e8ZdmM
         MdOd39zh57AKPL2Ry3DhW+WsRF0x0ytwnCDfO5rzfuTPIP4upE/an0lK8A+543dApvZr
         8rquEp6+ZrrdUennimKRwwi1cHJ/ASFlSjNS1+XKUkhuWF2UHc2ugffHy9+KqeytcYpE
         DQVAcz06L7kwJU6wtcrXEHi/OlIHr+Y2CKpmdfjo7DJr5yKUBxLEIH6OTevcOUbXjkKQ
         QYwJPvaPsszA4QkkFAxDxDDJdjhplW/M6Gk69TbcaizhZpEpJOjwOVjpLvXxvgVLpOcG
         0Eow==
X-Gm-Message-State: AOAM530LPzlHFHT2hmd5aIDqssi4KbWjmHMr9OlgVl5WB0rUlXtbcUWW
	BSGJe+wAAA2kNjcEOt8/601Dic6yKXhBBlI4a/4=
X-Google-Smtp-Source: ABdhPJxcIsNvYPw/kdbWbAQe8WU2n06LO+xqz2p6civsh9f6C/8ERt38zFkXrN6Pstjl8b3+GXKNFEzBj2/XmER58ug=
X-Received: by 2002:a05:6830:82b:: with SMTP id t11mr134299ots.319.1632422551641;
 Thu, 23 Sep 2021 11:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210923033557.19100-1-justin.he@arm.com> <20210923091644.GA5882@lpieralisi>
In-Reply-To: <20210923091644.GA5882@lpieralisi>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 23 Sep 2021 20:42:20 +0200
Message-ID: <CAJZ5v0gFUcvoNPzAfHj8Bd9+m=+aPQAEy=djBOug9q1HbJzWnQ@mail.gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jia He <justin.he@arm.com>
Message-ID-Hash: PWSIZYQHWUN2J3UQYHGZ33ZZTWDTRSBL
X-Message-ID-Hash: PWSIZYQHWUN2J3UQYHGZ33ZZTWDTRSBL
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Ard Biesheuvel <ardb@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Harb Abdulhamid <harb@amperecomputing.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3] Revert "ACPI: Add memory semantics to acpi_os_map_memory()"
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PWSIZYQHWUN2J3UQYHGZ33ZZTWDTRSBL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 23, 2021 at 11:16 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Sep 23, 2021 at 11:35:57AM +0800, Jia He wrote:
> > This reverts commit 437b38c51162f8b87beb28a833c4d5dc85fa864e.
> >
> > The memory semantics added in commit 437b38c51162 causes SystemMemory
> > Operation region, whose address range is not described in the EFI memory
> > map to be mapped as NormalNC memory on arm64 platforms (through
> > acpi_os_map_memory() in acpi_ex_system_memory_space_handler()).
> >
> > This triggers the following abort on an ARM64 Ampere eMAG machine,
> > because presumably the physical address range area backing the Opregion
> > does not support NormalNC memory attributes driven on the bus.
> >
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
> > If the Opregion address range is not present in the EFI memory map there
> > is no way for us to determine the memory attributes to use to map it -
> > defaulting to NormalNC does not work (and it is not correct on a memory
> > region that may have read side-effects) and therefore commit
> > 437b38c51162 should be reverted, which means reverting back to the
> > original behavior whereby address ranges that are mapped using
> > acpi_os_map_memory() default to the safe devicenGnRnE attributes on
> > ARM64 if the mapped address range is not defined in the EFI memory map.
> >
> > Fixes: 437b38c51162 ("ACPI: Add memory semantics to acpi_os_map_memory()")
> > Signed-off-by: Jia He <justin.he@arm.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Ard Biesheuvel <ardb@kernel.org>
> > Cc: Hanjun Guo <guohanjun@huawei.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > Cc: Harb Abdulhamid <harb@amperecomputing.com>
> > ---
> > V3: refine the commit log which came from Lorenzo Pieralisi
> >
> >  arch/arm64/include/asm/acpi.h |  3 ---
> >  arch/arm64/kernel/acpi.c      | 19 +++----------------
> >  drivers/acpi/osl.c            | 23 +++++++----------------
> >  include/acpi/acpi_io.h        |  8 --------
> >  4 files changed, 10 insertions(+), 43 deletions(-)
>
> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>
> Rafael if possible please apply it, thank you very much.

Applied as 5.15-rc material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
