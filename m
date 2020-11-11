Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8211B2AF490
	for <lists+devel-acpica@lfdr.de>; Wed, 11 Nov 2020 16:15:44 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 910CB16959126;
	Wed, 11 Nov 2020 07:15:42 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8D48216959125
	for <devel@acpica.org>; Wed, 11 Nov 2020 07:15:39 -0800 (PST)
IronPort-SDR: 7ODWv8T7h2QlZ3RT7YPLofvQXD9q2MGfkqXAUOZx1NAZ6LCVYvLK62V4SytPL7QpU7ieWgVjIO
 c9wyZtyZi0ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="169375841"
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400";
   d="scan'208";a="169375841"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2020 07:15:20 -0800
IronPort-SDR: 2FBNQo8U1XIrE46efkZDp+aLhXoQHKCNufSyZaTKLlDqegWteUv7L6mpZ7XAzlBM7kID8gMS1d
 qdFdYydAMVqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400";
   d="scan'208";a="308487963"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga008.fm.intel.com with ESMTP; 11 Nov 2020 07:15:20 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Nov 2020 07:15:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Nov 2020 07:15:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 11 Nov 2020 07:15:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqvQRYtYwe/Bq5j2opx2gjuogOx8CZzD/AP5gU8dpZlFFnKaIoIS9LxTaxYHGN3uaeP8hjJHs0tO7YGs9f7TBhqskR9g6TiTrChGkAc6d5VYlKSK0Jo9cqxWywNAvr6WYfag4t9sIXFiDAsrUBSl3SyNpjsGvgG4t5qpgSHXGdIdgw3AN6vNpVmJUbu9adWFmxmdxF0jrglX7KRrqgGpRmZGVfOQCpFmqlbGS1Jfx42qLpTk66QK/JbULKXjjqOnJdBaSDuXUOMe0xZLjIIZSwlVd0NOcbBTvSFlTmeyWdB1+yf0AvmW77MP2G79TNOjBqV5T5zcx5IDSLn4PmBQZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MVmm3Wp4G62SLZDmV61fkWT/GW5oba/46Z70J+JN6g8=;
 b=UsqsYYugy8ZT3savS656xqDPTHIVQDuO3072Rj3Y0DqUsmVdUIspzjb3Nsd9ZDNrWPT2sOT7lS2hw/avsOuLkUife3Dp7u0A6rccvjDLbiFSs8LApaFVTt+1R6CDgrB8YUe+qWSlL+/bJQeMf3h5c1lpup/VgiPIXA39zTdvW7mODcFuIA1O0+cNF7VfirAGsw11eK9rhv8mXmqLAI3r9kVImAlgkiuVLq2+ywuu7hUkKnJQWb43BcDLEm28ln7JFd+Npa5n+t9eF63R6HkbS36i3jdqrBVQ5fXhc2m4SmE+v6gYrHdjHRK63cPMsTqnCtUlUIMyEZNOyOALqEggzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MVmm3Wp4G62SLZDmV61fkWT/GW5oba/46Z70J+JN6g8=;
 b=csW0DMmEEHKCgbzoAMm4BqQDYSiaz8SnAxpiboeKH+D36Ehu96aX3L3QsGmFbFMO+pMVJCUOGznBmaH+D+G7r8AQShunuysWKXClOkoXtuhsTOym5Q7osp7tpG46Xtr83DU2bYRlZTnJMZT3ygd9EvBFuZjrGdqHRay//4j8Jug=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4225.namprd11.prod.outlook.com (2603:10b6:a03:1ba::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Wed, 11 Nov
 2020 15:15:14 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 15:15:14 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Kaneda, Erik"
	<erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnDCsOA
Date: Wed, 11 Nov 2020 15:15:14 +0000
Message-ID: <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
In-Reply-To: <20201111021131.822867-1-ndesaulniers@google.com>
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
x-ms-office365-filtering-correlation-id: 94f16ba8-fa71-4053-5d00-08d88654971f
x-ms-traffictypediagnostic: BY5PR11MB4225:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB422515A0AC0A9A22E2E14A9487E80@BY5PR11MB4225.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XAY7tGTRiuLl2ZBK1VND1DdzP5CL6Lm+bN3laOyGZS3Zj1Sts3RTIF2jbIE22ibklkz57Zwec7CyT+uFTbSRUdhS3aAG46w0OecG0sUAIf901sJ0cZmiu4NCm9oqPfbwta3fWs0FwOhZA8NKEgntVmj3Fuv1p0SwMeYbsjopo99bZyHKXNWeJ0YLjdfcqc4gfU1foTr41CsS6VxAqboxokR7uD2/mS2xZNFEw7IfUhB+eNbw97mlca05D38Ps8FobHaCojqyez4grxxZ+CsW128htCqYyDINqUM1ebDSzqPZw+We7g3eDltJ6mK2P1YkkKIDU6ruOkUjPr/LD70G+Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(316002)(54906003)(110136005)(6506007)(4326008)(55016002)(478600001)(33656002)(2906002)(66476007)(53546011)(26005)(186003)(7696005)(76116006)(5660300002)(83380400001)(8676002)(8936002)(71200400001)(9686003)(66946007)(86362001)(66446008)(66556008)(52536014)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: XvSO7yqUpp1AZEQNQz51jXrUVSXAEJtAzu+8b8U0kl8lmcolR3IJTnEnv2NPwjF4WV+yJmRhXe5NLuddp3H0FsEfkDcDrSBwdv1ZtlKyTQfpnJphr0BKq5sdvPEbpI3R43mB2sCnN5MDRkVX3ncheM1W41dD5LrNavo17nOIAM3RyqNZDiMrVtDjrHI+WadsCPX7a11ALZUDxlincvJ7U4aaSNqbg7fFIHY43RxFp4u0lNcqsKIHTY5Zz9/DnWxR/xOIFW+qkUR91nuUFzdXiWSPug1DSu4hTaTqGuxCIOyDCk1o5wuquiItCDmVOhuLMpIJA00/i+92s1rPN9XmqtfB0UVX0PUmXo3ktjq6QKyjAIBNXQwFkhLCESFZOk6x61o50THb1kR75RlySd5s6tv1CPOPWZUQLdSH+pIQY+NFaXLSljGTGo+1ewPKEaxNrFmtTKbsm4v7WoTb5MeoK108R+/rszXdfDUS8CzgckcB/XScxSn3QL5nEZEfHdWGjcDkHj2EnCc8wrEmnTJce8Gz12dLlGtfh7Ow5+qQECuRSDbljxbgUsZw6Rv2/Y9gBK9uRHtDylXAKmI4Lmeuyf/KEOT+Fujhg+Sfd2ioGQKDhQsGZYXWP6xPRSBdSXy87+Ldo+zzTp95IiaFLy1LmQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94f16ba8-fa71-4053-5d00-08d88654971f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2020 15:15:14.2265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0cWy0SXT9rXklqv+5cRxnlmKVPSWzI5B7MmEp9aB60pzonN2kNDkIbmtHHTuwjTEHcKiO6sXBc7Z8271Ota3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4225
X-OriginatorOrg: intel.com
Message-ID-Hash: QNUS5NUT4O3JCIALGRBM4TAHPAKDT4YN
X-Message-ID-Hash: QNUS5NUT4O3JCIALGRBM4TAHPAKDT4YN
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix -Wfallthrough
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QNUS5NUT4O3JCIALGRBM4TAHPAKDT4YN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the problem for us.
Bob


-----Original Message-----
From: ndesaulniers via sendgmr <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick Desaulniers
Sent: Tuesday, November 10, 2020 6:12 PM
To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>
Cc: clang-built-linux@googlegroups.com; Nick Desaulniers <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: [PATCH] ACPICA: fix -Wfallthrough

The "fallthrough" pseudo-keyword was added as a portable way to denote intentional fallthrough. This code seemed to be using a mix of fallthrough comments that GCC recognizes, and some kind of lint marker.
I'm guessing that linter hasn't been run in a while from the mixed use of the marker vs comments.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/acpi/acpica/dscontrol.c | 3 +--
 drivers/acpi/acpica/dswexec.c   | 4 +---
 drivers/acpi/acpica/dswload.c   | 3 +--
 drivers/acpi/acpica/dswload2.c  | 3 +--
 drivers/acpi/acpica/exfldio.c   | 3 +--
 drivers/acpi/acpica/exresop.c   | 5 ++---
 drivers/acpi/acpica/exstore.c   | 6 ++----
 drivers/acpi/acpica/hwgpe.c     | 3 +--
 drivers/acpi/acpica/utdelete.c  | 3 +--
 drivers/acpi/acpica/utprint.c   | 2 +-
 10 files changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19 100644
--- a/drivers/acpi/acpica/dscontrol.c
+++ b/drivers/acpi/acpica/dscontrol.c
@@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
 				break;
 			}
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case AML_IF_OP:
 		/*
diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f 100644
--- a/drivers/acpi/acpica/dswexec.c
+++ b/drivers/acpi/acpica/dswexec.c
@@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
 				if (ACPI_FAILURE(status)) {
 					break;
 				}
-
-				/* Fall through */
-				/*lint -fallthrough */
+				fallthrough;
 
 			case AML_INT_EVAL_SUBTREE_OP:
 
diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d 100644
--- a/drivers/acpi/acpica/dswload.c
+++ b/drivers/acpi/acpica/dswload.c
@@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072 100644
--- a/drivers/acpi/acpica/dswload2.c
+++ b/drivers/acpi/acpica/dswload2.c
@@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9 100644
--- a/drivers/acpi/acpica/exfldio.c
+++ b/drivers/acpi/acpica/exfldio.c
@@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
 		 * Now that the Bank has been selected, fall through to the
 		 * region_field case and write the datum to the Operation Region
 		 */
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_LOCAL_REGION_FIELD:
 		/*
diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551 100644
--- a/drivers/acpi/acpica/exresop.c
+++ b/drivers/acpi/acpica/exresop.c
@@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
 				case ACPI_REFCLASS_DEBUG:
 
 					target_op = AML_DEBUG_OP;
-
-					/*lint -fallthrough */
+					fallthrough;
 
 				case ACPI_REFCLASS_ARG:
 				case ACPI_REFCLASS_LOCAL:
@@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
 			 * Else not a string - fall through to the normal Reference
 			 * case below
 			 */
-			/*lint -fallthrough */
+			fallthrough;
 
 		case ARGI_REFERENCE:	/* References: */
 		case ARGI_INTEGER_REF:
diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120 100644
--- a/drivers/acpi/acpica/exstore.c
+++ b/drivers/acpi/acpica/exstore.c
@@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
 		if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
 			return_ACPI_STATUS(AE_OK);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	default:
 
@@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
 				}
 				break;
 			}
-
-			/* Fallthrough */
+			fallthrough;
 
 		case ACPI_TYPE_DEVICE:
 		case ACPI_TYPE_EVENT:
diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c index b13a4ed5bc63..fbfad80c8a53 100644
--- a/drivers/acpi/acpica/hwgpe.c
+++ b/drivers/acpi/acpica/hwgpe.c
@@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
 		if (!(register_bit & gpe_register_info->enable_mask)) {
 			return (AE_BAD_PARAMETER);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_GPE_ENABLE:
 
diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585 100644
--- a/drivers/acpi/acpica/utdelete.c
+++ b/drivers/acpi/acpica/utdelete.c
@@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
 			(void)acpi_ev_delete_gpe_block(object->device.
 						       gpe_block);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_PROCESSOR:
 	case ACPI_TYPE_THERMAL:
diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2 100644
--- a/drivers/acpi/acpica/utprint.c
+++ b/drivers/acpi/acpica/utprint.c
@@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
 		case 'X':
 
 			type |= ACPI_FORMAT_UPPER;
-			/* FALLTHROUGH */
+			fallthrough;
 
 		case 'x':
 
--
2.29.2.222.g5d2a92d10f8-goog

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
