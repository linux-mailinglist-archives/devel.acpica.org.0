Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BD4B24B5
	for <lists+devel-acpica@lfdr.de>; Fri, 13 Sep 2019 19:41:02 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1F6DB202E8427;
	Fri, 13 Sep 2019 10:40:54 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.31; helo=mga06.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 4006E202E291C
 for <devel@acpica.org>; Fri, 13 Sep 2019 10:40:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 10:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="179746174"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga008.jf.intel.com with ESMTP; 13 Sep 2019 10:40:58 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Sep 2019 10:40:58 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.57]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.180]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 10:40:58 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Ferry Toth <fntoth@gmail.com>, "Shevchenko, Andriy"
 <andriy.shevchenko@intel.com>
Thread-Topic: [PATCH] ACPICA: make acpi_load_table() return table index
Thread-Index: AQHVaUE6M44QnoJV0UqVXW85SrAmnKcoFnTQgAGaZwD///c2gIAAhhUAgAAa0gD//5ht0A==
Date: Fri, 13 Sep 2019 17:40:57 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B967AEC9@ORSMSX110.amr.corp.intel.com>
References: <20190906174605.GY2680@smile.fi.intel.com>
 <20190912080742.24642-1-nikolaus.voss@loewensteinmedical.de>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9679CE8@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1909130911180.20316@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B967ADF6@ORSMSX110.amr.corp.intel.com>
 <20190913151228.GT2680@smile.fi.intel.com>
 <7625fe37-1710-056d-fb9e-39c33fd962a1@gmail.com>
In-Reply-To: <7625fe37-1710-056d-fb9e-39c33fd962a1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjI5NGViM2YtYzI3My00OGZmLTk4YWEtY2E5ZjZlOTNkN2E1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoielBsNzBkNFlLTUxHU016cjdTYTIzajhHeWRoQkZiTFBFMmhodWx6cXFYQWdXMm1PcnBXdGgzWFpvVU1vUFZTYSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
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
Cc: "nikolaus.voss@loewensteinmedical.de"
 <nikolaus.voss@loewensteinmedical.de>, Jan Kiszka <jan.kiszka@siemens.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, Jacek
 Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Nikolaus Voss <nv@vosn.de>, "devel@acpica.org" <devel@acpica.org>, Dan
 Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



-----Original Message-----
From: Ferry Toth [mailto:fntoth@gmail.com] 
Sent: Friday, September 13, 2019 9:48 AM
To: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Moore, Robert <robert.moore@intel.com>
Cc: Nikolaus Voss <nv@vosn.de>; Schmauss, Erik <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Jacek Anaszewski <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; nikolaus.voss@loewensteinmedical.de; Jan Kiszka <jan.kiszka@siemens.com>
Subject: Re: [PATCH] ACPICA: make acpi_load_table() return table index

Hello all,

Sorry to have sent our message with cancelled e-mail address. I have correct this now.

Op 13-09-19 om 17:12 schreef Shevchenko, Andriy:
> On Fri, Sep 13, 2019 at 05:20:21PM +0300, Moore, Robert wrote:
>> -----Original Message-----
>> From: Nikolaus Voss [mailto:nv@vosn.de]
>> Sent: Friday, September 13, 2019 12:44 AM
>> To: Moore, Robert <robert.moore@intel.com>
>> Cc: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss, Erik 
>> <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Len 
>> Brown <lenb@kernel.org>; Jacek Anaszewski 
>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy 
>> <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; 
>> linux-kernel@vger.kernel.org; Ferry Toth <ftoth@telfort.nl>; 
>> nikolaus.voss@loewensteinmedical.de
>> Subject: RE: [PATCH] ACPICA: make acpi_load_table() return table 
>> index
>>
>> Bob,
>>
>> On Thu, 12 Sep 2019, Moore, Robert wrote:
>>> The ability to unload an ACPI table (especially AML tables such as
>>> SSDTs) is in the process of being deprecated in ACPICA -- since it 
>>> is also deprecated in the current ACPI specification. This is being 
>>> done because of the difficulty of deleting the namespace entries for 
>>> the table.  FYI, Windows does not properly support this function either.
>>
>> ok, I see it can be a problem to unload an AML table with all it's 
>> consequences e.g. with respect to driver unregistering in setups with 
>> complex dependencies. It will only work properly under certain 
>> conditions
>> - nevertheless acpi_tb_unload_table() is still exported in ACPICA and we should get this working as it worked before.
>>
>> AcpiTbUnloadTable is not exported, it is an internal interface only 
>> -- as recognized by the "AcpiTb".
> 
> In Linux it became a part of ABI when the
> 
> commit 772bf1e2878ecfca0d1f332071c83e021dd9cf01
> Author: Jan Kiszka <jan.kiszka@siemens.com>
> Date:   Fri Jun 9 20:36:31 2017 +0200
> 
>      ACPI: configfs: Unload SSDT on configfs entry removal
> 
> appeared in the kernel.

And the commit message explains quite well why it is an important feature:

"This allows to change SSDTs without rebooting the system.
It also allows to destroy devices again that a dynamically loaded SSDT created.

The biggest problem AFAIK is that under linux, many drivers cannot be unloaded. Also, there are many race conditions as the namespace entries "owned" by an SSDT being unloaded are deleted (out from underneath a driver).

This is widely similar to the DT overlay behavior."

>> I'm not sure that I want to change the interface to AcpiLoadTable 
>> just for something that is being deprecated. Already, we throw an 
>> ACPI_EXCEPTION if the Unload operator is encountered in the AML byte 
>> stream. The same thing with AcpiUnloadParentTable - it is being deprecated.
>>
>>      ACPI_EXCEPTION ((AE_INFO, AE_NOT_IMPLEMENTED,
>>          "AML Unload operator is not supported"));
> 

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
