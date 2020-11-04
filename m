Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC32A7036
	for <lists+devel-acpica@lfdr.de>; Wed,  4 Nov 2020 23:08:30 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B86A016598B09;
	Wed,  4 Nov 2020 14:08:28 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 6C0EF16598AFF
	for <devel@acpica.org>; Wed,  4 Nov 2020 14:08:26 -0800 (PST)
IronPort-SDR: L7IEzFOJbMAIk0WVYY9f3GydvNuuUc/nlLJQuGCp94BsUp5qkVvD2fLvKOSxQ8dwVAwULUwFuD
 AhJgC29wgYQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="166706034"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400";
   d="scan'208";a="166706034"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2020 14:08:24 -0800
IronPort-SDR: OoLqWUtyTPrI5r++SHIq46WppJe4dEj38ykzf6rTVr0zZC7ZdnXX8oNC092v/c3VquJIMWakmA
 XBuQsdQHRNew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400";
   d="scan'208";a="358213313"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by fmsmga002.fm.intel.com with ESMTP; 04 Nov 2020 14:08:24 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Nov 2020 14:08:23 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 4 Nov 2020 14:08:22 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 4 Nov 2020 14:08:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grdwyLNbrOjGQaBS8fIdxcDSuxm6Puc6oTcGvIlI7Deru9dZg1Be+OJpqwN7INAGGjNLyZPdSQ/5VBoynas/xZsFQ3WWKQHXyp9fezyqfcpDPG/ab4vsDHe1KFUMnzvaVFT0+7QnsNu2n9cxk/hz41uZzc6km4wY7oO5L1rG1h0f5FLx2cszV6Q/2bhf75NXvzsjxJ+nEiQ20x1DdcvotKWfUhACjTAzAbCjsf2Mh/5p9jFdBChx0A0p9EkkdcOMKWK7th6r6SBdFqbY8Oj/cYav6wxTTMHuLtdlXq4mtRwpECsVAO77ey7Cs2jmQOFJRgqWZunqAY6rLOeB3pcofQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfG6E+BfJBrzuwXIGkbPXe2NcchBwBO91Han2E5kS6M=;
 b=DacQRxuQMnnpkqBh2F03hzuuyajMfGvNHe81s1CqUwhBJVAOEqtWmbhV7exC4TEINWkFvsW588zE+K5nb0UBNsdfrxXEfqjqN/t1V41l+RdMmqcEdBLNato/8Kyw94HyR+EvTjfXUz56KloUgPQKEQaATdv/iLqSOiDTnMQN7SItayGNozoWD5GE2r/8AuSv31PnDfz6hRkolzvacuxvzQAqjep5V3kIUyc79gUnPWDKDoDfbFDXtDXexc3jYdXr76MBUOPYlHPSnHTkeVlFnG7XbiPieLXIF9iNluYSRA7qoW6+NV0IacMag6KfInhUA3EahzPMDMs2HOko+ibmCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfG6E+BfJBrzuwXIGkbPXe2NcchBwBO91Han2E5kS6M=;
 b=PrYNZbcF26SXyYJHPkqasYbQBJGs0jZWPti0S6TUBeCdXZ/QVTuWO6g3mAyHEaAxz8rUHfJjJgBltl1y/kKQpunjiVS/BN4OojlGPr8PxOs1RT/aTEE61TjWsKMfgSTwPJEf3Zrj7UOfMSZAL4Gp4c52QpVH6ImoyPLKG4E/cgg=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 4 Nov
 2020 22:08:21 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3499.032; Wed, 4 Nov 2020
 22:08:21 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "Kaneda, Erik" <erik.kaneda@intel.com>, Hans de Goede
	<hdegoede@redhat.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown
	<lenb@kernel.org>
Thread-Topic: [PATCH] ACPICA: Also handle "orphan" _REG methods for GPIO
 OpRegions
Thread-Index: AQHWqrOos9lTzcrXNkahVmnQD/7vQqmqX2aAgAEi25CAADnEgIAAFTsAgAHOI4CACvkpAA==
Date: Wed, 4 Nov 2020 22:08:20 +0000
Message-ID: <BYAPR11MB3256373BEB72B694044D29A987EF0@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201025094542.3669-1-hdegoede@redhat.com>
 <MWHPR11MB159947FE046515CE985CA571F0190@MWHPR11MB1599.namprd11.prod.outlook.com>
 <BYAPR11MB32563BD4E4ABB7BEF135ABFB87160@BYAPR11MB3256.namprd11.prod.outlook.com>
 <MWHPR11MB15990ABB3778816E4831FDF9F0160@MWHPR11MB1599.namprd11.prod.outlook.com>
 <d8330e68-c0ab-ab3c-ee13-3d9dc58ade7b@redhat.com>
 <MWHPR11MB1599E899E45EF55CB70A89A3F0170@MWHPR11MB1599.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1599E899E45EF55CB70A89A3F0170@MWHPR11MB1599.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2390274-f490-499a-7c9b-08d8810e243f
x-ms-traffictypediagnostic: BYAPR11MB3624:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3624CE1A8E735ADADE79302A87EF0@BYAPR11MB3624.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2EczezXsmsC8AyGGEnPPhNadLJDadOJZBS9YGLRrqfcHBbOew/OL+fCPadgq75ZiWw+D7c67Oy3OK2TY8iOoaBmvgEYgxme2+xHasWn/7mX97p2VCw8yJv6DOu6W/ou/MT0NHuqAE/69Uve/mpRxUbmiZPR/Iy12f5BQt/PIwlx82DMaN5xKnXrFmb2TfSFSbvOg27JnRD5SWgHSMfT3SFPwoZqf4JfOx06yb4tOnWQgIq647/b9AQIPAb0fGpiYHVaPDiwt7UNv8q1NeHGfvX33U9m/jGwoOeoPfj9iTE0sN3GbjIlojPwYX2YfoQNJiG8L2lLKZpTf9e1WtAgyyfIL45PutIOPQV7kL6354xJQQL6FM+4Dh/J4SBk9LffdJAAMaZOEEa973LKsHGWtvw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(6029001)(4636009)(346002)(396003)(376002)(136003)(39860400002)(366004)(966005)(478600001)(30864003)(52536014)(5660300002)(66946007)(2906002)(76116006)(8936002)(54906003)(53546011)(55016002)(6506007)(110136005)(4326008)(64756008)(83380400001)(66476007)(66446008)(8676002)(66556008)(316002)(9686003)(7696005)(26005)(33656002)(186003)(71200400001)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: tsHINZ2r0pCqU0cUVlEBk1LFJTy+NVnNBgktcNZ8ShH8jNtOc11CKCepeuoENlD4QQttrLwIyvrqGwRpHGtoH12mcsryDG1TaqLGSSw/S1ZmrT9CYOgm2esalvqgDZ3OryagGh9mVM8mCWPYP1UBMjm3mJaARe4a2FsIwGT0ralofYKSbbLOvTNrkHqILK7RYzzqJKBajwG6kK0AeyzZOdIinYA/RRdwHle9Tuqdwc9YAabW214ghqAi1invN+D7mDFLVdlFl+6wZA9rkbFlPmiiEJZACyG3gr1ZRPvbA2yP0ihfuNID/lvhNMMw9I354gQuJXZs1tXgetljTsy7Rd6CDkKGaCCG4w3gnQS/Mq9nvHfM3ktDvimCzQkDkzSWgD843Blz/39yV8qs0/k39gJ7VsirXRyBerFgrjaqXm6IdDpiJsgGfEl/UGR8yvoXFBLcX7oOx3s9UM/ABYwStM83hXAxt2kTekCy9alhRLad9b/2vXa/q0uk56xw4ANMom56SvtTMsLF/dt/BkzTYtAkPPMFVUOjmW6gaswYTiLsVntzicQFEL2iuxh74PrLsLpDvgTGp2G43EDCFjHgK4RVQWJ1BpWKGx1StHkdA6xnZ7iM5mTXiXY7HNBBPVHw40CgibwwzgeJamRSBb2dnQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2390274-f490-499a-7c9b-08d8810e243f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2020 22:08:20.9061
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yAy2lAHBM9sarBup53QNqCbfjM0//03Q3Tkkk79MNvWHgGIh9mOcAmkG28hoWEtyhqZogsvmoyT9rKC1I3aYBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3624
X-OriginatorOrg: intel.com
Message-ID-Hash: V53TOCMRERLQR73EQ6XT7ETT3VY5FHJU
X-Message-ID-Hash: V53TOCMRERLQR73EQ6XT7ETT3VY5FHJU
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Also handle "orphan" _REG methods for GPIO OpRegions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/V53TOCMRERLQR73EQ6XT7ETT3VY5FHJU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've merged this one.


-----Original Message-----
From: Kaneda, Erik <erik.kaneda@intel.com> 
Sent: Wednesday, October 28, 2020 3:34 PM
To: Hans de Goede <hdegoede@redhat.com>; Moore, Robert <robert.moore@intel.com>; Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>
Cc: linux-acpi@vger.kernel.org; devel@acpica.org
Subject: RE: [PATCH] ACPICA: Also handle "orphan" _REG methods for GPIO OpRegions



> -----Original Message-----
> From: Hans de Goede <hdegoede@redhat.com>
> Sent: Tuesday, October 27, 2020 12:00 PM
> To: Kaneda, Erik <erik.kaneda@intel.com>; Moore, Robert 
> <robert.moore@intel.com>; Rafael J . Wysocki <rjw@rjwysocki.net>; Len 
> Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> Subject: Re: [PATCH] ACPICA: Also handle "orphan" _REG methods for 
> GPIO OpRegions
> 
> Hi,
> 
> On 10/27/20 6:43 PM, Kaneda, Erik wrote:
> >
> >
> >> -----Original Message-----
> >> From: Moore, Robert <robert.moore@intel.com>
> >> Sent: Tuesday, October 27, 2020 7:17 AM
> >> To: Kaneda, Erik <erik.kaneda@intel.com>; Hans de Goede 
> >> <hdegoede@redhat.com>; Rafael J . Wysocki <rjw@rjwysocki.net>; Len 
> >> Brown <lenb@kernel.org>
> >> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> >> Subject: RE: [PATCH] ACPICA: Also handle "orphan" _REG methods for
> GPIO
> >> OpRegions
> >>
> >> Looks OK to me.
> >
> > Ok, I'll make a pull request of this to ACPICA on behalf of Hans and 
> > it will be
> in the next ACPICA release.
> 
> Great, thank you.

Pull request is available here: https://github.com/acpica/acpica/pull/644

Once it's merged, it'll be a part of the next ACPICA release.

Thanks,
Erik
> 
> Regards,
> 
> Hans
> 
> 
> 
> >> -----Original Message-----
> >> From: Kaneda, Erik <erik.kaneda@intel.com>
> >> Sent: Monday, October 26, 2020 1:56 PM
> >> To: Hans de Goede <hdegoede@redhat.com>; Rafael J . Wysocki 
> >> <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Moore, Robert 
> >> <robert.moore@intel.com>
> >> Cc: linux-acpi@vger.kernel.org; devel@acpica.org
> >> Subject: RE: [PATCH] ACPICA: Also handle "orphan" _REG methods for
> GPIO
> >> OpRegions
> >>
> >>
> >>
> >>> -----Original Message-----
> >>> From: Hans de Goede <hdegoede@redhat.com>
> >>> Sent: Sunday, October 25, 2020 2:46 AM
> >>> To: Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown 
> >>> <lenb@kernel.org>; Moore, Robert <robert.moore@intel.com>; Kaneda, 
> >>> Erik <erik.kaneda@intel.com>
> >>> Cc: Hans de Goede <hdegoede@redhat.com>; linux-
> acpi@vger.kernel.org;
> >>> devel@acpica.org
> >>> Subject: [PATCH] ACPICA: Also handle "orphan" _REG methods for 
> >>> GPIO OpRegions
> >>>
> >>> Before this commit acpi_ev_execute_reg_methods() had special
> handling
> >>> to handle "orphan" (no matching OpRegion declared) _REG methods 
> >>> for
> EC
> >>> nodes.
> >>>
> >>> On Intel Cherry Trail devices there are 2 possible ACPI OpRegions 
> >>> for accessing GPIOs. The standard GeneralPurposeIo OpRegion and 
> >>> the
> Cherry
> >>> Trail specific UserDefined 0x9X OpRegions.
> >>>
> >>> Having 2 different types of OpRegions leads to potential issues 
> >>> with checks for OpRegion availability, or in other words checks if 
> >>> _REG has been called for the OpRegion which the ACPI code wants to use.
> >>>
> >>> Except for the "orphan" EC handling, ACPICA core does not call 
> >>> _REG on an ACPI node which does not define an OpRegion matching 
> >>> the type
> being
> >>> registered; and the reference design DSDT, from which most Cherry 
> >>> Trail DSDTs are derived, does not define GeneralPurposeIo, nor
> >>> UserDefined(0x93)
> >>> OpRegions for the GPO2 (UID 3) device, because no pins were 
> >>> assigned ACPI controlled functions in the reference design.
> >>>
> >>> Together this leads to the perfect storm, at least on the Cherry 
> >>> Trail based Medion Akayo E1239T. This design does use a GPO2 pin 
> >>> from its ACPI code and has added the Cherry Trail specific 
> >>> UserDefined(0x93) opregion to its GPO2 ACPI node to access this pin.
> >>>
> >>> But it uses a has _REG been called availability check for the 
> >>> standard GeneralPurposeIo OpRegion. This clearly is a bug in the 
> >>> DSDT, but this does work under Windows. This issue leads to the 
> >>> intel_vbtn driver reporting the device always being in tablet-mode 
> >>> at boot, even if it is in laptop mode. Which in turn causes 
> >>> userspace to ignore touchpad events. So iow this issues causes the touchpad to not work at boot.
> >>>
> >>> This commit fixes this by extending the "orphan" _REG method 
> >>> handling to also apply to GPIO address-space handlers.
> >>>
> >>> Note it seems that Windows always calls "orphan" _REG methods so 
> >>> me may want to consider dropping the space-id check and always do 
> >>> "orphan" _REG method handling.
> >>>
> >>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> >>> ---
> >>>  drivers/acpi/acpica/evregion.c | 54
> >>> +++++++++++++++++-----------------
> >>>  1 file changed, 27 insertions(+), 27 deletions(-)
> >>>
> >>> diff --git a/drivers/acpi/acpica/evregion.c 
> >>> b/drivers/acpi/acpica/evregion.c index 738d4b231f34..21ff341e34a4
> >>> 100644
> >>> --- a/drivers/acpi/acpica/evregion.c
> >>> +++ b/drivers/acpi/acpica/evregion.c
> >>> @@ -21,7 +21,8 @@ extern u8 acpi_gbl_default_address_spaces[];
> >>>  /* Local prototypes */
> >>>
> >>>  static void
> >>> -acpi_ev_orphan_ec_reg_method(struct acpi_namespace_node 
> >>> *ec_device_node);
> >>> +acpi_ev_execute_orphan_reg_method(struct acpi_namespace_node
> >>> *device_node,
> >>> +				  acpi_adr_space_type space_id);
> >>>
> >>>  static acpi_status
> >>>  acpi_ev_reg_run(acpi_handle obj_handle, @@ -684,10 +685,12 @@ 
> >>> acpi_ev_execute_reg_methods(struct
> >>> acpi_namespace_node *node,
> >>>  				     ACPI_NS_WALK_UNLOCK,
> >>> acpi_ev_reg_run, NULL,
> >>>  				     &info, NULL);
> >>>
> >>> -	/* Special case for EC: handle "orphan" _REG methods with no region
> >>> */
> >>> -
> >>> -	if (space_id == ACPI_ADR_SPACE_EC) {
> >>> -		acpi_ev_orphan_ec_reg_method(node);
> >>> +	/*
> >>> +	 * Special case for EC and GPIO: handle "orphan" _REG methods with
> >>> +	 * no region.
> >>> +	 */
> >>> +	if (space_id == ACPI_ADR_SPACE_EC || space_id ==
> >>> ACPI_ADR_SPACE_GPIO) {
> >>> +		acpi_ev_execute_orphan_reg_method(node, space_id);
> >>>  	}
> >>>
> >>>  	ACPI_DEBUG_PRINT_RAW((ACPI_DB_NAMES,
> >>> @@ -760,31 +763,28 @@ acpi_ev_reg_run(acpi_handle obj_handle,
> >>>
> >>>
> >>>
> >>
> /**********************************************************
> >>> *********************
> >>>   *
> >>> - * FUNCTION:    acpi_ev_orphan_ec_reg_method
> >>> + * FUNCTION:    acpi_ev_execute_orphan_reg_method
> >>>   *
> >>> - * PARAMETERS:  ec_device_node      - Namespace node for an EC
> device
> >>> + * PARAMETERS:  device_node     - Namespace node for an ACPI device
> >>> + *              space_id        - The address space ID
> >>>   *
> >>>   * RETURN:      None
> >>>   *
> >>> - * DESCRIPTION: Execute an "orphan" _REG method that appears 
> >>> under the EC
> >>> + * DESCRIPTION: Execute an "orphan" _REG method that appears
> under
> >> an
> >>> ACPI
> >>>   *              device. This is a _REG method that has no corresponding region
> >>> - *              within the EC device scope. The orphan _REG method appears
> to
> >>> - *              have been enabled by the description of the ECDT in the ACPI
> >>> - *              specification: "The availability of the region space can be
> >>> - *              detected by providing a _REG method object underneath the
> >>> - *              Embedded Controller device."
> >>> - *
> >>> - *              To quickly access the EC device, we use the ec_device_node
> used
> >>> - *              during EC handler installation. Otherwise, we would need to
> >>> - *              perform a time consuming namespace walk, executing _HID
> >>> - *              methods to find the EC device.
> >>> + *              within the device's scope. ACPI tables depending on these
> >>> + *              "orphan" _REG methods have been seen for both EC and
> GPIO
> >>> + *              Operation Regions. Presumably the Windows ACPI
> >> implementation
> >>> + *              always calls the _REG method independent of the presence of
> >>> + *              an actual Operation Region with the correct address space ID.
> >>>   *
> >>>   *  MUTEX:      Assumes the namespace is locked
> >>>   *
> >>>
> >>>
> >>
> **********************************************************
> >>> ********************/
> >>>
> >>>  static void
> >>> -acpi_ev_orphan_ec_reg_method(struct acpi_namespace_node
> >>> *ec_device_node)
> >>> +acpi_ev_execute_orphan_reg_method(struct acpi_namespace_node
> >>> *device_node,
> >>> +				  acpi_adr_space_type space_id)
> >>>  {
> >>>  	acpi_handle reg_method;
> >>>  	struct acpi_namespace_node *next_node; @@ -792,9 +792,9 @@ 
> >>> acpi_ev_orphan_ec_reg_method(struct
> >>> acpi_namespace_node *ec_device_node)
> >>>  	struct acpi_object_list args;
> >>>  	union acpi_object objects[2];
> >>>
> >>> -	ACPI_FUNCTION_TRACE(ev_orphan_ec_reg_method);
> >>> +	ACPI_FUNCTION_TRACE(ev_execute_orphan_reg_method);
> >>>
> >>> -	if (!ec_device_node) {
> >>> +	if (!device_node) {
> >>>  		return_VOID;
> >>>  	}
> >>>
> >>> @@ -804,7 +804,7 @@ acpi_ev_orphan_ec_reg_method(struct
> >>> acpi_namespace_node *ec_device_node)
> >>>
> >>>  	/* Get a handle to a _REG method immediately under the EC device
> >> */
> >>>
> >>> -	status = acpi_get_handle(ec_device_node, METHOD_NAME__REG,
> >>> &reg_method);
> >>> +	status = acpi_get_handle(device_node, METHOD_NAME__REG,
> >>> &reg_method);
> >>>  	if (ACPI_FAILURE(status)) {
> >>>  		goto exit;	/* There is no _REG method present */
> >>>  	}
> >>> @@ -816,23 +816,23 @@ acpi_ev_orphan_ec_reg_method(struct
> >>> acpi_namespace_node *ec_device_node)
> >>>  	 * with other space IDs to be present; but the code below will then
> >>>  	 * execute the _REG method with the embedded_control space_ID 
> >>> argument.
> >>>  	 */
> >>> -	next_node = acpi_ns_get_next_node(ec_device_node, NULL);
> >>> +	next_node = acpi_ns_get_next_node(device_node, NULL);
> >>>  	while (next_node) {
> >>>  		if ((next_node->type == ACPI_TYPE_REGION) &&
> >>>  		    (next_node->object) &&
> >>> -		    (next_node->object->region.space_id ==
> >>> ACPI_ADR_SPACE_EC)) {
> >>> +		    (next_node->object->region.space_id == space_id)) {
> >>>  			goto exit;	/* Do not execute the _REG */
> >>>  		}
> >>>
> >>> -		next_node = acpi_ns_get_next_node(ec_device_node,
> >>> next_node);
> >>> +		next_node = acpi_ns_get_next_node(device_node,
> >>> next_node);
> >>>  	}
> >>>
> >>> -	/* Evaluate the _REG(embedded_control,Connect) method */
> >>> +	/* Evaluate the _REG(space_id, Connect) method */
> >>>
> >>>  	args.count = 2;
> >>>  	args.pointer = objects;
> >>>  	objects[0].type = ACPI_TYPE_INTEGER;
> >>> -	objects[0].integer.value = ACPI_ADR_SPACE_EC;
> >>> +	objects[0].integer.value = space_id;
> >>>  	objects[1].type = ACPI_TYPE_INTEGER;
> >>>  	objects[1].integer.value = ACPI_REG_CONNECT;
> >>>
> >>> --
> >>> 2.28.0
> >>
> >> This looks good to me. Bob, any thoughts?
> >>
> >> Erik
> >

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
