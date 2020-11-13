Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D46432B27F1
	for <lists+devel-acpica@lfdr.de>; Fri, 13 Nov 2020 23:12:14 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 67AC6100EB345;
	Fri, 13 Nov 2020 14:12:13 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DD54B100EC1E9
	for <devel@acpica.org>; Fri, 13 Nov 2020 14:12:11 -0800 (PST)
IronPort-SDR: PugPHLQqU9ZJgL9jeaK25SJnkOi8TPzBMsZ63cW8O5yDvgTs7QIxp6e7yy2mG2dY3HzVd7jXk0
 iQbrkMD/sA5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="150388242"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208";a="150388242"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 14:12:11 -0800
IronPort-SDR: 3UjLtoAWr/VVvkj//WocHz+PLqT3omqTdn4aEOgCV0z4+yrGGqTUnvWWAp5yiYBBuhgoCzvJId
 Uk/0AwOWH/5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208";a="357670530"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2020 14:12:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 14:12:10 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 14:12:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 14:12:10 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 14:12:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlC0McdhFkFpqYANtlyZUXbgEZhSlrrMjpTUVAalFkdVPRczyIoArGhQA0tDmLFQwS+BA+ATYqMC2bPtM2yTbaSlYj2ufhv2kse/U8EBGQoxtC4WuNVDOIViLDqU01mHvyHB3le0qdwY4c8O7MJgCKPyL9OqW7wwxvc91FaRNrtqWL796pbEGi1137L5K7wiWC8zdrLLCY7oJHyPz8ck5D6acAOKoidSsZnWl6JQfzaBFkYVSKDmTdqijI3K2OX4ScVe0Ly62cDZcQ10fjJPq4SKAc9my+7RQewNNVtg6Xpa1FKEwK4hyDrVTlcE7YbVFOZTfl5IeDfK5NGaOnKC0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCMo4ooqRukykicn8fUi/XT2Z5LYFRXRNe+ZMrqSU3g=;
 b=hY3AMP0dUV99jwjArcXr4eCJe3jNfrjP9l3YMTT+ZrOj8FnBMKkHzOFTGXFfxCZYNiezvL7wZsSBnAQUrj0dHmma2CvH4PV0yZ7AXLGs+P9TLaNJjHBvfrhj9yi/W3ldJQw0yshva5aK4FNedZJmGj+mYuxf1HcBBLNzBg5DWS/ZYywRm5k+Y0KQK0CBKTd/RafkLsQuejzgHAK1QqQqfeAfX8X2+tQI37uk7yC+tZfmgPRMTiap/6/JiQrGyG3WlibOJv7x/zyzOAKE3c35oBTaRZwikZ2p2BT4RW+yl7vRbfVtf0t+oaA6sLPTwzpAMB2+dFWMUwA0bxKdC5Z2dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCMo4ooqRukykicn8fUi/XT2Z5LYFRXRNe+ZMrqSU3g=;
 b=FD2Q2+6cLEcGNi6ZCHexZIbaaUsQ4mqeICKwt1yajPljlTn5B6Ftuswm5RBfKXMWQAj1Mc4OWO8tdG/OBmOZApXNvFO8GJb57s3x5Zw+BPQfUtUtA3gcK8es1vcGC+8F/ABe4ljLmIsOEkNe78lpQjCIGelKQTHXC8/bkjaatBw=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Fri, 13 Nov
 2020 22:12:07 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 22:12:06 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5SwgAAB3QCAAAJ3cIAAAHnQgAAAbfCAAAbDAIAAALZQ
Date: Fri, 13 Nov 2020 22:12:06 +0000
Message-ID: <BYAPR11MB32566027A6A386F4A08076C687E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
 <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256E6E37618702C5EA761A087E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256DD34C3DABD2CB4FE347D87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdmQdH3dARiP9VDPG59sgsqkmvp5AcCKrNNUuNDC5k1BwA@mail.gmail.com>
In-Reply-To: <CAKwvOdmQdH3dARiP9VDPG59sgsqkmvp5AcCKrNNUuNDC5k1BwA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 4739220e-b039-44e5-50d7-08d88821289d
x-ms-traffictypediagnostic: SJ0PR11MB5085:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5085FCAD7828781AE588E14087E60@SJ0PR11MB5085.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tyBMjhyJIpTVjJaFGpU9k7O3+/KGuXNS8RtF7dTrhNJcEiErAvr0guT4h2VuwebPJt4V6Gg8wy/ARyGnrzL7ByEQN0WHBdNMqn9biXqb5tM7bVerOkgKcK+iGlln6QvJp6VhyMjPFujHzgodghHKpz9GCrBYB2DHm049zHhgQuND9RS13aAFWtznD2djwPp/dhtkWZoYuts6wvHWo9jvEXU7ISImS0XSmJGT/TIACXReTK8PXU8FVUbRk3xXgsjQh37OXXKOzs2fp2PLiJaBk1F3IyfjeaZRsYVfppsSBzgT6tuI0E3sozit4AowaBjf6JIjh3kRmzArS0A18VXGsVa+4WfQP2FMxmC99KTHqMhSJSJrpEugE2gc4c5dcmXEAim3CuK/xMYNMrw11U+f5Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(396003)(376002)(136003)(33656002)(86362001)(8676002)(6506007)(55016002)(9686003)(71200400001)(66446008)(66476007)(53546011)(2906002)(76116006)(966005)(8936002)(66946007)(66556008)(478600001)(64756008)(6916009)(4326008)(54906003)(7696005)(26005)(5660300002)(4744005)(83380400001)(186003)(52536014)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: OCNQLU9z9zjHbG0a2Xinb3teP/XOALVsqdG1lLlzxx9E5dpGNg7iWFnBBUsplD30vUc3gYfpo9oP4rYjFwQQah4h+fUOAO1fXzeE0L4MOkOpktxOz38rF3Gwijn6czqgjvKYX72jERtC9sM5AGSo84d0zPBFmTtgjwqHCtMMlYnr8G61vsoTO8QO+ULt+sqoTltQ2YwQYnf3dg2jZClLY2WBxJaswweAZy/RN9CslzkUfjPJjFVqgN0ChLmwIk7khalH63n0CHmukmAf04E6OWaGY7QXfpdskAOhIXV8XrtB+NKexUc9CbahHM/um5cHZEzZR9Ehz11sDNzDMowUdmjkflZKU5PTbQC49YY94+2a42CqtDFCQvwex4yPX+V2XV5/5v+Kf2PoquP9gIhmU+YO9KJm2hmPQywgDk6YTBD8axpSJ9zlGqzBVQVJs+sWtCkmA5L9im/GT1dW7+IMM9IcW2+11EYqz206uIprPNVkuGzyDOmTAbMCPn8AuDU+KGnzkbe0uafErpOmkWbbKKkOh0XITuEhdYVAEy/5nsHkA453XVLw9v/Pu203gXBH41hsWaKwTs8dipjZYe0nQjyUDoqx1wnGs7ggeihxLmNn/s/8KZryx9l5c6aiVGAWeuTShWYdYWQDk0GCkRASqA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4739220e-b039-44e5-50d7-08d88821289d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 22:12:06.8822
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K8qEkiXR1LjwNFVhXFKZneuxedPbjy6UpZ53NxA/qkIY4hzyfiPftUmHre+ym9Evza0wrtqi944alyXp1mGC/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
X-OriginatorOrg: intel.com
Message-ID-Hash: IONGJD353HT4S6QTJWN2AVGQYXFCVDXH
X-Message-ID-Hash: IONGJD353HT4S6QTJWN2AVGQYXFCVDXH
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: fix -Wfallthrough
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IONGJD353HT4S6QTJWN2AVGQYXFCVDXH/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com> 
Sent: Friday, November 13, 2020 2:09 PM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Fri, Nov 13, 2020 at 1:45 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> BTW, if you can make a pull request for the patch up on github, that would help.

https://github.com/acpica/acpica/pull/650

Great, thanks. I'll look at/merge the request next week.
Bob

-- 
Thanks,
~Nick Desaulniers
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
