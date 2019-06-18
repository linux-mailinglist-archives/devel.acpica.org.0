Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 137B84AB0A
	for <lists+devel-acpica@lfdr.de>; Tue, 18 Jun 2019 21:35:21 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9D7C821289D8C;
	Tue, 18 Jun 2019 12:35:19 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.151; helo=mga17.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id C20D82121C136
 for <devel@acpica.org>; Tue, 18 Jun 2019 12:35:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 12:35:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="334966154"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga005.jf.intel.com with ESMTP; 18 Jun 2019 12:35:17 -0700
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Jun 2019 12:35:17 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.92]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.7]) with mapi id 14.03.0439.000;
 Tue, 18 Jun 2019 12:35:17 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Nikolaus Voss <nv@vosn.de>
Thread-Topic: [PATCH v2 1/3] ACPI: Resolve objects on host-directed table loads
Thread-Index: AQHVIPn/qqDB5Bv4z0aSsleXlAnDw6abVhaAgAADpwD///G0sIAEkokAgACES6CAAT+dAIAANdnA
Date: Tue, 18 Jun 2019 19:35:16 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B95FB032@ORSMSX110.amr.corp.intel.com>
References: <cover.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <e2a4ddfd93a904b50b7ccc074e00e14dc4661963.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <CAJZ5v0jqxWs=PPik-TCDqQiyxCSyRP7HTue1WsdWP9e-nik2eA@mail.gmail.com>
 <alpine.DEB.2.20.1906141114490.6579@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95EFB26@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906170746150.12344@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95F9EC6@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906181030240.24846@fox.voss.local>
In-Reply-To: <alpine.DEB.2.20.1906181030240.24846@fox.voss.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWYzNDM4MzQtOGVmNS00ZTRiLWJkZTktZDExNTM1YTg5ZDk3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoialA3Y1d2Z3ZkMnZ2VUpzaXc3aDBTaWxGMFFmdEE4QUdvRCtYSHUrWWozN0g3cnRLckZMc1hwbEdXZkdmditHZiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

I'm looking at this. We've changed the initialization of objects in the namespace recently, so I'm checking this out.


> -----Original Message-----
> From: Nikolaus Voss [mailto:nv@vosn.de]
> Sent: Tuesday, June 18, 2019 2:22 AM
> To: Moore, Robert <robert.moore@intel.com>
> Cc: Rafael J. Wysocki <rafael@kernel.org>; Rafael J. Wysocki
> <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Schmauss, Erik
> <erik.schmauss@intel.com>; Jacek Anaszewski
> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy
> <dmurphy@ti.com>; Thierry Reding <thierry.reding@gmail.com>; ACPI Devel
> Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT
> ARCHITECTURE (ACPICA) <devel@acpica.org>; linux-leds@vger.kernel.org;
> Linux PWM List <linux-pwm@vger.kernel.org>; Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org>
> Subject: RE: [PATCH v2 1/3] ACPI: Resolve objects on host-directed table
> loads
> 
> On Mon, 17 Jun 2019, Moore, Robert wrote:
> >> -----Original Message-----
> >> From: Nikolaus Voss [mailto:nv@vosn.de]
> >> Sent: Sunday, June 16, 2019 11:24 PM
> >> To: Moore, Robert <robert.moore@intel.com>
> >> Cc: Rafael J. Wysocki <rafael@kernel.org>; Rafael J. Wysocki
> >> <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Schmauss, Erik
> >> <erik.schmauss@intel.com>; Jacek Anaszewski
> >> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy
> >> <dmurphy@ti.com>; Thierry Reding <thierry.reding@gmail.com>; ACPI
> >> Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI
> >> COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>;
> >> linux-leds@vger.kernel.org; Linux PWM List
> >> <linux-pwm@vger.kernel.org>; Linux Kernel Mailing List
> >> <linux-kernel@vger.kernel.org>; nikolaus.voss@loewensteinmedical.de
> >> Subject: RE: [PATCH v2 1/3] ACPI: Resolve objects on host-directed
> >> table loads
> >>
> >> Bob,
> >>
> >> On Fri, 14 Jun 2019, Moore, Robert wrote:
> >>>
> >>>
> >>> -----Original Message-----
> >>> From: Nikolaus Voss [mailto:nv@vosn.de]
> >>> Sent: Friday, June 14, 2019 2:26 AM
> >>> To: Rafael J. Wysocki <rafael@kernel.org>
> >>> Cc: Rafael J. Wysocki <rjw@rjwysocki.net>; Len Brown
> >>> <lenb@kernel.org>; Moore, Robert <robert.moore@intel.com>; Schmauss,
> >>> Erik <erik.schmauss@intel.com>; Jacek Anaszewski
> >>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan
> >>> Murphy <dmurphy@ti.com>; Thierry Reding <thierry.reding@gmail.com>;
> >>> ACPI Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI
> >>> COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>;
> >>> linux-leds@vger.kernel.org; Linux PWM List
> >>> <linux-pwm@vger.kernel.org>; Linux Kernel Mailing List
> >>> <linux-kernel@vger.kernel.org>
> >>> Subject: Re: [PATCH v2 1/3] ACPI: Resolve objects on host-directed
> >>> table loads
> >>>
> >>> Hi Rafael,
> >>>
> >>> On Fri, 14 Jun 2019, Rafael J. Wysocki wrote:
> >>>> On Wed, Jun 12, 2019 at 10:36 AM Nikolaus Voss
> >>>> <nikolaus.voss@loewensteinmedical.de> wrote:
> >>>>>
> >>>>> If an ACPI SSDT overlay is loaded after built-in tables have been
> >>>>> loaded e.g. via configfs or efivar_ssdt_load() it is necessary to
> >>>>> rewalk the namespace to resolve references. Without this, relative
> >>>>> and absolute paths like ^PCI0.SBUS or \_SB.PCI0.SBUS are not
> >>>>> resolved correctly.
> >>>>>
> >>>>> Make configfs load use the same method as efivar_ssdt_load().
> >>>>>
> >>>>> Signed-off-by: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
> >>>>
> >>>> This is fine by me, so
> >>>>
> >>>> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >>>>
> >>>> Or if you want me to take this patch (without the other two in the
> >>>> series), please let me know.
> >>>
> >>> thanks. I think it would be the best if you take up this patch as it
> >>> is an independent topic. In retrospect it wasn't a good idea to put
> >>> it into this series.
> >>>
> >>> Kind regards,
> >>> Niko
> >>>
> >>> I would have to ask, why is additional code needed for package
> >>> initialization/resolution? It already happens elsewhere in acpica.
> >>> Bob
> >>
> >> for built-in tables loaded via acpi_ex_load_table_op() everything is
> >> fine, because after acpi_tb_load_table() acpi_ns_walk_namespace() is
> >> called to resolve references.
> >>
> >> My fix only affects tables loaded dynamically via either
> >> acpi_configfs driver (for debugging purposes) or efivar_ssdt_load()
> >> (to specify a table on the kernel's command line). They use
> >> acpi_load_table() to load the table from a caller-owned buffer. To
> >> resolve the references, it is again necessary to rewalk the
> >> namespace, which was simply missing in acpi_load_table().
> >>
> > [Moore, Robert]
> >
> > Perhaps you should call AcpiInitializeObjects after the call to
> > AcpiLoadTable, but I will check.
> 
> My usage of acpi_load_table() is to load a SSDT which is the intended
> use of this method according to its description. And my expectation is
> that the package objects of the loaded table are initialized when this
> function successfully returns so it aligns with the behavior of
> acpi_ex_load_table_op() for built-in SSDTs. Otherwise there would be no
> point in having this function at all, because
> acpi_tb_install_and_load_table() could be called directly without any
> difference.
> 
> Niko
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
