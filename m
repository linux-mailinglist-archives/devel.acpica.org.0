Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A43733C181
	for <lists+devel-acpica@lfdr.de>; Mon, 15 Mar 2021 17:19:47 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E8B3A100EBBD9;
	Mon, 15 Mar 2021 09:19:43 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.43; helo=mail-ot1-f43.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BA0C8100EBBD7
	for <devel@acpica.org>; Mon, 15 Mar 2021 09:19:41 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso5412582otq.3
        for <devel@acpica.org>; Mon, 15 Mar 2021 09:19:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lhDXdT+Qk1yZgYcJ7G0DPhjw1AHmHsmXi9SEBVXA2Gw=;
        b=uL9ZETuMBabjgTnQejIb4GF+9vT8In/XKmIPrCgQ3OsvJyt5M86Vrng1hylqrQFe18
         4UrmvBiQ5EVf5/LgxkZwW9eOmle9o0j2LiThiK7oR2xZLLivKVHdhEW2OsupdLRFstMc
         ae5nYSmgXTCuYP7XonJPEGddzia968L32OBYTfYbFFBduAmYI8DrW1TMw1w80wfKW+td
         yhT6euyCUgc6Fa9cVd2Da6oQoTOHePio65DiGFLIyL9s1jRiOBrMj3FtIfiDoWT9Unj3
         XR9MuI22Pwuk8xdmDPmpRgouekLAXn27h5lN+5XNlZUWBUjAAe25TsWeuuRIOt2lQ9v3
         mj1w==
X-Gm-Message-State: AOAM531ZX4KnseVXarO8sURirduUeRH6AiecUEkxPxElKuv1+rJugi13
	7gVLhtSoJb46URP+QtjHtjh7HvU/nHU7PTQRlp8=
X-Google-Smtp-Source: ABdhPJzHxsaszMe8pnfqRcU6lgYlCbAiR4iynVcVsvhI3THx7YrFgWZV0cy2S6yGRVehH46qz2UuFWnBzmQXvE9fkPE=
X-Received: by 2002:a9d:3422:: with SMTP id v31mr14622147otb.260.1615825180891;
 Mon, 15 Mar 2021 09:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <9c3bc1b2-bb8d-194d-6faf-e4d7d346dc9b@oracle.com> <CAJZ5v0j8udd0R6A1wwpNvZL5Dr1pRcdiZr2if5y50o7OkHOMqg@mail.gmail.com>
 <1ae44491-4404-6873-4ee6-6cf58c1ae6fb@redhat.com> <CAJZ5v0gC+60n0-UkMw8h5JPBc6grQtD1ambSOCAHV2HLm886yQ@mail.gmail.com>
 <CAJZ5v0g_ztenDY-ER6A0fKD-ZHhLfF3zQdRYYxQb5jSXudd8xQ@mail.gmail.com>
 <e8593eae-40b8-bc9a-78db-529d28d2be88@redhat.com> <YEkgP0G94uQBGDa9@linux.ibm.com>
 <0d05364c-4881-d78a-9721-bd15f5eb822b@redhat.com> <CAJZ5v0jOpNJrOt5xn-1YkSB9Q15NZS2cxmsGKAU945YNbs+hOw@mail.gmail.com>
 <YE5dJ6U3nPWsXY4D@linux.ibm.com>
In-Reply-To: <YE5dJ6U3nPWsXY4D@linux.ibm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 15 Mar 2021 17:19:29 +0100
Message-ID: <CAJZ5v0g1H6hCVbAAFajhn0AYRMU4GkZOqggOB6LVdgFx_vfwOA@mail.gmail.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID-Hash: YDV3T2U6PVTPDEZS5S2OKESO2WKJ6MAI
X-Message-ID-Hash: YDV3T2U6PVTPDEZS5S2OKESO2WKJ6MAI
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, David Hildenbrand <david@redhat.com>, George Kennedy <george.kennedy@oracle.com>, Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YDV3T2U6PVTPDEZS5S2OKESO2WKJ6MAI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Mar 14, 2021 at 8:00 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Thu, Mar 11, 2021 at 04:36:31PM +0100, Rafael J. Wysocki wrote:
> > On Wed, Mar 10, 2021 at 8:47 PM David Hildenbrand <david@redhat.com> wrote:
> > > >
> > > > There is some care that should be taken to make sure we get the order
> > > > right, but I don't see a fundamental issue here.
> >
> > Me neither.
> >
> > > > If I understand correctly, Rafael's concern is about changing the parts of
> > > > ACPICA that should be OS agnostic, so I think we just need another place to
> > > > call memblock_reserve() rather than acpi_tb_install_table_with_override().
> >
> > Something like this.
> >
> > There is also the problem that memblock_reserve() needs to be called
> > for all of the tables early enough, which will require some reordering
> > of the early init code.
> >
> > > > Since the reservation should be done early in x86::setup_arch() (and
> > > > probably in arm64::setup_arch()) we might just have a function that parses
> > > > table headers and reserves them, similarly to how we parse the tables
> > > > during KASLR setup.
> >
> > Right.
>
> I've looked at it a bit more and we do something like the patch below that
> nearly duplicates acpi_tb_parse_root_table() which is not very nice.

It looks to me that the code need not be duplicated (see below).

> Besides, reserving ACPI tables early and then calling acpi_table_init()
> (and acpi_tb_parse_root_table() again would mean doing the dance with
> early_memremap() twice for no good reason.

That'd be simply inefficient which is kind of acceptable to me to start with.

And I changing the ACPICA code can be avoided at least initially, it
by itself would be a good enough reason.

> I believe the most effective way to deal with this would be to have a
> function that does parsing, reservation and installs the tables supplied by
> the firmware which can be called really early and then another function
> that overrides tables if needed a some later point.

I agree that this should be the direction to go into.

However, it looks to me that something like the following could be
done to start with:

(a) Make __acpi_map_table() call memblock_reserve() in addition to
early_memremap().

My assumption here is that the memblock_reserve() will simply be
ignored if it is called too late.

(b) Introduce acpi_reserve_tables() as something like

void __init acpi_table_reserve(void)
{
        acpi_initialize_tables(initial_tables, ACPI_MAX_TABLES, 0);
}

Because initial_tables is passed to acpi_initialize_tables() above and
allow_resize is 0, the array used by it will simply get overwritten
when acpi_table_init() gets called.

(c) Make setup_arch() call acpi_table_reserve() like in the original
patch from George.

Would that work?

If so, I'll cut a patch along these lines.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
