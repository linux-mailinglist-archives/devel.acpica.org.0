Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0482B2956
	for <lists+devel-acpica@lfdr.de>; Sat, 14 Nov 2020 00:50:25 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 01C5F100F2240;
	Fri, 13 Nov 2020 15:50:24 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=guangchun.zheng@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8C604100EB35F
	for <devel@acpica.org>; Fri, 13 Nov 2020 15:50:21 -0800 (PST)
IronPort-SDR: +9LSEVOj8NsD62AbbBFaMoe6YPVPRJY8M8xFBbh3Y0beOoDffz7HX6t/1n1WRya+vHVpOQPYN8
 spCBfWlbtPpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="149817022"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208,217";a="149817022"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 15:50:15 -0800
IronPort-SDR: 18fjGivyyPfN23i3H91/6CKfPdLg3BML7W1hVFUTQsv3sKfZx6S5SmsWHLKiYUSeLSVkzklGcK
 CA2t9AJ8JAUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400";
   d="scan'208,217";a="355706219"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga008.jf.intel.com with ESMTP; 13 Nov 2020 15:50:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 15:50:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 15:50:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 15:50:14 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 15:50:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyZDgiOMs8dWWivqXUw6aJVLw6DSwxPhdaiYpXpGkn/8xW0prOR5alxj258Rb4uKxMFa0nYbdgY9SW5t2fVBwjL3HDbIMfLLItqOBcnpzZbX/mHQ1nFWl9jiuggwqqdFDZWdqSELXDesxcjCXTh8BLPufkh030tcfxcMzCv9LJ4sDF0IFrwqKQ+PdDhwO5NX1IFCY46d3MEFb+gldXgb+MqWxZFm0TBOpo0NIaC26SpPF2VbYq8lOICa10HcbPffxd8IEVygq1Twn9MslfdaVIYqPgV8gGXFzPBKXrExDIANgV00yUionmYa1rOWFdrQ4+11Y2W+Va+qNGcxkpjs7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jcqzqRRl4iA0VSK2V3j31PXX9dHAFGfTir3vX/Y4Ly0=;
 b=l8C6trwMt6ULkfGPR2qbUPO6EJS3bPkv425Mhea361pvkHygdSN1lQ66YrqJfdxqiNwAGkBNXRyIAn14jMnaqAhH0evaCNe5BWE4y+MSKa0OyQEwzlgNHYfnHbQbitRRel9an1O+KnyS9+b1JeEk8WbnaOlNhyIkSC8oN20sBmoW1vov/uqnD+r3iOTILME8H4hrKiKNptZwm08isjGCqmZmmavtAnbLcxVvl+88kqEY7MDv4JzorZFklNew+ryT9T3rbvHQEwEVOZjpJA2WqMcQFPCFdeP1esFSYDKTVNFsNOxDG0MvU1fBQjQHPc2/817/GvrojGiNZIqCya+7rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jcqzqRRl4iA0VSK2V3j31PXX9dHAFGfTir3vX/Y4Ly0=;
 b=gj2itHGMbM8Gsfzq1wsFv/JPUQ/RMDM7XYnDzzY0RfT2BvDCxEBzYs4828elneZSRiA4C/e9edFHy7XRpZSoTblyhjsJ8kPzsVNMSg3CwkHiqqiZSXXtTurjmeL/jaDEM5sbbZI+mrDr/AKav2Cp6ZTu9r7aijDtZUhkSzDwURE=
Received: from SA2PR11MB4795.namprd11.prod.outlook.com (2603:10b6:806:118::9)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 23:50:13 +0000
Received: from SA2PR11MB4795.namprd11.prod.outlook.com
 ([fe80::500d:6d96:14c:2b69]) by SA2PR11MB4795.namprd11.prod.outlook.com
 ([fe80::500d:6d96:14c:2b69%4]) with mapi id 15.20.3499.032; Fri, 13 Nov 2020
 23:50:13 +0000
From: "Zheng, Guangchun" <guangchun.zheng@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: leave
Thread-Index: Ada6F7O4a7ixHy0YRxOi2NX93mZW5Q==
Date: Fri, 13 Nov 2020 23:50:13 +0000
Message-ID: <SA2PR11MB4795ACF0FA6BADDDD7F40E69F5E60@SA2PR11MB4795.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: acpica.org; dkim=none (message not signed)
 header.d=none;acpica.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db0a3a33-bcd6-48f4-942a-08d8882edd35
x-ms-traffictypediagnostic: SA0PR11MB4542:
x-microsoft-antispam-prvs: <SA0PR11MB4542AC418964DFD370602D5FF5E60@SA0PR11MB4542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zWo+3zxhTPO1ekFBqMJxrNowVTxUwok6jSvk3rw2f3XEi6fxG94no0RqoYZmDN5D/pcjI4e37xdHbYMSVh9Ra5mAwF8HQyFdpnJagN8EytmnR3SH8L6JrwnFGvzMyKccycJaSZCPh36Y2qk3jvBxiEqY/FTqUQnQqM6Tr72vD4v53mPEbjD7iYTJuh7vvNrubx3lkD0GenBABvN10Zw5jjS1cu7itEMQqcg/827feyoJeV3qZXIaHbSueZPCH/6x1WfH8FJ8HKEP4jlDz3M/+SEASDErT4UFLysiGsPH3JwYa0+V6oRz3/c40ILenXsh0ahmRvJqgaPel3mEVIDOjB7ugwG7tGZ++tUQvdNRfca53Pk1XsDAlxnAex3WSLsBv44oAtPnaQGzOA+l5pC2Vg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR11MB4795.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(346002)(39860400002)(376002)(7116003)(64756008)(71200400001)(26005)(66446008)(76116006)(66946007)(8676002)(478600001)(5660300002)(9686003)(316002)(7696005)(55016002)(6916009)(66556008)(6506007)(86362001)(558084003)(66476007)(186003)(52536014)(3480700007)(33656002)(8936002)(2906002)(220243001)(204593002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: +gs6KgH+1+GApZ+EiyiUBai4f9NYVTA0+KYuWH08FQvrw0rMUXIco9knioqY3mXKNONi6mMIQrtXA6+gdhXIFP4OntLuHFyRqFXvQCmScArcy+ET5uz3dwYVYQqqqHjnvq4I0+Fo7+xellzzAtS8C0m8GFjGIez7KjG4VaHbqa8Vbo0RZMKxFvdlYMBTPOzqNvOnO2HupP+U2Rmc51fowK18GsXBG5cI0qPDUYgtopwbDCblEQjOK0jqk3zYCE9F+4ukQ37tm6/+voXYp5mPKGTg4vguHXvWTgA4QOtnKVm/0wIcChn8fzWjMJcTtOJZATr1nBk1UxJc+hCLjKQ7rLB3VNdiGZUc5qOa46O7Ugpbui/njE5RqsLmvy3uhNiu6gMJlqaojUjAb5RvnBGnXkwPRy3O1v3cRefM5mfxm9zyIn8wkJwOP3Kvatnvyp/lAF4T3NWeKthLVnKZQlbJKXz5WB+GIC/XTqUBAGeG8WD+OYmol7y/GBp6pvxK9PXaF5ikZtWJdieIm93bFYktry/8Te8oSSh2QuIP3RVC4Rc2Rn7krJL5xmzqwM2BsNVv6BYCOMYziisMSSZQ5hH/4xnPgGU0VYMtVCeyW3/twz9IAxuSPGVkEc6QfUq5LhoyDWOHSsXyJz/ZB3Mvg2Mwbg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db0a3a33-bcd6-48f4-942a-08d8882edd35
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 23:50:13.3496
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f2Tn7wL/AJp+OC9qhajwT/HO0Vo/6uDX9vDssODkXZ5Y28JgHUyhcnVXCAt+QL/XnuJawj7wHs7UgX3nu4QdCVpFAGAkzonW+OPl6RF28GY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
Message-ID-Hash: HUACTZG6NETVD7W6NPQDGNFJJ3ZCMA4V
X-Message-ID-Hash: HUACTZG6NETVD7W6NPQDGNFJJ3ZCMA4V
X-MailFrom: guangchun.zheng@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] leave
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/HUACTZG6NETVD7W6NPQDGNFJJ3ZCMA4V/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============1410121216873520715=="

--===============1410121216873520715==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA2PR11MB4795ACF0FA6BADDDD7F40E69F5E60SA2PR11MB4795namp_"

--_000_SA2PR11MB4795ACF0FA6BADDDD7F40E69F5E60SA2PR11MB4795namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s


--_000_SA2PR11MB4795ACF0FA6BADDDD7F40E69F5E60SA2PR11MB4795namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:#002060;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:#002060"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText">%(web_page_url)slistinfo%(cgiext)s/%(_internal_na=
me)s<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SA2PR11MB4795ACF0FA6BADDDD7F40E69F5E60SA2PR11MB4795namp_--

--===============1410121216873520715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============1410121216873520715==--
