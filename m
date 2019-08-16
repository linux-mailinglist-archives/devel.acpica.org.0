Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B05904A6
	for <lists+devel-acpica@lfdr.de>; Fri, 16 Aug 2019 17:28:14 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6F2B6202E292C;
	Fri, 16 Aug 2019 08:30:02 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.126; helo=mga18.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 71969202C80B1
 for <devel@acpica.org>; Fri, 16 Aug 2019 08:30:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 08:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="188843343"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga002.jf.intel.com with ESMTP; 16 Aug 2019 08:28:11 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 16 Aug 2019 08:28:11 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.126]) with mapi id 14.03.0439.000;
 Fri, 16 Aug 2019 08:28:11 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20190816 released
Thread-Index: AdVURtfFDLL3LBKOR3+m+1gmzpPdGA==
Date: Fri, 16 Aug 2019 15:28:10 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96655A9@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWFjZjFkMDItNDBhNy00ZTgyLTg0MTMtMjc1Nzg3MDBmYjY4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNEViNUFYYWlrM2NqTyswYUNjRWtnRFljYzFsaVdpdlp3N2NYbFV1Z1wvWTArWU9DaGlDVytBaUM4MnJYVThjUHYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: [Devel] ACPICA version 20190816 released
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

16 August 2019. Summary of changes for version 20190816:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Modified the OwnerId mechanism to allow for more Owner Ids. The previous limit was 256 Ids, now it is 4096 Ids. This prevents OWNER_ID_LIMIT exceptions on machines with a large number of initialization threads, many CPU cores and nested initialization control methods.

Introduced acpi_dispatch_gpe() as a wrapper around AcpiEvDetectGpe() for checking if the given GPE (as represented by a GPE device handle and a GPE number) is currently active and dispatching it (if that's the case) outside of interrupt context.

Table load: exit the interpreter before initializing objects within the new table This prevents re-acquiring the interpreter lock when loading tables

Added the "Windows 2019" string to the _OSI support (version 1903).

Macros: removed pointer math on a null pointer. Causes warnings on some compilers and/or tools. Changed ACPI_TO_POINTER to use ACPI_CAST_PTR instead of using arithmetic.

Fully deployed the ACPI_PRINTF_LIKE macro. This macro was not being used across all "printf-like" internal functions. Also, cleanup all calls to such functions (both in 32-bit mode and 64-bit mode) now that they are analyzed by the gcc compiler via ACPI_PRINTF_LIKE.


2) iASL Compiler/Disassembler and ACPICA tools:

iASL: implemented a new data table compiler flex/bison front-end. This change is internal and is not intended to result in changes to the compiled code. This new compiler front-end can be invoked using the -tp option for now, until the old mechanism is removed.

ASLTS: Implemented a new data table compiler test suite. This test suite generates all table templates and compile/disassemble/re-compile/binary-compare each file.

iASL: return -1 if AML files were not generated due to compiler errors

iASL: added a warning on use of the now-legacy ASL Processor () keyword.

iASL: added an error on _UID object declaration that returns a String within a Processor () declaration. A _UID for a processor must be an Integer.

iASL: added a null terminator to name strings that consist only of multiple parent prefixes (^)

iASL: added support to compile both ASL and data table files in a single command.

Updated the tool generation project files that were recently migrated to MSVC 2017 to eliminate all new warnings. The new project files appear in the directory \acpica\generate\msvc2017. This change effectively deprecates the older project files in \acpica\generate\msvc9.

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
