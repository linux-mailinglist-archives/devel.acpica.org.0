Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6160340914
	for <lists+devel-acpica@lfdr.de>; Thu, 18 Mar 2021 16:42:41 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5F0C8100EB344;
	Thu, 18 Mar 2021 08:42:35 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.42; helo=mail-ot1-f42.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F2156100EB342
	for <devel@acpica.org>; Thu, 18 Mar 2021 08:42:33 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id v24-20020a9d69d80000b02901b9aec33371so5601795oto.2
        for <devel@acpica.org>; Thu, 18 Mar 2021 08:42:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MSzbL7q7UOHy8XukE1pAVuaN95+QmKI6ybgop91aXbk=;
        b=UVNUsEYUOoBew8XdR4wFh2nQD4inIE8MEQoWnkExPo/sCrCSS9tqLKelmYfG2YDOe/
         pGCIuvKW/EEwkHMF29DiHgV+BFsMkkmYCThCI6zChv09j3YmCHxjdAmvAgDYMue1ea0g
         zUnc2iNgRnZOWFotzqMB4aanlEZ5RutNZxTvyg7lfnLBSzaIm5cpakxM62vFQp+MlCjK
         WBLYrhOTzostRR6CKR+8Pr9Z9zdcQhqsFcyemFS3zpU1w1o3P1IZTIFobj7mc2pT78AR
         9R3kGolzJJZ+PRdNPrhAPC+UFaMX+HwFSfG5i+y7uIFHmIDS3vXLTL5Dq6BrR7K9vaQS
         l1Vw==
X-Gm-Message-State: AOAM531NWHjcflvobRD7ijpBwSjnZM+AvlpzPKnPEbZnuYb1H6ldBqxH
	rS8jd82BD6VQN3LHX8Mea8Tx6iIgCrU0eksjfnM=
X-Google-Smtp-Source: ABdhPJw9CbqKs+8q9CJPeZk/eqMne0374o6AJM6grGChTntRlJqy7ruxZhdfrwTKhrfgAYU8cT2aiydfv+IKHBoN0VQ=
X-Received: by 2002:a05:6830:20d2:: with SMTP id z18mr5393994otq.260.1616082153103;
 Thu, 18 Mar 2021 08:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <YE5dJ6U3nPWsXY4D@linux.ibm.com> <CAJZ5v0g1H6hCVbAAFajhn0AYRMU4GkZOqggOB6LVdgFx_vfwOA@mail.gmail.com>
 <3236337.DtqTXxM43S@kreacher> <bad1ea33-1a6e-bd4d-b795-fbc51ac6ecca@oracle.com>
In-Reply-To: <bad1ea33-1a6e-bd4d-b795-fbc51ac6ecca@oracle.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 18 Mar 2021 16:42:21 +0100
Message-ID: <CAJZ5v0g81pE6S_bYV_ECvvzifEUFznWUOVcC8X5v-MQb4-th_g@mail.gmail.com>
To: George Kennedy <george.kennedy@oracle.com>
Message-ID-Hash: WNIVJPESGMLFMFQD2VF2P7NUVORDKTD2
X-Message-ID-Hash: WNIVJPESGMLFMFQD2VF2P7NUVORDKTD2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mike Rapoport <rppt@linux.ibm.com>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, David Hildenbrand <david@redhat.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WNIVJPESGMLFMFQD2VF2P7NUVORDKTD2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Mar 17, 2021 at 11:28 PM George Kennedy
<george.kennedy@oracle.com> wrote:
>
>
>
> On 3/17/2021 4:14 PM, Rafael J. Wysocki wrote:
> > On Monday, March 15, 2021 5:19:29 PM CET Rafael J. Wysocki wrote:
> >> On Sun, Mar 14, 2021 at 8:00 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >>> On Thu, Mar 11, 2021 at 04:36:31PM +0100, Rafael J. Wysocki wrote:
> >>>> On Wed, Mar 10, 2021 at 8:47 PM David Hildenbrand <david@redhat.com> wrote:
> >>>>>> There is some care that should be taken to make sure we get the order
> >>>>>> right, but I don't see a fundamental issue here.
> >>>> Me neither.
> >>>>
> >>>>>> If I understand correctly, Rafael's concern is about changing the parts of
> >>>>>> ACPICA that should be OS agnostic, so I think we just need another place to
> >>>>>> call memblock_reserve() rather than acpi_tb_install_table_with_override().
> >>>> Something like this.
> >>>>
> >>>> There is also the problem that memblock_reserve() needs to be called
> >>>> for all of the tables early enough, which will require some reordering
> >>>> of the early init code.
> >>>>
> >>>>>> Since the reservation should be done early in x86::setup_arch() (and
> >>>>>> probably in arm64::setup_arch()) we might just have a function that parses
> >>>>>> table headers and reserves them, similarly to how we parse the tables
> >>>>>> during KASLR setup.
> >>>> Right.
> >>> I've looked at it a bit more and we do something like the patch below that
> >>> nearly duplicates acpi_tb_parse_root_table() which is not very nice.
> >> It looks to me that the code need not be duplicated (see below).
> >>
> >>> Besides, reserving ACPI tables early and then calling acpi_table_init()
> >>> (and acpi_tb_parse_root_table() again would mean doing the dance with
> >>> early_memremap() twice for no good reason.
> >> That'd be simply inefficient which is kind of acceptable to me to start with.
> >>
> >> And I changing the ACPICA code can be avoided at least initially, it
> >> by itself would be a good enough reason.
> >>
> >>> I believe the most effective way to deal with this would be to have a
> >>> function that does parsing, reservation and installs the tables supplied by
> >>> the firmware which can be called really early and then another function
> >>> that overrides tables if needed a some later point.
> >> I agree that this should be the direction to go into.
> > So maybe something like the patch below?
>
> Do you want me to try it out in the failing setup?

Yes, please!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
