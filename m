Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E80ED41E1CA
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Sep 2021 20:53:14 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 71944100F3FDD;
	Thu, 30 Sep 2021 11:53:13 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.49; helo=mail-oo1-f49.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 11336100F3FD8
	for <devel@acpica.org>; Thu, 30 Sep 2021 11:53:10 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id h11-20020a4aa74b000000b002a933d156cbso2165100oom.4
        for <devel@acpica.org>; Thu, 30 Sep 2021 11:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AWz5foWcr+bWR6CSFDKJoUEhYPxpGczQBoONhahdcus=;
        b=YBGj4MaOthiFIqXfn5CxksC3L0BNtq6Suv3bpk6OqE5ADwqwSVMdzMVtakB6YCJtQ/
         1RgQ0bBiAwJtWn3nsGVI1SIxMaNDaMiQjsTtr97yKCy1Fu0caP8mn/X0A/gw0jC07pA4
         /UXSEx57uD6HQgjwGVMDjFjpPdPgSS1kBud4QtyzCRkoZkvYQmofiLJobpcSS8gV74vr
         1mj7NSkNfi4xyIbbZoTmjIZ3LbaorwuNX6zgalcM1BrYabEpPW6W/yJdWQuruDm44tKB
         ucYM6KYgKq4nIuAgCjMPVIMrJtf9vRkVdhe3X4Ie46JDGh5eSWDZmaYJcqfNovOIDU/6
         TASw==
X-Gm-Message-State: AOAM532ILKZursm9OSWBPsuWVYCP0HEY0+qx/SjbVxl4Cy+nG9Heh9T6
	apWps20AiBHHVZERg874iXPuRBZcQEE6ZYOvvqM=
X-Google-Smtp-Source: ABdhPJw8+m2xqrDVqABBbHFhPc+Vi/u0KcQlXUvSeYYp71RAa69bRuSXSureyv6cjZyWA10UqXHMSc2jbi7XhFK/J08=
X-Received: by 2002:a05:6820:17a:: with SMTP id k26mr6219832ood.37.1633027990202;
 Thu, 30 Sep 2021 11:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210927121338.938994-1-arnd@kernel.org> <CAJZ5v0jJRYQPSfVV_hCD6uxch+vU6kvWV9-KAfqHckHgkFOeaA@mail.gmail.com>
In-Reply-To: <CAJZ5v0jJRYQPSfVV_hCD6uxch+vU6kvWV9-KAfqHckHgkFOeaA@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Sep 2021 20:52:59 +0200
Message-ID: <CAJZ5v0jDKK6ecsubVDv_=EUF3goiiDW28tvbKF9cesMphgKaug@mail.gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID-Hash: A2XOI2MHTLMHYREZ5LVZ3SJ2YNGVBLSY
X-Message-ID-Hash: A2XOI2MHTLMHYREZ5LVZ3SJ2YNGVBLSY
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Arnd Bergmann <arnd@arndb.de>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, llvm@lists.linux.dev
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: avoid NULL pointer arithmetic
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/A2XOI2MHTLMHYREZ5LVZ3SJ2YNGVBLSY/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 29, 2021 at 8:47 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Mon, Sep 27, 2021 at 2:13 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > There are some very old macros for doing an open-coded offsetof() and
> > cast between pointer and integer in ACPI headers. clang-14 now complains
> > about these:
> >
> > drivers/acpi/acpica/tbfadt.c:86:3: error: performing pointer subtraction with a null pointer has undefined behavior [-Werror,-Wnull-pointer-subtraction]
> >          ACPI_FADT_OFFSET(pm_timer_block),
> >          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/acpi/actbl.h:376:47: note: expanded from macro 'ACPI_FADT_OFFSET'
> >  #define ACPI_FADT_OFFSET(f)             (u16) ACPI_OFFSET (struct acpi_table_fadt, f)
> >                                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/acpi/actypes.h:511:41: note: expanded from macro 'ACPI_OFFSET'
> >  #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> >                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/acpi/actypes.h:505:79: note: expanded from macro 'ACPI_PTR_DIFF'
> >  #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
> >                                                                               ^ ~~~~~~~~~~~~~~~~~~~~~~~
> > Convert them to the modern equivalents.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  include/acpi/actypes.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
> > index 92c71dfce0d5..285bc7b73de3 100644
> > --- a/include/acpi/actypes.h
> > +++ b/include/acpi/actypes.h
> > @@ -507,8 +507,8 @@ typedef u64 acpi_integer;
> >  /* Pointer/Integer type conversions */
> >
> >  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
> > -#define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> > -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> > +#define ACPI_TO_INTEGER(p)              ((uintptr_t)(p))
> > +#define ACPI_OFFSET(d, f)               offsetof(d, f)
> >  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
> >  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> >
> > --
>
> Queued up as 5.16 material, converted into an upstream ACPICA pull
> request and submitted, thanks!

And reverted from there, because it introduced build issues.

Can we use alternative definitions that don't depend on uintptr_t and
offsetof()?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
