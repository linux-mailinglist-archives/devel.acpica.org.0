Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6252E1E6CC5
	for <lists+devel-acpica@lfdr.de>; Thu, 28 May 2020 22:45:35 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 12802122ED132;
	Thu, 28 May 2020 13:41:14 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 48D01122E98CE
	for <devel@acpica.org>; Thu, 28 May 2020 13:41:11 -0700 (PDT)
IronPort-SDR: n0gOwYheBRDuzYlUQPguMXCtqQSlgj2zV6x2Wbkt4BHKgXhsDGUzFeVrQAHuMUKfII3EQ1HRpA
 pWcmK+/KMJBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2020 13:45:31 -0700
IronPort-SDR: RdD/PqbYm8R5s+SDpT/BaPjeLlI/L4Xt+u/tpmKN/3ddedqnSNHV04PB2RM3mukvnydADNwc1A
 tOsJam716LRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400";
   d="scan'208";a="311037981"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by FMSMGA003.fm.intel.com with ESMTP; 28 May 2020 13:45:31 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.119]) by
 ORSMSX105.amr.corp.intel.com ([169.254.2.143]) with mapi id 14.03.0439.000;
 Thu, 28 May 2020 13:45:30 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20200528 released
Thread-Index: AdY1MOPNaxRqeADbRwyoTByajjbkfw==
Date: Thu, 28 May 2020 20:45:30 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3D1C25826@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: XIGARBD4AECTLQPYP5A6MGJIUMMWWO4I
X-Message-ID-Hash: XIGARBD4AECTLQPYP5A6MGJIUMMWWO4I
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200528 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/XIGARBD4AECTLQPYP5A6MGJIUMMWWO4I/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

28 May 2020. Summary of changes for version 20200528:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Removed old/obsolete Visual Studio files which were used to build the Windows versions of the ACPICA tools. Since we have moved to Visual Studio 2017, we are no longer supporting Visual Studio 2006 and 2009 project files. The new subdirectory and solution file are located at:

    acpica/generate/msvc2017/AcpiComponents.sln


2) iASL Compiler/Disassembler and ACPICA tools: 

iASL: added support for a new OperationRegion Address Space (subtype): PlatformRtMechanism. Support for this new keyword is being released for early prototyping. It will appear in the next release of the ACPI specification.

iASL: do not optimize the NameString parameter of the CondRefOf operator. In the previous iASL compiler release, the NameString parameter of the CondRefOf was optimized. There is evidence that some implementations of the AML interpreter do not perform the recursive search-to-parent search during the execution of the CondRefOf operator. Therefore, the CondRefOf operator behaves differently when the NameString parameter is a single name segment (a NameSeg) as opposed to a full NamePath (starting at the root scope) or a NameString containing parent prefixes.

iASL: Prevent an inadvertent remark message. This change prevents a remark if within a control method the following exist:
1) An Operation Region is defined, and
2) A Field operator is defined that refers to the region.
This happens because at the top level, the Field operator does not actually create a new named object, it simply references the operation region.

Removed support for the acpinames utility. The acpinames was a simple utility used to populate and display the ACPI namespace without executing any AML code. However, ACPICA now supports executable opcodes outside of control methods. This means that executable AML opcodes such as If and Store opcodes need to be executed during table load. Therefore, acpinames would need to be updated to match the same behavior as the acpiexec utility and since acpiexec can already dump the entire namespace (via the 'namespace' command), we no longer have the need to maintain acpinames.

    In order to dump the contents of the ACPI namepsace using acpiexec, execute the following command from the command line:

        acpiexec -b "n" [aml files]
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
