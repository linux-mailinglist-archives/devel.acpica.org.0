Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BE3275D97
	for <lists+devel-acpica@lfdr.de>; Wed, 23 Sep 2020 18:38:19 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 960F615321F0A;
	Wed, 23 Sep 2020 09:38:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 4E29215321F08
	for <devel@acpica.org>; Wed, 23 Sep 2020 09:38:15 -0700 (PDT)
IronPort-SDR: m65BmjAKhzkk+HyVBIuPD11Jyvh6Fo8+3GUkXJvLY34Ya+N4o2AbBnnL0wROIQyY0eYZSOxdEK
 kEqAowbBT3ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="161020132"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400";
   d="scan'208";a="161020132"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2020 09:38:14 -0700
IronPort-SDR: BHIqiyKfTdLonNZABslhC8DieeDB9DSGEEfJ/3u4/LuU+DX2m+NB6MGInELcVApCKKyooSTa1G
 +vB8w2cmti6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400";
   d="scan'208";a="382750764"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga001.jf.intel.com with ESMTP; 23 Sep 2020 09:38:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 09:38:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 09:38:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Sep 2020 09:38:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 23 Sep 2020 09:38:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqRjIDBbVuMJZf4ko7srWIK7aGN9GWp+ukd9xdZMEbzHwe2hQn9qJip7amwKxJweZFqetMIrDZBIadW3JQjI5AfI0S/QeiuliurbsjQoGI2O8fEZyu1pvM0tBJzb0H7W98rFmeQQKuW9PB8ArL6f9iOofAtfRVRjBHhzYCsi6kUiJ0GZArGqMTK6KeP+oACfWEDk9iY3ZpivVA8iJRi/7suQdb42vPDMG44y9XdN6j6V5lU1XbG+gOvszzJDIdI+HOFjOZed8kCFlbaEbb72ZkuDYrZx7dymByHCNB+Wusc5SBuv++kCd9+wpw2rFWucX8hk+GkKfpI8oOyrvX0nnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mcszh3Ztla5Px0UqoRYpnA6j01b3B4Srzw9fV53Qkgk=;
 b=IVV4wGx06YksnCexk9jesTIGdcEIXyXZjqVY9R9NlXlYtgsLKDRv/ddASgMdRn6iEzm0v7ZhBLuQNSbyBFda2quxA//VG5FrEwKNldrD+1omjOJb4jayubr2BttcvmZgwjzYqVKisf1zMm/vs73Ifd/KVLhl9ePZ7MXOs0ilNze5kKsr/M+RH8q4rJ5vhaaFhYwDEc1WdMWHDTekMHyFNm/KpTNFe5EHkQPhOQcEkuoM/UvuWpQnzqbmhAbaI37hcces2lVkJmP2J6RMTL52c4od4XImC6bO6XRaQxxbxlIzDCIaOsH0Gmf0nSAiy52aK20p3Y7sg7DjLs7Ngdc4oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mcszh3Ztla5Px0UqoRYpnA6j01b3B4Srzw9fV53Qkgk=;
 b=gsnJOn8NYndBslMogGctQtcs/D7sD01cg9Zy2et58tYqWP9sASi2tKd0PYOlGaLVKnCTXn25fBxkDp8Z5vIZg3FES6v9dPx3XpWPV1EIefHOrSC90iOz+Xd6dm692EvFdR+5Eo4Oqufjopgfmzlkf6O/wtM8rRWLRFzBMmKIFGA=
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2917.namprd11.prod.outlook.com (2603:10b6:a03:89::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Wed, 23 Sep
 2020 16:38:08 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::996f:395:61c4:2f93]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::996f:395:61c4:2f93%7]) with mapi id 15.20.3348.019; Wed, 23 Sep 2020
 16:38:08 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: "dunkaist@gmail.com" <dunkaist@gmail.com>, "devel@acpica.org"
	<devel@acpica.org>
Thread-Topic: [Devel] Automatic dereference when reading from ArgX
Thread-Index: AQHWkTJiI3qs7LwHakSNl/kA045GHal2bFzQ
Date: Wed, 23 Sep 2020 16:38:08 +0000
Message-ID: <BYAPR11MB3256F56601FD2F961B268C5F87380@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20200922224728.2835.56590@ml01.vlan13.01.org>
In-Reply-To: <20200922224728.2835.56590@ml01.vlan13.01.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ca31a7d-355a-4ba1-1e0d-08d85fdf0d89
x-ms-traffictypediagnostic: BYAPR11MB2917:
x-microsoft-antispam-prvs: <BYAPR11MB29177EF348FF69C2E491EB9387380@BYAPR11MB2917.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0bQFgQmDZkNVNixNq3pz2joW0oU50rPwn07CRcJJ2p6/ykEKTy0vNi+xhEaN+ELb51Do/Az3tXIw1XPa8v9kUDeEa6kaYe2C+eJUnsuo2iAIqXHlqHZM7EzQrsuBa3m6azfIYgBB1Id+8bKgP+Fxw8xFLcV7pjpqAWwtLIriwJ7FmDx7X7Se3Td1hDoxJA10zH7Zwj6OKcXxdaHLWa0KiRx6ky1fctrIkTjTKUCKVYnMiB9nuhezxvmmkC5XilgZu8M3n9csqYOtmbZWCznvEcL9ms49FJcSP1Ji6WkzxbWa9JH6csf70kSBdbgn8rbi
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(346002)(376002)(366004)(136003)(8936002)(8676002)(186003)(66476007)(66556008)(478600001)(26005)(55016002)(53546011)(2906002)(66946007)(64756008)(76116006)(110136005)(71200400001)(6506007)(66446008)(83380400001)(7696005)(86362001)(52536014)(316002)(9686003)(5660300002)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: UdTA+JvRI0gZeb31lY7cXapHbgwhnVXHT3zovfYm3WclPfjOH+XruXXkUJy0U4LeR8zsLE9is1Cbl/rWa7kAHc5klUCw+ND2xl4pqUZ+RDrTPWaKC6TBNZbDaz4oJ6n4E1Y4xD/ExOqI18xXdNmxFxI0mLgulnffO6KoEoQLLGSIiAVFU96YInSMheY8A+fywzKQGMBwC8mBmm6ELsZJEomKD1gznwR7Bq6GSUcKugWuAbVf8Lf9P+KwDWcvzgfx+RI6kE7MMUEMYGNSCdSjVyB7YnhJ7bC/6bfndI9SCbZYJW12hDYfyDPiumsyRvfo8Tcih+wf0nc1qZRgbtyOSg0lMWj9obgZ/wpXrt9KZa5Wzoxqb7I58uJc3d24fN84pY3oBqxTMtc+aogtdmyaWLjJxROhc877wCajsuMKdAR6sRgqzp1ram1G+wRnnyUMRez/uRrlyjHfM8DSPKcW9eCWpwMEUhPTH+psKEL/QqAKsyUglUQHgplTGqXYn6dW84P7rP7SQcjVnHOaHzRJpAvcA5dBzxoGgi4grX43goKsqM7O8ievfimKHGIa/Ja4BK1Lft1NHKete+5C+Oa//Xp4wTmT5pkMbv75/zJFNR/Iq0nBxQqEdl1U4RUSkMoHRx106gfqNBFnBdkHu0FRgg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ca31a7d-355a-4ba1-1e0d-08d85fdf0d89
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 16:38:08.1301
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+95BtFY8R7Uv0ZYgXpOYB82p2OBMuAj/2ypxajsN3LivxAQA4BA5mdgQ+3Bs6SkO3XgiD3C5HgLl0MCzsjZdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2917
X-OriginatorOrg: intel.com
Message-ID-Hash: 5HABUGRLIQZP6NDOI2J5ZOGOSYWWCK6A
X-Message-ID-Hash: 5HABUGRLIQZP6NDOI2J5ZOGOSYWWCK6A
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Automatic dereference when reading from ArgX
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5HABUGRLIQZP6NDOI2J5ZOGOSYWWCK6A/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

This seems to make things work (Because taking a DeRefOf on an Arg is the same as taking a DeRefOf on the base object (An integer in this case). Which causes an error.

    Method (DRFA, 1) {
        //printf("Arg0: %o", DeRefOf(Arg0))
        printf("Arg0: %o", Arg0)
        //Store (DeRefOf(Arg0), INTX)
        Store (Arg0, INTX)       // <- line 10
        Debug = INTX
    }

    Method (MAIN, 0)
    {
        DRFA(INT5) //RefOf(INT5))
    }
}

- ev main
Evaluating \MAIN
ACPI Debug:  "Arg0: 0000000000000005"
ACPI Debug:  0x0000000000000005
No object was returned from evaluation of \MAIN


-----Original Message-----
From: dunkaist@gmail.com <dunkaist@gmail.com> 
Sent: Tuesday, September 22, 2020 3:47 PM
To: devel@acpica.org
Subject: [Devel] Automatic dereference when reading from ArgX

Hello,

I've been struggling to find out how acpiexec behavior corresponds to what ACPI spec says.


ACPI 6.3 spec, Chapter 19.3.5.9.1 ArgX Objects, 1. Read from ArgX parameters:
> ObjectReference - Automatic dereference, return the target of the reference. Use of DeRefOf returns the same.

ACPI spec, Table 19-421 Reading from ArgX Objects:
> Parameter: RefOf(Obj)
> MTHD ArgX Type: Reference to object Obj Read operation on ArgX: 
> Store(Arg0, ...) Result of read: Obj


Then, here is a table I've written (argx_deref.asl):

DefinitionBlock ("", "DSDT", 1, "BLAH", "BLAHDSDT", 0x00000001)
{
    Name (INT5, 5)
    Name (INTX, 0)

    Method (DRFA, 1) {
        printf("Arg0: %o", DeRefOf(Arg0))
        printf("Arg0: %o", Arg0)
        Store (DeRefOf(Arg0), INTX)
        Store (Arg0, INTX)       // <- line 10
        Debug = INTX
    }

    Method (MAIN, 0)
    {
        DRFA(RefOf(INT5))
    }
}


Finally, the output of `acpiexec -m -eo argx_deref.aml':

> Intel ACPI Component Architecture
> AML Execution/Debug Utility version 20200717
> ...
>    Nested method call     :     DRFA
> ACPI Debug:  "Arg0: 00000005"
> ACPI Debug:  "Arg0: [Reference Object]"
> ACPI Error: Cannot assign type [Reference] to [Integer] (must be type Int/Str/Buf) (20200717/exstoren-239)
> Failed at AML Offset 00024, Opcode 0070: Store (Arg0, INTX) /* External reference */
> ...


So, it turnes out (or at least seems to me) that Store(Arg0, ...) at line 10 reads a Reference object, not an Integer one as the spec says.
I.e. there is no automatic dereference.

Do I miss something? Could you elaborate on this, please?

Thank you,
Ivan
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
