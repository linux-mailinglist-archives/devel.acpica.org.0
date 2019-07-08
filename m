Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD80D626C3
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Jul 2019 19:00:01 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2862821A07095;
	Mon,  8 Jul 2019 09:59:59 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.100; helo=mga07.intel.com;
 envelope-from=erik.schmauss@intel.com; receiver=devel@acpica.org 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id D3958212AC471
 for <devel@acpica.org>; Mon,  8 Jul 2019 09:59:57 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 09:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="155917277"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga007.jf.intel.com with ESMTP; 08 Jul 2019 09:59:57 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 09:59:56 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.139]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.237]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 09:59:56 -0700
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: "ahs3@redhat.com" <ahs3@redhat.com>, "devel@acpica.org" <devel@acpica.org>
Thread-Topic: [Devel] 20190703 release?
Thread-Index: AQHVNZzIEL95vB3HpUO/3XJQYLs92KbA8B6A
Date: Mon, 8 Jul 2019 16:59:56 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C609601@ORSMSX122.amr.corp.intel.com>
References: <c54f0f72-d089-6bc8-863a-76828aad0b1a@redhat.com>
In-Reply-To: <c54f0f72-d089-6bc8-863a-76828aad0b1a@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjU2ZGIzNWQtOGUxNi00ZTg3LWE5ZTAtYTc5ODJhODY3YWQyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid1NRM1wvVmhkcDhmSlZZSmh5QlRrZVQwR2pLT0RHUHhJOHJkc2dMRVVnRFRFRHAzUFRxNXVxYTJwdEFzRzZnY2oifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Devel] 20190703 release?
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
> From: Devel [mailto:devel-bounces@acpica.org] On Behalf Of Al Stone
> Sent: Monday, July 8, 2019 7:52 AM
> To: devel@acpica.org
> Subject: [Devel] 20190703 release?
> 
> Howdy.

Hi Al,

I hope things are going well for you.

> 
> It appears that the acpica.org site has not been updated correctly.
> 
> The current revision on the downloads page still shows 20190509, and
> 20190703 is listed as a Previous Release.
> 
> Since most work is now showing up on github, would it make sense to start
> consolidating the two (acpica.org and github) to keep things simple

There were updates being performed on our servers that host our content management system last week.
There were some hiccups in the process and we couldn't upload some files due to configurations that were not properly migrated during the update...
We're currently working on resolving these issues and we will send out release notes when we're able to upload all files..

I hope this didn't cause too much confusion

Erik
> 
> --
> ciao,
> al
> -----------------------------------
> Al Stone
> Software Engineer
> Red Hat, Inc.
> ahs3@redhat.com
> -----------------------------------
> _______________________________________________
> Devel mailing list
> Devel@acpica.org
> https://lists.acpica.org/mailman/listinfo/devel
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
