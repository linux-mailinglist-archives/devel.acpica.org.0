Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1D42B1098
	for <lists+devel-acpica@lfdr.de>; Thu, 12 Nov 2020 22:48:09 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 940DD100EC1DF;
	Thu, 12 Nov 2020 13:48:08 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.126; helo=mga18.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 76E1B100EC1DE
	for <devel@acpica.org>; Thu, 12 Nov 2020 13:48:06 -0800 (PST)
IronPort-SDR: hRyxWuDBcnLUipoO7g+5ck+EBGHe0Zf1GKovecrLJedtXqgnzGOUn/nXxtVuhjmVcYrV++Ivek
 cqZMNGXaKVzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="158163536"
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400";
   d="scan'208";a="158163536"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 13:48:05 -0800
IronPort-SDR: qHpgzP/Ewd0+EmTLo8rxqHXpBfudPKOmC0Y2/EjAzA0WnF1/N2o2vQLnfrPg7BSublgDjVh/x5
 gE8tXAgdgjEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400";
   d="scan'208";a="532330588"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
  by fmsmga005.fm.intel.com with ESMTP; 12 Nov 2020 13:48:05 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Nov 2020 13:48:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 12 Nov 2020 13:48:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 12 Nov 2020 13:48:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ej5Rf1ICKiMbawoEjWmrK+rkIw5jc8y5jChnOjvu0g7Ll8vltUnQ1l5FpyoF0XScnVW17wUK1usS8SWVihA1ngxdWjAd7B/yL933JCjax0dQfi9/HW1nxqQFG1w0BaMVtEUqqO8CnEehFOwru8li+cFT35QNvbj17qNr1gHgppAmXdXuIIDe7wipVszbVFNNfMj7QOuSUt0HVqpnMA5SsZXjR82k09lm7elzVTuLR87+O0gMetyerhOtobdiayhydj6HREEws4B/lzAb5sXqr5qCqGKWqd+fHeZIjs8z+eShxJg337onqXZIQEfWm73Dh7BsWOwmUkOiLBLyIJwhbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nnfffRJiSTggVvPgfLlbN4NAWxncPPk4oWrqmxKp0c=;
 b=fyCqRLamBnaZch7eW9fRwTpniAFC8Lw/j/eIJQlg5fL+MUyhuBJQtHWin2V+kYTSWZj63WE8SaWCGEom01eXmyC7A9DzJVmfpGTtqnlFA0wCoJd3jPKEnBfzDYrsELNV/gB0WTDQajP7gA0cIWHmU2jeFG/gLNdrsuIqcnxxjRU5RogH/RJQ1gQZEsenQaFdLpRY/eriYmB1Nr5mIcJVaTDffOhyybyX6DFMjHCJegHdgR0yixD+HZir7ROpKRpv8aNDNdhv6PazdM4hq9wtIfrgUJQDN69X267lQYkfCSmqulQH/7ywvx932ivm6zLSPd7Njb8ZdyFyztjQodJ+Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nnfffRJiSTggVvPgfLlbN4NAWxncPPk4oWrqmxKp0c=;
 b=BKf81OgQD7TbKFBeBBWNiXr0qLFUtuWUsxUmi99vVGNK/veFs+RHqe5rquIMK8jW2JF2wAG6TAKTzd386r9j6cY/wW3l0CY2/gV9OqhtYWSy+IKBmLTHOSoU6Fc+JOh7cB3AFDcyMB5KRQhctU26fnp5K+DiaIlSVkp5n18M4pc=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2806.namprd11.prod.outlook.com (2603:10b6:a02:c7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.24; Thu, 12 Nov
 2020 21:47:58 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Thu, 12 Nov 2020
 21:47:58 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnDCsOAgAA8BQCAAVTWIIAASWOAgAAmHEA=
Date: Thu, 12 Nov 2020 21:47:57 +0000
Message-ID: <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
In-Reply-To: <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4701a962-fa07-47ce-57fa-08d887549ed2
x-ms-traffictypediagnostic: BYAPR11MB2806:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2806198031C7E7970F623C5B87E70@BYAPR11MB2806.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iJ1Nr15WiMfdM5yuoV9kartCqnUdRT1RWyoVnvefHsiIXU8+ZDdDKzNLhzeAtWrWToMAihrhrTcSgMtGHLndZuNhrRqaEAt2NhG4u62RKhuq94j1R99FIh9FDHOqRn7RGDT613w8I4a89rh7HBTzezqPUwPcNvRgoebVWuecQorXZ4y9jtpzapBtHIa7y4ntRzyxmOjy0TauD1z2rBwf1kqz8Nt7CjSolpLtmoRDi/adaNAd3U/nQ/hEab0T+XumVyxbECGUIgvXn2WHsrtyxHMo/jHs8XKSyIw4rjzNsROazpt/Zeg/jWeRdqg5SN6sM/rNikHWiKB6BXakNWVLidkE7y+IKmZq1LAbVkptIkESfKudgqSHDw82bydDLEDDiRdJMXcMIgmav8JqSf1vEA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(39860400002)(366004)(136003)(376002)(64756008)(26005)(66946007)(33656002)(5660300002)(66556008)(53546011)(316002)(6506007)(86362001)(478600001)(7696005)(4326008)(76116006)(6916009)(186003)(52536014)(71200400001)(8676002)(966005)(8936002)(2906002)(55016002)(83380400001)(9686003)(54906003)(66446008)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: wV6iucq+BtePHvBEBxmWC+/eWbyk8pP9jn/p8VBoQg19djHRpnOGjm/ylNb40yfrr+rnGUX1ROBgdlOptfY4XUlt9mjvmjpriCcDU4qb5AhZsWb3wXngr8qUX4ayQNjkWa3H8OmLPd0CAMiCJb0aAbNaM50yypJAWMYT+xjXoMi2ynJL3ypAOv77M7xAhV927kpRvVdwWswMDkYcP07ePZcnRADi0Zhrx/vs3B2eeIeAibNRZgBZyl1ntyucU01S7uXsGCjj0KXybxhGpaSjEDVb8NvLHmYsoaKzaaBM6blM4Pz+VX3rmO06Qjeln3ngWS0AcXd9WsfNtfy6tEx63BXlFDnxttX5TXnZ1hchbPkdRCy/meKwEjaOYIqG//nIYb22nPrD6XlxVkE3t10nd4pyMGVYARnXKGsgtMYNYbtduzOnF6Mx+wfSgV/PCADvz4zu7+RQZjNqxLERp1RCJ8Wlk+Z9Vrvthl06k+qdweFCq4mVOdl53kx9DbadXXIGpNxqLbrBYroXUQO8XKE7qPyBLv0oCS9jAbQume/OdnLHgLpjejW6P+3SxBK0J9PMm56IRonAkMVOerwGsS4GMxOQAYtrHPZvLHmYj4y46KWbAoqWOLxekrW7No16N4S74AR5dFLjG9unWLgVfc0P7g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4701a962-fa07-47ce-57fa-08d887549ed2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2020 21:47:58.3423
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c/7l+MwIuRu9EN7U+4ECWZFJHPxPvTJRj9K5MxxdtJB26rfUErZzZv0fM3kBQQELwc1kp0rClKiiGvQIFSBESw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2806
X-OriginatorOrg: intel.com
Message-ID-Hash: PI35ET2GHK4RQR5RZPFXFISI5EJEQIXX
X-Message-ID-Hash: PI35ET2GHK4RQR5RZPFXFISI5EJEQIXX
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix -Wfallthrough
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PI35ET2GHK4RQR5RZPFXFISI5EJEQIXX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com> 
Sent: Thursday, November 12, 2020 11:31 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Thu, Nov 12, 2020 at 7:13 AM Moore, Robert <robert.moore@intel.com> wrote:
>
>
>
> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Wednesday, November 11, 2020 10:48 AM
> To: Moore, Robert <robert.moore@intel.com>
> Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J 
> <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva 
> <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown 
> <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; 
> linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
>
> On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> wrote:
> >
> > Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the problem for us.
>
> It's not a keyword.
>
> It's a preprocessor macro that expands to
> __attribute__((__fallthrough__)) for compilers that support it.  For compilers that do not, it expands to nothing.  Both GCC 7+ and Clang support this attribute.  Which other compilers that support -Wimplicit-fallthrough do you care to support?
>
> We need to support MSVC 2017 -- which apparently does not support this.

In which case, the macro is not expanded to a compiler attribute the compiler doesn't support.  Please see also its definition in include/linux/compiler_attributes.h.

From what I can tell, MSVC does not warn on implicit fallthrough, so there's no corresponding attribute (or comment) to disable the warning in MSVC.

That doesn't mean this code is not portable to MSVC; a macro that expands to nothing should not be a problem.

Based on
https://docs.microsoft.com/en-us/cpp/code-quality/c26819?view=msvc-160
https://developercommunity.visualstudio.com/idea/423975/issue-compiler-warning-when-using-implicit-fallthr.html
it sounds like MSVC 2019 will be able to warn, for C++ mode, which will rely on the C++ style attribute to annotate intentional fallthrough.

Can you confirm how this does not work for MSVC 2017?

1>c:\acpica\source\components\utilities\utdelete.c(270): warning C4013: '__attribute__' undefined; assuming extern returning int
1>c:\acpica\source\components\utilities\utdelete.c(270): error C2065: '__fallthrough__': undeclared identifier
1>c:\acpica\source\components\utilities\utdelete.c(272): error C2143: syntax error: missing ';' before 'case'

> > Bob
> >
> >
> > -----Original Message-----
> > From: ndesaulniers via sendgmr
> > <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick 
> > Desaulniers
> > Sent: Tuesday, November 10, 2020 6:12 PM
> > To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik 
> > <erik.kaneda@intel.com>; Wysocki, Rafael J 
> > <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva 
> > <gustavoars@kernel.org>
> > Cc: clang-built-linux@googlegroups.com; Nick Desaulniers 
> > <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>; 
> > linux-acpi@vger.kernel.org; devel@acpica.org; 
> > linux-kernel@vger.kernel.org
> > Subject: [PATCH] ACPICA: fix -Wfallthrough
> >
> > The "fallthrough" pseudo-keyword was added as a portable way to denote intentional fallthrough. This code seemed to be using a mix of fallthrough comments that GCC recognizes, and some kind of lint marker.
> > I'm guessing that linter hasn't been run in a while from the mixed use of the marker vs comments.
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  drivers/acpi/acpica/dscontrol.c | 3 +--
> >  drivers/acpi/acpica/dswexec.c   | 4 +---
> >  drivers/acpi/acpica/dswload.c   | 3 +--
> >  drivers/acpi/acpica/dswload2.c  | 3 +--
> >  drivers/acpi/acpica/exfldio.c   | 3 +--
> >  drivers/acpi/acpica/exresop.c   | 5 ++---
> >  drivers/acpi/acpica/exstore.c   | 6 ++----
> >  drivers/acpi/acpica/hwgpe.c     | 3 +--
> >  drivers/acpi/acpica/utdelete.c  | 3 +--
> >  drivers/acpi/acpica/utprint.c   | 2 +-
> >  10 files changed, 12 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/acpi/acpica/dscontrol.c 
> > b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19
> > 100644
> > --- a/drivers/acpi/acpica/dscontrol.c
> > +++ b/drivers/acpi/acpica/dscontrol.c
> > @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
> >                                 break;
> >                         }
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case AML_IF_OP:
> >                 /*
> > diff --git a/drivers/acpi/acpica/dswexec.c 
> > b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f
> > 100644
> > --- a/drivers/acpi/acpica/dswexec.c
> > +++ b/drivers/acpi/acpica/dswexec.c
> > @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
> >                                 if (ACPI_FAILURE(status)) {
> >                                         break;
> >                                 }
> > -
> > -                               /* Fall through */
> > -                               /*lint -fallthrough */
> > +                               fallthrough;
> >
> >                         case AML_INT_EVAL_SUBTREE_OP:
> >
> > diff --git a/drivers/acpi/acpica/dswload.c 
> > b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d
> > 100644
> > --- a/drivers/acpi/acpica/dswload.c
> > +++ b/drivers/acpi/acpica/dswload.c
> > @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
> >                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
> >                                 break;
> >                         }
> > -
> > -                       /*lint -fallthrough */
> > +                       fallthrough;
> >
> >                 default:
> >
> > diff --git a/drivers/acpi/acpica/dswload2.c 
> > b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072
> > 100644
> > --- a/drivers/acpi/acpica/dswload2.c
> > +++ b/drivers/acpi/acpica/dswload2.c
> > @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
> >                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
> >                                 break;
> >                         }
> > -
> > -                       /*lint -fallthrough */
> > +                       fallthrough;
> >
> >                 default:
> >
> > diff --git a/drivers/acpi/acpica/exfldio.c 
> > b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9
> > 100644
> > --- a/drivers/acpi/acpica/exfldio.c
> > +++ b/drivers/acpi/acpica/exfldio.c
> > @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
> >                  * Now that the Bank has been selected, fall through to the
> >                  * region_field case and write the datum to the Operation Region
> >                  */
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case ACPI_TYPE_LOCAL_REGION_FIELD:
> >                 /*
> > diff --git a/drivers/acpi/acpica/exresop.c 
> > b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551
> > 100644
> > --- a/drivers/acpi/acpica/exresop.c
> > +++ b/drivers/acpi/acpica/exresop.c
> > @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
> >                                 case ACPI_REFCLASS_DEBUG:
> >
> >                                         target_op = AML_DEBUG_OP;
> > -
> > -                                       /*lint -fallthrough */
> > +                                       fallthrough;
> >
> >                                 case ACPI_REFCLASS_ARG:
> >                                 case ACPI_REFCLASS_LOCAL:
> > @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
> >                          * Else not a string - fall through to the normal Reference
> >                          * case below
> >                          */
> > -                       /*lint -fallthrough */
> > +                       fallthrough;
> >
> >                 case ARGI_REFERENCE:    /* References: */
> >                 case ARGI_INTEGER_REF:
> > diff --git a/drivers/acpi/acpica/exstore.c 
> > b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120
> > 100644
> > --- a/drivers/acpi/acpica/exstore.c
> > +++ b/drivers/acpi/acpica/exstore.c
> > @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
> >                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
> >                         return_ACPI_STATUS(AE_OK);
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         default:
> >
> > @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
> >                                 }
> >                                 break;
> >                         }
> > -
> > -                       /* Fallthrough */
> > +                       fallthrough;
> >
> >                 case ACPI_TYPE_DEVICE:
> >                 case ACPI_TYPE_EVENT:
> > diff --git a/drivers/acpi/acpica/hwgpe.c 
> > b/drivers/acpi/acpica/hwgpe.c index b13a4ed5bc63..fbfad80c8a53 
> > 100644
> > --- a/drivers/acpi/acpica/hwgpe.c
> > +++ b/drivers/acpi/acpica/hwgpe.c
> > @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
> >                 if (!(register_bit & gpe_register_info->enable_mask)) {
> >                         return (AE_BAD_PARAMETER);
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case ACPI_GPE_ENABLE:
> >
> > diff --git a/drivers/acpi/acpica/utdelete.c 
> > b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585
> > 100644
> > --- a/drivers/acpi/acpica/utdelete.c
> > +++ b/drivers/acpi/acpica/utdelete.c
> > @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
> >                         (void)acpi_ev_delete_gpe_block(object->device.
> >                                                        gpe_block);
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case ACPI_TYPE_PROCESSOR:
> >         case ACPI_TYPE_THERMAL:
> > diff --git a/drivers/acpi/acpica/utprint.c 
> > b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2
> > 100644
> > --- a/drivers/acpi/acpica/utprint.c
> > +++ b/drivers/acpi/acpica/utprint.c
> > @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
> >                 case 'X':
> >
> >                         type |= ACPI_FORMAT_UPPER;
> > -                       /* FALLTHROUGH */
> > +                       fallthrough;
> >
> >                 case 'x':
> >
> > --
> > 2.29.2.222.g5d2a92d10f8-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



--
Thanks,
~Nick Desaulniers
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
