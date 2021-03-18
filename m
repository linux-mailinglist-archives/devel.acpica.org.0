Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3E03403DA
	for <lists+devel-acpica@lfdr.de>; Thu, 18 Mar 2021 11:50:38 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5CE78100EB33F;
	Thu, 18 Mar 2021 03:50:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.54; helo=mail-oo1-f54.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 87211100EB33C
	for <devel@acpica.org>; Thu, 18 Mar 2021 03:50:34 -0700 (PDT)
Received: by mail-oo1-f54.google.com with SMTP id j10-20020a4ad18a0000b02901b677a0ba98so1321346oor.1
        for <devel@acpica.org>; Thu, 18 Mar 2021 03:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QIDk99AN54P9dz8S58q171UK8pRxtVWI+OQDCq00Bf8=;
        b=HPRgejReQiPCkCEcCN2DJ8LzVJkyqxD322R4lk4bchcAiEVEXYu86MiBWe4U3hoKVp
         tKseV1wrtTRRNR4/0KAgaEoFdxYUTODH3CeBxREiUl3N2OGvxnTwWXwwraorcYxvDlWz
         6SAVA80cLDs6XYyPQ5pCMbm0tONYAdMOlg0xAaHXAidMm1pMMmwYfEyqsmQeLrjVsWtM
         wek2t74xz5/g78J/ynsgAkkz3YNL5kmrwwBCkHzqPmjKMdYvqETpr93/mUy1efprGu29
         hKd5rZYHqAsnX8rmm9Qx2cX8sPd4Bv8lVryiXLnIXbGpCvdyvR/In10oWmeRGmahx4y2
         W7UA==
X-Gm-Message-State: AOAM53204SYOIWSWGqfDAfB7EkV2B7qAMIc4RYVi38H7h+GS3g6mvcX4
	lD5kbkjYPFT2I3XVMYLOCb7dADHeYEtBsXY6xdY=
X-Google-Smtp-Source: ABdhPJwTd6HeBU2ayrPYmrRVxGXT3jB5gQBw5j7Vg9VHvG2IiLm117/01+DfUs79JlXfTQ4vduHKspvEmfqhRtXooaE=
X-Received: by 2002:a4a:bb14:: with SMTP id f20mr7100616oop.1.1616064633285;
 Thu, 18 Mar 2021 03:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <YE5dJ6U3nPWsXY4D@linux.ibm.com> <CAJZ5v0g1H6hCVbAAFajhn0AYRMU4GkZOqggOB6LVdgFx_vfwOA@mail.gmail.com>
 <3236337.DtqTXxM43S@kreacher> <YFMAdIVn2hpTHfBq@linux.ibm.com>
In-Reply-To: <YFMAdIVn2hpTHfBq@linux.ibm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 18 Mar 2021 11:50:21 +0100
Message-ID: <CAJZ5v0g_y3X2Ps+ipBg702Q_RR3cm4gKBJoPqjazHXaisKGc4g@mail.gmail.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID-Hash: HLDC2CO2Y3VBPDORFHSBJFE6HCI5ZYCC
X-Message-ID-Hash: HLDC2CO2Y3VBPDORFHSBJFE6HCI5ZYCC
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, David Hildenbrand <david@redhat.com>, George Kennedy <george.kennedy@oracle.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HLDC2CO2Y3VBPDORFHSBJFE6HCI5ZYCC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 18, 2021 at 8:25 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Wed, Mar 17, 2021 at 09:14:37PM +0100, Rafael J. Wysocki wrote:
> > On Monday, March 15, 2021 5:19:29 PM CET Rafael J. Wysocki wrote:
> > > On Sun, Mar 14, 2021 at 8:00 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > >
> > > > On Thu, Mar 11, 2021 at 04:36:31PM +0100, Rafael J. Wysocki wrote:
> > > > > On Wed, Mar 10, 2021 at 8:47 PM David Hildenbrand <david@redhat.com> wrote:
> > > > > > >
> > > > > > > There is some care that should be taken to make sure we get the order
> > > > > > > right, but I don't see a fundamental issue here.
> > > > >
> > > > > Me neither.
> > > > >
> > > > > > > If I understand correctly, Rafael's concern is about changing the parts of
> > > > > > > ACPICA that should be OS agnostic, so I think we just need another place to
> > > > > > > call memblock_reserve() rather than acpi_tb_install_table_with_override().
> > > > >
> > > > > Something like this.
> > > > >
> > > > > There is also the problem that memblock_reserve() needs to be called
> > > > > for all of the tables early enough, which will require some reordering
> > > > > of the early init code.
> > > > >
> > > > > > > Since the reservation should be done early in x86::setup_arch() (and
> > > > > > > probably in arm64::setup_arch()) we might just have a function that parses
> > > > > > > table headers and reserves them, similarly to how we parse the tables
> > > > > > > during KASLR setup.
> > > > >
> > > > > Right.
> > > >
> > > > I've looked at it a bit more and we do something like the patch below that
> > > > nearly duplicates acpi_tb_parse_root_table() which is not very nice.
> > >
> > > It looks to me that the code need not be duplicated (see below).
> > >
> > > > Besides, reserving ACPI tables early and then calling acpi_table_init()
> > > > (and acpi_tb_parse_root_table() again would mean doing the dance with
> > > > early_memremap() twice for no good reason.
> > >
> > > That'd be simply inefficient which is kind of acceptable to me to start with.
> > >
> > > And I changing the ACPICA code can be avoided at least initially, it
> > > by itself would be a good enough reason.
> > >
> > > > I believe the most effective way to deal with this would be to have a
> > > > function that does parsing, reservation and installs the tables supplied by
> > > > the firmware which can be called really early and then another function
> > > > that overrides tables if needed a some later point.
> > >
> > > I agree that this should be the direction to go into.
> >
> > So maybe something like the patch below?
> >
> > I'm not sure if acpi_boot_table_prepare() gets called early enough, though.
>
> To be 100% safe it should be called before e820__memblock_setup().

OK

> It is possible to call memblock_reserve() at any time, even before the actual
> memory is detected as long as all reservations fit into the static array
> that currently has 128 entries on x86.
>
> As e820__memblock_setup() essentially enables memblock allocations,
> theoretically the memory occupied by ACPI tables can be allocated even in
> x86::setup_arch() unless it is reserved before e820__memblock_setup().
>
> > Also this still may not play well with initrd-based table overrides. Erik, do
> > you have any insights here?
> >
> > And ia64 needs to be updated too.
>
> I think arm64 as well.

Right.

> > ---
> >  arch/x86/kernel/acpi/boot.c |   12 +++++++++---
> >  arch/x86/kernel/setup.c     |    3 +++
> >  drivers/acpi/tables.c       |   24 +++++++++++++++++++++---
> >  include/linux/acpi.h        |    9 +++++++--
> >  4 files changed, 40 insertions(+), 8 deletions(-)
> >
> > Index: linux-pm/arch/x86/kernel/acpi/boot.c
> > ===================================================================
> > --- linux-pm.orig/arch/x86/kernel/acpi/boot.c
> > +++ linux-pm/arch/x86/kernel/acpi/boot.c
> > @@ -1541,7 +1541,7 @@ static const struct dmi_system_id acpi_d
> >   *   ...
> >   */
> >
> > -void __init acpi_boot_table_init(void)
> > +void __init acpi_boot_table_prepare(void)
> >  {
> >       dmi_check_system(acpi_dmi_table);
> >
> > @@ -1554,10 +1554,16 @@ void __init acpi_boot_table_init(void)
> >       /*
> >        * Initialize the ACPI boot-time table parser.
> >        */
> > -     if (acpi_table_init()) {
> > +     if (acpi_table_prepare())
> >               disable_acpi();
> > +}
> > +
> > +void __init acpi_boot_table_init(void)
> > +{
> > +     if (acpi_disabled)
> >               return;
> > -     }
> > +
> > +     acpi_table_init();
> >
> >       acpi_table_parse(ACPI_SIG_BOOT, acpi_parse_sbf);
> >
> > Index: linux-pm/arch/x86/kernel/setup.c
> > ===================================================================
> > --- linux-pm.orig/arch/x86/kernel/setup.c
> > +++ linux-pm/arch/x86/kernel/setup.c
> > @@ -1070,6 +1070,9 @@ void __init setup_arch(char **cmdline_p)
> >       /* preallocate 4k for mptable mpc */
> >       e820__memblock_alloc_reserved_mpc_new();
> >
> > +     /* Look for ACPI tables and reserve memory occupied by them. */
> > +     acpi_boot_table_prepare();
> > +
> >  #ifdef CONFIG_X86_CHECK_BIOS_CORRUPTION
> >       setup_bios_corruption_check();
> >  #endif
> > Index: linux-pm/include/linux/acpi.h
> > ===================================================================
> > --- linux-pm.orig/include/linux/acpi.h
> > +++ linux-pm/include/linux/acpi.h
> > @@ -222,11 +222,13 @@ void __iomem *__acpi_map_table(unsigned
> >  void __acpi_unmap_table(void __iomem *map, unsigned long size);
> >  int early_acpi_boot_init(void);
> >  int acpi_boot_init (void);
> > +void acpi_boot_table_prepare (void);
> >  void acpi_boot_table_init (void);
>
> Not related to this patch, but it feels to me like there are too many
> acpi_boot_something() :)

Well, there was one initially, but it has been split for a few times
due to ordering issues similar to the one at hand.

It could be cleaned up I suppose, though.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
