Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCFF19498C
	for <lists+devel-acpica@lfdr.de>; Thu, 26 Mar 2020 21:50:54 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C8A0E10FC3BA6;
	Thu, 26 Mar 2020 13:51:36 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C87BF10FC341D
	for <devel@acpica.org>; Thu, 26 Mar 2020 13:51:34 -0700 (PDT)
IronPort-SDR: Pyyt8f2EMc+U2UjhVr6vVnu6ZLZgmFjv0I3SXaj6eqn2LWePkr/04fVXkTE7v+WkmZfDleIuA7
 CDAbfTP8Gmew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 13:50:43 -0700
IronPort-SDR: 6wrJ0EhDPoVA43xiS1V1Hi/b3XZj5s/Xc46OtYmokheV0w1/pUA5UVIiuWoWGD2K9e1uZr6hvb
 hag7rksJo6Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200";
   d="scan'208";a="247673558"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by orsmga003.jf.intel.com with ESMTP; 26 Mar 2020 13:50:43 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.144]) by
 ORSMSX105.amr.corp.intel.com ([169.254.2.72]) with mapi id 14.03.0439.000;
 Thu, 26 Mar 2020 13:50:43 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20200326 released
Thread-Index: AdYDsBR4Wj3YOPWbSfOb6xDPU4svVg==
Date: Thu, 26 Mar 2020 20:50:41 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96FCF7E@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
Message-ID-Hash: BDLNZMTZ5R32EY7UQPXFY6CBKH5OKBSJ
X-Message-ID-Hash: BDLNZMTZ5R32EY7UQPXFY6CBKH5OKBSJ
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200326 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BDLNZMTZ5R32EY7UQPXFY6CBKH5OKBSJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: quoted-printable

26 March 2020. Summary of changes for version 20200326:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Performed a code clean-up to prevent build errors on early versions of GCC-=
10.

Added the NHLT table signature. iASL data table compiler/disassembler suppo=
rt for this table is coming soon.


2) iASL Compiler/Disassembler and ACPICA tools:=20

AcpiExec: Fixed several problems with the namespace initialization file (-f=
i<filename> option). Includes fixes to prevent AE_ALREADY_EXISTS errors, se=
veral seg faults, and enhancements to line parsing within the init file. In=
 addition, each object found in the init file and it's new value is display=
ed, as well as any such entries that do not have a corresponding name in th=
e namespace. For reference, the syntax for the various supported data types=
 are presented below
	PCHG 0x777788889999BBBB	// Integer
	\DEV1.STR1 "XYZ"		// String
	BUF1 (88 99 AA)		// Buffer
	PKG1 [0x1111 0x2222]		// Package
	\BF1 0x7980			// BufferField
	RCRV 0x0123456789ABCDEF	// Field Unit

iASL: Added a custom iASL macro __EXPECT__(iASL-Error-Code). This macro can=
 be used anywhere in a given ASL file to configure iASL to expect an iASL c=
ompiler error code on the line where this macro was placed. If the error co=
de does not exist, an error is generated. This is intended to be used for A=
CPICA's ASL test suite, but can be used by ASL developers as well.

iASL: table compiler: Implemented IVRS IVHD type 11h parsing. The AMD IVRS =
table parsing supported only IVHD type 10h structures. Parsing an IVHD type=
 11h caused the iasl to report unknown subtable type. Add necessary structu=
re definition for IVHD type 11h and apply correct parsing method based on s=
ubtable type. Micha=B3 =AFygowski.

iASL: table compiler: Fixed IVRS table IVHD type 10h reserved field name Ac=
cording to AMD IOMMU Specification Revision 3.05 the reserved field should =
be IOMMU Feature Reporting. Change the name of the field to the correct one=
. Micha=B3 =AFygowski.

acpiexec: removed redeclaration of AcpiGbl_DbOpt_NoRegionSupport. Patch bas=
ed on suggestions by David Seifert and Benjamin Berg.

iASL: table compiler: removed unused variable (DtCompilerParserResult) caus=
ing linking errors. Patch based on suggestions by David Seifert and Benjami=
n Berg.

iASL: table compiler: make LexBuffer static to avoid linking errors in newe=
r compilers. Patch based on suggestions by David Seifert and Benjamin Berg.

iASL: fixed type matching between External and Named objects. External obje=
ct types can only be expressed with ACPI object type values that are define=
d in the ACPI spec. However, iASL uses ACPI object type values that are loc=
al to ACPICA in addition to the values defined in the ACPI spec. This chang=
e implements type matching to map some object type values specific to ACPIC=
A to ones that are defined in the ACPI spec.

iASL: Droped the type mismatch compiler error that can arise from External =
declarations to a warning. This warning can occur when there is a type diff=
erence between the external declaration and the actual object declaration (=
when compiling multiple files/modules simultaneously).

iASL: removed an incorrect error message regarding externals. This change r=
emoves an incorrect error that is emitted when a duplicate external declara=
tion does not contain a type that opens a scope. This is incorrect because =
the duplicate external with conflicting types are already caught by iASL an=
d it doesn't make any sense to enforce what this conflicting type should be.

AcpiXtract: fix AX_IS_TABLE_BLOCK_HEADER macro. This macro needs to be surr=
ounded by parens. Otherwise, a logical statement that applies a logical not=
 operator to this macros could result in a computation that applies the ope=
rator to the left side of the logical and but not the right. Reported-by: J=
ohn Levon <john.levon@joyent.com>

Fixed a problem with the local version of sprint(): On 32-bit, the provided=
 sprintf() is non-functional: with a size of ACPI_UINT32_MAX, String + Size=
 will wrap, meaning End < Start, and AcpiUtBoundStringOutput() will never o=
utput anything as a result. The symptom seen of this was acpixtract failing=
 to output anything -- with a custom build that included utprint.c. Signed-=
off-by: John Levon <john.levon@joyent.com>

iASL: Changed the "PlatformCommChannel" ASL keyword to "PCC", as per the AC=
PI specification.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
