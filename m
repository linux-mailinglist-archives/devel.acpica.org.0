Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F952B231D
	for <lists+devel-acpica@lfdr.de>; Fri, 13 Nov 2020 18:58:41 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6004D100EB32B;
	Fri, 13 Nov 2020 09:58:40 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5B484100EB329
	for <devel@acpica.org>; Fri, 13 Nov 2020 09:58:37 -0800 (PST)
IronPort-SDR: 6tjPqRx61jLg6bMVsd1OtSHzUEJEn1ksQGaHt2n2Se1BfkH+E0VCgvDVnRTXENKVx15+xOfihv
 s9SwWQYaC1Yw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="170612745"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208";a="170612745"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 09:58:36 -0800
IronPort-SDR: fkbtRNJrDgRh4ZsUtqlUa+9KTmHeMnzIxbR016Z1l3E9Of6X2ftDe2Etho3T2jv+1Hsb1boSew
 CfUZCcWlPG0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208";a="361426714"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 09:58:36 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 09:58:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 09:58:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 09:58:35 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.57) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 09:58:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5b3Gh7b/A9XLX+WmySA7fZYKHlv39/HZ//jW+xczfmv9eiv8N7rxf0uMj+zdBWceVIUC8oSbtc2P/TrCmxNLBZi7v9SX1OdLidSuVv0EXkC6lF/sTyFTl36UxTmqZAx3KYEiOy6RLyAxEQWiHR+GPbhC3icU/DDV9lSwRhAYwLv1RaCQ2ry0LI2Zm4okq+AAQ8pjNBOcHpi2oRfqQepF9bh4fYYBxriDvB6paQLROtBmcSKSJnwq+0zpXDqA2kWUtXkUTE29eT9Wftw5AMmHsYbCMXi7kpz89Kk/nfhL3o8ay+FOkzaD0ApkvsdKJkX3WYAoY4B3vevCanuFLDnOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zIE5cOTrpxYiZoVxl1RV9Av0f5Ga6NiApLLhlnRqGTM=;
 b=kOhuw1mSOESxGsj0BgZjmQ/Hu7ZfZgEut/qJYemkbUcDNJsYSs19K5Gzl2EsMXkV2dLNq71G2LFEwX99ug2Je5H2BJF6VnRCwPa/SyJDqdT+dk3nwz/Ar6726l6jrmZcgocqkXd6ZvKTupfSbcdgGVRcCcOwJbtvTMeewT0HIyuAMGdPq5KPuwn96/gUkyorRpPpdCuiY9WqOKTrv4WaecRH/rvPQppmzRjPoy/IZ2mujs+cgRKYnUWu5zGnRpJQvDj0+fmExHzLdm+1dlH/3D6LI2Lf4z8dgP6xGm2FEGv2N4iaqMuGsFh42bThKwNMxMsf7Jgf/1Ol5CFIHue/Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zIE5cOTrpxYiZoVxl1RV9Av0f5Ga6NiApLLhlnRqGTM=;
 b=eySuesB/6vrU7YpUMDKeel08UK/9KQFVWxlxBdXee56yay0SVfVGNr8ir9nul0gGZgSE1TB+je8AOgUoF5VvaeTQWFYLvJKG8n0f83zhB/Yu58s/qJ9u5RlLaBpDOZAhZn6MrDZyoIuwXwF/FLMEIFFi5EJ4yV5Coo6RdGuqjf8=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4370.namprd11.prod.outlook.com (2603:10b6:a03:1c3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 17:58:34 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 17:58:34 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20201113 released
Thread-Index: Ada55lHWq7UfxNZNRu6eNEuFbbIZ7A==
Date: Fri, 13 Nov 2020 17:58:34 +0000
Message-ID: <BYAPR11MB325623E70C833C82CB2892FE87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: acpica.org; dkim=none (message not signed)
 header.d=none;acpica.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f794987-eee8-4091-e63c-08d887fdbd39
x-ms-traffictypediagnostic: BY5PR11MB4370:
x-microsoft-antispam-prvs: <BY5PR11MB43702D10BFB32464B3AEF61A87E60@BY5PR11MB4370.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rJJ9h9PM9YGuNdgPzhG83pU7e6fOurOTPwH9jTLTHAhdlCYIZmBHA7qUSq9adHJgmmAKoUCTDnhfGaKK9iu4+8n2bhR19r6pThtyU0ZMWfFYP9Gb8G4FFEyr5/VqAjAas/4/3O7GVJPxgi/85MKOx960a3ob3zjBeTpsSSA3QO3nMyfp/5XVuU7071lgURuwtBQyulheMn3aaJAKjB3Wn22JEoKWZgXlxbasNw+BALEYdeRwvocYgUy//3wi08+wuqjs9O61hRswHBvFgoOM8bHRNw0nuU+mJN86lbfSJafMnwA5DkbXYDpfvFvZR8Pb0yUlhooqQ6lIOke17FFnW00dFulCpZurOrKmT/VAt8R+qyVtJFDVxGTqkxWgz2OtYjq+TeE4koWhPoXiN+suww==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(8936002)(186003)(76116006)(966005)(83380400001)(66946007)(316002)(71200400001)(26005)(6916009)(52536014)(66476007)(6506007)(66446008)(66556008)(7696005)(64756008)(478600001)(33656002)(55016002)(86362001)(2906002)(8676002)(9686003)(7116003)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: ldXBjl2I2OL25jxX5DnXpCgYH5bjMXvbfDOzmOV2P/0OFK0nBh3F3pqxj27/8xfv8KuqWyOfzDQW6vl12KSR/uxsXsAzgmG5tA8shX4CstHUyIKFk6OL0fT6KlISuLFGxS5TdkKheQ2yW/yOx9r57k0lA4GziC6ufveZ1UMgpzIGofqEaTlnjx95Tk81Vl92BRwjQZSoYE+6dgmNPVxxM1gBxo3oz2cPkJF1Jb863965nQ0u/dEyhKF2AXRcVhVaPrRE4EFiIZ4VV4Q2AiS4ToxjsC0J9dC6rgDbZpgXk1ftE2UdagEvi+orB3DySmaOZd9gbtuVZzOHB+hD6Dr2ot8Lx7gK1Kvi/HAWu8B41oSaBbF7yHmlVkwXsIy/DPTpLSJwB2zuSl/ZHNdFO0FjPkphPrcxKeTAIBrRmSAbJ0ZIzAhL4+3LZUoCG5IG34AGYHUsz1npJdYejSrO/CpmgzPDWpixJ4obKY2Zu23S9H18Mw05uO1AbCWfc33MvT8/ZC4PKh16KSwdLTWzOQHw278pTK5+Fip6rCRZ6JVk7zUkc6vAcCTEUGIMQI8vWCQER6WTSao5sGmOZXlt3yEKaiSggOjfR3ShaXgb+Ka7HtlHExid75llsTcAuIQDXSJQj03UkYBrmvfvWcleV5Mofw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f794987-eee8-4091-e63c-08d887fdbd39
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 17:58:34.3449
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wg8F/oQbDAJlwQS6mITYhmAjXLrFpwn8Llbg2OYfUAIk1f1Q7P/bF+VW/R0DpWcpUhvv7UObhOoqYc5UFNu+bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4370
X-OriginatorOrg: intel.com
Message-ID-Hash: QO3SRKDKAT5K2W2D2ENYAVQRXHRUP3YX
X-Message-ID-Hash: QO3SRKDKAT5K2W2D2ENYAVQRXHRUP3YX
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20201113 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/QO3SRKDKAT5K2W2D2ENYAVQRXHRUP3YX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

13 November 2020. Summary of changes for version 20201113:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Interpreter: fixed a memory leak by using use existing buffer in _HID repair. There was a memory leak that occurred when a _CID object is defined as a package containing string objects. When _CID is checked for any possible repairs, it calls a helper function to repair _HID (because _CID basically contains multiple _HID entries). The _HID repair function assumes that string objects are standalone objects that are not contained inside of any packages. The _HID repair function replaced the string object with a brand new object and attempted to delete the old object by decrementing the reference count of the old object. Strings inside of packages have a reference count of 2 so the _HID repair function leaves this object in a dangling state and causes a memory leak. Instead of allocating a brand new object and removing the old object, use the existing object when repairing the _HID object.

Added function trace macros to improve namespace debugging. The namespace repair mechanism does not have function tracing macros. Add several trace macros to improve debuggability.

Handle "orphan" _REG methods for GPIO OpRegions. Before this change AcpiEvExecuteRegMethods() had special handling to handle "orphan" (no matching OpRegion declared) _REG methods for EC nodes. On Intel Cherry Trail devices there are 2 possible ACPI OpRegions for accessing GPIOs. The standard GeneralPurposeIo OpRegion and the Cherry Trail - specific UserDefined 0x9X OpRegions. Having 2 different types of OpRegions leads to potential issues with checks for OpRegion availability, or in other words checks if _REG has been called for the OpRegion which the ACPI code wants to use. Except for the "orphan" EC handling, ACPICA core does not call _REG on an ACPI node which does not define an OpRegion matching the type being registered; and the reference design DSDT, from which most Cherry Trail DSDTs are derived, does not define GeneralPurposeIo, nor UserDefined(0x93) OpRegions for the GPO2 (UID 3) device, because no pins were assigned ACPI controlled functions in the reference design. Togethe
 r this leads to the perfect storm, at least on the Cherry Trail based Medion Akayo E1239T. This design does use a GPO2 pin from its ACPI code and has added the Cherry Trail specific UserDefined(0x93) opregion to its GPO2 ACPI node to access this pin. But it uses a "has _REG been called" availability check for the standard GeneralPurposeIo OpRegion. This clearly is a bug in the DSDT, but this does work under Windows. This issue leads to the intel vbtn driver reporting the device always being in tablet-mode at boot, even if it is in laptop mode. Which in turn causes userspace to ignore touchpad events. So in other words, this issue causes the touchpad to not work at boot. This change fixes this by extending the "orphan" _REG method handling to also apply to GPIO address-space handlers.


2) iASL Compiler/Disassembler and ACPICA tools: 

iASL: Added more info to namespace dump file (-ln option). In a separate section of the dump file (after the main namespace dump), emit the full pathname for each namespace node, its type, and the ASL filename and line number where it is declared.

AcpiHelp: Added an option to display/decode iASL exceptions. Option is: -x [Hex Value] where "Hex Value" is the iASL exception code. If Hex Value is omitted, all iASL exceptions are displayed.

iASL: Use StringLiteral instead of StringData for some ASL macros. The use of the stringData rule allows for some "string" oriented opcodes (Such as ToString, ToHexString, etc.) None of which make sense with the macros in question. This change modifies the StringData part of the rule for these macros to a simple string  literal - thus disallowing the use of ToString, ToHexString, etc.
The following ASL operators (macros) are affected:
EisaId
Fprintf
Printf
ToUuid
Unicode
Note: The MS compiler requires the use of string literals for these operators also.

iASL: Added a remark for an unknown UUID: ASL_MSG_UUID_NOT_FOUND. Search the list of "known" UUIDs for the input to the ToUUID macro.

Added 5 new UUIDs to the known UUID table. All related to NVDIMM and the NFIT table.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
