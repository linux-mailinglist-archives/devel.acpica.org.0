Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5982241C437
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Sep 2021 14:01:58 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DAF10100EBB8F;
	Wed, 29 Sep 2021 05:01:56 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.171; helo=mail-oi1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 416CD100EBBA2
	for <devel@acpica.org>; Wed, 29 Sep 2021 05:01:55 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id 24so2635522oix.0
        for <devel@acpica.org>; Wed, 29 Sep 2021 05:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DPTFjBNMYZsH/LoF0h0iC/ghN40ymuV4zkUVlZxxnn4=;
        b=QDIXA3KGWcOzbtHX+VIFjriLd29zBhoHkIyZl0o0BHyj6QmZ6z7RKIa6f+URtdemkC
         ms4BAZ1TipOEteFHPKyUCC5gevLX/2sq/IBPz0Y8mdjkYMUHwyeaaP16u3U+4ulp3BLj
         OdR48iP7/oqYyYmkKEwiJEfrzGt3dKn8Glkct4Le1/DNSA8/lHaP5XdDHvvNYRPaVwM5
         cbv63KeMeEjpONzoeurmAwy1H4KKyvtlhDn5bs0aEDEKiVaAAdpTbl8Q1lJvBZALSyl8
         koWtas6LuI1iM9C4JfLLBcZQMSC0DsmHG2vps+SeLHe7LaQJShP/SkfyZOStSbFdHBMA
         l2iQ==
X-Gm-Message-State: AOAM530sJ2R5N6W28EHWgKRmDEXGDgp9AJxHDhiK7LWdh+/fwc4r/2OO
	Sb7XouSd2YO+4ckClORNymlcgqg+ti/9Kjzvtdo=
X-Google-Smtp-Source: ABdhPJxoNw5TPiy7tXyGhRFCBqyoslPg2WsTrtX+8FsVJTpHKJufbkxvO43p83wgr2KyAiyOScD/EBdm7rFq04tgduc=
X-Received: by 2002:a05:6808:178c:: with SMTP id bg12mr8017044oib.157.1632916913639;
 Wed, 29 Sep 2021 05:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210927121338.938994-1-arnd@kernel.org> <92b02547-3aa5-537f-a782-7a25854d88fe@intel.com>
 <BYAPR11MB32560CEAC6CC3C2E93FBBF9387A89@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB32560CEAC6CC3C2E93FBBF9387A89@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Sep 2021 14:01:41 +0200
Message-ID: <CAJZ5v0gHgMVjKzKUnJ0HkE+Bz7-1Rav3FnLA+ycF94JTw5V=ww@mail.gmail.com>
To: "Moore, Robert" <robert.moore@intel.com>
Message-ID-Hash: ETW2I4LHFVYRLRCY25NWURBO4DIUADNM
X-Message-ID-Hash: ETW2I4LHFVYRLRCY25NWURBO4DIUADNM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, Arnd Bergmann <arnd@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "llvm@lists.linux.dev" <llvm@lists.linux.dev>, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: avoid NULL pointer arithmetic
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ETW2I4LHFVYRLRCY25NWURBO4DIUADNM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Sep 28, 2021 at 10:39 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> I can take this patch as-is, I think. I'll try for the next acpica release later this week.

Thanks!


> -----Original Message-----
> From: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Sent: Tuesday, September 28, 2021 10:44 AM
> To: Arnd Bergmann <arnd@kernel.org>; Moore, Robert <robert.moore@intel.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Nathan Chancellor <nathan@kernel.org>; Nick Desaulniers <ndesaulniers@google.com>; Erik Kaneda <erik.kaneda@intel.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; llvm@lists.linux.dev; Len Brown <lenb@kernel.org>; Rafael J. Wysocki <rafael@kernel.org>
> Subject: Re: [PATCH] ACPI: avoid NULL pointer arithmetic
>
> Bob, this is ACPICA material.
>
> Would it be possible to apply this to the upstream from the patch or do you need  a PR for this?
>
> On 9/27/2021 2:13 PM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > There are some very old macros for doing an open-coded offsetof() and
> > cast between pointer and integer in ACPI headers. clang-14 now
> > complains about these:
> >
> > drivers/acpi/acpica/tbfadt.c:86:3: error: performing pointer subtraction with a null pointer has undefined behavior [-Werror,-Wnull-pointer-subtraction]
> >           ACPI_FADT_OFFSET(pm_timer_block),
> >           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/acpi/actbl.h:376:47: note: expanded from macro 'ACPI_FADT_OFFSET'
> >   #define ACPI_FADT_OFFSET(f)             (u16) ACPI_OFFSET (struct acpi_table_fadt, f)
> >
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/acpi/actypes.h:511:41: note: expanded from macro 'ACPI_OFFSET'
> >   #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> >
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/acpi/actypes.h:505:79: note: expanded from macro 'ACPI_PTR_DIFF'
> >   #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
> >
> > ^ ~~~~~~~~~~~~~~~~~~~~~~~ Convert them to the modern equivalents.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >   include/acpi/actypes.h | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> > 92c71dfce0d5..285bc7b73de3 100644
> > --- a/include/acpi/actypes.h
> > +++ b/include/acpi/actypes.h
> > @@ -507,8 +507,8 @@ typedef u64 acpi_integer;
> >   /* Pointer/Integer type conversions */
> >
> >   #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
> > -#define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> > -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> > +#define ACPI_TO_INTEGER(p)              ((uintptr_t)(p))
> > +#define ACPI_OFFSET(d, f)               offsetof(d, f)
> >   #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
> >   #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> >
>
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
