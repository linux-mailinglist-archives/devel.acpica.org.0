Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF411DAE78
	for <lists+devel-acpica@lfdr.de>; Wed, 20 May 2020 11:15:33 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2BCCA11F29B6C;
	Wed, 20 May 2020 02:12:09 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.68; helo=mail-ot1-f68.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7CA7B11F29B69
	for <devel@acpica.org>; Wed, 20 May 2020 02:12:07 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id x22so1912287otq.4
        for <devel@acpica.org>; Wed, 20 May 2020 02:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bqoyHeOoEDMlB+jQwZuDNn8FHfH7mQ3PMOITKSmc9rM=;
        b=L8Cy3qN+ItdUDHR84pD56vsPKstvuSOSNFKYqDUw8AYhSRcH2QZ6ZFE4hV0ioiSEhG
         69FO5haxoAM7sUQlfufJ6ZfBqqb2vTbUXrJekac9BM/Be3s41hM7J8lmONZyrTra+LL+
         Hd5AHxKsUwd8BzgvVA7mdr3LOECW3IXSZNfAQ94Bi/pqHHJG/poWz59x7465aPYHasbj
         EGn+iT1rBK3ENH8R0LAhIkAYaGnLkYVVaslWBE69e282CrjJd91cOKTu5W3vShwb1R3z
         99P3P7kLo6J29sFQvs+FVBRGZJqa0xXAAiSiTiudBiLZv9ITK1ro93UrvvEmcgktTd2h
         3mFw==
X-Gm-Message-State: AOAM530Gph/Pskikp1G0McVhnR5quGsOadHRMagyM8Axf8iFcjmnEE+I
	V/whqTTHy6IGhQTFjMsfKCtCYvNZ2Ilbfm339fA=
X-Google-Smtp-Source: ABdhPJyAQnNwUbpbP3PLRjXubPXhxP1e5qRO/5LlKFxssnkRW8i1aQTDADuYa6bxey7awz5NwtSwBv6uQ99bF+Kj+8M=
X-Received: by 2002:a9d:6356:: with SMTP id y22mr2364835otk.167.1589966129710;
 Wed, 20 May 2020 02:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200518222722.GA7791@embeddedor> <CAJZ5v0goZpvRQ6du214FqvFNQnqZHR9-kz=WhEgRsMJ3Zx0WiQ@mail.gmail.com>
 <20200519225058.GA14138@embeddedor>
In-Reply-To: <20200519225058.GA14138@embeddedor>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 20 May 2020 11:15:18 +0200
Message-ID: <CAJZ5v0jg9HoE2KEm45hxKNB1g61DzCn-GWH74w1goeHH3AKRaA@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID-Hash: YLLEDCB4INL3JPDFDL5ONNKK75D6YPO4
X-Message-ID-Hash: YLLEDCB4INL3JPDFDL5ONNKK75D6YPO4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Kees Cook <keescook@chromium.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Replace one-element array and use struct_size() helper
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YLLEDCB4INL3JPDFDL5ONNKK75D6YPO4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 20, 2020 at 12:46 AM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> On Tue, May 19, 2020 at 12:25:13PM +0200, Rafael J. Wysocki wrote:
> > On Tue, May 19, 2020 at 12:22 AM Gustavo A. R. Silva
> > <gustavoars@kernel.org> wrote:
> > >
> > > The current codebase makes use of one-element arrays in the following
> > > form:
> > >
> > > struct something {
> > >     int length;
> > >     u8 data[1];
> > > };
> > >
> > > struct something *instance;
> > >
> > > instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
> > > instance->length = size;
> > > memcpy(instance->data, source, size);
> > >
> > > but the preferred mechanism to declare variable-length types such as
> > > these ones is a flexible array member[1][2], introduced in C99:
> > >
> > > struct foo {
> > >         int stuff;
> > >         struct boo array[];
> > > };
> > >
> > > By making use of the mechanism above, we will get a compiler warning
> > > in case the flexible array does not occur last in the structure, which
> > > will help us prevent some kind of undefined behavior bugs from being
> > > inadvertently introduced[3] to the codebase from now on.
> >
> > However, the ACPICA code in the kernel comes from an external project
> > and changes of this type are generally not applicable to it unless
> > accepted upstream.
>
> Hi Rafael,
>
> By _accepted upstream_, in this case, you mean the adoption of the
> flexible-arrays in the whole codebase, first?

I meant whether or not the patch is accepted by the ACPICA upstream.

>  If this is the case
> notice that there are hundreds of these flexible-array conversions
> in mainline, already:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=flexible-array
>
> Is this what you mean?

I'm not actually sure what you mean here.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
