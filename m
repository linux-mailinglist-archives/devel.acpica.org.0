Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A2B3377F0
	for <lists+devel-acpica@lfdr.de>; Thu, 11 Mar 2021 16:36:52 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 453B3100F2276;
	Thu, 11 Mar 2021 07:36:51 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.49; helo=mail-ot1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1E5FA100F2275
	for <devel@acpica.org>; Thu, 11 Mar 2021 07:36:48 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id m1so1734847ote.10
        for <devel@acpica.org>; Thu, 11 Mar 2021 07:36:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uwY2wNfbKjFx3CHjkfJmwtEhpX43qQBYMFJEAlc1V6Y=;
        b=VSY5TfTiicEEasFb1N8mJW+hXnMWaGOX1JamyR6OTr+4EtE6fVJO+dGM90plTd6pEv
         TxwQ43Ln3in7+CXbDS3aRkZaxmWV6hlRo3/CAMQnEGw7+2qH7ZQNouJJHwR/TvstLhpg
         CE/Mjy8HUv4yow4WFPfdKWeXS1ivDu/xo5OSVbCaw4LADBzUrmhdftapgrpH4X1GawbT
         KD1fddXhABR6ZoQLxPD1S9c62BPuyMKq+6J8bE4on2aHxdyl7LvZkvA7iquNuhgEA23c
         AftaUBKqW0eL4ugImt5Ix6FeJrpN40R80UKBq1ewnDjimK8c8Ebt+4HQQrqgzdmF0z+O
         UWqw==
X-Gm-Message-State: AOAM530wLPV6vg7W4PolK9SALhwEIxj/utJ0/cSCYVu+OQWFe29XaaeN
	ystTGsjVsdijmMxUHHiBwY3Iyqqk/ld1HPKxvxo=
X-Google-Smtp-Source: ABdhPJwUt9Q6ZZJCSQpdeTp+0T+zFZMHpiXszgp78Tff9vWJiX7Jv6h8C2PFGGBuNvCTnbBuhQIm8qTvykxW277eA5o=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr7541034otr.321.1615477002714;
 Thu, 11 Mar 2021 07:36:42 -0800 (PST)
MIME-Version: 1.0
References: <1614802160-29362-1-git-send-email-george.kennedy@oracle.com>
 <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <9c3bc1b2-bb8d-194d-6faf-e4d7d346dc9b@oracle.com> <CAJZ5v0j8udd0R6A1wwpNvZL5Dr1pRcdiZr2if5y50o7OkHOMqg@mail.gmail.com>
 <1ae44491-4404-6873-4ee6-6cf58c1ae6fb@redhat.com> <CAJZ5v0gC+60n0-UkMw8h5JPBc6grQtD1ambSOCAHV2HLm886yQ@mail.gmail.com>
 <CAJZ5v0g_ztenDY-ER6A0fKD-ZHhLfF3zQdRYYxQb5jSXudd8xQ@mail.gmail.com>
 <e8593eae-40b8-bc9a-78db-529d28d2be88@redhat.com> <YEkgP0G94uQBGDa9@linux.ibm.com>
 <0d05364c-4881-d78a-9721-bd15f5eb822b@redhat.com>
In-Reply-To: <0d05364c-4881-d78a-9721-bd15f5eb822b@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 11 Mar 2021 16:36:31 +0100
Message-ID: <CAJZ5v0jOpNJrOt5xn-1YkSB9Q15NZS2cxmsGKAU945YNbs+hOw@mail.gmail.com>
To: David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@linux.ibm.com>
Message-ID-Hash: OYDUNILL3IOOEQDFWKD32WXHQF6QT247
X-Message-ID-Hash: OYDUNILL3IOOEQDFWKD32WXHQF6QT247
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, George Kennedy <george.kennedy@oracle.com>, Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OYDUNILL3IOOEQDFWKD32WXHQF6QT247/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Mar 10, 2021 at 8:47 PM David Hildenbrand <david@redhat.com> wrote:
>
> >>>>> The same could be reproduced via zone shuffling with a little luck.
> >>>>
> >>>> But nobody does that in practice.
> >>>>
> >>
> >> Dan will most certainly object. And I don't know what makes you speak in
> >> absolute words here.
> >>
> >>>> This would be relatively straightforward to address if ACPICA was not
> >>>> involved in it, but unfortunately that's not the case.
> >>>>
> >>>> Changing this part of ACPICA is risky, because such changes may affect
> >>>> other OSes using it, so that requires some serious consideration.
> >>>> Alternatively, the previous memory allocation order in Linux could be
> >>>> restored.
> >>>
> >>> Of course, long-term this needs to be addressed in the ACPI
> >>> initialization code, because it clearly is not robust enough, but in
> >>> the meantime there's practical breakage observable in the field, so
> >>> what can be done about that?
> >>
> >> *joke* enable zone shuffling.
> >>
> >> No seriously, fix the latent BUG. What again is problematic about excluding
> >> these pages from the page allcoator, for example, via memblock_reserve()?
> >>
> >> @Mike?
> >
> > There is some care that should be taken to make sure we get the order
> > right, but I don't see a fundamental issue here.

Me neither.

> > If I understand correctly, Rafael's concern is about changing the parts of
> > ACPICA that should be OS agnostic, so I think we just need another place to
> > call memblock_reserve() rather than acpi_tb_install_table_with_override().

Something like this.

There is also the problem that memblock_reserve() needs to be called
for all of the tables early enough, which will require some reordering
of the early init code.

> > Since the reservation should be done early in x86::setup_arch() (and
> > probably in arm64::setup_arch()) we might just have a function that parses
> > table headers and reserves them, similarly to how we parse the tables
> > during KASLR setup.

Right.

>
> FWIW, something like below would hide our latent BUG again properly (lol).
> But I guess I don't have to express how ugly and wrong that is. Not to mention
> what happens if memblock decides to allocate that memory area earlier
> for some other user (including CMA, ...).

Fair enough.

> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 3e4b29ee2b1e..ec71b7c63dbe 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -1566,6 +1566,21 @@ void __free_pages_core(struct page *page, unsigned int order)
>
>          atomic_long_add(nr_pages, &page_zone(page)->managed_pages);
>
> +       /*
> +        * BUG ALERT: x86-64 ACPI code has latent BUGs where ACPI tables
> +        * that must not get allocated/modified will get exposed to the buddy
> +        * as free pages; anybody can allocate and use them once in the free
> +        * lists.
> +        *
> +        * Instead of fixing the BUG, revert the change to the
> +        * freeing/allocation order during boot that revealed it and cross
> +        * fingers that everything will be fine.
> +        */
> +       if (system_state < SYSTEM_RUNNING) {
> +               __free_pages_ok(page, order, FPI_NONE);
> +               return;
> +       }
> +
>          /*
>           * Bypass PCP and place fresh pages right to the tail, primarily
>           * relevant for memory onlining.
>
>
> --
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
