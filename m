Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD3EDCB10
	for <lists+devel-acpica@lfdr.de>; Fri, 18 Oct 2019 18:32:42 +0200 (CEST)
Received: from new-ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5CA38100DC1FB;
	Fri, 18 Oct 2019 09:34:47 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88; helo=mga01.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F1B8B100DC1F9
	for <devel@acpica.org>; Fri, 18 Oct 2019 09:34:45 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 09:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200";
   d="scan'208";a="190412931"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
  by orsmga008.jf.intel.com with ESMTP; 18 Oct 2019 09:32:38 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 18 Oct 2019 09:32:38 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.200]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.28]) with mapi id 14.03.0439.000;
 Fri, 18 Oct 2019 09:32:38 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20191018 released
Thread-Index: AdWF0VhHxSOcKLdKS3WjWz6Jf2dUaA==
Date: Fri, 18 Oct 2019 16:32:37 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B969E4CF@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjFkYTAxODktOTQxNS00OGNmLThhMWQtYjk0MGI2MmRkYWJhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicXJHTGNMWEhpbmhnZkg3V1wvTXNycFlOcktEeWdURUZhK3Q2NDVWVFVNb0ZBYUNEaWthZGlJN0MzdGVnRCtXbisifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: 2ZK7W5OOHYHRJGKDURZ7YHXKDQL7WTLO
X-Message-ID-Hash: 2ZK7W5OOHYHRJGKDURZ7YHXKDQL7WTLO
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20191018 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/2ZK7W5OOHYHRJGKDURZ7YHXKDQL7WTLO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

18 October 2019. Summary of changes for version 20191018:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Debugger: added a new command: "Fields [address space ID]". This command dumps the contents of all field units that are defined within the namespace with a particular address space ID.

Modified the external interface AcpiLoadTable() to return a table index. This table index can be used for unloading a table for debugging.
    ACPI_STATUS
    AcpiLoadTable (
        ACPI_TABLE_HEADER       *Table,
        UINT32                  *TableIndex))

Implemented a new external interface: AcpiUnloadTable() This new function takes a table index as an argument and unloads the table. Useful for debugging only.
    ACPI_STATUS
    AcpiUnloadTable (
        UINT32                  TableIndex))

Ported the AcpiNames utility to use the new table initialization sequence. The utility was broken before this change. Also, it was required to include most of the AML interpreter into the utility in order to process table initialization (module-level code execution.)

Update for results from running Clang V8.0.1. This fixes all "dead assignment" warnings. There are still several "Dereference of NULL pointer" warnings, but these have been found to be false positive warnings.


2) iASL Compiler/Disassembler and ACPICA tools:

iASL: numerous table compiler changes to ensure that the usage of yacc/bison syntax is POSIX-compliant.

iASL/disassembler: several simple bug fixes in the data table disassembler.

Acpiexec: expand the initialization file (the -fi option) to initialize strings, buffers, packages, and field units.

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
