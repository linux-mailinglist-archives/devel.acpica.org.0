Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4479DB21C9
	for <lists+devel-acpica@lfdr.de>; Fri, 13 Sep 2019 16:20:26 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D7AC7202EA3E0;
	Fri, 13 Sep 2019 07:20:18 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.136; helo=mga12.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id D4003202E842C
 for <devel@acpica.org>; Fri, 13 Sep 2019 07:20:17 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 07:20:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="185111065"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2019 07:20:22 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Sep 2019 07:20:22 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.57]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.217]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 07:20:22 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Nikolaus Voss <nv@vosn.de>
Thread-Topic: [PATCH] ACPICA: make acpi_load_table() return table index
Thread-Index: AQHVaUE6M44QnoJV0UqVXW85SrAmnKcoFnTQgAGaZwD///c2gA==
Date: Fri, 13 Sep 2019 14:20:21 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B967ADF6@ORSMSX110.amr.corp.intel.com>
References: <20190906174605.GY2680@smile.fi.intel.com>
 <20190912080742.24642-1-nikolaus.voss@loewensteinmedical.de>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9679CE8@ORSMSX110.amr.corp.intel.com>
 <alpine.DEB.2.20.1909130911180.20316@fox.voss.local>
In-Reply-To: <alpine.DEB.2.20.1909130911180.20316@fox.voss.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWVkNGQxYWEtM2M4NC00MTUzLWIwMDYtMzBjYzUxNWY4ZTA3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieHFETnZUbHBtcml3MkEzS1lRaXBLSVVZdktQaHUrQkp0MnZWNFwvU1pMV1ErSUdwZ29cL1wvMjJcL3JHZDV2aVM2dmMifQ==
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
 "nikolaus.voss@loewensteinmedical.de"
 <nikolaus.voss@loewensteinmedical.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel
 Machek <pavel@ucw.cz>, Ferry Toth <ftoth@telfort.nl>,
 "devel@acpica.org" <devel@acpica.org>, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



-----Original Message-----
From: Nikolaus Voss [mailto:nv@vosn.de] 
Sent: Friday, September 13, 2019 12:44 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Jacek Anaszewski <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; Ferry Toth <ftoth@telfort.nl>; nikolaus.voss@loewensteinmedical.de
Subject: RE: [PATCH] ACPICA: make acpi_load_table() return table index

Bob,

On Thu, 12 Sep 2019, Moore, Robert wrote:
> The ability to unload an ACPI table (especially AML tables such as
> SSDTs) is in the process of being deprecated in ACPICA -- since it is 
> also deprecated in the current ACPI specification. This is being done 
> because of the difficulty of deleting the namespace entries for the 
> table.  FYI, Windows does not properly support this function either.

ok, I see it can be a problem to unload an AML table with all it's consequences e.g. with respect to driver unregistering in setups with complex dependencies. It will only work properly under certain conditions
- nevertheless acpi_tb_unload_table() is still exported in ACPICA and we should get this working as it worked before.

AcpiTbUnloadTable is not exported, it is an internal interface only -- as recognized by the "AcpiTb". I'm not sure that I want to change the interface to AcpiLoadTable just for something that is being deprecated. Already, we throw an ACPI_EXCEPTION if the Unload operator is encountered in the AML byte stream. The same thing with AcpiUnloadParentTable - it is being deprecated.


    ACPI_EXCEPTION ((AE_INFO, AE_NOT_IMPLEMENTED,
        "AML Unload operator is not supported"));


The API change I request is not directly related to table unloading, it's just that the index of the loaded table is returned for future reference:

[...]

>> diff --git a/include/acpi/acpixf.h b/include/acpi/acpixf.h index 
>> 3845c8fcc94e5..c90bbdc4146a6 100644
>> --- a/include/acpi/acpixf.h
>> +++ b/include/acpi/acpixf.h
>> @@ -452,7 +452,8 @@ ACPI_EXTERNAL_RETURN_STATUS(acpi_status ACPI_INIT_FUNCTION
>> 					       u8 physical))
>>
>> ACPI_EXTERNAL_RETURN_STATUS(acpi_status
>> -			    acpi_load_table(struct acpi_table_header *table))
>> +			    acpi_load_table(struct acpi_table_header *table,
>> +					    u32 *table_idx))
>>
>> ACPI_EXTERNAL_RETURN_STATUS(acpi_status
>> 			    acpi_unload_parent_table(acpi_handle object))
>> --
>> 2.17.1
>>

This allows for a simple fix of the regression and doesn't imply future support for table unloading. Would this be acceptable?

Niko
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
