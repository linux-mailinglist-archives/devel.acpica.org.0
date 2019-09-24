Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B50BD2E5
	for <lists+devel-acpica@lfdr.de>; Tue, 24 Sep 2019 21:41:41 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B57FB202F73C4;
	Tue, 24 Sep 2019 12:43:59 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.65; helo=mga03.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 1EDD1202EBEAD
 for <devel@acpica.org>; Tue, 24 Sep 2019 12:43:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 12:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,545,1559545200"; d="scan'208";a="195795063"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2019 12:41:28 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 24 Sep 2019 12:41:27 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.139]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.93]) with mapi id 14.03.0439.000;
 Tue, 24 Sep 2019 12:41:27 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Nikolaus Voss <nv@vosn.de>
Thread-Topic: [PATCH] ACPICA: make acpi_load_table() return table index
Thread-Index: AQHVaUE6M44QnoJV0UqVXW85SrAmnKcoFnTQgAGaZwD///c2gIAAhhUAgAAa0gD//5ht0IAEqKwAgAL5tVCAAHqlgIABR7TAgAY4uACAAc1PMA==
Date: Tue, 24 Sep 2019 19:41:26 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B968B639@ORSMSX110.amr.corp.intel.com>
References: <20190906174605.GY2680@smile.fi.intel.com>
 <20190912080742.24642-1-nikolaus.voss@loewensteinmedical.de>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9679CE8@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1909130911180.20316@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B967ADF6@ORSMSX110.amr.corp.intel.com>
 <20190913151228.GT2680@smile.fi.intel.com>
 <7625fe37-1710-056d-fb9e-39c33fd962a1@gmail.com>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B967AEC9@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1909161134070.2910@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B968327D@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1909181624550.3925@fox.voss.local>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9686438@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1909231100190.16390@fox.voss.local>
In-Reply-To: <alpine.DEB.2.20.1909231100190.16390@fox.voss.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGY3NjQyMzAtY2EwOS00OTYyLWFkZjEtNDY1MzNlN2ZkODk0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTWI4NEZ1YWJTblNJRllLN2o2UVJQNU92NDUwUEVyMVJYRUdtVFpwNXVTVzdsbzVQa1djeWZRVUhLeG9sZ2laOCJ9
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
Cc: "Shevchenko, Andriy" <andriy.shevchenko@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Ferry Toth <fntoth@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, Jacek
 Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Jan Kiszka <jan.kiszka@siemens.com>, "devel@acpica.org" <devel@acpica.org>,
 Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

How about this:
Go back to using acpi_tb_install_and_load_table(), but then call acpi_ns_initialize_objects afterwards This is what acpi_load_table does.


    ACPI_INFO (("Host-directed Dynamic ACPI Table Load:"));
    Status = AcpiTbInstallAndLoadTable (ACPI_PTR_TO_PHYSADDR (Table),
        ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL, FALSE, &TableIndex);
    if (ACPI_SUCCESS (Status))
    {
        /* Complete the initialization/resolution of new objects */

        AcpiNsInitializeObjects ();
    }


-----Original Message-----
From: Nikolaus Voss <nv@vosn.de> 
Sent: Monday, September 23, 2019 2:05 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Ferry Toth <fntoth@gmail.com>; Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Jacek Anaszewski <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; Jan Kiszka <jan.kiszka@siemens.com>
Subject: RE: [PATCH] ACPICA: make acpi_load_table() return table index

On Thu, 19 Sep 2019, Moore, Robert wrote:
>
>
> -----Original Message-----
> From: Nikolaus Voss [mailto:nv@vosn.de]
> Sent: Wednesday, September 18, 2019 7:32 AM
> To: Moore, Robert <robert.moore@intel.com>
> Cc: Ferry Toth <fntoth@gmail.com>; Shevchenko, Andriy 
> <andriy.shevchenko@intel.com>; Schmauss, Erik 
> <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Len 
> Brown <lenb@kernel.org>; Jacek Anaszewski 
> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy 
> <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; 
> linux-kernel@vger.kernel.org; Jan Kiszka <jan.kiszka@siemens.com>
> Subject: RE: [PATCH] ACPICA: make acpi_load_table() return table index
>
> On Wed, 18 Sep 2019, Moore, Robert wrote:
>>
>>
>> -----Original Message-----
>> From: Nikolaus Voss [mailto:nv@vosn.de]
>> Sent: Monday, September 16, 2019 2:47 AM
>> To: Moore, Robert <robert.moore@intel.com>
>> Cc: Ferry Toth <fntoth@gmail.com>; Shevchenko, Andriy 
>> <andriy.shevchenko@intel.com>; Schmauss, Erik 
>> <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Len 
>> Brown <lenb@kernel.org>; Jacek Anaszewski 
>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy 
>> <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; 
>> linux-kernel@vger.kernel.org; Jan Kiszka <jan.kiszka@siemens.com>
>> Subject: RE: [PATCH] ACPICA: make acpi_load_table() return table 
>> index
>>
>> On Fri, 13 Sep 2019, Moore, Robert wrote:
>>>
>>>
>>> -----Original Message-----
>>> From: Ferry Toth [mailto:fntoth@gmail.com]
>>> Sent: Friday, September 13, 2019 9:48 AM
>>> To: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Moore, Robert 
>>> <robert.moore@intel.com>
>>> Cc: Nikolaus Voss <nv@vosn.de>; Schmauss, Erik 
>>> <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; 
>>> Len Brown <lenb@kernel.org>; Jacek Anaszewski 
>>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan 
>>> Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org; 
>>> devel@acpica.org; linux-kernel@vger.kernel.org; 
>>> nikolaus.voss@loewensteinmedical.de;
>>> Jan Kiszka <jan.kiszka@siemens.com>
>>> Subject: Re: [PATCH] ACPICA: make acpi_load_table() return table 
>>> index
>>>
>>> Hello all,
>>>
>>> Sorry to have sent our message with cancelled e-mail address. I have correct this now.
>>>
>>> Op 13-09-19 om 17:12 schreef Shevchenko, Andriy:
>>>> On Fri, Sep 13, 2019 at 05:20:21PM +0300, Moore, Robert wrote:
>>>>> -----Original Message-----
>>>>> From: Nikolaus Voss [mailto:nv@vosn.de]
>>>>> Sent: Friday, September 13, 2019 12:44 AM
>>>>> To: Moore, Robert <robert.moore@intel.com>
>>>>> Cc: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss, 
>>>>> Erik <erik.schmauss@intel.com>; Rafael J. Wysocki 
>>>>> <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Jacek Anaszewski 
>>>>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan 
>>>>> Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org; 
>>>>> devel@acpica.org; linux-kernel@vger.kernel.org; Ferry Toth 
>>>>> <ftoth@telfort.nl>; nikolaus.voss@loewensteinmedical.de
>>>>> Subject: RE: [PATCH] ACPICA: make acpi_load_table() return table 
>>>>> index
>>>>>
>>>>> Bob,
>>>>>
>>>>> On Thu, 12 Sep 2019, Moore, Robert wrote:
>>>>>> The ability to unload an ACPI table (especially AML tables such 
>>>>>> as
>>>>>> SSDTs) is in the process of being deprecated in ACPICA -- since 
>>>>>> it is also deprecated in the current ACPI specification. This is 
>>>>>> being done because of the difficulty of deleting the namespace 
>>>>>> entries for the table.  FYI, Windows does not properly support this function either.
>>>>>
>>>>> ok, I see it can be a problem to unload an AML table with all it's 
>>>>> consequences e.g. with respect to driver unregistering in setups 
>>>>> with complex dependencies. It will only work properly under 
>>>>> certain conditions
>>>>> - nevertheless acpi_tb_unload_table() is still exported in ACPICA and we should get this working as it worked before.
>>>>>
>>>>> AcpiTbUnloadTable is not exported, it is an internal interface 
>>>>> only
>>>>> -- as recognized by the "AcpiTb".
>>>>
>>>> In Linux it became a part of ABI when the
>>>>
>>>> commit 772bf1e2878ecfca0d1f332071c83e021dd9cf01
>>>> Author: Jan Kiszka <jan.kiszka@siemens.com>
>>>> Date:   Fri Jun 9 20:36:31 2017 +0200
>>>>
>>>>      ACPI: configfs: Unload SSDT on configfs entry removal
>>>>
>>>> appeared in the kernel.
>>>
>>> And the commit message explains quite well why it is an important feature:
>>>
>>> "This allows to change SSDTs without rebooting the system.
>>> It also allows to destroy devices again that a dynamically loaded SSDT created.
>>>
>>> The biggest problem AFAIK is that under linux, many drivers cannot be unloaded. Also, there are many race conditions as the namespace entries "owned" by an SSDT being unloaded are deleted (out from underneath a driver).
>>>
>>> This is widely similar to the DT overlay behavior."
>>>
>>>>> I'm not sure that I want to change the interface to AcpiLoadTable 
>>>>> just for something that is being deprecated. Already, we throw an 
>>>>> ACPI_EXCEPTION if the Unload operator is encountered in the AML 
>>>>> byte stream. The same thing with AcpiUnloadParentTable - it is being deprecated.
>>>>>
>>>>>      ACPI_EXCEPTION ((AE_INFO, AE_NOT_IMPLEMENTED,
>>>>>          "AML Unload operator is not supported"));
>>
>> Bob, what is your suggestion to fix the regression then?
>>
>> We could revert acpi_configfs.c to use
>> acpi_tb_install_and_load_table() instead of acpi_load_table(), 
>> leaving loaded APCI objects uninitalized, but at least, unloading will work again.
>>
>> I guess my next question is: why do you want to unload a table in the 
>> first place?
>
> Because it worked before and there are people who rely on it. If it's 
> deprecated there should be a user notification and a reasonable 
> end-of-life timeline to give these users a chance to develop an 
> alternative solution.
>
> So, I still don't understand why this no longer works. We did not make 
> any purposeful changes in this area - AFAIK. Bob

It's because the acpi_configfs driver formerly used
acpi_tb_install_and_load_table() which returns the table index, but doesn't resolve the references. It now uses acpi_load_table() which resolves the references, but doesn't return the table index, so unloading doesn't work any more.

>
> Niko
>
>>
>>
>> Do we have any other options?
>>
>> Niko
>>
>
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
