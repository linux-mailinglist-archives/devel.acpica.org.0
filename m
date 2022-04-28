Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E411451344E
	for <lists+devel-acpica@lfdr.de>; Thu, 28 Apr 2022 14:59:38 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5EACC100EAB58;
	Thu, 28 Apr 2022 05:59:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.176; helo=mail-yw1-f176.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EDA1B100EAB51
	for <devel@acpica.org>; Thu, 28 Apr 2022 05:59:34 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2f863469afbso27916647b3.0
        for <devel@acpica.org>; Thu, 28 Apr 2022 05:59:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QqcO2kThjHX72S0GrLqoVL54e+uWDgS1FBw6hUyAQR8=;
        b=Hy10wp8G5SNHabI9qtYEpNYeWweg+E+677qotFrbDewIGK3nTXxXWafCxc3DEcP51X
         THsbFwm9FsGk4HYFURH5vPfrMLaZWxTIbcEzTAyQKztklTD7ItC1hSt+psbtzYrcJFla
         C4FKm3MNVViUVswH50bQF49dGwmyx17OBU+BSmXE9kMCcXPGE9oUZRkuD+BswMwbuDaL
         fPc1EJidABmQmFrZSu6mYFGzxc1uKYqWtP5Xz1AaF4PvLKokpdIPL1rYpvAPW2pdX6G+
         5G/O1eetUlwfKIABSUcD5PWhKJ1iPl46zUQrEtI8Y+hP2q6EYES4B4LSS0zOjnGFQsOQ
         nvOg==
X-Gm-Message-State: AOAM533+R68od9PZamMDeBGSBXitpcdF6SvwtGafF/zmowdvyL085Xfa
	RwS599ntgKXuuOT46klWm+6Ym0qcTQx7tXQPNoI=
X-Google-Smtp-Source: ABdhPJxJ0dypJZK7gDh+gu9fTCXIIC8pFRXIF+LxiWhAUl0porMQBvWDZaFUoonzskf5qRw8xw2zNp1pDPTwieBlNkM=
X-Received: by 2002:a81:260a:0:b0:2f4:ca82:a42f with SMTP id
 m10-20020a81260a000000b002f4ca82a42fmr32854404ywm.149.1651150773540; Thu, 28
 Apr 2022 05:59:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220427104957.956673-1-sakari.ailus@linux.intel.com>
 <CAJZ5v0ivSqJeMEYtJGQ7_Cic88L=H4Vc1k8by4hi6rP3_wXz3g@mail.gmail.com> <Ymmriu0wN04o4s0/@paasikivi.fi.intel.com>
In-Reply-To: <Ymmriu0wN04o4s0/@paasikivi.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 28 Apr 2022 14:59:22 +0200
Message-ID: <CAJZ5v0iWjAV8325ObG8mn3Wam9BMaRuNxp6JNYcRxYWQd4nDxg@mail.gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Message-ID-Hash: MUZH5XOGL5YWEIHZHPG63OOCG25OGIT2
X-Message-ID-Hash: MUZH5XOGL5YWEIHZHPG63OOCG25OGIT2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 1/1] Constify AcpiGetHandle pathname argument
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MUZH5XOGL5YWEIHZHPG63OOCG25OGIT2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Apr 27, 2022 at 10:46 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Rafael,
>
> On Wed, Apr 27, 2022 at 06:35:09PM +0200, Rafael J. Wysocki wrote:
> > On Wed, Apr 27, 2022 at 12:48 PM Sakari Ailus
> > <sakari.ailus@linux.intel.com> wrote:
> > >
> > > AcpiGetHandle doesn't write to the pathname argument, therefore make it
> > > const.
> > >
> > > This allows later on passing pathname to AcpiGetHandle which is const,
> > > without creating a copy of it.
> > >
> > > Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> > > ---
> > > Hi folks,
> > >
> > > This isn't required by acpica internally as such but upcoming patches to
> > > Linux depend on it.
> >
> > I'm afraid that the kernel source cannot depart from the upstream
> > ACPICA this way, though.
>
> I'm not quite sure I follow you. I wanted to make this change to ACPICA so
> the two remain in sync.

My mistake, sorry.

It looks OK.  Please submit a pull request to the upstream project at
https://github.com/acpica/acpica and feel free to add my ACK to the
commit.

> >
> > >  source/components/namespace/nsxfname.c | 2 +-
> > >  source/include/acpixf.h                | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/source/components/namespace/nsxfname.c b/source/components/namespace/nsxfname.c
> > > index 7a7393b61..da89b2d8e 100644
> > > --- a/source/components/namespace/nsxfname.c
> > > +++ b/source/components/namespace/nsxfname.c
> > > @@ -192,7 +192,7 @@ AcpiNsCopyDeviceId (
> > >  ACPI_STATUS
> > >  AcpiGetHandle (
> > >      ACPI_HANDLE             Parent,
> > > -    ACPI_STRING             Pathname,
> > > +    const char              *Pathname,
> > >      ACPI_HANDLE             *RetHandle)
> > >  {
> > >      ACPI_STATUS             Status;
> > > diff --git a/source/include/acpixf.h b/source/include/acpixf.h
> > > index 7610f2e30..a3f7397e7 100644
> > > --- a/source/include/acpixf.h
> > > +++ b/source/include/acpixf.h
> > > @@ -766,7 +766,7 @@ ACPI_EXTERNAL_RETURN_STATUS (
> > >  ACPI_STATUS
> > >  AcpiGetHandle (
> > >      ACPI_HANDLE             Parent,
> > > -    ACPI_STRING             Pathname,
> > > +    const char              *Pathname,
> > >      ACPI_HANDLE             *RetHandle))
> > >
> > >  ACPI_EXTERNAL_RETURN_STATUS (
> > > --
> > > 2.30.2
> > >
>
> --
> Sakari Ailus
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
