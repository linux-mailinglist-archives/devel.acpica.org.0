Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BAD332E4B
	for <lists+devel-acpica@lfdr.de>; Tue,  9 Mar 2021 19:30:07 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3D912100EB842;
	Tue,  9 Mar 2021 10:30:06 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.45; helo=mail-ot1-f45.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3B546100EB83E
	for <devel@acpica.org>; Tue,  9 Mar 2021 10:30:04 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id f33so13738301otf.11
        for <devel@acpica.org>; Tue, 09 Mar 2021 10:30:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cc44XgMrXYcGJmv2uY6Gj2YJymaXa/QmpTtTLJqdQFI=;
        b=H5VLWzPQTITfPsiMGZj/fFp1KkCfuhnyL+/l8uCRIl9hleRrFhSu8a6TKsDctu83ZN
         1pJbEzsz4Zd3I4kaU9skXeAZ4AXx/CTqng64gTsmFwTTmSJVh7S0uufwYy5a/Eb7Rruu
         7ecV4E0oMbwEXdQ0AMNsCX0KzjsIyn0IIlhTQcBetORTbrHYx92n69OReLBDCDzt/Asz
         CwD8PO7akZqi2WpjnfrwqtIUMoonf2uCNlpcjwJIlCYS8iVl5ZuslnOWSn31DQOfY+Pp
         lY7dLUC8oGn9E+kHFi4CC6iIE95iDnx556n/+y3t38dz6YqQNuC0F9/OmTqUoOAxUa6v
         6x5A==
X-Gm-Message-State: AOAM532BtuTy1Oa5cY7v1fmg1kuzr0Oj0gqXQPPyVL7e93gcvH810SU5
	ulBKrDbbKZbYX3ZHMkhnEx2haZsWSxoGjdQdUEk=
X-Google-Smtp-Source: ABdhPJzQ3YoLZ+PxyTqe/NlRBk7RWCsHb3LYmwtIWjMGSid8IPbg/yX8pHvnTStEAX1FNVz3aRxckdVSCkOn+4duQM4=
X-Received: by 2002:a9d:3422:: with SMTP id v31mr20594235otb.260.1615314602894;
 Tue, 09 Mar 2021 10:30:02 -0800 (PST)
MIME-Version: 1.0
References: <1614802160-29362-1-git-send-email-george.kennedy@oracle.com>
 <CAJZ5v0j3=82x1hV9SCdinJQPkDXmJd9BFoqvNxNHSb6iS8PHVQ@mail.gmail.com>
 <9c3bc1b2-bb8d-194d-6faf-e4d7d346dc9b@oracle.com> <CAJZ5v0j8udd0R6A1wwpNvZL5Dr1pRcdiZr2if5y50o7OkHOMqg@mail.gmail.com>
 <YESEymRQ2/F7xJGt@linux.ibm.com> <YEe2SAESEaEak+HB@linux.ibm.com>
In-Reply-To: <YEe2SAESEaEak+HB@linux.ibm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 9 Mar 2021 19:29:51 +0100
Message-ID: <CAJZ5v0hAQo7+3bthoC8K7n7qyhQFMuOd8U3BhZWSREjPmq0-7w@mail.gmail.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID-Hash: DTPL6NG5JVTL2MVOPWWQTTJ3XNZ27D5X
X-Message-ID-Hash: DTPL6NG5JVTL2MVOPWWQTTJ3XNZ27D5X
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, George Kennedy <george.kennedy@oracle.com>, David Hildenbrand <david@redhat.com>, Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>, Dhaval Giani <dhaval.giani@oracle.com>, Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>, Wei Yang <richard.weiyang@linux.alibaba.com>, Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] ACPI: fix acpi table use after free
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DTPL6NG5JVTL2MVOPWWQTTJ3XNZ27D5X/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 9, 2021 at 6:54 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Sun, Mar 07, 2021 at 09:46:22AM +0200, Mike Rapoport wrote:
> > Hello Rafael,
> >
> > On Fri, Mar 05, 2021 at 02:30:07PM +0100, Rafael J. Wysocki wrote:
> > > On Fri, Mar 5, 2021 at 12:14 AM George Kennedy <george.kennedy@oracle.com> wrote:
> > >
> > > > The ibft table, for example, is mapped in via acpi_map() and kmap(). The
> > > > page for the ibft table is not reserved, so it can end up on the freelist.
> > >
> > > You appear to be saying that it is not sufficient to kmap() a page in
> > > order to use it safely.  It is also necessary to reserve it upfront,
> > > for example with the help of memblock_reserve().  Is that correct?  If
> > > so, is there an alternative way to reserve a page frame?
> >
> > Like David said in the other reply, if a BIOS does not mark the memory that
> > contains an ACPI table as used (e.g. reserved or ACPI data), we need to
> > make sure the kernel knows that such memory is in use and an early call to
> > memblock_reserve() is exactly what we need here.
> > George had this issue with iBFT, but in general this could be any table
> > that a buggy BIOS forgot to mark as ACPI data.
>
> BTW, I wonder is there a fundamental reason to use ioremap() to access ACPI
> tables at all?
> In the end, they reside in RAM and, apparently, they live at the same DIMM
> as neighboring "normal memory" so why cannot we just map them normally as
> read-only not executable?

This may be NVS memory (depending on the configuration of the system)
which isn't "normal" RAM AFAICS.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
