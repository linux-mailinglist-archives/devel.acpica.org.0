Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF74ABD8
	for <lists+devel-acpica@lfdr.de>; Tue, 18 Jun 2019 22:31:57 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 22DE0212963EE;
	Tue, 18 Jun 2019 13:31:56 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.100; helo=mga07.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 3C0DF21962301
 for <devel@acpica.org>; Tue, 18 Jun 2019 13:31:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 13:31:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="161848074"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jun 2019 13:31:53 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Jun 2019 13:31:52 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.92]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.80]) with mapi id 14.03.0439.000;
 Tue, 18 Jun 2019 13:31:52 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Nikolaus Voss <nv@vosn.de>
Thread-Topic: [PATCH v2 1/3] ACPI: Resolve objects on host-directed table loads
Thread-Index: AQHVIPn/qqDB5Bv4z0aSsleXlAnDw6abVhaAgAADpwD///G0sIAEkokAgACES6CAAT+dAIAANdnAgAALWnCAAAJ3oIAAAgmg
Date: Tue, 18 Jun 2019 20:31:52 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B95FB0BA@ORSMSX110.amr.corp.intel.com>
References: <cover.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <e2a4ddfd93a904b50b7ccc074e00e14dc4661963.1560327219.git.nikolaus.voss@loewensteinmedical.de>
 <CAJZ5v0jqxWs=PPik-TCDqQiyxCSyRP7HTue1WsdWP9e-nik2eA@mail.gmail.com>
 <alpine.DEB.2.20.1906141114490.6579@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95EFB26@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906170746150.12344@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B95F9EC6@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1906181030240.24846@fox.voss.local>   
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



> -----Original Message-----
> From: Moore, Robert
> Sent: Tuesday, June 18, 2019 1:25 PM
> To: 'Nikolaus Voss' <nv@vosn.de>
> Cc: 'Rafael J. Wysocki' <rafael@kernel.org>; 'Rafael J. Wysocki'
> <rjw@rjwysocki.net>; 'Len Brown' <lenb@kernel.org>; Schmauss, Erik
> <erik.schmauss@intel.com>; 'Jacek Anaszewski'
> <jacek.anaszewski@gmail.com>; 'Pavel Machek' <pavel@ucw.cz>; 'Dan
> Murphy' <dmurphy@ti.com>; 'Thierry Reding' <thierry.reding@gmail.com>;
> 'ACPI Devel Maling List' <linux-acpi@vger.kernel.org>; 'open list:ACPI
> COMPONENT ARCHITECTURE (ACPICA)' <devel@acpica.org>; 'linux-
> leds@vger.kernel.org' <linux-leds@vger.kernel.org>; 'Linux PWM List'
> <linux-pwm@vger.kernel.org>; 'Linux Kernel Mailing List' <linux-
> kernel@vger.kernel.org>
> Subject: RE: [PATCH v2 1/3] ACPI: Resolve objects on host-directed table
> loads
> 
> If it is in fact the AcpiLoadTable interface that is incorrect, that of
> course is different. I'll check that out next.
> 
[Moore, Robert] 

Yes, this is the issue, not specifically the Load() operator, but the AcpiLoadTable interface only.

> 
> > -----Original Message-----
> > From: Moore, Robert
> > Sent: Tuesday, June 18, 2019 1:23 PM
> > To: 'Nikolaus Voss' <nv@vosn.de>
> > Cc: 'Rafael J. Wysocki' <rafael@kernel.org>; 'Rafael J. Wysocki'
> > <rjw@rjwysocki.net>; 'Len Brown' <lenb@kernel.org>; Schmauss, Erik
> > <erik.schmauss@intel.com>; 'Jacek Anaszewski'
> > <jacek.anaszewski@gmail.com>; 'Pavel Machek' <pavel@ucw.cz>; 'Dan
> > Murphy' <dmurphy@ti.com>; 'Thierry Reding' <thierry.reding@gmail.com>;
> > 'ACPI Devel Maling List' <linux-acpi@vger.kernel.org>; 'open list:ACPI
> > COMPONENT ARCHITECTURE (ACPICA)' <devel@acpica.org>; 'linux-
> > leds@vger.kernel.org' <linux-leds@vger.kernel.org>; 'Linux PWM List'
> > <linux-pwm@vger.kernel.org>; 'Linux Kernel Mailing List' <linux-
> > kernel@vger.kernel.org>
> > Subject: RE: [PATCH v2 1/3] ACPI: Resolve objects on host-directed
> > table loads
> >
> > It looks to me that the package objects are being initialized properly
> > already, unless I'm missing something. Please check the examples below
> > and in the attached files.
> >
> > Attached is a small test case that dynamically loads an SSDT which
> > contains a package object which in turn contains references to other
> > objects.
> >
> >
> > Main DSDT:
> >     Method (LD1)
> >     {
> >         Load (BUF1, HNDL)      // SSDT is in BUF1
> >         Store (HNDL, Debug)
> >         Return
> >     }
> >
> > Loaded table:
> >     External (DEV1, DeviceObj)
> >     Name (PKG1, Package() {
> >         1,2, DEV2, DEV1, 4})
> >     Device (DEV2) {}
> >
> >
> > AcpiExec Output:
> > - ev ld1
> > Evaluating \LD1
> > ACPI: Dynamic OEM Table Load:
> > ACPI: SSDT 0x00000000006DEEB8 000051 (v02 Intel  Load     00000001
> INTL
> > 20190509)
> > ACPI Exec: Table Event INSTALL, [SSDT] 006DEEB8
> > Table [SSDT: Load    ] (id 06) -    5 Objects with   1 Devices,   0
> > Regions,    1 Methods
> > ACPI Exec: Table Event LOAD, [SSDT] 006DEEB8 ACPI Debug:  Reference
> > [DdbHandle] Table Index 0x3
> > 0x7 Outstanding allocations after evaluation of \LD1 Evaluation of
> > \LD1 returned object 006D2FE8, external buffer length 18
> >   [Integer] = 0000000000000000
> >
> > - ev pkg1
> > Evaluating \PKG1
> > Evaluation of \PKG1 returned object 006D2FE8, external buffer length
> 90
> >   [Package] Contains 5 Elements:
> >     [Integer] = 0000000000000001
> >     [Integer] = 0000000000000002
> >     [Object Reference] = 006DDF88 <Node>            Name DEV2 Device
> >     [Object Reference] = 006DD608 <Node>            Name DEV1 Device
> >     [Integer] = 0000000000000004

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
