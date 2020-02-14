Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B83015F116
	for <lists+devel-acpica@lfdr.de>; Fri, 14 Feb 2020 19:00:15 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A011210FC3417;
	Fri, 14 Feb 2020 10:03:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.151; helo=mga17.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 9B1B310FC3412
	for <devel@acpica.org>; Fri, 14 Feb 2020 10:03:28 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2020 10:00:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400";
   d="scan'208";a="434862833"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
  by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2020 10:00:11 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 10:00:10 -0800
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.107]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.89]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 10:00:10 -0800
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20200214 released
Thread-Index: AdXjYGeuK2lJ5vUDSziHux9R8M6+Kw==
Date: Fri, 14 Feb 2020 18:00:09 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96EA09A@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjEyODI2ZGQtMTRkYS00NGVlLWJmNzgtMDVjYzRmZThiOTE2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVThtWllCdTJxQXpPMWVNT1lFWE1adkJGK1k1TTl2TXBIcGdUalRZMUhRY0xTN3k1dm1MQVplXC8zRGJ4cEtKMysifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: Z5YA7FWAFECPLPNLRNKI6P4THAR5YSCU
X-Message-ID-Hash: Z5YA7FWAFECPLPNLRNKI6P4THAR5YSCU
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200214 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Z5YA7FWAFECPLPNLRNKI6P4THAR5YSCU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

14 February 2020. Summary of changes for version 20200214:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Enable sleep button on ACPI legacy wake:  Hibernation (S4) is triggered in a guest when it receives a sleep trigger from the hypervisor. When the guest resumes from this power state, it does not see the SleepEnabled bit. In other words, the sleepHibernation (S4) is triggered in a guest when it receives a sleep trigger from the hypervisor. When the guest resumes from this power state, it does not see the SleepEnabled bit. In other words, the sleep button is not enabled on waking from an S4 state. This causes subsequent invocation of sleep state to fail since the guest.button is not enabled on waking from an S4 state. This causes subsequent invocation of sleep state to fail in the guest. Fix this problem by enabling the sleep button in ACPI legacy wake. From Anchal Agarwal <anchalag@amazon.com>.

Implemented a new external interface, AcpiAnyGpeStatusSet (). To be used for checking the status bits of all enabled GPEs in one go. It is needed to distinguish spurious SCIs from genuine ones when deciding whether or not to wake up the system from suspend-to-idle.

Generic Makefiles: replace HOST name with ACPI_HOST: Some machines may be using HOST in their environment to represent the host name for their machines. Avoid this problem by renaming this variable from HOST to ACPI_HOST.

MSVC 2017 project files: Enable multiprocessor generation to improve build performance.

Added a macro to get the byte width of a Generic Address structure. New ACPI_ACCESS_BYTE_WIDTH is in addition to the existing ACPI_ACCESS_BIT_WIDTH. From Mika Westerberg.


2) iASL Compiler/Disassembler and ACPICA tools: 

iASL: Implemented full support for the (optional, rarely used) ReturnType and ParameterTypesList for the Method, Function, and External operators. For Method declarations, the number of individual ParameterTypes must match the declaration of the number of arguments (NumArgs). This also Fixes a problem with the External operator where extra/extraneous bytes were emitted in the AML code if the optional ReturnType/ParameterTypes were specified for a MethodObj declaration.
New error message:
1) Method NumArgs count does not match length of ParameterTypes list

iASL: Implemented detection of type mismatches between External declarations and named object declarations. Also, detect type mismatches between multiple External declarations of the same Name.
New error messages:
1) Type mismatch between external declaration and actual object declaration detected
2) Type mismatch between multiple external declarations detected

iASL: Implemented new error messages for External operators that specify a ReturnType and/or ParameterTypesList for any object type other than control methods (MethodObj).
New error messages:
1) Return type is only allowed for Externals declared as MethodObj
2) Parameter type is only allowed for Externals declared as MethodObj

iASL: Implemented two new remark/warning messages for ASL code that creates named objects from within a control method. This is very inefficient since the named object must be created and deleted each time the method is executed.
New messages:
1) Creation of named objects within a method is highly inefficient, use globals or method local variables instead (remark)
2) Static OperationRegion should be declared outside control method (warning)

iASL: Improved illegal forward reference detection by adding support to detect forward-reference method invocations.

iASL: Detect and issue an error message for NameStrings that contain too many individual NameSegs (>255). This is an AML limitation that is defined in the ACPI specification.
New message:
1) NameString contains too many NameSegs (>255)

acpidump: windows: use GetSystemFirmwareTable API for all tables except SSDT. By using this API, acpidump is able to get all tables in the XSDT

iASL: Removed unused parser file and updated msvc2017 project files. Removed the obsolete AslCompiler.y from the repository.

iASL: msvc2017: Fixed macros in the file dependency list to prevent unnecessary rebuilds. Replace %(Directory) with %(RelativeDir).

Disassembler: Prevent spilling error messages to the output file. All errors are directed to the console instead. These error messages prevented re-compilation of the resulting disassembled ASL output file (.DSL).
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
