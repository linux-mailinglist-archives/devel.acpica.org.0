Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCF75FDE8E
	for <lists+devel-acpica@lfdr.de>; Thu, 13 Oct 2022 18:53:27 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B7EAB100EA917;
	Thu, 13 Oct 2022 09:53:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.178; helo=mail-qt1-f178.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0143F100F2274
	for <devel@acpica.org>; Thu, 13 Oct 2022 09:53:22 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id g11so1872452qts.1
        for <devel@acpica.org>; Thu, 13 Oct 2022 09:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xyhXL+BOmWOJePpW+D6b4OfxbrisjBOUEM77v08bvT0=;
        b=1MjxSrdKrxZs0jt1V+CyVWfFr2fxS3JlLxON83i4LjCaf42nYkViLjs12R8edYTpUd
         VBkb3wxnnDmkYWscS67wSmvTSE5tlTwAz+4VfTVP4bWqMTTgtrR4sGeiSwn2eH5x0LWf
         10FOWfPgBwTaxwkm7vh/PTXK3d6M4fcviojurQkrP+/lJhPBjla0CAk81khQSqSQNEWl
         p8jAQ5zUNLG6C9K5sUZQOjSvis9DMlWDiHhJAZW4wuGmepw9ekinpu1Dsk2UWtEnwdcw
         Zp42ApaoBaaQFcx60Hn/kYXbUQvpVBWaF0kPynVRu/ZawJzaluxUh1HgQyfHz2iMhMm9
         09Gw==
X-Gm-Message-State: ACrzQf1fXTKmDnKblqZseUkWAuofMSjLsKhdyFDTrh5H2brR9dLE6KRa
	mJPezFSHmR1r6cub4M0eMu7xZ9+1JIJqRFYFGBI=
X-Google-Smtp-Source: AMsMyM7O29ZrJjJC5X7gvQ9/PB7BgegBeT2UzG7DPr2XfkkSeozAPhCACk0wd/C0VtZ3LnWxYN2NQN6AMr+oQco9C1Y=
X-Received: by 2002:a05:620a:2988:b0:6ce:cc3f:73b9 with SMTP id
 r8-20020a05620a298800b006cecc3f73b9mr647277qkp.9.1665680001557; Thu, 13 Oct
 2022 09:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <20221003144214.345279-1-hdegoede@redhat.com>
In-Reply-To: <20221003144214.345279-1-hdegoede@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 13 Oct 2022 18:53:10 +0200
Message-ID: <CAJZ5v0gaCYVTSk2wCBVEj9xXCMjtt=Ce8t88Me1kb_MCAuYfBw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: R7XLTW4JITTT3DNFN7YOBUEOGPWEUZ7L
X-Message-ID-Hash: R7XLTW4JITTT3DNFN7YOBUEOGPWEUZ7L
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Andy Shevchenko <andy@kernel.org>, kai.heng.feng@canonical.com, =?UTF-8?Q?Johannes_Pen=C3=9Fel?= <johannespenssel@posteo.net>, linux-acpi@vger.kernel.org, devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC v3 0/4] ACPI[CA]: fix ECDT EC probe ordering issues
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/R7XLTW4JITTT3DNFN7YOBUEOGPWEUZ7L/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Hans,

On Mon, Oct 3, 2022 at 4:42 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi All,
>
> Here is v3 of my series fixing some ECDT EC probe ordering issues which
> are causing issues om some laptops:
>
> https://bugzilla.kernel.org/show_bug.cgi?id=214899
>
> This is a RFC because fixing this requires some ACPICA changes which
> obviously need to go upstream through the ACPICA project:
> https://github.com/acpica/acpica/pull/786

I've just approved your pull request.

Also, as soon as it gets merged, you can resubmit the series with a
proper ACPICA  commit ID and I will be able to apply the patches right
away then.

> The problem this fixed is best described by the commit message of patch 4:
>
> ACPI-2.0 says that the EC OpRegion handler must be available immediately
> (like the standard default OpRegion handlers):
>
> Quoting from the ACPI spec version 6.3: "6.5.4 _REG (Region) ...
> 2. OSPM must make Embedded Controller operation regions, accessed via
> the Embedded Controllers described in ECDT, available before executing
> any control method. These operation regions may become inaccessible
> after OSPM runs _REG(EmbeddedControl, 0)."
>
> So acpi_bus_init() calls acpi_ec_ecdt_probe(), which calls
> acpi_install_address_space_handler() to install the EC's OpRegion
> handler, early on.
>
> This not only installs the OpRegion handler, but also calls the EC's
> _REG method. The _REG method call is a problem because it may rely on
> initialization done by the _INI methods of one of the PCI / _SB root devs,
> see for example: https://bugzilla.kernel.org/show_bug.cgi?id=214899 .
>
> Generally speaking _REG methods are executed when the ACPI-device they
> are part of has a driver bound to it. Where as _INI methods must be
> executed at table load time (according to the spec). The problem here
> is that the early acpi_install_address_space_handler() call causes
> the _REG handler to run too early.
>
> To allow fixing this the ACPICA code now allows to split the OpRegion
> handler installation and the executing of _REG into 2 separate steps.
>
> This commit uses this ACPICA functionality to fix the EC probe ordering
> by delaying the executing of _REG for ECDT described ECs till the matching
> EC device in the DSDT gets parsed and acpi_ec_add() for it gets called.
> This moves the calling of _REG for the EC on devices with an ECDT to
> the same point in time where it is called on devices without an ECDT table.
>
> Changes in v3:
> - Add a prep patch to fix an indentation issue in Linux' acpixf.h to fix
>   the patch from ACPICA's script not applying
> - Add 2 new functions to ACPICA for this instead of a flags argument
>   1. acpi_install_address_space_handler_no_reg()
>   2. acpi_execute_reg_methods()
> - Add a patch to fix EC handler removal in the ECDT case
>
> From my pov this series is ready for merging once the ACPICA changes
> are accepted.

I agree, please resubmit as soon as the upstream ACPICA pull request
gets merged.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
