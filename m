Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F273346EC
	for <lists+devel-acpica@lfdr.de>; Wed, 10 Mar 2021 19:39:35 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3FB3B100F2242;
	Wed, 10 Mar 2021 10:39:34 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.53; helo=mail-ot1-f53.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 66924100F2241
	for <devel@acpica.org>; Wed, 10 Mar 2021 10:39:32 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id r24so10295520otq.13
        for <devel@acpica.org>; Wed, 10 Mar 2021 10:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7fS2Rs0egi9/dzY8lzXOv5M8g0qkVn2nZhboXlniji4=;
        b=n3Tyxs2xLHSrVn+537p6Mx+lgpSLDq+HQuSGGIURDIv0qkczWBNHAGodPWB8SA6kRN
         YaY2rsFP+pPL232SVFz6cTRZ04qx3m+crXKpC6608Z+bim7OkAdtjvg15GaUGUAV33MM
         Efr6M+VPMssejJY7CE/8lt2VsIB9kjZ6iFLAbCaO2INiwoUJAOZ/mTI5qpjJvzL1szPp
         OfUa80aEw8U6zdRln5Nw7gBteFdK1pMWFmCsmgoXGAa7uRMk49rIfH9ds+pK8mh8Oit8
         lgJrP6r3Kq7RrhszNeM3DkQh8ZA1f5kLEqi7eOqzJf3boHGoN834i1s8AExKS8HxEgCl
         nBTQ==
X-Gm-Message-State: AOAM530MqhobVT2X9PztF6oL+y4FfGETWYc5wQv8U4IEDNw3GoDsFCxh
	HaRx+NW7zb3h8FxsGdu1zZ3XG3ACQESQUGcNU6o=
X-Google-Smtp-Source: ABdhPJyNnowA3UdYmDLgEbI2ZC3/0qrXeOLKMJ5/W3Sg9JfW6MSjEGfB3zvWlj0/f7kBRVdOU5PiR57melYh5UWQbp8=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr3707877otr.321.1615401570893;
 Wed, 10 Mar 2021 10:39:30 -0800 (PST)
MIME-Version: 1.0
References: <1614802160-29362-1-git-send-email-george.kennedy@oracle.com>
 <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <9c3bc1b2-bb8d-194d-6faf-e4d7d346dc9b@oracle.com> <CAJZ5v0j8udd0R6A1wwpNvZL5Dr1pRcdiZr2if5y50o7OkHOMqg@mail.gmail.com>
 <1ae44491-4404-6873-4ee6-6cf58c1ae6fb@redhat.com>
In-Reply-To: <1ae44491-4404-6873-4ee6-6cf58c1ae6fb@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 10 Mar 2021 19:39:19 +0100
Message-ID: <CAJZ5v0gC+60n0-UkMw8h5JPBc6grQtD1ambSOCAHV2HLm886yQ@mail.gmail.com>
To: David Hildenbrand <david@redhat.com>
Message-ID-Hash: OOBV3W7X2S2VKALBH3GJJYI3HDLFD4PL
X-Message-ID-Hash: OOBV3W7X2S2VKALBH3GJJYI3HDLFD4PL
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, George Kennedy <george.kennedy@oracle.com>, Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mike Rapoport <rppt@linux.ibm.com>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/OOBV3W7X2S2VKALBH3GJJYI3HDLFD4PL/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 5, 2021 at 2:40 PM David Hildenbrand <david@redhat.com> wrote:
>
> >> The ibft table, for example, is mapped in via acpi_map() and kmap(). The
> >> page for the ibft table is not reserved, so it can end up on the freelist.
> >
> > You appear to be saying that it is not sufficient to kmap() a page in
> > order to use it safely.  It is also necessary to reserve it upfront,
> > for example with the help of memblock_reserve().  Is that correct?  If
> > so, is there an alternative way to reserve a page frame?
>
> If the memory is indicated by the BIOS/firmware as valid memory
> (!reserved) but contains actual tables that have to remain untouched
> what happens is:
>
> 1) Memblock thinks the memory should be given to the buddy, because it
>     is valid memory and was not reserved by anyone (i.e., the bios, early
>     allocations).
>
> 2) Memblock will expose the pages to the buddy, adding them to the free
>     page list.
>
> 3) Anybody can allocate them, e.g., via alloc_pages().
>
> The root issue is that pages that should not get exposed to the buddy as
> free pages get exposed to the buddy as free pages. We have to teach
> memblock that these pages are not actually to be used, but instead, area
> reserved.
>
> >
> >>>
> >>>> Use memblock_reserve() to reserve all the ACPI table pages.
> >>> How is this going to help?
> >> If the ibft table page is not reserved, it will end up on the freelist
> >> and potentially be allocated before ibft_init() is called.
> >>
> >> I believe this is the call that causes the ibft table page (in this case
> >> pfn=0xbe453) to end up on the freelist:
> >>
> >> memmap_init_range: size=bd49b, nid=0, zone=1, start_pfn=1000,
> >> zone_end_pfn=100000
> >
> > David, is commit 7fef431be9c9 related to this and if so, then how?
> >
>
> Memory gets allocated and used in a different order, which seems to have
> exposed (yet another) latent BUG.

Well, you can call it that, or you can say that things worked under
certain assumptions regarding the memory allocation order which are
not met any more.

> The same could be reproduced via zone shuffling with a little luck.

But nobody does that in practice.

This would be relatively straightforward to address if ACPICA was not
involved in it, but unfortunately that's not the case.

Changing this part of ACPICA is risky, because such changes may affect
other OSes using it, so that requires some serious consideration.
Alternatively, the previous memory allocation order in Linux could be
restored.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
