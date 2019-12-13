Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A4F11E853
	for <lists+devel-acpica@lfdr.de>; Fri, 13 Dec 2019 17:29:29 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DC52D10113695;
	Fri, 13 Dec 2019 08:32:49 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.136; helo=mga12.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1251F10113692
	for <devel@acpica.org>; Fri, 13 Dec 2019 08:32:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Dec 2019 08:29:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600";
   d="scan'208";a="415684597"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
  by fmsmga006.fm.intel.com with ESMTP; 13 Dec 2019 08:29:23 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Dec 2019 08:29:24 -0800
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.84]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.88]) with mapi id 14.03.0439.000;
 Fri, 13 Dec 2019 08:29:23 -0800
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20191213 released
Thread-Index: AdWx0k0xBxZgNKY4QsS0i6YceIR9Ag==
Date: Fri, 13 Dec 2019 16:29:23 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96C0F0C@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDY2NDAwNzEtODZhMC00NTRhLWJlMDktYzg1YTRlMDI4ZjE2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVTVtNyt0MWFVTHYzZVdkM3hJeGFKMDJKVHdhSkdyeVBXNUpXekJQdHEwRUJoYWJNRVwvSkdOS3pldWxBZkRrMmMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: 77GOY6VXDWVVCSS3KLPCLRFVWIKYKTI3
X-Message-ID-Hash: 77GOY6VXDWVVCSS3KLPCLRFVWIKYKTI3
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20191213 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/77GOY6VXDWVVCSS3KLPCLRFVWIKYKTI3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

13 December 2019. Summary of changes for version 20191213:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Return a Buffer object for all fields created via the CreateField operator. Previously, an Integer would be returned if the size of the field was less than or equal to the current size of an Integer. Although this goes against the ACPI specification, it provides compatibility with other ACPI implementations. Also updated the ASLTS test suite to reflect this new behavior.

2) iASL Compiler/Disassembler and ACPICA tools:

iASL: Implemented detection of (and throw an error for) duplicate values for Case statements within a single Switch statement. Duplicate Integers, Strings, and Buffers are supported.

iASL: Fix error logging issue during multiple file compilation -- Switch to the correct input file during error node creation.

iASL: For duplicate named object creation, now emit an error instead of a warning - since this will cause a runtime error.

AcpiSrc: Add unix line-ending support for non-Windows builds.

iASL: Add an error condition for an attempt to create a NameString with > 255 NameSegs (the max allowable via the AML definition).
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
