Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A26FB107B4F
	for <lists+devel-acpica@lfdr.de>; Sat, 23 Nov 2019 00:29:08 +0100 (CET)
Received: from ml01.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 29750100DC2D1;
	Fri, 22 Nov 2019 15:32:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=erik.schmauss@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 404CD100DC418
	for <devel@acpica.org>; Fri, 22 Nov 2019 15:32:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Nov 2019 15:29:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600";
   d="scan'208";a="382225726"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
  by orsmga005.jf.intel.com with ESMTP; 22 Nov 2019 15:29:03 -0800
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 Nov 2019 15:29:02 -0800
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.73]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.101]) with mapi id 14.03.0439.000;
 Fri, 22 Nov 2019 15:29:02 -0800
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: "Moore, Robert" <robert.moore@intel.com>, Maximilian Luz
	<luzmaximilian@gmail.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
Thread-Topic: PROBLEM: Calling ObjectType on buffer field reports type
 integer
Thread-Index: AQHU2nGbL6Z+rOUTjEmNgKjiKxQRHaYLXjCwgAaMyoCAAbd1AP//x1cAgAU5pID//5K0EIC9Al0AgALU3XCArt/DgIASk+KAgABSrgD//47LcA==
Date: Fri, 22 Nov 2019 23:29:01 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C68481C@ORSMSX122.amr.corp.intel.com>
References: <3ef42aa1-196d-f3db-0e5d-2fd84c198242@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C592D47@ORSMSX122.amr.corp.intel.com>
 <CF6A88132359CE47947DB4C6E1709ED53C59405C@ORSMSX122.amr.corp.intel.com>
 <fe4bcc1c-5c15-caa6-ce01-a5df962ff008@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C5942CA@ORSMSX122.amr.corp.intel.com>
 <51e156ec-c2ed-84be-13c0-99a213e1d4b7@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C595C50@ORSMSX122.amr.corp.intel.com>
 <88077d9c-b2b7-5fc6-37e9-fa12d6aebe73@gmail.com>
 <CF6A88132359CE47947DB4C6E1709ED53C614AA8@ORSMSX122.amr.corp.intel.com>
 <c6511010-f160-a2ee-1b89-46df051a85e4@gmail.com>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B96B196C@ORSMSX110.amr.corp.intel.com>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B96B1A77@ORSMSX110.amr.corp.intel.com>
In-Reply-To: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96B1A77@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjQ0N2VjYWMtYTNiMS00MTI5LTgyMjQtNmMzNTc0MDYyMGZjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibTU1eVRwYzBhUWltTHlLT1N2VWtcL0lBa1hUOVJHU1JqZjV6emtaNzAreTFNNlBqRnBETGVxdmpYMjNhYitBdGwifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: PHJRCR5IHBLQ34ILDUJ3ZM5MCCXWQ3BB
X-Message-ID-Hash: PHJRCR5IHBLQ34ILDUJ3ZM5MCCXWQ3BB
X-MailFrom: erik.schmauss@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: PROBLEM: Calling ObjectType on buffer field reports type integer
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PHJRCR5IHBLQ34ILDUJ3ZM5MCCXWQ3BB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

Bob and I started debugging this and we found the issue:

Let's say that we have this code:

Name (BUF1, Buffer (0x10) {})
Method (M001)
{
    CreateField (BUF1, 1, 72, FLD0)
    local0 = FLD0 // BUG: store operator (aka =)  converts FLD0 into an integer
    return (ObjectType (local0)) // Integer is returned
}

Although FLD0's value is small enough to fit in an integer, the bit length of FLD0 exceeds 64 bits so local0 should actually be a Buffer type.

This is likely an issue in the implicit object conversion rules implemented in the store operator. I'll take a look at this next week or the week after...

Thanks for your patience,
Erik

> -----Original Message-----
> From: Moore, Robert <robert.moore@intel.com>
> Sent: Friday, November 22, 2019 2:07 PM
> To: Moore, Robert <robert.moore@intel.com>; Maximilian Luz
> <luzmaximilian@gmail.com>; Schmauss, Erik <erik.schmauss@intel.com>;
> Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: RE: PROBLEM: Calling ObjectType on buffer field reports type integer
> 
> I'm not seeing this problem. For example:
>     Method (DS01)
>     {
>         Name(BUFZ, Buffer(48){})
>         CreateField(BUFZ, 192, 69, DST0)
>         Store (ObjectType (DST0), Debug)
>     }
> 
> Acpiexec dsdt.aml
> Eval DS01
> Evaluating \DS01
> ACPI Debug:  0x000000000000000E
> 
> 0x0E is in fact type "buffer field".
> 
> 
> -----Original Message-----
> From: Moore, Robert <robert.moore@intel.com>
> Sent: Friday, November 22, 2019 9:12 AM
> To: Maximilian Luz <luzmaximilian@gmail.com>; Schmauss, Erik
> <erik.schmauss@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: [Devel] Re: PROBLEM: Calling ObjectType on buffer field reports type
> integer
> 
> We will probably make this change, depending on what Windows does.
> Bob
> 
> 
> -----Original Message-----
> From: Maximilian Luz <luzmaximilian@gmail.com>
> Sent: Sunday, November 10, 2019 1:30 PM
> To: Schmauss, Erik <erik.schmauss@intel.com>; Moore, Robert
> <robert.moore@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: Re: PROBLEM: Calling ObjectType on buffer field reports type integer
> 
> 
> On 7/23/19 1:01 AM, Schmauss, Erik wrote:
> > Sorry about the late response. This slipped through the cracks.
> > I've sent them an email just now and I'll keep you informed
> 
> Hi again,
> 
> is there any update on this?
> 
> Regards,
> 
> Maximilian
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org
> %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
