Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A2F4A7925
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:24 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id AB838100E5DB7;
	Wed,  2 Feb 2022 11:59:22 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.115; helo=mga14.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0ADA2100EB82D
	for <devel@acpica.org>; Tue, 16 Feb 2021 17:29:03 -0800 (PST)
IronPort-SDR: /5vMmUSu3rdbPtUdxLUIbaKzCpmvscE/LFVcnq2tjkdavqcL+E6pi3H+3QyXxHQ9WjIth/ruOp
 EdfausNanqeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="182193121"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400";
   d="scan'208";a="182193121"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2021 10:15:40 -0800
IronPort-SDR: 2WxhuIyEjM0fUUOJ38/GblDX+XGysmS3+z2DHiGhhcgGfN5WS+MeCA8Ka3dvB8efg/2tDAFjsy
 2d+32A9AOONg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400";
   d="scan'208";a="512609456"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga004.jf.intel.com with ESMTP; 16 Feb 2021 10:15:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 10:15:39 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 10:15:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Feb 2021 10:15:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Feb 2021 10:15:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gYftq7QDCHO3PwpDQaW2Xi6XeUMtkm+T1biXKCbGEQlrZ86xRO4S92jv8ePZfzDuusyhNg929ycDKuDBFFMexeO/H66KO0RUSWWlr6OTOXcanZsgTngl8kbyEJB6Ju/+dqX+2q0j7CQi4gGOqypgvRI78+BCTFJ9g/wzEeMWt8HXoHL2RqpEdXmy31ta6bO7csrJVGKMVIrOeQ24r/mNBr+x/nb+1luRdFniENwGkiho9JEgA1m/+iIKXDuPx84jFF6eRt3ydPsgAVb3C5MG8LB6oubHlxxZKKa3IbUDQshr0xDt2RTGXt6N/rZ4dToiIQvJUZkjJjJM/dbcv2abcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3GZBPgIguM1mcK5tC4BD0nnwKU3OPW7XV+LxlsvXygo=;
 b=iFhbgtrN0CQqXV7mOeLl3PlL5CyuWAS3FG3nwWSgRb1lcmiTFDaMDWXwYIBeg9S+6y3Fuco8DTuA1CxZF/Gy8aBbT+rlvgfVHP1xb3bp5tSvH0+T8dCpPMY3I7tDDnltnS6mbNip9DEPP0y+1FAOPqucjn3ulICQEmD39D9711fRY9L1ojdzPwW4YUxoh3MWdrbdImmAYJeAI3P4+mBivKZqOCuAiAsLj9QJJHlN+Lg07PwOE8ZIEg3GLoOcQOgtEWHkjky7LFOiw22WiPJEZm9PE1mceQfJ6aDx0t0IkV7NWjxkSMFhefEiJKVDkF27ghEOi7MdGH7pD/PWoactmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3GZBPgIguM1mcK5tC4BD0nnwKU3OPW7XV+LxlsvXygo=;
 b=UdhGIToKAjnk4hNOWZ2/iGlrPoObtrNLdWDsIu4RPQWs1dl1xCzrjptRZmiEtKOZbgIWvEg8AKjHC48DbCAjUrPznGHr8FblPvr7H57d/GpefSBnyZ9nYhKpgktUHt7qIG9wIq+uUcsYBWBW6+2cc4EJIM9zibacjMzesA5dJHM=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4008.namprd11.prod.outlook.com (2603:10b6:a03:186::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Tue, 16 Feb
 2021 18:15:31 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac1e:2d22:3f90:4dc]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::ac1e:2d22:3f90:4dc%7]) with mapi id 15.20.3846.039; Tue, 16 Feb 2021
 18:15:31 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Hans de Goede
	<hdegoede@redhat.com>
Thread-Topic: [PATCH 0/2] ACPICA: Fix a race in GenericSerialBus (I2C) and
 GPIO handling
Thread-Index: AQHW25Oc9/cUXkbUgk+7YO3jW4BZXKpZztoAgAAJ7YCAAY9ccA==
Date: Tue, 16 Feb 2021 18:15:31 +0000
Message-ID: <BYAPR11MB32561639443993C98C31236587879@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201226142830.48818-1-hdegoede@redhat.com>
 <ced43570-1e76-6f96-f9ab-83473b4adfb7@redhat.com>
 <CAJZ5v0g2mhrw56aAjafYAsRnOWjZTATyHyfi57ekuQyGs6O-MA@mail.gmail.com>
In-Reply-To: <CAJZ5v0g2mhrw56aAjafYAsRnOWjZTATyHyfi57ekuQyGs6O-MA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd5f9d21-88d4-4136-0a41-08d8d2a6d880
x-ms-traffictypediagnostic: BY5PR11MB4008:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB40084DB4BB89447B5020537C87879@BY5PR11MB4008.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e2MKVOYhBYsfvm+GhUU7jUaJlMQy7YgL84XeKDD178QGho8jVPJqyC5FzkicP8/z8qjekr/W1nO1jrFUdvusfyfGJ0AHR5mXEd5+6Z5/i5oI+inYkxLjB4PfTn4QXF/jJ1PniAQw9nxiNetKy0lpMVs9m4e40hpNLkRL5HUzGRtf5wK4ndTw4hJfjvqm4tXlA1bmsBlmMH+Ux6Twsv/QSwqkaCkftwy5i0BAEpHNpO8KbY2zOAHqPwpFfZBI7fir03hrPO2pQ1mUWTOKN6UEvTiXP9tFjnciCYAwAU7hyMAt5H1IpLwRpRnazqgpMui9BNmGUuFGiR0niLay5HR/e1fhrRT4y0AnOyMT+mmswB/Y1Lx+KNFCFwxvHOk48ZOiSAd9twOT6iFqf8P1ml5ELNlr4V2l2hN2zMAS30P84oGKzYx+P+oP1f/pAWQCLUiIfftaDtZK4ELWG9EEYN/IcCq4MB70EDkE3qHv6bzxpkLDV9Zje9JOMU+RvHSAxfH7eFhOnCcF//LvCdh7YUCz9VFi3YxNfUgJzwuznnoEzwtrx5EtghZOGyX4nJ4a5pg/KWhYLV8qSWB3yuuRMMSG6CReV95WwtXU7rpD2HyqmX4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39860400002)(366004)(376002)(136003)(346002)(71200400001)(33656002)(76116006)(66946007)(66446008)(66476007)(4326008)(66556008)(478600001)(966005)(86362001)(2906002)(64756008)(8936002)(55016002)(110136005)(54906003)(5660300002)(186003)(53546011)(83380400001)(7696005)(52536014)(316002)(9686003)(8676002)(26005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?UHVSb1RRV0hTeTNSSm9xeDhMcS96aVp6UTVJb1VUVkR2NHhYUUxqSUxSWkFq?=
 =?utf-8?B?MXZSaVIrMUp4YkxqWWpWOHFuc2RvYVI0MzQ1VmE0dFlqL3hGOUtMU0IyMGVu?=
 =?utf-8?B?WHI4R3BXWlpxWkdCRUZUWjJpTXIxUVd4eHZjMkE2dzF4UFU2UFRCVjZLY1dW?=
 =?utf-8?B?d3N2UXYrejd0UEFkYlRIM1pOYXJaVjV6S0UveFUyOWlJbnl5ZUk3dTZaVHBT?=
 =?utf-8?B?Zk5mNkJ6a2xKOXFNQjdDUUtEUDU0aGhzOEhxQWZZTFpGenVxQmZDei8wdTFQ?=
 =?utf-8?B?VVpzWitTVFpMVTdmVXA5TWozbzRac1Nzd01pOXJpL093bTNtTVkvUE9nU1ZT?=
 =?utf-8?B?VHBzZkVGNm9takV5RkttR1pQTGI1TUNnSkxKRTBRdXA2d1MwMGhYU0Qra2xF?=
 =?utf-8?B?dDNQeDZFVS9lNUhRdEVJUXZWWXZRTk9ETTlLSWpvWmtWNEFXNkFaenZOY2pG?=
 =?utf-8?B?Vkp1dVRVYlFGUDNTdFdYdXNZWUxMY3NYZTZ6NjFoRkkxYU1ud291VzJvZ3Fz?=
 =?utf-8?B?RVRmVFpXc29xS0ZkRlhMMjE3V2IyRUgwSHNIdCtEcGNxeGRCRFpDL1FMSkhK?=
 =?utf-8?B?WERkTThxLzd3S20wNldKRlZ5ZjhPL21IV281ZVEzUmF1MWM3dXNMRFVOZFRX?=
 =?utf-8?B?NzhjSXVJUkQyQWJLQ0t4bEhzNm81bkhlVHQxbVVlOGF0RzVIdVJ2V0lXaHdv?=
 =?utf-8?B?VUhwUS9DM2pTSVRmT3pmQkFnNVJHRE12MVNmNjVmbG5iTVZWOUtTT0pYNHhm?=
 =?utf-8?B?VlZrZmZmWmE1eExzbE1EbnJ2aGxJc2Q1Q3VhcGRhYk9ucGhTdWloa01YRy9R?=
 =?utf-8?B?d0h5U3pJMmppdlp4TWZGK0VkbkxmV095OHFSMUcwWG00aXdjOHRKRFllWHFD?=
 =?utf-8?B?VDlGdkhReU4rWEc4VE5oNGRoRGE0R05rZ1I5YlR6blpUaWhJNWxVdnUrN0xq?=
 =?utf-8?B?RGh3RG9KcXZvcmd3R3B6b2ZQbXp3RVRwMU1DQmtNSUNKK1hHcVVaL3hQMitz?=
 =?utf-8?B?Q0JMa0pNRFA0RVdHcjFNV3E4YjBpRnRyekpSRGZiN0ZHRFFKMTBxYWQ1RkZI?=
 =?utf-8?B?bUVrYzN5SUdMMXhvZDY4RWcrOFJUemJrZ0pTaTh1MFNiRXJGZ3VzRXlpbTNh?=
 =?utf-8?B?NzRBRno2TXlFalBYRjJ5bnhycTNwcDZUa0NZYXZDQXRCM0E2SktZTFpFWFlI?=
 =?utf-8?B?WEpWS3dkZlNIWi9heG04ODhxbU1kYWJTUCtiSVdBSVRGdGJhU21tNUhSMGUv?=
 =?utf-8?B?UjNuZDJ4eFovUVFpdDJWSTdNWENlYjJSd21naXRxWEpMK2IwUytPbWxNUm9J?=
 =?utf-8?B?dUw1c0ZFVmNXVzF0KzZBSVNTVFBFS0RJbHQ1Q0RRcmE3eXluY1lkYnRNRjF4?=
 =?utf-8?B?OXlRNFhqRWZ4QUd2UDAzOTlNaWVTd0RlSzBUNW85MVZqQ1duSzJ0VWpRYS9V?=
 =?utf-8?B?REk5ZW1JeFZ2SkJUd3BJWWVzeXlXTnZPZzJiT2twMVdtQk13MGZKUjZyK1Zw?=
 =?utf-8?B?KytqemtJd0xZS214V2l4aVBDNktWZ2ZIYjJEYnpOTVVFcXhvajZaVmFBNGhS?=
 =?utf-8?B?Qjk5TmN6YjBDeXZISDd1SmlkSGNQVThmMkhuNVh4Q1lTTnYzOW9IWmZoVnJI?=
 =?utf-8?B?UStaVmQ2em4xK3V3enI1TXJzWlhkTndLY2dLelg2TmdDMlVTSW9yTmhDS3Yr?=
 =?utf-8?B?ZE9zaXJnUDg0TGk3MXE5K0xUcTlYQWllakNwamFNWTRDYkFtdzhyZ1BxOTRq?=
 =?utf-8?Q?mrZ/yB8Vxa0NWQat91AGr4GL4852pvyN3eDG3gq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd5f9d21-88d4-4136-0a41-08d8d2a6d880
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2021 18:15:31.0729
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X0/lko/GW3ZPk83srMUveDdAi7I9OGoMwBY2aFkK8T9ZVHHXEB1CKro8umRwFIZUu5ul30JzcUg3xyXgPLoSmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4008
X-OriginatorOrg: intel.com
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: 6BSCXDNPWXA6BLLSS7UEFTLJASDRPF5I
X-Message-ID-Hash: 6BSCXDNPWXA6BLLSS7UEFTLJASDRPF5I
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:54 -0800
CC: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
	"Kaneda, Erik" <erik.kaneda@intel.com>,
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
	ACPICA <"openlist:ACPICOMPONENTARCHITECTURE"@ml01.01.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 0/2] ACPICA: Fix a race in GenericSerialBus (I2C) and GPIO handling
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6BSCXDNPWXA6BLLSS7UEFTLJASDRPF5I/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We've been busy implementing ACPI 6.4 support in ACPICA. Sorry for the delay.
Bob


-----Original Message-----
From: Rafael J. Wysocki <rafael@kernel.org> 
Sent: Monday, February 15, 2021 10:26 AM
To: Hans de Goede <hdegoede@redhat.com>
Cc: Rafael J . Wysocki <rjw@rjwysocki.net>; Len Brown <lenb@kernel.org>; Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE (ACPICA) <devel@acpica.org>
Subject: Re: [PATCH 0/2] ACPICA: Fix a race in GenericSerialBus (I2C) and GPIO handling

On Mon, Feb 15, 2021 at 6:52 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 12/26/20 3:28 PM, Hans de Goede wrote:
> > Hi All,
> >
> > On one of my machines I noticed the following errors being logged:
> >
> > [   52.892807] i2c i2c-0: adapter quirk: no zero length (addr 0x0078, size 0, read)
> > [   52.893037] i2c i2c-0: i2c read 0 bytes from client@0x78 starting at reg 0x0 failed, error: -95
> >
> > The second line is coming from the Linux I2C ACPI OpRegion handling 
> > and after a bunch of debugging I've found out that there is a rather 
> > obvious (once you see it) and nasty race condition in the handling 
> > of I2C and GPIO opregions in acpi_ev_address_space_dispatch(). See 
> > the first patch in this series (the second patch is a follow-up 
> > cleanup patch removing some code duplication).
> >
> > TBH I'm surprised that this issue has gone unnoticed as long as it 
> > has, but I guess that it mostly leads to unreproducable sporadic 
> > problems making it hard to debug and I got lucky that I had a 
> > machine where the race seems to trigger about once every 20 seconds.
> >
> > I know that ACPICA patches are normally merged through the ACPICA 
> > upstream but given that this is a serious bug, I believe that in 
> > this case it might be best to add the fix directly to Linux and then 
> > port it to ACPICA from there.
>
> ping ?
>
> This was submitted 2 full months ago; and despite this:
>
> 1. Fixing a serious bug in ACPICA
> 2. The fix being pretty simple (and AFAICT obviously correct)
>
> This is still awaiting review upstream:
> https://github.com/acpica/acpica/pull/658
>
> I must say that it feels to me that the upstream ACPICA process is broken here.
>
> I submitted a pull-req for this, as requested and after that there has 
> been zero progress.
>
> The pull-req even has a 26 day old "this looks good to me" comment 
> from Erik, followed by silence... ?
>
> Rafael, can you please consider just directly picking these 2 fixes 
> into your acpi branch, so that we can get this nasty race condition fixed ?

I will do that later this week, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
