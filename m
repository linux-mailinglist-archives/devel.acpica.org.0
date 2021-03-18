Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E083408B1
	for <lists+devel-acpica@lfdr.de>; Thu, 18 Mar 2021 16:22:53 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1052B100EB344;
	Thu, 18 Mar 2021 08:22:52 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.51; helo=mail-ot1-f51.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 64E8D100EB342
	for <devel@acpica.org>; Thu, 18 Mar 2021 08:22:49 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id y19-20020a0568301d93b02901b9f88a238eso5514969oti.11
        for <devel@acpica.org>; Thu, 18 Mar 2021 08:22:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XY5+C+cwj/cp1ZOC1jOkEqcVS7X+FmIf75h5mCYb2HE=;
        b=tORkj/y573S4kLgFz5HcUO/mq3iBUiDkyb8BmO+4SW0CZB+LAIQsYLbUNxoZxwia8J
         Un2hnV2ScPguRBRC5wwPAMWjQWBGNK1ZZukPEHE4RAltrPeM9qKsbwHkdnf4kWomSrZ9
         OsTulPKj4woozEUW20eUFj0WZgVDCmrQOY59MzsZ4ysmSSWEV3ywSewzCkGR34GuK4rw
         js+GU2ylfxCgYHylPVvwccDwisVYaA5YeNkRHT05ky2x98ILTnseKei0Ctrig9kjCGZq
         NTwmydXLnsOGo024GCT1N7tK5YaA+xjBlDhN6aVsbJoxN3prTkhifu6OxDxm6hvyi+aq
         Q59Q==
X-Gm-Message-State: AOAM533oFni5+TyeFp2S5eh6K/7cu+9PZJijniDPSpngyJ0j8GO1moM6
	NcGUdqw8dEt7qkKIu4nof3CR+Fo4sKytW3VUgMg=
X-Google-Smtp-Source: ABdhPJx4Q32BHs/tMtlhyT+bXpmfN1I4SbzZsX3lnWmG6VWKbKxuXudNGvoEyuTQj8wMQ78FzsklmzfAqcCCRkXqelk=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr8107660otr.321.1616080968401;
 Thu, 18 Mar 2021 08:22:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <YE5dJ6U3nPWsXY4D@linux.ibm.com> <CAJZ5v0g1H6hCVbAAFajhn0AYRMU4GkZOqggOB6LVdgFx_vfwOA@mail.gmail.com>
 <3236337.DtqTXxM43S@kreacher> <YFMAdIVn2hpTHfBq@linux.ibm.com> <CAJZ5v0g_y3X2Ps+ipBg702Q_RR3cm4gKBJoPqjazHXaisKGc4g@mail.gmail.com>
In-Reply-To: <CAJZ5v0g_y3X2Ps+ipBg702Q_RR3cm4gKBJoPqjazHXaisKGc4g@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 18 Mar 2021 16:22:37 +0100
Message-ID: <CAJZ5v0iump7nVKfyu7S23-n=gQFx5d2MKejrnT6yFak7L9V11g@mail.gmail.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID-Hash: I32WFS24TZ2FPBMHREVGBO72PP4KQQHR
X-Message-ID-Hash: I32WFS24TZ2FPBMHREVGBO72PP4KQQHR
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, David Hildenbrand <david@redhat.com>, George Kennedy <george.kennedy@oracle.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/I32WFS24TZ2FPBMHREVGBO72PP4KQQHR/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 18, 2021 at 11:50 AM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Thu, Mar 18, 2021 at 8:25 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> > On Wed, Mar 17, 2021 at 09:14:37PM +0100, Rafael J. Wysocki wrote:
> > > On Monday, March 15, 2021 5:19:29 PM CET Rafael J. Wysocki wrote:
> > > > On Sun, Mar 14, 2021 at 8:00 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > >
> > > > > On Thu, Mar 11, 2021 at 04:36:31PM +0100, Rafael J. Wysocki wrote:
> > > > > > On Wed, Mar 10, 2021 at 8:47 PM David Hildenbrand <david@redhat.com> wrote:
> > > > > > > >
> > > > > > > > There is some care that should be taken to make sure we get the order
> > > > > > > > right, but I don't see a fundamental issue here.
> > > > > >
> > > > > > Me neither.
> > > > > >
> > > > > > > > If I understand correctly, Rafael's concern is about changing the parts of
> > > > > > > > ACPICA that should be OS agnostic, so I think we just need another place to
> > > > > > > > call memblock_reserve() rather than acpi_tb_install_table_with_override().
> > > > > >
> > > > > > Something like this.
> > > > > >
> > > > > > There is also the problem that memblock_reserve() needs to be called
> > > > > > for all of the tables early enough, which will require some reordering
> > > > > > of the early init code.
> > > > > >
> > > > > > > > Since the reservation should be done early in x86::setup_arch() (and
> > > > > > > > probably in arm64::setup_arch()) we might just have a function that parses
> > > > > > > > table headers and reserves them, similarly to how we parse the tables
> > > > > > > > during KASLR setup.
> > > > > >
> > > > > > Right.
> > > > >
> > > > > I've looked at it a bit more and we do something like the patch below that
> > > > > nearly duplicates acpi_tb_parse_root_table() which is not very nice.
> > > >
> > > > It looks to me that the code need not be duplicated (see below).
> > > >
> > > > > Besides, reserving ACPI tables early and then calling acpi_table_init()
> > > > > (and acpi_tb_parse_root_table() again would mean doing the dance with
> > > > > early_memremap() twice for no good reason.
> > > >
> > > > That'd be simply inefficient which is kind of acceptable to me to start with.
> > > >
> > > > And I changing the ACPICA code can be avoided at least initially, it
> > > > by itself would be a good enough reason.
> > > >
> > > > > I believe the most effective way to deal with this would be to have a
> > > > > function that does parsing, reservation and installs the tables supplied by
> > > > > the firmware which can be called really early and then another function
> > > > > that overrides tables if needed a some later point.
> > > >
> > > > I agree that this should be the direction to go into.
> > >
> > > So maybe something like the patch below?
> > >
> > > I'm not sure if acpi_boot_table_prepare() gets called early enough, though.
> >
> > To be 100% safe it should be called before e820__memblock_setup().
>
> OK

Well, that said, reserve_bios_regions() doesn't seem to have concerns
like this and I'm not sure why ACPI tables should be reserved before
this runs.  That applies to efi_reserve_boot_services() too.

I can put the new call before e820__memblock_alloc_reserved_mpc_new(),
but I'm not sure why to put it before efi_reserve_boot_services(),
say?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
