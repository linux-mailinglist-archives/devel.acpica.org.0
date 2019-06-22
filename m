Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D98554F495
	for <lists+devel-acpica@lfdr.de>; Sat, 22 Jun 2019 11:04:47 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 62E68212741EC;
	Sat, 22 Jun 2019 02:04:46 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.167.196; helo=mail-oi1-f196.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id A2AE621219AE5
 for <devel@acpica.org>; Sat, 22 Jun 2019 02:04:44 -0700 (PDT)
Received: by mail-oi1-f196.google.com with SMTP id e189so6315107oib.11
 for <devel@acpica.org>; Sat, 22 Jun 2019 02:04:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=znnrmmd5ezgQQoLVi1c3W8tP7JtD4QP2MPjjSsJDXVU=;
 b=lKRvbUfOHxtKADkLpSXk8up9Hy1qEVr9l/1mXvUXp/YEmUw0hR+BTPPk6G1ePH3SAj
 Sa0NNNEKmJr4hpeyoYVPfGesNBBm+OEvC687ghVt48J0fhtSi4rLqxSf3Yk+kJRNdb7H
 SLQ9YEZpTmLomsxKoHEZtCItj8wlRn8dJF/0H73j2HoIDzFAu1zWO9R2odEourCTT6wP
 53F9eT0GriwbF9rN9EfYxMp/CeErlXrEtHYwi+diTv5WozZdsmND8XDYV8H5q1HylU4/
 rJuy/lUUEYHwDjVpqOib7IFCpAepYr0CD908vlWTesqImlUyGbpSpmA66GFDoFL9oFMu
 zVtw==
X-Gm-Message-State: APjAAAXIeMd5rrL9lEGCF0RQDUsgwIv7SRAEEnP/sIbAMbL5tSRdyHl6
 vbMvJ8+DPFuuI2GZXivNplRweOPcZ/2eTS9Lfes=
X-Google-Smtp-Source: APXvYqyrO8swJV7vX2S8SGUP+QsEI2mkcYtZ8Pxi8Q9z7YEX829B2FvfF+OUbjnxitwSAZE78Re+Rc1Pt8gdkXlN8ks=
X-Received: by 2002:aca:4e89:: with SMTP id c131mr5281987oib.57.1561194283551; 
 Sat, 22 Jun 2019 02:04:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <e2a4ddfd93a904b50b7ccc074e00e14dc4661963.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <CAJZ5v0jqxWs=PPik-TCDqQiyxCSyRP7HTue1WsdWP9e-nik2eA@mail.gmail.com>
 <alpine.DEB.2.20.1906141114490.6579@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95EFB26@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906170746150.12344@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95F9EC6@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906181030240.24846@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95FB0BA@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906191123400.34742@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95FC28D@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906200843320.9673@fox.voss.local>
In-Reply-To: <alpine.DEB.2.20.1906200843320.9673@fox.voss.local>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 22 Jun 2019 11:04:32 +0200
Message-ID: <CAJZ5v0gtG5mcBwMB7mZ2aooBnJmL7fmx=QpoeMTDpbbHrue6OA@mail.gmail.com>
To: Nikolaus Voss <nv@vosn.de>, "Moore, Robert" <robert.moore@intel.com>
Subject: Re: [Devel] [PATCH v2 1/3] ACPI: Resolve objects on host-directed
 table loads
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Thu, Jun 20, 2019 at 8:49 AM Nikolaus Voss <nv@vosn.de> wrote:
>
> On Wed, 19 Jun 2019, Moore, Robert wrote:
> >
> >
> >> -----Original Message-----
> >> From: Nikolaus Voss [mailto:nv@vosn.de]
> >> Sent: Wednesday, June 19, 2019 2:31 AM
> >> To: Moore, Robert <robert.moore@intel.com>
> >> Cc: Rafael J. Wysocki <rafael@kernel.org>; Rafael J. Wysocki
> >> <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Schmauss, Erik
> >> <erik.schmauss@intel.com>; Jacek Anaszewski
> >> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy
> >> <dmurphy@ti.com>; Thierry Reding <thierry.reding@gmail.com>; ACPI Devel
> >> Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT
> >> ARCHITECTURE (ACPICA) <devel@acpica.org>; linux-leds@vger.kernel.org;
> >> Linux PWM List <linux-pwm@vger.kernel.org>; Linux Kernel Mailing List
> >> <linux-kernel@vger.kernel.org>; nikolaus.voss@loewensteinmedical.de
> >> Subject: RE: [PATCH v2 1/3] ACPI: Resolve objects on host-directed table
> >> loads
> >>
> >> Hi Bob,
> >>
> >> On Tue, 18 Jun 2019, Moore, Robert wrote:
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: Moore, Robert
> >>>> Sent: Tuesday, June 18, 2019 1:25 PM
> >>>> To: 'Nikolaus Voss' <nv@vosn.de>
> >>>> Cc: 'Rafael J. Wysocki' <rafael@kernel.org>; 'Rafael J. Wysocki'
> >>>> <rjw@rjwysocki.net>; 'Len Brown' <lenb@kernel.org>; Schmauss, Erik
> >>>> <erik.schmauss@intel.com>; 'Jacek Anaszewski'
> >>>> <jacek.anaszewski@gmail.com>; 'Pavel Machek' <pavel@ucw.cz>; 'Dan
> >>>> Murphy' <dmurphy@ti.com>; 'Thierry Reding'
> >>>> <thierry.reding@gmail.com>; 'ACPI Devel Maling List'
> >>>> <linux-acpi@vger.kernel.org>; 'open list:ACPI COMPONENT ARCHITECTURE
> >>>> (ACPICA)' <devel@acpica.org>; 'linux- leds@vger.kernel.org' <linux-
> >> leds@vger.kernel.org>; 'Linux PWM List'
> >>>> <linux-pwm@vger.kernel.org>; 'Linux Kernel Mailing List' <linux-
> >>>> kernel@vger.kernel.org>
> >>>> Subject: RE: [PATCH v2 1/3] ACPI: Resolve objects on host-directed
> >>>> table loads
> >>>>
> >>>> If it is in fact the AcpiLoadTable interface that is incorrect, that
> >>>> of course is different. I'll check that out next.
> >>>>
> >>> [Moore, Robert]
> >>>
> >>> Yes, this is the issue, not specifically the Load() operator, but the
> >>> AcpiLoadTable interface only.
> >>
> >> thanks for checking this out. So what is the conclusion? Is my fix of
> >> AcpiLoadTable() sufficient or do we need a different solution?
> >>
> >> Niko
> >>
> >
> >
> > Your change is in the correct area. We want to do something like this, however:
> >
> > diff --git a/source/components/executer/exconfig.c b/source/components/executer/exconfig.c
> > index 84a058ada..eba1a6d28 100644
> > --- a/source/components/executer/exconfig.c
> > +++ b/source/components/executer/exconfig.c
> > @@ -342,10 +342,9 @@ AcpiExLoadTableOp (
> >         return_ACPI_STATUS (Status);
> >     }
> >
> > -    /* Complete the initialization/resolution of package objects */
> > +    /* Complete the initialization/resolution of new objects */
> >
> > -    Status = AcpiNsWalkNamespace (ACPI_TYPE_PACKAGE, ACPI_ROOT_OBJECT,
> > -        ACPI_UINT32_MAX, 0, AcpiNsInitOnePackage, NULL, NULL, NULL);
> > +    AcpiNsInitializeObjects ();
> >
> >     /* Parameter Data (optional) */
> >
> > @@ -620,10 +619,11 @@ AcpiExLoadOp (
> >         return_ACPI_STATUS (Status);
> >     }
> >
> > -    /* Complete the initialization/resolution of package objects */
> > +    /* Complete the initialization/resolution of new objects */
> >
> > -    Status = AcpiNsWalkNamespace (ACPI_TYPE_PACKAGE, ACPI_ROOT_OBJECT,
> > -        ACPI_UINT32_MAX, 0, AcpiNsInitOnePackage, NULL, NULL, NULL);
> > +    AcpiExExitInterpreter ();
> > +    AcpiNsInitializeObjects ();
> > +    AcpiExEnterInterpreter ();
> >
> >     /* Store the DdbHandle into the Target operand */
> >
> > diff --git a/source/components/tables/tbxfload.c b/source/components/tables/tbxfload.c
> > index 217d54bf0..1e17db6c8 100644
> > --- a/source/components/tables/tbxfload.c
> > +++ b/source/components/tables/tbxfload.c
> > @@ -479,6 +479,13 @@ AcpiLoadTable (
> >     ACPI_INFO (("Host-directed Dynamic ACPI Table Load:"));
> >     Status = AcpiTbInstallAndLoadTable (ACPI_PTR_TO_PHYSADDR (Table),
> >         ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL, FALSE, &TableIndex);
> > +    if (ACPI_SUCCESS (Status))
> > +    {
> > +        /* Complete the initialization/resolution of new objects */
> > +
> > +        AcpiNsInitializeObjects ();
> > +    }
> > +
> >     return_ACPI_STATUS (Status);
> > }
>
> Ok, I see your are taking this up (I was a bit unsure after your previous
> post). Thanks,

The $subject patch has been queued for 5.3.  If I should drop it,
please let me know.

Thanks!
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
