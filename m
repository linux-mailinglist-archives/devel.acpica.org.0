Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C22C070CEA
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Jul 2019 01:02:06 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 19141212CFEC6;
	Mon, 22 Jul 2019 16:04:32 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.31; helo=mga06.intel.com;
 envelope-from=erik.schmauss@intel.com; receiver=devel@acpica.org 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id EBFE9212B204A
 for <devel@acpica.org>; Mon, 22 Jul 2019 16:04:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 16:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="368676008"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 16:01:19 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jul 2019 16:01:19 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.68]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.237]) with mapi id 14.03.0439.000;
 Mon, 22 Jul 2019 16:01:19 -0700
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: Maximilian Luz <luzmaximilian@gmail.com>, "Moore, Robert"
 <robert.moore@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
Thread-Topic: PROBLEM: Calling ObjectType on buffer field reports type integer
Thread-Index: AQHU2nGbL6Z+rOUTjEmNgKjiKxQRHaYLXjCwgAaMyoCAAbd1AP//x1cAgAU5pID//5K0EIC9Al0AgALU3XA=
Date: Mon, 22 Jul 2019 23:01:19 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C614AA8@ORSMSX122.amr.corp.intel.com>
References: <3ef42aa1-196d-f3db-0e5d-2fd84c198242@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C592D47@ORSMSX122.amr.corp.intel.com>
 <CF6A88132359CE47947DB4C6E1709ED53C59405C@ORSMSX122.amr.corp.intel.com>
 <fe4bcc1c-5c15-caa6-ce01-a5df962ff008@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C5942CA@ORSMSX122.amr.corp.intel.com>
 <51e156ec-c2ed-84be-13c0-99a213e1d4b7@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C595C50@ORSMSX122.amr.corp.intel.com>
 <88077d9c-b2b7-5fc6-37e9-fa12d6aebe73@gmail.com>
In-Reply-To: <88077d9c-b2b7-5fc6-37e9-fa12d6aebe73@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDhlZmQzNWMtNmMxYi00MWExLWI0MWEtYWM2ODMzNDRkNzcxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSkl0Wmk2Q3k5NGpLWHR0VnBTRWNtcFF3T2dqb2hoSXVZVndYYXRwS1MyemR2Q2RReXpjK1RwVHZoQkthamNtSiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Devel] PROBLEM: Calling ObjectType on buffer field reports
 type integer
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



> -----Original Message-----
> From: Maximilian Luz [mailto:luzmaximilian@gmail.com]
> Sent: Saturday, July 20, 2019 1:45 PM
> To: Schmauss, Erik <erik.schmauss@intel.com>; Moore, Robert
> <robert.moore@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: Re: PROBLEM: Calling ObjectType on buffer field reports type integer
> 
> On 3/22/19 10:28 PM, Schmauss, Erik wrote:
> > I've been discussing this with Bob. I've decided to file a bug against
> > Microsoft internally. I would like to wait and see what they say...
> > I've never done such things so I don't know how long the process takes to get
> a response form them.
> >
> > I'll post updates when I get them but feel free to ping us again in a
> > few weeks if you don't hear back. We're still investigating their
> > operation region behavior as well...
> >
> > Erik
> 
> Hi,
> 
> I assume there hasn't been any response from Microsoft?

Sorry about the late response. This slipped through the cracks.
I've sent them an email just now and I'll keep you informed

Thanks,
Erik
> 
> Maximilian
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
