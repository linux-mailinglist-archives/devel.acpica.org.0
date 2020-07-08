Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A09E2E27BD
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 15:42:44 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7BBA9100EC1C6;
	Thu, 24 Dec 2020 06:42:42 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3F5B0110BC283
	for <devel@acpica.org>; Wed,  8 Jul 2020 07:17:27 -0700 (PDT)
IronPort-SDR: YnDO28clWkAgiX5EXtkOb7FLnC7UNDZ8rTKpYpa3AnY/PUq0I0nP+hNswg9MQNE74LTDDDp1In
 OPfYneJyzcmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="127400121"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800";
   d="scan'208";a="127400121"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2020 07:17:26 -0700
IronPort-SDR: xahbChJVmbzcjKFJ3xSPSQWzqZ3zFyuWDv9nDLDbAarsfXdk23CNMxQTv9h34EpV34LgKn5hMV
 Qi/VzTomsjbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800";
   d="scan'208";a="314647535"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga008.jf.intel.com with ESMTP; 08 Jul 2020 07:17:26 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 8 Jul 2020 07:17:25 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 8 Jul 2020 07:17:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 8 Jul 2020 07:17:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YPh4iW9qj+WyEGZj2qAp6pO5iRkVMQbYk4LUCNKcV6GR2sk1lXu/BXnsK2VII7BeZLyU/OdFt3b2g6UNxLp0KvHLImWT7rb90EeKjP8+q8ufK8w6/pZzD5475LiXM4Uflf3fIZG4MEJO9SGUK3Mqzr8lat/E9wpZv26Xo1QCvlat4sfUvADCEXHNv3UTmvGcs0nCTmDwaKwBJ4pzENiazrrzUEiJ6V/8Fiel7Q8mAnocQw9Pzakma+ouzR8JuJUT8DTkLFKr+HSDe1UFl6KMSx+IQ7kG599/cLDSli8fBFFE4R+G+NiLMaTyaNON1z/rK5t/3NF1iPZ6yud0p0qDig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYtYxdCen/JRczIGDDwL8lRWxTU7rv+MEPeVWpJ7Ndw=;
 b=Art2Qw6GMAhsXme+CKTvWgC8KNFgSKE0QMRkf/roxIOY4zWNMHRtk578/7kHzsIXFyRQ9CiSAAkf9pM+5ms3jqXZwDMrCTe0a2gvZdWYubs2i5MWtG+H3mb9AGnEBeMxBkpMJCzzqzPgHnWWLPCouvr1WF+5xrGM5R7S209czevaUQaujbJMBibNfCTjzelpYdRzISW0DT2bY4G7WDAIUGD1eF6ZPPuC7EJXM6GYvmMpTKvOC2k7aNGAov55A4M57/sU7+Jn+hjpbJpYuBvsdEn0+6hMZ5Vu96skoDP3xW7TJs3s0i5m3jY7M2Wikn/jrIxO+rbaVA4+4GtTWYuL8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYtYxdCen/JRczIGDDwL8lRWxTU7rv+MEPeVWpJ7Ndw=;
 b=dqKjRU1uMLjaGlbWD0iTHJd4KOpGxdYhQnXjLw3PPXEgrgce46gjGJI3cUtIv8u4VwrAvPTpBIw492Xri6vgoty3vnK57Sb2jzyjmWYgP/p/lRObXbuov8wVicoKEQkGlSvj9hq5wiyof4Uz7uBZ9UOWvg8ZoDdGZanK8dja9G0=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB3976.namprd11.prod.outlook.com (2603:10b6:a03:187::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Wed, 8 Jul
 2020 14:17:20 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::4ca7:fbfa:78bf:173c%4]) with mapi id 15.20.3174.021; Wed, 8 Jul 2020
 14:17:20 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, "Gustavo A. R. Silva"
	<gustavoars@kernel.org>
Thread-Topic: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
Thread-Index: AQHWVJmBbAsk81nWN025VkK0Ud6o36j9hEsAgAA3CfA=
Date: Wed, 8 Jul 2020 14:17:20 +0000
Message-ID: <BYAPR11MB325602EDA2D2ACC2B28EAF4687670@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20200707200716.GA4920@embeddedor>
 <CAJZ5v0iDz_EsrpdMQQDfaVC2orMQkEcubmR6-J6mvtrXmKXbRg@mail.gmail.com>
In-Reply-To: <CAJZ5v0iDz_EsrpdMQQDfaVC2orMQkEcubmR6-J6mvtrXmKXbRg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0994710-c8fd-473a-64c9-08d82349a08c
x-ms-traffictypediagnostic: BY5PR11MB3976:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB39765745365701DB3390A1CD87670@BY5PR11MB3976.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rFjIGec/oz2PdqwXGQP7VseElVnOIrEndbE7YamBjrq37jdu10V4YCTIFJoB3smtXVUHrr9aBVRECbr8dZLGFcvdcrWzSE6r1zehbY8Q053zHPC+b78o/Dwp/+MjHaSQyMVr9xWRWa5uoRtSN2WpFWtUCDurzC3Ldt3OD75XI+f6WtMnIKib7Agp3LnPIqH0ZDKeaSl8ko9vK4+5+y1OBr3hCl62ie6vyL8Qbdx3jtBITGy97+5i+ys7/cxm+v6wpET/niDov3QliP8eNZM5d0yfpG1lUGNdTZwNQCVmnm6Dn/Y3zYnQtppwPF+4vRpWwpwCLAE/fhe27FCMaLM73PDZSXamvTVyFhEKIQDap5OEOxhi0Exdm/OIGNzBFfzY56qbID7FDZ0Gxikp0b9aLQaY2gcMTb2bCQ/n6vEuTCTM19H6QvXuyMWyjzrlCpPkexRy+n/Z885Ghp0vkn2bog==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(9686003)(8936002)(33656002)(55016002)(110136005)(316002)(66446008)(64756008)(66476007)(66556008)(76116006)(66946007)(52536014)(186003)(4326008)(966005)(26005)(478600001)(54906003)(86362001)(2906002)(5660300002)(7696005)(83380400001)(71200400001)(6506007)(8676002)(53546011)(14701465002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: GovK5vvulzMURfXjh5/7ArDdTeeIqOmuIvEUWRvWvRTtXaItLyw+CBFLA08ukuF11BhCCZYJ9KzvX8cbsWbyW/5AxWsXAPOm1rukPmpR2I7q7NH/bK8K4SGfj+vZ+AyD+7H6m4yUhCp07yfwNFaBsLNoPQ1Eg9D8GXV9rCCreMv1795ZTtPOzmk5Y+uyiv8leLQLR4ti4heovHcrnrgtysXybJBxllJuioSmKBcdnAY0XAldfdgM8lYKnzcKpEeP5TGKLdys98yFIRiyeh4a3VJXc1y2gwsYmzaIWqYW7hb+AOLPZlOq/61x+Z13OEZLETJW6RdJShJbN4Suahb6CRkafp0cQB287UY8t8PdUx6VeYYhpEDtAZYWILrFhmDDsBNEMTqHSnSuiWE51QskmniiE4KQLfNTePsitI31+Jx+1towhmUY+yAHo2XggOV6pUxChy8pS1KCFu6SBy5jtbqfYSOZqlN1AmZ3LIO4TjCGen9tt0xwoSwHZEicrmvY
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0994710-c8fd-473a-64c9-08d82349a08c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 14:17:20.5132
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +rd+AunrhllR9IpgfOjB58FINmPVWLS9L8ccCJvNiik7/E6TqQ6GKVS6Yl0oj7LT4G7xyY7PJr+F8eFDSvLlgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3976
X-OriginatorOrg: intel.com
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: QWFLU2QS7GCOUOJ4QNLFAIVK67P2APKO
X-Message-ID-Hash: QWFLU2QS7GCOUOJ4QNLFAIVK67P2APKO
X-Mailman-Approved-At: Thu, 24 Dec 2020 14:42:41 -0800
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "ACPI COMPONENT ARCHITECTURE  <devel@acpica.org>, Linux Kernel Mailing List (ACPICA)" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QWFLU2QS7GCOUOJ4QNLFAIVK67P2APKO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It looks like this attribute is not supported by msvc 2017 (and perhaps other compilers) -- it is apparently a GCC extension -- meaning that it cannot be used in the ACPICA compiler-independent code.

Bob


-----Original Message-----
From: Rafael J. Wysocki <rafael@kernel.org> 
Sent: Wednesday, July 08, 2020 3:59 AM
To: Gustavo A. R. Silva <gustavoars@kernel.org>
Cc: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Len Brown <lenb@kernel.org>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword

On Tue, Jul 7, 2020 at 10:01 PM Gustavo A. R. Silva <gustavoars@kernel.org> wrote:
>
> Replace the existing /* fall through */ comments and its variants with 
> the new pseudo-keyword macro fallthrough[1]. Also, remove unnecessary 
> fall-through markings when it is the case.
>
> [1] 
> https://www.kernel.org/doc/html/latest/process/deprecated.html?highlig
> ht=fallthrough#implicit-switch-case-fall-through
>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

I need to talk to Erik and Bob about this one.

> ---
>  drivers/acpi/acpica/dscontrol.c |    2 +-
>  drivers/acpi/acpica/dswexec.c   |    3 +--
>  drivers/acpi/acpica/dswload.c   |    2 +-
>  drivers/acpi/acpica/dswload2.c  |    4 +---
>  drivers/acpi/acpica/exfldio.c   |    2 +-
>  drivers/acpi/acpica/exresop.c   |    4 ++--
>  drivers/acpi/acpica/exstore.c   |    4 ++--
>  drivers/acpi/acpica/hwgpe.c     |    3 +--
>  drivers/acpi/acpica/utdelete.c  |    3 +--
>  drivers/acpi/acpica/utprint.c   |    2 +-
>  10 files changed, 12 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dscontrol.c 
> b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..134d53380663 
> 100644
> --- a/drivers/acpi/acpica/dscontrol.c
> +++ b/drivers/acpi/acpica/dscontrol.c
> @@ -62,7 +62,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
>                         }
>                 }
>
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case AML_IF_OP:
>                 /*
> diff --git a/drivers/acpi/acpica/dswexec.c 
> b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..41f6cb61778a 
> 100644
> --- a/drivers/acpi/acpica/dswexec.c
> +++ b/drivers/acpi/acpica/dswexec.c
> @@ -598,8 +598,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
>                                         break;
>                                 }
>
> -                               /* Fall through */
> -                               /*lint -fallthrough */
> +                               fallthrough;
>
>                         case AML_INT_EVAL_SUBTREE_OP:
>
> diff --git a/drivers/acpi/acpica/dswload.c 
> b/drivers/acpi/acpica/dswload.c index 27069325b6de..1d8789869dda 
> 100644
> --- a/drivers/acpi/acpica/dswload.c
> +++ b/drivers/acpi/acpica/dswload.c
> @@ -224,7 +224,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
>                                 break;
>                         }
>
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/dswload2.c 
> b/drivers/acpi/acpica/dswload2.c index edadbe146506..de367e8e4cf4 
> 100644
> --- a/drivers/acpi/acpica/dswload2.c
> +++ b/drivers/acpi/acpica/dswload2.c
> @@ -213,9 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> -
> +                       fallthrough;
>                 default:
>
>                         /* All other types are an error */ diff --git 
> a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c index 
> ade35ff1c7ba..677ba3ab1482 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -434,7 +434,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
>                  * region_field case and write the datum to the Operation Region
>                  */
>
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_LOCAL_REGION_FIELD:
>                 /*
> diff --git a/drivers/acpi/acpica/exresop.c 
> b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..7c8676adcf43 
> 100644
> --- a/drivers/acpi/acpica/exresop.c
> +++ b/drivers/acpi/acpica/exresop.c
> @@ -198,7 +198,7 @@ acpi_ex_resolve_operands(u16 opcode,
>
>                                         target_op = AML_DEBUG_OP;
>
> -                                       /*lint -fallthrough */
> +                                       fallthrough;
>
>                                 case ACPI_REFCLASS_ARG:
>                                 case ACPI_REFCLASS_LOCAL:
> @@ -264,7 +264,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                          * Else not a string - fall through to the normal Reference
>                          * case below
>                          */
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 case ARGI_REFERENCE:    /* References: */
>                 case ARGI_INTEGER_REF:
> diff --git a/drivers/acpi/acpica/exstore.c 
> b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..fcf8dff56c5b 
> 100644
> --- a/drivers/acpi/acpica/exstore.c
> +++ b/drivers/acpi/acpica/exstore.c
> @@ -96,7 +96,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
>                         return_ACPI_STATUS(AE_OK);
>                 }
>
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         default:
>
> @@ -422,7 +422,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
>                                 break;
>                         }
>
> -                       /* Fallthrough */
> +                       fallthrough;
>
>                 case ACPI_TYPE_DEVICE:
>                 case ACPI_TYPE_EVENT:
> diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c 
> index 49c46d4dd070..19d574f64c78 100644
> --- a/drivers/acpi/acpica/hwgpe.c
> +++ b/drivers/acpi/acpica/hwgpe.c
> @@ -95,8 +95,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
>                 if (!(register_bit & gpe_register_info->enable_mask)) {
>                         return (AE_BAD_PARAMETER);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_GPE_ENABLE:
>
> diff --git a/drivers/acpi/acpica/utdelete.c 
> b/drivers/acpi/acpica/utdelete.c index c365faf4e6cd..6db09eb9d257 
> 100644
> --- a/drivers/acpi/acpica/utdelete.c
> +++ b/drivers/acpi/acpica/utdelete.c
> @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
>                         (void)acpi_ev_delete_gpe_block(object->device.
>                                                        gpe_block);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_PROCESSOR:
>         case ACPI_TYPE_THERMAL:
> diff --git a/drivers/acpi/acpica/utprint.c 
> b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2 
> 100644
> --- a/drivers/acpi/acpica/utprint.c
> +++ b/drivers/acpi/acpica/utprint.c
> @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
>                 case 'X':
>
>                         type |= ACPI_FORMAT_UPPER;
> -                       /* FALLTHROUGH */
> +                       fallthrough;
>
>                 case 'x':
>
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
