Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A89415F79E
	for <lists+devel-acpica@lfdr.de>; Fri, 14 Feb 2020 21:21:52 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0D60E10FC3418;
	Fri, 14 Feb 2020 12:25:08 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1F9C010FC3417
	for <devel@acpica.org>; Fri, 14 Feb 2020 12:25:05 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2020 12:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400";
   d="scan'208";a="223127865"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
  by orsmga007.jf.intel.com with ESMTP; 14 Feb 2020 12:21:48 -0800
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.107]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.106]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 12:21:48 -0800
From: "Moore, Robert" <robert.moore@intel.com>
To: "Kaneda, Erik" <erik.kaneda@intel.com>, "Rafael J. Wysocki"
	<rjw@rjwysocki.net>, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Thread-Topic: [PATCH] ACPICA: Fix a typo in acuuid.h
Thread-Index: AQHV4wBMHiM0+joAK0665+NbOcZNwKga+7yAgAB29oD//6/2AA==
Date: Fri, 14 Feb 2020 20:21:48 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96EA166@ORSMSX110.amr.corp.intel.com>
References: <20200214063003.29741-1-christophe.jaillet@wanadoo.fr>
 <2712088.SaWAGPlJqS@kreacher>
 <BL0PR11MB29466C25466F5A88B4D4F5B9F0150@BL0PR11MB2946.namprd11.prod.outlook.com>
In-Reply-To: <BL0PR11MB29466C25466F5A88B4D4F5B9F0150@BL0PR11MB2946.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2ZkMjYzOTktMmRlOS00ZGYyLWFkMTEtNTlmMzc4ZTBhYjVlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOCsxbldrMEtsbkZCS2N6c2o4dXpvQ2ZWYXBERkdvb3hzTFRjeFwvdERKK1lnZjNESmZcLzNoZ29ObUt4emhYK0hQIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: G733MGTJ7SO56AQ7VM7SSEJPNRKVYD54
X-Message-ID-Hash: G733MGTJ7SO56AQ7VM7SSEJPNRKVYD54
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Fix a typo in acuuid.h
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/G733MGTJ7SO56AQ7VM7SSEJPNRKVYD54/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

Ok, got it.
Thanks,
Bob
-

-----Original Message-----
From: Kaneda, Erik <erik.kaneda@intel.com> 
Sent: Friday, February 14, 2020 9:08 AM
To: Rafael J. Wysocki <rjw@rjwysocki.net>; Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: lenb@kernel.org; Moore, Robert <robert.moore@intel.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
Subject: RE: [PATCH] ACPICA: Fix a typo in acuuid.h



> -----Original Message-----
> From: linux-acpi-owner@vger.kernel.org <linux-acpi- 
> owner@vger.kernel.org> On Behalf Of Rafael J. Wysocki
> Sent: Friday, February 14, 2020 2:02 AM
> To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>; Kaneda, Erik 
> <erik.kaneda@intel.com>
> Cc: lenb@kernel.org; Moore, Robert <robert.moore@intel.com>; linux- 
> acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org; 
> kernel-janitors@vger.kernel.org
> Subject: Re: [PATCH] ACPICA: Fix a typo in acuuid.h
> 
> On Friday, February 14, 2020 7:30:03 AM CET Christophe JAILLET wrote:
> > The comment related to the ending of the include guard should be 
> > related to __ACUUID_H__, not __AUUID_H__ (i.e. 'C' is missing).
> >
> > Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> 
> Erik, please route this through the upstream.

Thanks for your patch!

I'll add it to our next release (in March)

Erik
> 
> Thanks!
> 
> > ---
> >  include/acpi/acuuid.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/acpi/acuuid.h b/include/acpi/acuuid.h index
> > 9dd4689a39cf..9e1367b19069 100644
> > --- a/include/acpi/acuuid.h
> > +++ b/include/acpi/acuuid.h
> > @@ -57,4 +57,4 @@
> >  #define UUID_THERMAL_EXTENSIONS         "14d399cd-7a27-4b18-8fb4-
> 7cb7b9f4e500"
> >  #define UUID_DEVICE_PROPERTIES          "daffd814-6eba-4d8c-8a91-
> bc9bbf4aa301"
> >
> > -#endif/* __AUUID_H__ */
> > +#endif/* __ACUUID_H__ */
> >
> 
> 
> 

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
