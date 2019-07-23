Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0789472116
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Jul 2019 22:49:58 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 58F7A212BF561;
	Tue, 23 Jul 2019 13:52:23 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.43; helo=mga05.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 12B52212ABA3F
 for <devel@acpica.org>; Tue, 23 Jul 2019 13:52:21 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 13:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="174659991"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga006.jf.intel.com with ESMTP; 23 Jul 2019 13:49:53 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jul 2019 13:49:53 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.77]) with mapi id 14.03.0439.000;
 Tue, 23 Jul 2019 13:49:53 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Qian Cai <cai@lca.pw>, Nick Desaulniers <ndesaulniers@google.com>
Thread-Topic: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPFEYIycQ0k5IUUyXy4NqYzTqpqbP0wgAgAAvDoCACLPGAA==
Date: Tue, 23 Jul 2019 20:49:52 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869@ORSMSX110.amr.corp.intel.com>
References: <20190717033807.1207-1-cai@lca.pw>
 <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
 <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
In-Reply-To: <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWEwZGI5NTgtYTE0NC00ZWFjLWJjMDYtYjIyYWY5MmFhOTQ1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY2pvUjE2Mm1qbUl2ejllMmdwQVwvejNWcEJib1RyQ2JUb2Q3R2dnRk14VXo0QVhuUUMrdjJmZUtiSjhJM2dTVTIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Devel] [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



-----Original Message-----
From: Qian Cai [mailto:cai@lca.pw] 
Sent: Wednesday, July 17, 2019 5:50 PM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; jkim@freebsd.org; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; clang-built-linux <clang-built-linux@googlegroups.com>; LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings



> On Jul 17, 2019, at 6:01 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Tue, Jul 16, 2019 at 8:38 PM Qian Cai <cai@lca.pw> wrote:
>> 
>> Clang generate quite a few of those warnings.
>> 
>> drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer 
>> treated as a cast from integer to pointer is a GNU extension 
>> [-Wnull-pointer-arithmetic]
>>                status = acpi_get_handle(ACPI_ROOT_OBJECT,
>> obj->string.pointer,
>>                                         ^~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:458:56: note: expanded from macro 
>> 'ACPI_ROOT_OBJECT'
>> #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
>> (ACPI_MAX_PTR))
>>                                                        
>> ^~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:509:41: note: expanded from macro 
>> 'ACPI_TO_POINTER'
>> #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
>> (acpi_size) (i))
>>                                         
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:503:84: note: expanded from macro 
>> 'ACPI_ADD_PTR'
>> #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
>> (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
>>                                         ^~~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:501:66: note: expanded from macro 
>> 'ACPI_CAST_PTR'
>> #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>>                                                                  ^ 
>> This is because pointer arithmetic on a pointer not pointing to an 
>> array is an undefined behavior. Fix it by doing an integer arithmetic 
>> instead.
> 
> Hi Qian, thanks for the patch.  How do I reproduce this issue, 
> precisely?  I just tried:
> $ make CC=clang -j71 drivers/acpi/scan.o on linux-next today and don't 
> observe the warning.  My clang is ToT built sometime this week.  It 
> looks like drivers/acpi/scan.o when CONFIG_ACPI=y, which is set in the 
> defconfig.  Is there another set of configs to enable to observe the 
> warning?

# make W=1 -j 256

With the config,

https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config 

> 
> Also, the fix is curious.  Arithmetic on pointers to different 
> "objects" (with one element passed the end) may lead to provence 
> issues due to undefined behavior, but I would have expected some cases 
> to uintptr_t, then arithmetic on that type, as the solution (which is 
> what I suspect ACPI_CAST_PTR is doing).
> 
> Further, you seem to have modified ACPI_ADD_PTR but not ACPI_SUB_PTR; 
> I would have expected both to be afflicted together or not at all 
> based on their existing implementations.

Yes, I thought about that, but ACPI_SUB_PTR does not seem used anywhere, so I thought maybe just start a new discussion to remove it all together later.

ACPI_SUB_PTR is used in the iasl data table compiler.


> 
>> 
>> Signed-off-by: Qian Cai <cai@lca.pw>
>> ---
>> include/acpi/actypes.h | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index 
>> ad6892a24015..25b4a32da177 100644
>> --- a/include/acpi/actypes.h
>> +++ b/include/acpi/actypes.h
>> @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
>> 
>> #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>> #define ACPI_CAST_INDIRECT_PTR(t, p)    ((t **) (acpi_uintptr_t) (p))
>> -#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
>> +#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (a) + (acpi_size)(b))

We have some questions concerning this change. If (a) is not cast to a u8, the addition will be in whatever units are appropriate for (a) i.e., the type of (a). However, we want ACPI_ADD_PTR (And ACPI_SUB_PTR) to simply perform a byte addition or subtraction - thus the cast to u8. I believe that is the original thinking behind the macros.

>> #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
>> #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
>> 
>> /* Pointer/Integer type conversions */
>> 
>> -#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (acpi_size) (i))
>> +#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, 0, (acpi_size) (i))
> 
> IIUC, these are adding `i` to NULL (or (void*)0)? X + 0 == X ?
> --
> Thanks,
> ~Nick Desaulniers

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
