Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9582B2743
	for <lists+devel-acpica@lfdr.de>; Fri, 13 Nov 2020 22:42:27 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C7B40100EB34B;
	Fri, 13 Nov 2020 13:42:25 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2DF6C100EC1E2
	for <devel@acpica.org>; Fri, 13 Nov 2020 13:42:23 -0800 (PST)
IronPort-SDR: LSZg5/yjcGH9eahKd0A8fpTqu50FjFyhzKEZVKkK3vn8110lE15IQiQ3wA2JRVsKKO/LmxwNHb
 VKIrf+sGrwxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="169754441"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208";a="169754441"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 13:42:22 -0800
IronPort-SDR: DeaZh4uPUAU1V/dOiqw6DOAuHOmxAa511G/P8Nw/RQ3JvuvqbNJDgfKAcIIDbRkvN6JFwdlRHi
 Tv0/oLIl8Fiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208";a="309289740"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga008.fm.intel.com with ESMTP; 13 Nov 2020 13:42:22 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:42:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:42:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 13:42:21 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 13:42:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lmUusCIhp/FNa/bDwNAN4cQ/lvCBK8MTSuxOLw95jezW8/CturlZgcEID2qcOr2ZR53ZRHdS6dzmm0W4986m0lTdzow5+MAsSTptCCYAFsfbJVRj1c8DL7u9WPSmEEt7OAID8GYYzcDR2gtIRWCNMpX28pCmHemVQlfHu7lIjXuG3VM0pkJ4//2jYuiNRqhEnOhyRDdCrnD5m2yUPyahIeZUgnj1/STW7aBmukKWLCGL/jOn74KYPRXCHhERyyueLp5GVWmlzaGiEDRG62gda+F8MHbvm4IKmJ+yN/xsp6se/Noah41nZCMHQFL6+RcmhFqS4Lb8a7I5qjDsRrbsHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RjAw/w36aiJygQiGr/dvrwxMoYzU7aCI20v0qlSbPeY=;
 b=jd56PFLH7wSQNaxGlW87KmxiBjFDDkjo6kBq9FX3Gy93qtvnJkFOt17VZVzhjhu6oSx3grcMHD/iFwHmBPDT2QBw/YXIy32AH+uS32VIlrwCM7zR6E/5kT/q4Qy5U6M0y/pG60ldy5F8WZQbJJjzDHAIgJAifz3Olbk4bhOVDXlx5NGTNTrxKOyKiQ5bXtNPoevlyjK181ct68sWNX0xS9DgLSHlkongk2iMn635utxn1mwt6Erxoga2EqIoktZOKklCH3wzuhA4T7g8VkMtEcwRPqi+RAeFAIh9vmWTMe6FXA2W8Ea9AjZuoKjPCrbd+IIbF1RhhL9DgpIaDzEycg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RjAw/w36aiJygQiGr/dvrwxMoYzU7aCI20v0qlSbPeY=;
 b=XaeofeXYcoC5ehLWvq9k9/spnExVMl10Q+D11gP4dQDtvk1viLgUQ1ZJnV0ggdrSRFot0xCl4sIyUp0btHcjwRjr4quXXqgpO9aJ7X4vViu4Fmif+OdzxAkr5Bmt9lyPKSK0ymyZHewWy53SVQxeEC5zpo+sCkiEvRiLPTxfEuU=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2679.namprd11.prod.outlook.com (2603:10b6:a02:c7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 21:42:16 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 21:42:16 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5SwgAAB3QCAAAJ3cA==
Date: Fri, 13 Nov 2020 21:42:15 +0000
Message-ID: <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
In-Reply-To: <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: f0c4bca0-d908-4baf-627c-08d8881cfd2f
x-ms-traffictypediagnostic: BYAPR11MB2679:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB267923CC13D93023834CDF5C87E60@BYAPR11MB2679.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XnBz1sznJprnCr+uBXlWi25lLK1h9aasoDEPELsX11kNTEn5tfM7+QDBtxiI8XjdiUJhpEHRwMB8NH+49DqE07Tt/xoE4BivY3SCPOstNl0Pssm7xNbjrheop02I9N3wHgkcLq9w1e0OT+K9mpmTXqZP9QVk3TAITTX2eACYe0Sx53WUT4/g2IzMjL5RIjpuxOIioXWXTuGRu3jlTy1tQknzch/aJmMedUcirzb8M1+3ZraiRNe11bo20gDZBKbISYxbZSrxZsuecFZelmQv3VJq3mWP7h3n85p1PBlr04tUfll54nEiMb8Ca1St3TnAOxD/hglv7oWz0x7CVO3sbw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(9686003)(52536014)(33656002)(64756008)(54906003)(86362001)(8676002)(26005)(316002)(71200400001)(6916009)(478600001)(4326008)(6506007)(7696005)(66476007)(66556008)(2906002)(66446008)(66946007)(53546011)(8936002)(5660300002)(55016002)(83380400001)(76116006)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: r5j/McMXmaygSSw/N/fH0Qr++5ZNxv0DJrOrvCsCr6Q6A10LRDhVza0yHtulzIQfNR8ODGGHuSb6m9h1G0HBq+5Z9Y7nkBFlN8nl8pnOVRL00ApoSusDEErAtwPlM3JdGKA5aXcn2bAyD+o3PCsADTnj91t8hm4sSjV4BnJ8etZ2NIHUNakkzfko2/gWmD4Bysxw5fi44GHeRAjlQdWoS329ZqGYeVa6YEedY9YnfSkMcLIJqx0UNMcT4ipGD+PzjmfrqDSxPDfA4/DqcGY+Ttskm+jtJMnYn0f6+s9BWy46aLgAp+XLmxrnO4rCyBaAhkUhB54CXJurqVoINLQCITqU0NYTLy7G6UQwFW40XC5C8ygUE8v4AAXNMT0KwwV/FBHdgafcbl6cPr034KnNfvN98bNhetyU0oSs3EFNSyOkkgxFUjwmXambxQsbgS+nOSGQZPf2CNXSL2HDpk5ew20nnAeNfjQ+mNOyv85BS4NaGBFjBpPYBk8Oyfv3crWPQmtkiXdNK2NpBUyoMOfwPijgwfeYTdWGmKpQy3lHuuh+qMX30P4fZ74vPuHSeR515AAm0BixLA/P0E3QDkc9DQfs0ACuZeJXygY+t2rzJaifjuFmv3QwEnRqQFlNKC6XZ4MmbV4NHLBm639/rRrxBw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0c4bca0-d908-4baf-627c-08d8881cfd2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 21:42:16.0038
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDhznEqkv7rux2iK0HLeUcCCkbekpsJra35aEoZab5xJAhRo15AJQOyuZXZH2xyuqEaGZpirt6C5l3BM0FeSew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2679
X-OriginatorOrg: intel.com
Message-ID-Hash: KMKW5CKG4PKIDQMB4VWN3SF4H5YYE2BZ
X-Message-ID-Hash: KMKW5CKG4PKIDQMB4VWN3SF4H5YYE2BZ
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix -Wfallthrough
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KMKW5CKG4PKIDQMB4VWN3SF4H5YYE2BZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com> 
Sent: Friday, November 13, 2020 1:33 PM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Fri, Nov 13, 2020 at 1:27 PM Moore, Robert <robert.moore@intel.com> wrote:
>
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
> /*lint -fallthrough */
>
> This is the lint marker

Yes; but from my patch, the hunk modifying
acpi_ex_store_object_to_node() and vsnprintf() seem to indicate that maybe the linter hasn't been run in a while.

Which linter is that?  I'm curious whether I should leave those be, and whether we're going to have an issue between compilers and linters as to which line/order these would need to appear on.

It's an old version of PC-Lint, which we don't use anymore.


>
> BTW, what version of gcc added -Wfallthrough?

GCC 7.1 added -Wimplicit-fallthrough.

>
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
