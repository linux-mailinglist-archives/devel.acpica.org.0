Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC351375F1
	for <lists+devel-acpica@lfdr.de>; Fri, 10 Jan 2020 19:18:21 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2E84A10097DD7;
	Fri, 10 Jan 2020 10:21:39 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.31; helo=mga06.intel.com; envelope-from=robert.moore@intel.com; receiver=<UNKNOWN> 
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C161C10097DD5
	for <devel@acpica.org>; Fri, 10 Jan 2020 10:21:36 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Jan 2020 10:18:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600";
   d="scan'208";a="223860774"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
  by orsmga006.jf.intel.com with ESMTP; 10 Jan 2020 10:18:16 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jan 2020 10:18:16 -0800
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.84]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.213]) with mapi id 14.03.0439.000;
 Fri, 10 Jan 2020 10:18:16 -0800
From: "Moore, Robert" <robert.moore@intel.com>
To: acpica.org list <devel@acpica.org>
Thread-Topic: ACPICA version 20200110 released
Thread-Index: AdXH4iICef/YAx3LRs28tfdO3EBuzw==
Date: Fri, 10 Jan 2020 18:18:16 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96C58CC@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDYzMjIzOWItZmZmMS00MDI1LWJmZTItMzhhNWFjZGQ0OWUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY1wvbk11VUhSTXNoZnRhazNFTFd1WU1XTWpRVVwvOWY5UDJJME5vczRXVG9mRnBTa1lvVWFMb1FTRFR6NkhidlN3In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: JZZKRZGDRR3XDMPHIFA3YGORLFQRYGVP
X-Message-ID-Hash: JZZKRZGDRR3XDMPHIFA3YGORLFQRYGVP
X-MailFrom: robert.moore@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPICA version 20200110 released
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JZZKRZGDRR3XDMPHIFA3YGORLFQRYGVP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

10 January 2020. Summary of changes for version 20200110:

This release is available at https://acpica.org/downloads


1) ACPICA kernel-resident subsystem:

Updated all copyrights to 2020. This affects all ACPICA source code modules.


2) iASL Compiler/Disassembler and ACPICA tools:

ASL test suite (ASLTS): Updated all copyrights to 2020.

Tools and utilities: Updated all signon copyrights to 2020.

iASL: fix forward reference analysis for field declarations. Fixes forward reference analysis for field declarations by searching the parent scope for the named object when the object is not present in the current scope.

iASL: Improved the error output for ALREADY_EXISTS errors. Now, the full pathname of the name that already exists is printed.

iASL: Enhance duplicate Case() detection for buffers. Add check for buffers with no initializer list (these buffers will be filled with zeros at runtime.)

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
