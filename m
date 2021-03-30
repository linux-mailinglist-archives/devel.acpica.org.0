Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E720034E70B
	for <lists+devel-acpica@lfdr.de>; Tue, 30 Mar 2021 14:05:39 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5B851100EB831;
	Tue, 30 Mar 2021 05:05:38 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.169; helo=mail-oi1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EDF91100EB82F
	for <devel@acpica.org>; Tue, 30 Mar 2021 05:05:35 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id w70so16297610oie.0
        for <devel@acpica.org>; Tue, 30 Mar 2021 05:05:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/gSpMHBqfF0ztmaxY0HWMjy3Yg1wW/3Zssdp7txxPh0=;
        b=cM4ULFs22iyB05L1oyFCQp9Aw+OYaqMl78ibq5hdFMpRSMhTdHmn2UEty2kMamQfTK
         L89ed+gK1/u66e4OcH16mkx1L1c6wcCS27D+eBEFG35jWsLEBspZnhAwic4XH4aeUlzs
         KPdXD+BLoN9BTpjdDT3uHqkO/MeKNl0/y+1gHwjsqhMjMFWbGhOvbrxUX9PDHKRNMjV2
         QayWfsij0AwoM2N+HhrhDuCUXuRKBMkC3k/mcatGqXsgcchPBZMtz2vrgo97AcgTu3+D
         N5cyWRuWhMbQmYJaMkXr2RdBMF55S5aQqMpUnGWR0hh0Ia0Nld+obIsLVM6DzlNDTT6b
         W54A==
X-Gm-Message-State: AOAM530NOydModc9AKpjyCeRsvdugoPjuL7DYdPa8OOCUJshcGsNKhVi
	ii4NFQMjz/+c9AArs3Pt3iesUPnhpzOjMzNOoGA=
X-Google-Smtp-Source: ABdhPJyvALkfL8/HLhMkZXqqpPnJFTbVIs7Jgdkb82xywZuWf677uaTgXhH1KFNPxVY899UjtUcAwYGNcjmtiKQbHqY=
X-Received: by 2002:aca:c4c5:: with SMTP id u188mr2948538oif.71.1617105934975;
 Tue, 30 Mar 2021 05:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210326001922.4767-1-unixbhaskar@gmail.com> <CAJZ5v0izUkL=7NSFuefNYcqdq2vSxseDCCLKUTOZGC82WjJNPg@mail.gmail.com>
 <MWHPR11MB15993DB0504FBD17DB4B1792F07D9@MWHPR11MB1599.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB15993DB0504FBD17DB4B1792F07D9@MWHPR11MB1599.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 30 Mar 2021 14:05:23 +0200
Message-ID: <CAJZ5v0gf4i+HLPYzETCiG740FCXBHe5hf2PeCfCiqVJODhaMyg@mail.gmail.com>
To: "Kaneda, Erik" <erik.kaneda@intel.com>
Message-ID-Hash: PMVCBU6A5PAKVWKEPRFW2FPYL2RWL7EI
X-Message-ID-Hash: PMVCBU6A5PAKVWKEPRFW2FPYL2RWL7EI
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Bhaskar Chowdhury <unixbhaskar@gmail.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Fix a typo
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PMVCBU6A5PAKVWKEPRFW2FPYL2RWL7EI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 30, 2021 at 2:19 AM Kaneda, Erik <erik.kaneda@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Rafael J. Wysocki <rafael@kernel.org>
> > Sent: Monday, March 29, 2021 5:48 AM
> > To: Bhaskar Chowdhury <unixbhaskar@gmail.com>; Kaneda, Erik
> > <erik.kaneda@intel.com>
> > Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; ACPI Devel Maling List
> > <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE
> > (ACPICA) <devel@acpica.org>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>; Randy Dunlap <rdunlap@infradead.org>
> > Subject: [Devel] Re: [PATCH] ACPICA: Fix a typo
> >
> > On Fri, Mar 26, 2021 at 1:22 AM Bhaskar Chowdhury
> > <unixbhaskar@gmail.com> wrote:
> > >
> > >
> > > s/optimzation/optimization/
> > >
> > > Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> > > ---
> > >  include/acpi/acoutput.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/include/acpi/acoutput.h b/include/acpi/acoutput.h
> > > index 1538a6853822..1b4c45815695 100644
> > > --- a/include/acpi/acoutput.h
> > > +++ b/include/acpi/acoutput.h
> > > @@ -362,7 +362,7 @@
> > >   *
> > >   * A less-safe version of the macros is provided for optional use if the
> > >   * compiler uses excessive CPU stack (for example, this may happen in the
> > > - * debug case if code optimzation is disabled.)
> > > + * debug case if code optimization is disabled.)
> > >   */
> > >
> > >  /* Exit trace helper macro */
> > > --
> >
> > Erik, could you pick up this patch, please?  It is simple enough IMV ...
>
> No problem, I'll pick it up

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
