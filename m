Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CC963844
	for <lists+devel-acpica@lfdr.de>; Tue,  9 Jul 2019 16:55:51 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 47D63212AF0BC;
	Tue,  9 Jul 2019 07:55:50 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.31; helo=mga06.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 2CA9C212AD5A1
 for <devel@acpica.org>; Tue,  9 Jul 2019 07:55:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 07:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="159471203"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga008.jf.intel.com with ESMTP; 09 Jul 2019 07:55:48 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 07:55:48 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.149]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.114]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 07:55:48 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20190703 released
Thread-Index: AdU2ZhsE8z4uAhP4S1Of2KW9evNe8g==
Date: Tue, 9 Jul 2019 14:55:48 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B960BDFB@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzczMmUyNGItNGExNy00OGNiLTk1OTEtYmY0OTBjZjhhYTQ5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZis3dzZuK0IwZG1JNk9XWWNTM0lpa0xrb1lZV1FDT1lRXC9MckpBYUtCbDM3VWJnMXhmeElMUTVWWmgwRmYzREYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: [Devel] ACPICA version 20190703 released
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

03 July 2019. Summary of changes for version 20190703:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Remove legacy module-level support code. There were still some remnants of the legacy module-level code executions. Since we no longer support this option, this is essentially dead code and has been removed from the ACPICA source.

iASL: ensure that _WAK, _PTS, _TTS, and _Sx are declared only at the root scope. If these named objects are declared outside the root scope, they will not be invoked by any host Operating System.

Clear status of GPEs on first direct enable. ACPI GPEs (other than the EC one) can be enabled in two situations. First, the GPEs with existing _Lxx and _Exx methods are enabled implicitly by ACPICA during system initialization.  Second, the GPEs without these methods (like GPEs listed by _PRW objects for wakeup devices) need to be enabled directly by the code that is going to use them (e.g. ACPI power management or device drivers).

In the former case, if the status of a given GPE is set to start with, its handler method (either _Lxx or _Exx) needs to be invoked to take care of the events (possibly) signaled before the GPE was enabled. In the latter case, however, the first caller of AcpiEnableGpe() for a given GPE should not be expected to care about any events that might be signaled through it earlier.  In that case, it is better to clear the status of the GPE before enabling it, to prevent stale events from triggering unwanted actions (like spurious system resume, for example).

For this reason, modify AcpiEvAddGpeReference() to take an additional boolean argument indicating whether or not the GPE status needs to be cleared when its reference counter changes from zero to one and make AcpiEnableGpe() pass TRUE to it through that new argument.


2) iASL Compiler/Disassembler and ACPICA tools:

The tool generation process has been migrated to MSVC 2017, and all project files have been upgraded. The new project files appear in the directory \acpica\generate\msvc2017. This change effectively deprecates the older project files in \acpica\generate\msvc9.

iASL: ensure that _WAK, _PTS, _TTS, and _Sx are declared only at the root scope. If these named objects are declared outside the root scope, they will not be invoked by any host Operating System.



_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
