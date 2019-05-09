Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 841CB19535
	for <lists+devel-acpica@lfdr.de>; Fri, 10 May 2019 00:25:55 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 0720821260A62;
	Thu,  9 May 2019 15:25:54 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.136; helo=mga12.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 4B26521260519
 for <devel@acpica.org>; Thu,  9 May 2019 15:25:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 15:25:51 -0700
X-ExtLoop1: 1
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2019 15:25:50 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 15:25:50 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.28]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.110]) with mapi id 14.03.0415.000;
 Thu, 9 May 2019 15:25:50 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: "devel@acpica.org" <devel@acpica.org>
Thread-Topic: ACPICA version 20190509 released
Thread-Index: AdUGtf/GMC/UjdpSTrWb9wlY9+x1sg==
Date: Thu, 9 May 2019 22:25:49 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B958D1E9@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTRmMTk4YWYtOGMwNi00YzE3LTljZDMtYWMwMmY1Yjg0YWFmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWWNCVkd4UDBaejVUMmJkWjFRMnJvSnBFOEs3UzVRcUNwK2VIUE9JRTc2UnpVcEQ5Zkk2QVhMS3JxV1RockhwWSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: [Devel] ACPICA version 20190509 released
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

09 May 2019. Summary of changes for version 20190509:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Revert commit  6c43e1a ("ACPICA: Clear status of GPEs before enabling them") that causes problems with Thunderbolt controllers to occur if a dock device is connected at init time (the xhci_hcd and thunderbolt modules crash which prevents peripherals connected through them from working). Commit 6c43e1a effectively causes commit ecc1165b8b74 ("ACPICA: Dispatch active GPEs at init time") to get undone, so the problem addressed by commit ecc1165b8b74 appears again as a result of it.


2) iASL Compiler/Disassembler and ACPICA tools:

Reverted iASL: Additional forward reference detection. This change reverts forward reference detection for field declarations. The feature unintentionally emitted AML bytecode with incorrect package lengths for some ASL code related to Fields and OperationRegions. This malformed AML can cause systems to crash
during boot. The malformed AML bytecode is emitted in iASL version 20190329 and 20190405.

iASL: improve forward reference detection. This change improves forward reference detection for named objects inside of scopes. If a parse object has the OP_NOT_FOUND_DURING_LOAD set, it means that Op is a reference to a named object that is declared later in the AML bytecode. This is allowed if the reference is inside of a method and the declaration is outside of a method like so:

DefinitionBlock(...)
{
    Method (TEST)
    {
        Return (NUM0)
    }
    Name (NUM0,0)
}

However, if the declaration and reference are both in the same method or outside any methods, this is a forward reference and should be marked as an error because it would result in runtime errors.

DefinitionBlock(...)
{
    Name (BUFF, Buffer (NUM0) {}) // Forward reference
    Name (NUM0, 0x0)

    Method (TEST)
    {
        Local0 = NUM1
        Name (NUM1, 0x1) // Forward reference
        return (Local0)
    }
}

iASL: Implemented additional buffer overflow analysis for BufferField declarations. Check if a buffer index argument to a create buffer field operation is beyond the end of the target buffer.

This affects these AML operators:
 
   AML_CREATE_FIELD_OP
   AML_CREATE_BIT_FIELD_OP
   AML_CREATE_BYTE_FIELD_OP
   AML_CREATE_WORD_FIELD_OP
   AML_CREATE_DWORD_FIELD_OP
   AML_CREATE_QWORD_FIELD_OP

 There are three conditions that must be satisfied in order to allow this validation at compile time:
 
   1) The length of the target buffer must be an integer constant
   2) The index specified in the create* must be an integer constant
   3) For CreateField, the bit length argument must be non-zero.

Example:
    Name (BUF1, Buffer() {1,2})
    CreateField (BUF1, 7, 9, CF03)  // 3: ERR

dsdt.asl     14:     CreateField (BUF1, 7, 9, CF03)  // 3: ERR
Error    6165 -                           ^ Buffer index beyond end of target buffer


_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
