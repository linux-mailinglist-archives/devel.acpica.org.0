Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 642A015359
	for <lists+devel-acpica@lfdr.de>; Mon,  6 May 2019 20:04:01 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D9A212122B97D;
	Mon,  6 May 2019 11:03:59 -0700 (PDT)
X-Original-To: Devel@acpica.org
Delivered-To: Devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.93; helo=mga11.intel.com;
 envelope-from=erik.schmauss@intel.com; receiver=devel@acpica.org 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 8F6DB2121AA3A
 for <Devel@acpica.org>; Mon,  6 May 2019 11:03:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 11:03:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="141897026"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga006.jf.intel.com with ESMTP; 06 May 2019 11:03:57 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.68]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.121]) with mapi id 14.03.0415.000;
 Mon, 6 May 2019 11:03:56 -0700
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: Anthony Jenkins <Scoobi_doo@yahoo.com>, "freebsd-acpi@FreeBSD.org"
 <freebsd-acpi@FreeBSD.org>, "Devel@acpica.org" <Devel@acpica.org>, "Moore,
 Robert" <robert.moore@intel.com>, Jung-uk Kim <jkim@FreeBSD.org>
Thread-Topic: [Devel] iasl -d and duplicate symbols (ACPI Error:
 AE_ALREADY_EXISTS)
Thread-Index: AQHVBBIGUWvmOe/ji0KlLczOxNUn7aZeXybw
Date: Mon, 6 May 2019 18:03:56 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C5A994E@ORSMSX122.amr.corp.intel.com>
References: <1e3328ab-0b00-7abf-7182-b4291f18f197@yahoo.com>
In-Reply-To: <1e3328ab-0b00-7abf-7182-b4291f18f197@yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDJjMjg2OTUtMzQyNy00MWYwLWEzZTItYmFkZjI2YTkyNmE1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZVNqXC8yVGRZKzFXSEVoR2xrYUNocGtNK0MyTTk3dWp6Rzc1VzFMaE5aN3BRU29nNUFzRk8wN0RoQXRpd2JDeWEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Devel] iasl -d and duplicate symbols (ACPI Error:
 AE_ALREADY_EXISTS)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



> -----Original Message-----
> From: Devel [mailto:devel-bounces@acpica.org] On Behalf Of Anthony
> Jenkins
> Sent: Monday, May 6, 2019 6:45 AM
> To: freebsd-acpi@FreeBSD.org; Devel@acpica.org
> Subject: [Devel] iasl -d and duplicate symbols (ACPI Error:
> AE_ALREADY_EXISTS)
> 
> Hi all,
> 
> I am trying to patch the ACPI tables on my Dell XPS 15 9570 running FreeBSD
> 13.0-CURRENT @ git commit 68c8581f772. 'acpidump -d -t' gives error
> AE_ALREADY_EXISTS when trying to add symbol
> \_SB.PCI0.XHC.RHUB.HS01._UPC.?? Google says this is because my BIOS' set
> of ACPI tables contains two duplicate tables, and it fails to add symbols from
> the 2nd table because they already exist from the 1st.
> 
[Schmauss, Erik] 
+JK
Hi,

> Q: By "duplicate table", does this mean the entire body of the table
> (excluding its header) is duplicated?

It depends. A single table can declare multiple named objects. This message indicates that these symbols have been declared in multiple tables. If the entire body of the table is duplicated you should get a lot of these errors. However, it does not necessarily mean that there are duplicate tables. Some content may be different.

> 
> What's the standard practice for handling this error? I assume I have to:
> 
In order to solve this issue, it must be done in the firmware. Please make sure that you have the latest firmware from dell.

Once you do, please attach a dmesg of free BSD booting with the latest firmware. The dmesg should also contain these ACPI errors.

There are similar issues with Linux that I've been seeing but I would like to make sure that you have their latest firmware before involving dell...

>  1. Identify the two duplicate tables
>  2. Tell 'iasl -d' (which is what 'acpidump' calls to do the
>     disassembly) to exclude one of the two tables
> 
> I have no idea how to do either of these two tasks with the set of acpica tools
> I have (iasl version 20190108)...anyone have any pointers?
> 
> Is there a way to extract (using acpica tools) the body of a single named ACPI
> table?

No
> 
> I have some ideas for patches to acpica to help with this increasingly common
> issue:
> 
>   * Patch iasl(1) to emit more information about the origins of the
>     symbols it parses, such that an AE_ALREADY_EXISTS error would also
>     emit the origin (table name) of the existing symbol and that of the
>     current table it's trying to add.
>   * Patch iasl(1) to add a user option (flag) to ignore tables with
>     duplicate symbols, possibly adding a parameter indicating number of
>     duplicates or percentage of duplication before dropping that table.
> 
> Would any/all of these patches be useful/considered for acceptance into
> acpica?

Possibly, I think the second option hides things from the user which can be even more confusing.
First option seems better but it might be non-trivial. I'll bring it up with Bob.

I hope this helps. Let me know if you have any other questions

Erik

> 
> Thanks in advance,
> Anthony Jenkins
> 
> _______________________________________________
> Devel mailing list
> Devel@acpica.org
> https://lists.acpica.org/mailman/listinfo/devel
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
