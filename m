Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D79334736
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Mar 2021 19:54:53 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 81E47100F2249;
	Wed, 10 Mar 2021 10:54:51 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.178; helo=mail-oi1-f178.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AABE7100F2242
	for <devel@acpica.org>; Wed, 10 Mar 2021 10:54:49 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id x135so15772251oia.9
        for <devel@acpica.org>; Wed, 10 Mar 2021 10:54:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yI9WZUfKzeFXei1YXkcImkDxr5rdsjk8eOoNhkhpnLU=;
        b=jmoliCEwxewH/5mBJeiVOHDQxjOyS0qlvPiIDWh3G713jJTo/d8Xab3PeRtqP3S1PC
         ny7K70c3t43M7rXiwUqPCg67mmXJ9zlJSIFLzh43zuhxtlgCVNFqUCVSavxdEX2f3dH4
         6oemKBGvbmjrV8EyNvDHMJ8P9Q01DJL1fpKivueggTWfREPE6egVHI4gXFNz3bxfnQqo
         nEnl1q8nT/L8QXgdkfKZSvh36VN9DxigjTDyu2omelK5eHhcyQexkYhI7N0/K6T1KwJI
         EGusP3U4RJCLuK5oVC4fQCdbP4TqN95zm6BghFBs4iO3uNGSie5aXjtkX9UdjY9izQXQ
         LHdA==
X-Gm-Message-State: AOAM530aP0ckVUmh19Uq0PHAwDPhYap3GTHhUJnevJ50lbQ1LQQPyFbt
	9zcIuqReRZ9KqeeQuNebpIEfVUOOEQdF+1IqtCQ=
X-Google-Smtp-Source: ABdhPJzh95SXQnaDjeDEkO8P2oaLdGnLRCY8jdxe/Zagwkyd7SGOwXj64Ymf8vKjv2+wcOUQ7lbRiVKjU7a6RHEfz8U=
X-Received: by 2002:aca:3d85:: with SMTP id k127mr3515610oia.157.1615402488779;
 Wed, 10 Mar 2021 10:54:48 -0800 (PST)
MIME-Version: 1.0
References: <1614802160-29362-1-git-send-email-george.kennedy@oracle.com>
 <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <9c3bc1b2-bb8d-194d-6faf-e4d7d346dc9b@oracle.com> <CAJZ5v0j8udd0R6A1wwpNvZL5Dr1pRcdiZr2if5y50o7OkHOMqg@mail.gmail.com>
 <1ae44491-4404-6873-4ee6-6cf58c1ae6fb@redhat.com> <CAJZ5v0gC+60n0-UkMw8h5JPBc6grQtD1ambSOCAHV2HLm886yQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0gC+60n0-UkMw8h5JPBc6grQtD1ambSOCAHV2HLm886yQ@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 10 Mar 2021 19:54:37 +0100
Message-ID: <CAJZ5v0g_ztenDY-ER6A0fKD-ZHhLfF3zQdRYYxQb5jSXudd8xQ@mail.gmail.com>
To: David Hildenbrand <david@redhat.com>
Message-ID-Hash: QJMTT4SKXIY3GEB2ZUHSLXDCWVIGJDTH
X-Message-ID-Hash: QJMTT4SKXIY3GEB2ZUHSLXDCWVIGJDTH
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, George Kennedy <george.kennedy@oracle.com>, Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mike Rapoport <rppt@linux.ibm.com>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QJMTT4SKXIY3GEB2ZUHSLXDCWVIGJDTH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Mar 10, 2021 at 7:39 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Fri, Mar 5, 2021 at 2:40 PM David Hildenbrand <david@redhat.com> wrote:
> >
> > >> The ibft table, for example, is mapped in via acpi_map() and kmap(). The
> > >> page for the ibft table is not reserved, so it can end up on the freelist.
> > >
> > > You appear to be saying that it is not sufficient to kmap() a page in
> > > order to use it safely.  It is also necessary to reserve it upfront,
> > > for example with the help of memblock_reserve().  Is that correct?  If
> > > so, is there an alternative way to reserve a page frame?
> >
> > If the memory is indicated by the BIOS/firmware as valid memory
> > (!reserved) but contains actual tables that have to remain untouched
> > what happens is:
> >
> > 1) Memblock thinks the memory should be given to the buddy, because it
> >     is valid memory and was not reserved by anyone (i.e., the bios, early
> >     allocations).
> >
> > 2) Memblock will expose the pages to the buddy, adding them to the free
> >     page list.
> >
> > 3) Anybody can allocate them, e.g., via alloc_pages().
> >
> > The root issue is that pages that should not get exposed to the buddy as
> > free pages get exposed to the buddy as free pages. We have to teach
> > memblock that these pages are not actually to be used, but instead, area
> > reserved.
> >
> > >
> > >>>
> > >>>> Use memblock_reserve() to reserve all the ACPI table pages.
> > >>> How is this going to help?
> > >> If the ibft table page is not reserved, it will end up on the freelist
> > >> and potentially be allocated before ibft_init() is called.
> > >>
> > >> I believe this is the call that causes the ibft table page (in this case
> > >> pfn=0xbe453) to end up on the freelist:
> > >>
> > >> memmap_init_range: size=bd49b, nid=0, zone=1, start_pfn=1000,
> > >> zone_end_pfn=100000
> > >
> > > David, is commit 7fef431be9c9 related to this and if so, then how?
> > >
> >
> > Memory gets allocated and used in a different order, which seems to have
> > exposed (yet another) latent BUG.
>
> Well, you can call it that, or you can say that things worked under
> certain assumptions regarding the memory allocation order which are
> not met any more.
>
> > The same could be reproduced via zone shuffling with a little luck.
>
> But nobody does that in practice.
>
> This would be relatively straightforward to address if ACPICA was not
> involved in it, but unfortunately that's not the case.
>
> Changing this part of ACPICA is risky, because such changes may affect
> other OSes using it, so that requires some serious consideration.
> Alternatively, the previous memory allocation order in Linux could be
> restored.

Of course, long-term this needs to be addressed in the ACPI
initialization code, because it clearly is not robust enough, but in
the meantime there's practical breakage observable in the field, so
what can be done about that?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
