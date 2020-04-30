Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 483D81C02BD
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Apr 2020 18:40:20 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 25BCD110EC743;
	Thu, 30 Apr 2020 09:39:07 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.65; helo=mga03.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 09675110EC732
	for <devel@acpica.org>; Thu, 30 Apr 2020 09:39:04 -0700 (PDT)
IronPort-SDR: iELV0wXaz87kvPIvqeA5ioHuObTvDSMRhfokV29mCeJVlCpi5MI0vbya6gtHuU/QGAfRq8N2NI
 bHvUsb7DVDUg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2020 09:40:16 -0700
IronPort-SDR: pmOYpR2euTLJ05O0HkKAkh4QTisOYClR0bOQ8/m3mwZfA6kDk2oExUF9OdnY/M+99prl6WiTkp
 qeX96OC7QnAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400";
   d="scan'208";a="294562552"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
  by orsmga008.jf.intel.com with ESMTP; 30 Apr 2020 09:40:16 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.249]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.205]) with mapi id 14.03.0439.000;
 Thu, 30 Apr 2020 09:40:15 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20200430 released 
Thread-Index: AdYfDcnTYfdoOaKiRJaOnKw47M80CQ==
Date: Thu, 30 Apr 2020 16:40:14 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3C68BD11C@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: TJTJBDAV2LZYAYNIL3EQMJBGDTPJW4PM
X-Message-ID-Hash: TJTJBDAV2LZYAYNIL3EQMJBGDTPJW4PM
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200430 released 
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TJTJBDAV2LZYAYNIL3EQMJBGDTPJW4PM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

30 April 2020. Summary of changes for version 20200430:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Cleaned up the coding style of a couple of global variables (AcpiGbl_NextCmdNum and AcpiProtocolLengths) caught by static analyzers. AcpiProtocolLengths was made static, and the definition of AcpiGbl_NextCmdNum was moved to acglobal.h.


2) iASL Compiler/Disassembler and ACPICA tools: 

iASL DataTable Compiler:  Fixed a segfault on errors that aren't directly associated with a field.

Disassembler: has been made more resilient so that it will continue to parse AML even if it the AML generates ACPI namespace errors. This enables iASL to disassemble some AML that may have been compiled using older versions of iASL that no longer compile with newer versions of iASL.

iASL: Fixed the required parameters for _NIH and _NIG. Previously, there was a mixup where _NIG required one parameter and _NIH required zero parameters. This change swaps these parameter requirements. Now it is required that _NIH must be called with one parameter and _NIG requires zero parameters.

iASL: Allow use of undefined externals as long as they are protected by an if (CondRefOf (...)) block when compiling multiple definition blocks.

iASL: Fixed the type override behavior of named objects that are declared as External. External declarations will no longer override the type of the actual definition if it already exists.

AcpiNames: Added setargv.obj to the MSVC 2017 link sequence to enable command line wildcard support on Windows. Note: the AcpiNames utility is essentially redundant with the AcpiExec utility (using the "namespace" command) and is therefore deprecated. It will be removed in future releases of ACPICA.

Disassembler: ignore AE_ALREADY_EXISTS status when parsing create* operators. The disassembler is intended to emit existing ASL code as-is. Therefore, error messages emitted during disassembly should be ignored or handled in a way such that the disassembler can continue to parse the AML. This change ignores AE_ALREADY_EXISTS errors during the deferred Op parsing for create operators in order to complete parsing ASL termlists.

iASL DataTable Compiler: IVRS table: fix potentially uninitialized variable warning. Some compilers catch potential uninitialized variables. This is done by examining branches of if/else statements. This change replaces an "else if" with an "else" to fix the uninitialized variable warning.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
