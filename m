Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C62ABFA37
	for <lists+devel-acpica@lfdr.de>; Thu, 26 Sep 2019 21:41:42 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 60F682010BCE6;
	Thu, 26 Sep 2019 12:43:45 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.151; helo=mga17.intel.com;
 envelope-from=erik.schmauss@intel.com; receiver=devel@acpica.org 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 6732E2010B846
 for <devel@acpica.org>; Thu, 26 Sep 2019 12:43:43 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 12:41:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,553,1559545200"; d="scan'208";a="273576520"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga001.jf.intel.com with ESMTP; 26 Sep 2019 12:41:37 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Sep 2019 12:41:37 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.236]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.70]) with mapi id 14.03.0439.000;
 Thu, 26 Sep 2019 12:41:37 -0700
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Nikolaus Voss <nv@vosn.de>
Thread-Topic: [PATCH] ACPICA: make acpi_load_table() return table index
Thread-Index: AQHVaUE6PwWyj3qAlUyiJ16YhgOwE6c+NeMQgAB9wgD//42XEIAAlnqAgAALqgD//41KEA==
Date: Thu, 26 Sep 2019 19:41:36 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C6492CB@ORSMSX122.amr.corp.intel.com>
References: <20190906174605.GY2680@smile.fi.intel.com>
 <20190912080742.24642-1-nikolaus.voss@loewensteinmedical.de>
 <CF6A88132359CE47947DB4C6E1709ED53C6481B1@ORSMSX122.amr.corp.intel.com>
 <20190926163528.GH32742@smile.fi.intel.com>
 <CF6A88132359CE47947DB4C6E1709ED53C6481F2@ORSMSX122.amr.corp.intel.com>
 <alpine.DEB.2.20.1909262043380.13592@fox.voss.local>
 <CAJZ5v0g=onKCidHMLNWuYFCuhcQGmtDDp5QSGiHu1jhoDRuhWQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0g=onKCidHMLNWuYFCuhcQGmtDDp5QSGiHu1jhoDRuhWQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGM4MzNjMGMtOTQ1Ny00NGJiLWE2M2QtNzYwZWRmMzVhNmQ0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieitrM0hWejN6XC9MNWF4OGkwUjFFTWFkcHMyUTQ3dzFzUXEwRnpoS1J0MXhTVXlHUXczUk82S0lnTjcrN2FmNmEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Devel] [PATCH] ACPICA: make acpi_load_table() return table
 index
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
Cc: "Shevchenko, Andriy" <andriy.shevchenko@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel
 Machek <pavel@ucw.cz>, "devel@acpica.org" <devel@acpica.org>,
 Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



> -----Original Message-----
> From: Rafael J. Wysocki <rafael@kernel.org>
> Sent: Thursday, September 26, 2019 12:26 PM
> To: Nikolaus Voss <nv@vosn.de>
> Cc: Schmauss, Erik <erik.schmauss@intel.com>; Shevchenko, Andriy
> <andriy.shevchenko@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>;
> Moore, Robert <robert.moore@intel.com>; Len Brown <lenb@kernel.org>;
> Jacek Anaszewski <jacek.anaszewski@gmail.com>; Pavel Machek
> <pavel@ucw.cz>; Dan Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org;
> devel@acpica.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ACPICA: make acpi_load_table() return table index
> 
> On Thu, Sep 26, 2019 at 8:44 PM Nikolaus Voss <nv@vosn.de> wrote:
> >
> > On Thu, 26 Sep 2019, Schmauss, Erik wrote:
> > >> -----Original Message-----
> > >> From: linux-acpi-owner@vger.kernel.org
> > >> <linux-acpi-owner@vger.kernel.org>
> > >> On Behalf Of Shevchenko, Andriy
> > >> Sent: Thursday, September 26, 2019 9:35 AM
> > >> To: Schmauss, Erik <erik.schmauss@intel.com>
> > >> Cc: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>; Rafael J.
> > >> Wysocki <rjw@rjwysocki.net>; Moore, Robert
> > >> <robert.moore@intel.com>; Len Brown <lenb@kernel.org>; Jacek
> > >> Anaszewski <jacek.anaszewski@gmail.com>; Pavel Machek
> > >> <pavel@ucw.cz>; Dan Murphy <dmurphy@ti.com>; linux-
> > >> acpi@vger.kernel.org; devel@acpica.org;
> > >> linux-kernel@vger.kernel.org; nv@vosn.de
> > >> Subject: Re: [PATCH] ACPICA: make acpi_load_table() return table
> > >> index
> > >>
> > >> On Thu, Sep 26, 2019 at 07:09:05PM +0300, Schmauss, Erik wrote:
> > >>>> -----Original Message-----
> > >>>> From: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
> > >>>> Sent: Thursday, September 12, 2019 1:08 AM
> > >>>> To: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss,
> > >>>> Erik <erik.schmauss@intel.com>; Rafael J. Wysocki
> > >>>> <rjw@rjwysocki.net>; Moore, Robert <robert.moore@intel.com>
> > >>>> Cc: Len Brown <lenb@kernel.org>; Jacek Anaszewski
> > >>>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan
> > >>>> Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org;
> > >>>> devel@acpica.org; linux- kernel@vger.kernel.org; nv@vosn.de;
> > >>>> Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
> > >>>> Subject: [PATCH] ACPICA: make acpi_load_table() return table
> > >>>> index
> > >>>>
> > >>> Hi Nikolaus,
> > >>>
> > >>>> For unloading an ACPI table, it is necessary to provide the index of the
> table.
> > >>>> The method intended for dynamically loading or hotplug addition
> > >>>> of tables, acpi_load_table(), should provide this information via
> > >>>> an optional pointer to the loaded table index.
> > >>>
> > >>> We'll take this patch for ACPICA upstream
> > >>
> > >> Erik,
> > >>
> > > Hi Andy,
> > >
> > >> how about to have also counterpart to acpi_load_table() which will
> > >> do what it's done now in acpi_configfs.c via acpi_tb_*() API?
> > >
> > > I should have given more details. We decided to add this extra
> > > parameter in AcpiLoadTable and we're going to create an
> > > AcpiUnloadTable function that will take table index to unload the
> > > table (basically the acpi_tb_unload..). Once we do this, you can use
> > > table indices with AcpiUnloadTable and AcpiLoadTable.
> >
> > that's even better news.
> >
> > Rafael, shall I prepare anything?
Hi everyone,

> I don't think so.  I'm expecting to get a proper fix from the upstream through
> the normal process.
Just so that we are on the same page:

I've backported Nikolaus's patch for upstream here https://github.com/acpica/acpica/pull/506
and Bob has implemented the new API here: https://github.com/acpica/acpica/commit/c69369cd9cf0134e1aac516e97d612947daa8dc2

Once we do a release, I will send Bob's change to the linux ACPI mailing list.
Feel free to use this new API where you see fit.

Thanks,
Erik

> 
> Thanks,
> Rafael
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
