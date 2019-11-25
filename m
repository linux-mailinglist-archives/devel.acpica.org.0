Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2B710934D
	for <lists+devel-acpica@lfdr.de>; Mon, 25 Nov 2019 19:10:53 +0100 (CET)
Received: from ml01.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7527610113312;
	Mon, 25 Nov 2019 10:14:15 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=erik.schmauss@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BB7781011330A
	for <devel@acpica.org>; Mon, 25 Nov 2019 10:14:13 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 10:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600";
   d="scan'208";a="206363961"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
  by fmsmga007.fm.intel.com with ESMTP; 25 Nov 2019 10:10:49 -0800
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 25 Nov 2019 10:10:49 -0800
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.73]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.36]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 10:10:48 -0800
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: Colin Ian King <colin.king@canonical.com>, "Moore, Robert"
	<robert.moore@intel.com>, zhengbin <zhengbin13@huawei.com>, "Wysocki, Rafael
 J" <rafael.j.wysocki@intel.com>, "lenb@kernel.org" <lenb@kernel.org>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>
Thread-Topic: [Devel] Re: [PATCH] ACPICA: Use ARRAY_SIZE for
 'fadt_info_table','fadt_pm_info_table'
Thread-Index: AQHVoRbYAgfSUyPm4kuJ0bywmDfyraeYQUCAgAANKYCAA+NeAA==
Date: Mon, 25 Nov 2019 18:10:48 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C688958@ORSMSX122.amr.corp.intel.com>
References: <1574415183-19322-1-git-send-email-zhengbin13@huawei.com>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B96B1A5A@ORSMSX110.amr.corp.intel.com>
 <e2c60e61-4c2c-ced2-3eda-26d7b3fb8f4b@canonical.com>
In-Reply-To: <e2c60e61-4c2c-ced2-3eda-26d7b3fb8f4b@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTQ1NWNhZmQtOGRiMS00NjhjLTg5OWYtOThlM2FlODA0N2NlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWlpEYndQSGxDMGx1NCtpMVBMdzdUU0dEVzltM1VyQWxXRzBhdG9wckR6SU9jcDFPZmpQSDYyUlF0K3dJK0JYRiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Message-ID-Hash: JFSPKPW53DBLVIVD7NR7NIFNYZS624W6
X-Message-ID-Hash: JFSPKPW53DBLVIVD7NR7NIFNYZS624W6
X-MailFrom: erik.schmauss@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Use ARRAY_SIZE for 'fadt_info_table','fadt_pm_info_table'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JFSPKPW53DBLVIVD7NR7NIFNYZS624W6/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



> -----Original Message-----
> From: linux-acpi-owner@vger.kernel.org <linux-acpi-owner@vger.kernel.org>
> On Behalf Of Colin Ian King
> Sent: Friday, November 22, 2019 2:36 PM
> To: Moore, Robert <robert.moore@intel.com>; zhengbin
> <zhengbin13@huawei.com>; Schmauss, Erik <erik.schmauss@intel.com>;
> Wysocki, Rafael J <rafael.j.wysocki@intel.com>; lenb@kernel.org; linux-
> acpi@vger.kernel.org; devel@acpica.org
> Subject: Re: [Devel] Re: [PATCH] ACPICA: Use ARRAY_SIZE for
> 'fadt_info_table','fadt_pm_info_table'
> 
> On 22/11/2019 21:49, Moore, Robert wrote:
> > Where does "ARRAY_SIZE" come from? It's not a part of ACPICA.
> > Bob
> 
> It's definitely not part of ACPICA, it's defined in linux/kernel.h

ACPICA codebase must work across multiple operating systems. Since ARRAY_SIZE macro is specific to linux, we cannot take this change as it stands..

Erik
> 
> >
> >
> > -----Original Message-----
> > From: zhengbin <zhengbin13@huawei.com>
> > Sent: Friday, November 22, 2019 1:33 AM
> > To: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik
> > <erik.schmauss@intel.com>; Wysocki, Rafael J
> > <rafael.j.wysocki@intel.com>; lenb@kernel.org;
> > linux-acpi@vger.kernel.org; devel@acpica.org
> > Cc: zhengbin13@huawei.com
> > Subject: [PATCH] ACPICA: Use ARRAY_SIZE for
> 'fadt_info_table','fadt_pm_info_table'
> >
> > Fixes coccicheck warning:
> >
> > drivers/acpi/acpica/tbfadt.c:107:27-28: WARNING: Use ARRAY_SIZE
> > drivers/acpi/acpica/tbfadt.c:137:30-31: WARNING: Use ARRAY_SIZE
> >
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: zhengbin <zhengbin13@huawei.com>
> > ---
> >  drivers/acpi/acpica/tbfadt.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/acpi/acpica/tbfadt.c
> > b/drivers/acpi/acpica/tbfadt.c index 0041bfb..324a804 100644
> > --- a/drivers/acpi/acpica/tbfadt.c
> > +++ b/drivers/acpi/acpica/tbfadt.c
> > @@ -103,8 +103,7 @@ static struct acpi_fadt_info fadt_info_table[] = {
> >  	 ACPI_FADT_SEPARATE_LENGTH | ACPI_FADT_GPE_REGISTER}  };
> >
> > -#define ACPI_FADT_INFO_ENTRIES \
> > -			(sizeof (fadt_info_table) / sizeof (struct
> acpi_fadt_info))
> > +#define ACPI_FADT_INFO_ENTRIES (ARRAY_SIZE(fadt_info_table))
> >
> >  /* Table used to split Event Blocks into separate status/enable
> > registers */
> >
> > @@ -133,8 +132,7 @@ static struct acpi_fadt_pm_info fadt_pm_info_table[]
> = {
> >  	 1}
> >  };
> >
> > -#define ACPI_FADT_PM_INFO_ENTRIES \
> > -			(sizeof (fadt_pm_info_table) / sizeof (struct
> acpi_fadt_pm_info))
> > +#define ACPI_FADT_PM_INFO_ENTRIES (ARRAY_SIZE(fadt_pm_info_table))
> >
> >
> /******************************************************************
> *************
> >   *
> > --
> > 2.7.4
> > _______________________________________________
> > Devel mailing list -- devel@acpica.org To unsubscribe send an email to
> > devel-leave@acpica.org
> > %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
> >

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
