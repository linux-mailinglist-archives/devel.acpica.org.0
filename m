Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 721C3125057
	for <lists+devel-acpica@lfdr.de>; Wed, 18 Dec 2019 19:10:04 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 35A2810113663;
	Wed, 18 Dec 2019 10:13:25 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 394B710113600
	for <devel@acpica.org>; Wed, 18 Dec 2019 10:13:24 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Dec 2019 10:10:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600";
   d="scan'208";a="390266158"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
  by orsmga005.jf.intel.com with ESMTP; 18 Dec 2019 10:10:00 -0800
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.84]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.81]) with mapi id 14.03.0439.000;
 Wed, 18 Dec 2019 10:10:00 -0800
From: "Moore, Robert" <robert.moore@intel.com>
To: Jung-uk Kim <jkim@FreeBSD.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	"Kaneda, Erik" <erik.kaneda@intel.com>
Thread-Topic: [Devel] Re: [PATCH] ACPICA: Fix compilation with bare-metal
 toolchian
Thread-Index: AQHVKT4R6lPuaJozWEa32QMz8NUStKa8TxoAgAYhEDCA91DwgIAHiLQg
Date: Wed, 18 Dec 2019 18:09:59 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96C2505@ORSMSX110.amr.corp.intel.com>
References: <CAMhj-NcA8J8rD1PC6mH+HAjBdv2H532UB5aB5-0Y6VWtUh=8-g@mail.gmail.com>
 <2847939.QcJ3fIVZhg@kreacher>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B96BFE2C@ORSMSX110.amr.corp.intel.com>
 <8ee4ecbe-f451-112e-677a-87a4d73ccdfc@FreeBSD.org>
In-Reply-To: <8ee4ecbe-f451-112e-677a-87a4d73ccdfc@FreeBSD.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTA4NjRkMTMtNjU2Yy00MzBjLWFjOTYtZmE1ZjVhNDdlYWE4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSWErbENoc3hRUlJ4dkJiVDNyN3laRjRkMlhnc1hwelc1Q1wvU2ZVNjN3andZTXhWcmZhamdISUxBSkRIdlh0cTEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Message-ID-Hash: EJBNBNGTIWJ2TDCOCEUZE4Z2OTTP6N2C
X-Message-ID-Hash: EJBNBNGTIWJ2TDCOCEUZE4Z2OTTP6N2C
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Laster K." <officiallazerl0rd@gmail.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Fix compilation with bare-metal toolchian
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EJBNBNGTIWJ2TDCOCEUZE4Z2OTTP6N2C/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Jung-uk Kim <jkim@FreeBSD.org> 
Sent: Friday, December 13, 2019 7:05 AM
To: Moore, Robert <robert.moore@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>; Kaneda, Erik <erik.kaneda@intel.com>
Cc: Laster K. <officiallazerl0rd@gmail.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; linux-acpi@vger.kernel.org; devel@acpica.org
Subject: Re: [Devel] Re: [PATCH] ACPICA: Fix compilation with bare-metal toolchian

On 19. 12. 12., Moore, Robert wrote:
>> -----Original Message-----
>> From: Rafael J. Wysocki [mailto:rjw@rjwysocki.net]
>> Sent: Friday, July 5, 2019 2:44 AM
>> To: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik 
>> <erik.schmauss@intel.com>
>> Cc: Laster K. <officiallazerl0rd@gmail.com>; Wysocki, Rafael J 
>> <rafael.j.wysocki@intel.com>; lenb@kernel.org; linux- 
>> acpi@vger.kernel.org; devel@acpica.org
>> Subject: Re: [PATCH] ACPICA: Fix compilation with bare-metal 
>> toolchian
>>
>> On Saturday, June 22, 2019 11:03:54 PM CEST Laster K. wrote:
>>> An ifdef expects to be compiled with full-fledged Linux toolchain, 
>>> but it's common to compile kernel with just bare-metal toolchain 
>>> which doesn't define __linux__. So, also add __KERNEL__ check.
>>>
> [Moore, Robert]
> This sounds OK, as long as no other supported hosts define __KERNEL__.

FreeBSD defines _KERNEL for kernel source.

I'd have to say that this sounds a bit dangerous. Is there another symbol that we can AND into an expression?

JK

>>> Signed-off-by: Laster K. (lazerl0rd) <officiallazerl0rd@gmail.com>
>>> ---
>>> Apologies for the multiple/spammed e-mails, I was having mail client
>> issues.
>>>
>>>  include/acpi/platform/acenv.h   | 2 +-
>>>  include/acpi/platform/acenvex.h | 2 +-
>>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/include/acpi/platform/acenv.h 
>>> b/include/acpi/platform/acenv.h index 35ab3f87cc29..b69319198cb8
>>> 100644
>>> --- a/include/acpi/platform/acenv.h
>>> +++ b/include/acpi/platform/acenv.h
>>> @@ -148,7 +148,7 @@
>>>
>>>  #endif
>>>
>>> -#if defined(_LINUX) || defined(__linux__)
>>> +#if defined(_LINUX) || defined(__KERNEL__) || defined(__linux__)
>>>  #include <acpi/platform/aclinux.h>
>>>
>>>  #elif defined(_APPLE) || defined(__APPLE__) diff --git 
>>> a/include/acpi/platform/acenvex.h b/include/acpi/platform/acenvex.h 
>>> index 2e36c8344897..c7697a47e33f 100644
>>> --- a/include/acpi/platform/acenvex.h
>>> +++ b/include/acpi/platform/acenvex.h
>>> @@ -19,7 +19,7 @@
>>>   *
>>>
>>> ********************************************************************
>>> **
>>> *******/
>>>
>>> -#if defined(_LINUX) || defined(__linux__)
>>> +#if defined(_LINUX) || defined(__KERNEL__) || defined(__linux__)
>>>  #include <acpi/platform/aclinuxex.h>
>>>
>>>  #elif defined(__DragonFly__)
>>>
>>
>> Erik, Bob, any input here?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
