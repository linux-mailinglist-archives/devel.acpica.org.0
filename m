Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BDA2B082F
	for <lists+devel-acpica@lfdr.de>; Thu, 12 Nov 2020 16:13:32 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C702D100ED4AD;
	Thu, 12 Nov 2020 07:13:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 99758100ED4A7
	for <devel@acpica.org>; Thu, 12 Nov 2020 07:13:28 -0800 (PST)
IronPort-SDR: MfNmWtQfQAnQp9mOlzfff60iqo2Vqen44qYxAuo+Lqy9l0EvQhi03JbAHzIIh2V/DSstA4IrSl
 6gxIonCHQVOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="231942435"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400";
   d="scan'208";a="231942435"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 07:13:23 -0800
IronPort-SDR: Z6fdRpQE4h9ryyYjJiMC+KPRrFXOcoQk1t/4vHRzFhQjHLlFesGljFGjusIXM6JE35v/c2gaHo
 mYxV1LEd/2xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400";
   d="scan'208";a="323667665"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga003.jf.intel.com with ESMTP; 12 Nov 2020 07:13:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Nov 2020 07:13:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 12 Nov 2020 07:13:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 12 Nov 2020 07:13:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XoC2wb7UZN/xR5+8emHhaQNK3apW9PBBeXnsFtT9u7FJ6W0Tn3NoGuGClD8ZCf+XbxzFgvvGw/tVCZcILwivPStdsqNIZMb649zWYV2EF+n2SPofNBNdCBV57w/13EvG0x3vafYlARaF9GDAxDuL6u2nV81rLYn9Xn5rBOKc2h7uHkGAbdz/lRf883PrE4Yb+fDKvEOkQctK1ccTNAheugqmyejFhON8WsDDDhPPzvP1gjShXwjb4afuWbpKqnnJvVVN+QjWRkJrCih3dUKyANcKn39QPwRo0YpDB03LGO3vmI/GVuO7acmB5QCurlnBykAEozi6p8ZGwWUmzdcMvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uOMMiYM7GWTNamVhgzJmg8qQnfqskU8kTYEjdhxY1Nk=;
 b=nS1aB0dbfczsE50p8X/eAKHTxKocAiefftEx28SsXOegEN2633r/4Llu5qoNX2XqlHmBvFzzqSJ1O3nb/1Y5ZpgdcK02qTaEbybWrYq7WmB5AYGED7xXb2O1WNM/5dLx6zl6n3okZOJGg9GnqUeSwe+nYaQw1pzXkTw6Y4Hfr9inw+gxyeeNKN+rXUMMEa6QpRjXm5/B7L9Otu6MM9h729cFf8XErhCDLbt1qy56OClbLnooq+f+dE+HJi+79264oWqwamLrZ6YhDu2J3LBZJHmNGcvV1dqh1P35M3xClWoF1PZB09CuS4sOyenegX3i5UesLsNUu3gt6Lq9UdpNCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uOMMiYM7GWTNamVhgzJmg8qQnfqskU8kTYEjdhxY1Nk=;
 b=ly+gkJW0SStIW2A2xPUgMJMS+rujwXLldRNzOURmYsMZ/+/3u3/hRtxbWZ7caFufJi43m0TY9yEeE4YKrJVDFkQtGzOSBuDuU3tUwDwY4OeOynnSqNMTBPzpF4p/OGEBzTh+hlZW/FGlkmlsqD4AGp+qmtf593QggyLU0wWgLNE=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.23; Thu, 12 Nov
 2020 15:13:19 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Thu, 12 Nov 2020
 15:13:19 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnDCsOAgAA8BQCAAVTWIA==
Date: Thu, 12 Nov 2020 15:13:18 +0000
Message-ID: <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
In-Reply-To: <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 37d7ac10-b655-4f7d-9a67-08d8871d7cdb
x-ms-traffictypediagnostic: BY5PR11MB4243:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42433ACC95FDBC14ACD2A7A887E70@BY5PR11MB4243.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6gadGoVFepiotkykGrYif+v099pbRYeDK2IU7diebuLtYKJp+VWb+DEI4HKQ2TYSOhBlRNGNit7V19njKrlKSkfZCtRL/An6vSpY5jdSMBiOkr3w4luD01R4rmFIc6GI/jo0IP3fIgGnu8u3yRJ+lDORmhxH0TlcTYDZBrMltVZOeSm0eLI+6LMrbQCQy/qEKDoXtd9r/FsVJqzcwMtJ5/difIBlyMa3v/BNpojr/MfVTYgU78qoOwADc2Yk3e94X5Oh58jg1g4F2wLJzv/TArE7TC6J4+T1hgnKCMaksULq/NHufEgw7XblnEFHroWHCXBKHcrdfXBUPv2wCbIzzw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(136003)(366004)(39860400002)(6506007)(8936002)(8676002)(6916009)(5660300002)(4326008)(66556008)(76116006)(64756008)(7696005)(54906003)(186003)(52536014)(26005)(66476007)(66946007)(53546011)(66446008)(316002)(71200400001)(9686003)(86362001)(478600001)(55016002)(33656002)(83380400001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: uRjV2vxoCR/qDwZ17Hd0gly9U8i3LzkD1aSWCdGCmZGWd67UjSk/j/PHEuLTxPXHat07XO2R0k/+7L3C8DYRZGjFpWphuswSTzwoMIZqKHEUr1PzVX0O2YOafUDgQie3pdLL9NBonXm9Y/bZuYXNGCHOUmfKvlAExhYWzaeSoCxudjgiuAm0acRXwwrYSdwCe3Z7qy72QOX5bJjodZYMa/f+D+bJBc1RJDrQ1D60dRsnBWp93jDN7eQMdE5XLMiAVL+kINnsYEyhQiX1zHCN8ijQOx6i3KzmTxFX1kV22lIqYhebhnhzxglc88zQYiXR4LBd8w8fVJjltX4ioIOG3vS6MpYOR33/Mm7GNIeSSpzZKv0UusSSaTHtxV0LxaNktqmJM5e785eZnjOlDh5ffTOLCk0Ijw7isCCvg9Qhk62TTcFPy2MCjb/P2fwX8DPS9B+gZZOWQyTO1t/H/OkMxsbV2KnSQCfhsnZ/IcDtOHXGnP+5QIfV+mpgK+DTnXkbPH35KR1/IaxXspq9OUCYnlVH2/EDsu2r2FT/1PFwUU57ZXDUiqy9Nqf5ERj6gzQ5XwKZ49Vq0fd77knIAzyTLOP66hzC3gdSA+PbW4FL+5HZTn1HJMCETGBN02tuMaN0OjBu1ZpqprzANP8JOMRLKw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d7ac10-b655-4f7d-9a67-08d8871d7cdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2020 15:13:19.0553
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SoHBKW8R3QJP1OA7ud6Vap1m21zyMuhCfcqC/CJklTVvVW6jN/wgpOVg22OXv8SKiZ9GGUTJe6Q9GbmOavD52w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4243
X-OriginatorOrg: intel.com
Message-ID-Hash: G2NR5N6PR4ZDBFX6VHW4QLQPRNJP7EMN
X-Message-ID-Hash: G2NR5N6PR4ZDBFX6VHW4QLQPRNJP7EMN
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix -Wfallthrough
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/G2NR5N6PR4ZDBFX6VHW4QLQPRNJP7EMN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com> 
Sent: Wednesday, November 11, 2020 10:48 AM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> wrote:
>
> Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the problem for us.

It's not a keyword.

It's a preprocessor macro that expands to
__attribute__((__fallthrough__)) for compilers that support it.  For compilers that do not, it expands to nothing.  Both GCC 7+ and Clang support this attribute.  Which other compilers that support -Wimplicit-fallthrough do you care to support?

We need to support MSVC 2017 -- which apparently does not support this.
> Bob
>
>
> -----Original Message-----
> From: ndesaulniers via sendgmr 
> <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick 
> Desaulniers
> Sent: Tuesday, November 10, 2020 6:12 PM
> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik 
> <erik.kaneda@intel.com>; Wysocki, Rafael J 
> <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva 
> <gustavoars@kernel.org>
> Cc: clang-built-linux@googlegroups.com; Nick Desaulniers 
> <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>; 
> linux-acpi@vger.kernel.org; devel@acpica.org; 
> linux-kernel@vger.kernel.org
> Subject: [PATCH] ACPICA: fix -Wfallthrough
>
> The "fallthrough" pseudo-keyword was added as a portable way to denote intentional fallthrough. This code seemed to be using a mix of fallthrough comments that GCC recognizes, and some kind of lint marker.
> I'm guessing that linter hasn't been run in a while from the mixed use of the marker vs comments.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/acpi/acpica/dscontrol.c | 3 +--
>  drivers/acpi/acpica/dswexec.c   | 4 +---
>  drivers/acpi/acpica/dswload.c   | 3 +--
>  drivers/acpi/acpica/dswload2.c  | 3 +--
>  drivers/acpi/acpica/exfldio.c   | 3 +--
>  drivers/acpi/acpica/exresop.c   | 5 ++---
>  drivers/acpi/acpica/exstore.c   | 6 ++----
>  drivers/acpi/acpica/hwgpe.c     | 3 +--
>  drivers/acpi/acpica/utdelete.c  | 3 +--
>  drivers/acpi/acpica/utprint.c   | 2 +-
>  10 files changed, 12 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dscontrol.c 
> b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19 
> 100644
> --- a/drivers/acpi/acpica/dscontrol.c
> +++ b/drivers/acpi/acpica/dscontrol.c
> @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
>                                 break;
>                         }
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case AML_IF_OP:
>                 /*
> diff --git a/drivers/acpi/acpica/dswexec.c 
> b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f 
> 100644
> --- a/drivers/acpi/acpica/dswexec.c
> +++ b/drivers/acpi/acpica/dswexec.c
> @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
>                                 if (ACPI_FAILURE(status)) {
>                                         break;
>                                 }
> -
> -                               /* Fall through */
> -                               /*lint -fallthrough */
> +                               fallthrough;
>
>                         case AML_INT_EVAL_SUBTREE_OP:
>
> diff --git a/drivers/acpi/acpica/dswload.c 
> b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d 
> 100644
> --- a/drivers/acpi/acpica/dswload.c
> +++ b/drivers/acpi/acpica/dswload.c
> @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/dswload2.c 
> b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072 
> 100644
> --- a/drivers/acpi/acpica/dswload2.c
> +++ b/drivers/acpi/acpica/dswload2.c
> @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/exfldio.c 
> b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9 
> 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
>                  * Now that the Bank has been selected, fall through to the
>                  * region_field case and write the datum to the Operation Region
>                  */
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_LOCAL_REGION_FIELD:
>                 /*
> diff --git a/drivers/acpi/acpica/exresop.c 
> b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551 
> 100644
> --- a/drivers/acpi/acpica/exresop.c
> +++ b/drivers/acpi/acpica/exresop.c
> @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                                 case ACPI_REFCLASS_DEBUG:
>
>                                         target_op = AML_DEBUG_OP;
> -
> -                                       /*lint -fallthrough */
> +                                       fallthrough;
>
>                                 case ACPI_REFCLASS_ARG:
>                                 case ACPI_REFCLASS_LOCAL:
> @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                          * Else not a string - fall through to the normal Reference
>                          * case below
>                          */
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 case ARGI_REFERENCE:    /* References: */
>                 case ARGI_INTEGER_REF:
> diff --git a/drivers/acpi/acpica/exstore.c 
> b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120 
> 100644
> --- a/drivers/acpi/acpica/exstore.c
> +++ b/drivers/acpi/acpica/exstore.c
> @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
>                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
>                         return_ACPI_STATUS(AE_OK);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         default:
>
> @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
>                                 }
>                                 break;
>                         }
> -
> -                       /* Fallthrough */
> +                       fallthrough;
>
>                 case ACPI_TYPE_DEVICE:
>                 case ACPI_TYPE_EVENT:
> diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c 
> index b13a4ed5bc63..fbfad80c8a53 100644
> --- a/drivers/acpi/acpica/hwgpe.c
> +++ b/drivers/acpi/acpica/hwgpe.c
> @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
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
> b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585 
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
> --
> 2.29.2.222.g5d2a92d10f8-goog
>


--
Thanks,
~Nick Desaulniers
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
