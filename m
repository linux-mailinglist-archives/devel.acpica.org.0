Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EDC30FBCC
	for <lists+devel-acpica@lfdr.de>; Thu,  4 Feb 2021 19:45:50 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 38CED100EC1F9;
	Thu,  4 Feb 2021 10:45:48 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.52; helo=mail-ot1-f52.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8C44E100EC1E6
	for <devel@acpica.org>; Thu,  4 Feb 2021 10:45:38 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id i20so4418170otl.7
        for <devel@acpica.org>; Thu, 04 Feb 2021 10:45:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xnuUw1FLcM4+2rBIDsM0pF6wdlTJf4QW7NKIBa7PlDU=;
        b=uVs4daPm2UmCmD4Jg+OTukiPScibxdGlOAP/L3CyMl30NdcIRvTrhtrQ79x4oVDhVE
         +3mrQUKzLfC87HvHCX6R90ZiPgfLKhJyyODFvJVIn2OEC8knzbNhJibRYMb9pcRjDHDh
         ecpo/Vy8T5POhQ20GnohkU9SOYPSgxOylBdsJDyhmSodcVDsg4z5JYEAQX6GCbsnUmER
         FPslaoCCWwhBtoru0tirjQQtanHED1vYwZXGYUKZDX5Mk9PargD55tCEiLE3Rcfp2JQJ
         GTXidLF7qpViLWIiHbLVAm4DkLO7BrXpqo9beZmOdBSEVcyRsvHEe1+M0SNWNlMeSlll
         5QKQ==
X-Gm-Message-State: AOAM533uMk3bnN7/A+0rdWWCm8zoR/WpXiAQ6j0o1FQH4YPWQNZk3m9N
	ntzJ+ruLXFZyYwa9JnNkqMGJ+0llX3mzZj6iKOc=
X-Google-Smtp-Source: ABdhPJwK95CDaaKkEZNHkySmn2WdN+iBqCzuyanMrOGG8WbGe+I9XJxDm16VMC5E8ME5QFhIbip3DGg0SxLQwDn8Ov0=
X-Received: by 2002:a05:6830:2313:: with SMTP id u19mr554329ote.321.1612464336202;
 Thu, 04 Feb 2021 10:45:36 -0800 (PST)
MIME-Version: 1.0
References: <20210203150435.27941-1-wei.liu@kernel.org> <20210203150435.27941-9-wei.liu@kernel.org>
 <20210204183841.y4fgwjuggtbrnere@liuwe-devbox-debian-v2>
In-Reply-To: <20210204183841.y4fgwjuggtbrnere@liuwe-devbox-debian-v2>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 4 Feb 2021 19:45:25 +0100
Message-ID: <CAJZ5v0gJD1B92FsSo9xMrdFWYEh5DHqAQQ4TiFbHV=a2XpBEbg@mail.gmail.com>
To: Wei Liu <wei.liu@kernel.org>
Message-ID-Hash: CQJYQ2G7WXQ6TH3VK35ICRS7ALLC5PLS
X-Message-ID-Hash: CQJYQ2G7WXQ6TH3VK35ICRS7ALLC5PLS
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux on Hyper-V List <linux-hyperv@vger.kernel.org>, virtualization@lists.linux-foundation.org, Linux Kernel List <linux-kernel@vger.kernel.org>, Michael Kelley <mikelley@microsoft.com>, Vineeth Pillai <viremana@linux.microsoft.com>, Sunil Muthuswamy <sunilmut@microsoft.com>, Nuno Das Neves <nunodasneves@linux.microsoft.com>, Pavel Tatashin <pasha.tatashin@soleen.com>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v6 08/16] ACPI / NUMA: add a stub function for node_to_pxm()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CQJYQ2G7WXQ6TH3VK35ICRS7ALLC5PLS/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Feb 4, 2021 at 7:41 PM Wei Liu <wei.liu@kernel.org> wrote:
>
> On Wed, Feb 03, 2021 at 03:04:27PM +0000, Wei Liu wrote:
> > There is already a stub function for pxm_to_node but conversion to the
> > other direction is missing.
> >
> > It will be used by Microsoft Hypervisor code later.
> >
> > Signed-off-by: Wei Liu <wei.liu@kernel.org>
>
> Hi ACPI maintainers, if you're happy with this patch I can take it via
> the hyperv-next tree, given the issue is discovered when pxm_to_node is
> called in our code.

Yes, you can.

Thanks!

>
> > ---
> > v6: new
> > ---
> >  include/acpi/acpi_numa.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/include/acpi/acpi_numa.h b/include/acpi/acpi_numa.h
> > index a4c6ef809e27..40a91ce87e04 100644
> > --- a/include/acpi/acpi_numa.h
> > +++ b/include/acpi/acpi_numa.h
> > @@ -30,6 +30,10 @@ static inline int pxm_to_node(int pxm)
> >  {
> >       return 0;
> >  }
> > +static inline int node_to_pxm(int node)
> > +{
> > +     return 0;
> > +}
> >  #endif                               /* CONFIG_ACPI_NUMA */
> >
> >  #ifdef CONFIG_ACPI_HMAT
> > --
> > 2.20.1
> >
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
