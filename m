Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DE041E025
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Sep 2021 19:27:01 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B59D2100F3FDE;
	Thu, 30 Sep 2021 10:26:59 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EA767100F3FDD
	for <devel@acpica.org>; Thu, 30 Sep 2021 10:26:57 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="288900637"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200";
   d="scan'208";a="288900637"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2021 10:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200";
   d="scan'208";a="487411297"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga008.jf.intel.com with ESMTP; 30 Sep 2021 10:26:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 10:26:57 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 10:26:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 10:26:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 10:26:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=USzcDu7bdCeP+PuEtEsMzpwcbtLCnLkCj2guuiIKWLWgU7hbGyQDcXQFXoZrX3SKld6iQdNQZvAK7RCJrVfO7mBu2eQJFZ4c6qbWGllqKq/AzQSe6ZE6okAZjsKZGX5zOrzv3ww1MmhLeE+7NCE66F1I1Ls7tEiddWdaN8ZUUuJx3SSVmWjp+R7syyssuzzZBY3uOE2+U4b5LrfvDGX6NdyzBzogVThHoqWyacMJiYxcWfjxC26RRnQ4w4ic6Cn7hY1mQWKPSEcLYyOzCZP1AdrEXCqxl8F5BoPN+CwyDyB7yafPmmUE2FFvT/086y10/zhzaXc4PMxYDyMkgvLAIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=Py5o8EDO1xLZP67hCZDzNPH66LwKBLKGSji/6SFsGNc=;
 b=R8Z3VPaxBKyAOzUp1kMUNEshUyGtz0P3/JKKSyd/vLT4wwl4Pm6J2NhK66TG5q2viR2vhN/THn/vWF2iib8TrFlsh/DL9jIeohz1Dfd0VE3aD/BSldcCX5iY/VwLQPfsfSZTAPnDdr4YoZroj9KYPMWXbaW7wsuHVbUJzRBhDueWLlZdBZeRaNZ0fkl7NneyzRRBngea3tAwmnFEqeUzGcyjm2bK0CxkeeizwzFMcyu3DkntrJJFJHeeebShvyrahWXWjse5nfFoihmC2ylB2gDBPK1lTGVYX4pdotua7OIeHULfZgs+IHsnz8/z5ugslzHd942BYb3ERBUN3S24kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Py5o8EDO1xLZP67hCZDzNPH66LwKBLKGSji/6SFsGNc=;
 b=hAqiMQVrOXfmaEMdOLnG/aYgzUEvy/wd+PCVeJOJxI43RFwPXPMc6rNlXdve79Y83L4sRhC0FaCSEI6GkGHOJqqAfhPxQ9/TvZJ2CRLtH0YY2pJhI01LF/pWvD7HrC7ittqMOyoOPDL658eryQqXA3EVFquj5CiS3baFtq0T9yI=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB5167.namprd11.prod.outlook.com (2603:10b6:a03:2d9::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Thu, 30 Sep
 2021 17:26:55 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::754c:cbde:1a6f:4980]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::754c:cbde:1a6f:4980%6]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 17:26:55 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20210930 released
Thread-Index: Ade2IAjJreXKCivOQumx2DNnn39nyw==
Date: Thu, 30 Sep 2021 17:26:55 +0000
Message-ID: <BYAPR11MB325660DA0DEC14731CC3161287AA9@BYAPR11MB3256.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: acpica.org; dkim=none (message not signed)
 header.d=none;acpica.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ff2b930-5aae-4081-4fcc-08d984377ffa
x-ms-traffictypediagnostic: SJ0PR11MB5167:
x-microsoft-antispam-prvs: <SJ0PR11MB5167AF90E02B61F2F7EFE0D687AA9@SJ0PR11MB5167.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +oONcoAzykgpFVCEVOL7irFQjum8l1jofb9yqG7wlRJTm7pGmpD4kFnfAaLzniZs1uypIeq2aZbp6VQWF/cxGFl2HziWOr9j+ohs75J/e1l7uNvs93CnpiyyWaF4xdDmcUZyYB2MMkVcjlAXqdx9w5u99LBZhF+P0EYzK3Cm4ZaqSuSVyCmWADo/t/tyVDoAo38AJVuHA1QtLwQQiYknwdxcJEGzhuqDRIB4VdTDQ2tEUfzFU2cpHHBLJ4XNxZb11RJXGFiKrHDjyXVLNFKmfZ9gim7X+Fi1chUbF+SlEMPbtPYeWvzClbZUqWi+6btYSkINzE2uiQzT9U68MKVjlw8cz8yZmA5l9XggBfYM+Qu2NfPJwM4o1HBrTIVRFGHTmbjOCYqfL0qqy4y4vePF1BGUtgleUo6RbzZkAqUzGYxRHyqToaSTvCggl2smjpRK/ysqwU+XW7/FIvPUTgvBc1Ew11quVuSd0LAmFD/AjWdUkqR4NoP507/9QXsoCjQZ70KVoDqq2NBYKZ/si6nGsqkCall5IDONSmPFOjFisSo9iDdCtGO2wxB4H9WIJ1t8YEFS75b8Tq2U/vjJ/FTWjtjbXCNyQh/e+5GWqPQ+n8J34zRh0Gf3rHsG1zXUFgORJ0YAIdNxHciq3m/EstrhQgnMA2+FczLUZiIuPzHnHKKzb8lzlzXg5dV8MqndkGJUtjWBKdlLHRqsvKI2VSWb10xENGFJnh4Yw0BSzHh0hzn4nEY3WXnl41Qmo3KgeGyQcAr/SEenYUDb+WP0Fay0Rln3p/0VW8SltTgTl56ZPk0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(33656002)(508600001)(316002)(5660300002)(55016002)(6506007)(9686003)(186003)(966005)(71200400001)(26005)(66556008)(64756008)(2906002)(122000001)(38100700002)(7116003)(38070700005)(6916009)(66446008)(86362001)(66476007)(66946007)(76116006)(52536014)(83380400001)(8676002)(7696005)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xEUH6qmeC+OcwpbGwWu2fggkWYj7CCtWEhOjCGlsZd/DdqkIi1NmKET7d5nC?=
 =?us-ascii?Q?17M4uvCLjrdx2TX+G+IznfohcJJ3K5DnWUy8t2FxusINTh7SgN7RmmJqZB/M?=
 =?us-ascii?Q?dLsDi2hK4u3ZVcSuRZZ05ehrMSKWN+9Ej/F/dS6VW334E07+4P1HyPmEfB4V?=
 =?us-ascii?Q?qtMxoiOBVyAeq+1P6pt7oALYfQSuHtnTgwOz2/DJe2l8NRXi4YCiOGinudHQ?=
 =?us-ascii?Q?zPGYR8sQuLkiwt8dbadqC2OEy3pxdlyuV/H/lh0Us0vY4f4B4qPgnHS12po/?=
 =?us-ascii?Q?1ae7Ra8eA77iZyoGwZuHXlRh4tzbb4tSFeMw9KwrMC9T8V5fi51y12vAygCr?=
 =?us-ascii?Q?83eQRjXBaS+SeYf4ccOu75Q28u0LdG6gr+/Lv/tBMBB+uTaf/FVL6hQaKSjw?=
 =?us-ascii?Q?f0bwaH5Dylc79++/aJmEPW4FqQaTbGLPgMTyzcRAWLZIjM4sXxBe6Qcr0Y0o?=
 =?us-ascii?Q?GQ1uhjcVOKNoKDyJc8pKd71tAUrIYDZPbOM4DrPHC99Jx9F0SaGTM2TzomD+?=
 =?us-ascii?Q?7TgIp3uqqYPE21Xbs3w/S85PkhMJkXtkaqBngLwTyv+T29dK6pKY9msyGW0K?=
 =?us-ascii?Q?QvUUucLA9gddw1EJkYWx3zGKowruFZiR4YHC/MmlHt/oy+UfIqZ0hMHF8NGd?=
 =?us-ascii?Q?lwxFdVjBgpXQRoBJB+JTLBP8EeRytvPyGohhuebIndV2uejG4HWS/ZbP9P5x?=
 =?us-ascii?Q?eOoCDXbpLjBH6GiLqZ8Yjtu7bSZ2rqDCs8amUZIMQW4QmaHf4sMMuOgzrU84?=
 =?us-ascii?Q?KomyzgqvdKn07+xwRQG1x0c8RAmljC8KY1KIjLMCqZAuXhy+4f96INVfHfvP?=
 =?us-ascii?Q?Z17pJWvRdLlyhuulpfUibbilPd33cePsVGc5RK8oEWAJ6s/pbwUgWdbW2jCH?=
 =?us-ascii?Q?UtN1xqdw3c5eVzRRi99caAKjqQ9ivLu5W88lK1hC7F5ENSmXouW/CFYtkJ/7?=
 =?us-ascii?Q?z5pfRg2URQzEK2J+Iy4opLevo+rVpNq+0ugSWAW5CazEy2dKUNAqt65is6S7?=
 =?us-ascii?Q?tKiE1/zWjNSH0CyswV714sbvqYVSORTSaPwBY7g17XJuNYDrEzzhXiM7zHyG?=
 =?us-ascii?Q?5+Z/biOqkMOoUHeNDlXz2Ejn8DjJjsTZRXFgz54jz9dbofEguG7N7PTPbkea?=
 =?us-ascii?Q?0aeNeC8Y+bRb4Z/qFWcYpt8FDLvyEAtUJbOm7cxE0WkKrHyU954i9P5l0+Ge?=
 =?us-ascii?Q?URqFNdQXpigsuvNBZo3HlUvAzxbuLJjMTiuiVXFwMXAtD0qK12mkQF1+0bHv?=
 =?us-ascii?Q?MgEQ89BNmaGl+9xczROTM7j7x2CSBvGejMDVWZcWyoek65T2kySfxRNxsO1a?=
 =?us-ascii?Q?EQ98XQLlUE1acViOkEUIingH?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff2b930-5aae-4081-4fcc-08d984377ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 17:26:55.3874
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B9FlwJgynmOIAPdZhaTu2kxIreTQkDzFn6Uje7diIC0stmWEGbpP0H62FQS8lXQAwbT7rnDjEtwQDz1L3emGKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5167
X-OriginatorOrg: intel.com
Message-ID-Hash: 5L4MTLSTYUP76ZIHZJ7ZLEC2GQB2ZSHU
X-Message-ID-Hash: 5L4MTLSTYUP76ZIHZJ7ZLEC2GQB2ZSHU
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20210930 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5L4MTLSTYUP76ZIHZJ7ZLEC2GQB2ZSHU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

30 September 2021. Summary of changes for version 20210930:

This release is available at https://acpica.org/downloads

1) ACPICA kernel-resident subsystem:

Hardware: Avoid evaluating methods too early during system resume. During wakeup from system-wide sleep states, AcpiGetSleepTypeData() is called and it tries to get memory from the OS in order to evaluate a control method, but if KFENCE is enabled in the Linux kernel, the memory allocation attempt causes an IRQ work to be queued and a self-IPI to be sent to the CPU running the code which requires the memory controller to be ready, so if that happens too early in the wakeup path, it doesn't work.

Prevent that from taking place by calling AcpiGetSleepTypeData() for S0 upfront, when preparing to enter a given sleep state, and saving the data obtained by it for later use during system wakeup.

Added a new _OSI string, "Windows 2020". Posted by superm1.

2) iASL Compiler/Disassembler and ACPICA tools:

iASL compiler: Updated the check for usage of _CRS, _DIS, _PRS, and _SRS objects:
New/latest rules: Under a Device Object:
         1) If _PRS is present, must have _CRS and _SRS
         2) If _SRS is present, must have _PRS (_PRS requires _CRS and _SRS)
         3) If _DIS is present, must have _SRS (_SRS requires _PRS, _PRS requires _CRS and _SRS)
         4) If _SRS is present, probably should have a _DIS (Remark only)

iASL table disassembler: Added disassembly support for the NHLT ACPI table. Note: support for Vendor-defined microphone arrays and SNR extensions are not supported at this time -- mostly due to a lack of example tables. Actual compiler support for NHLT is forthcoming.

Added a new subtable type for ACPI 6.4 SRAT Generic Port Affinity. It uses the same subtable structure as the existing Generic Initiator Affinity type.

Added the flag for online capable in the MADT, introduced in ACPI 6.3. Posted by superm1.

3) ACPICA documentation: Updated the legal info (that appears at the start of the Documents) to clarify distribution rights that are granted.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
