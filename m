Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1D1274C69
	for <lists+devel-acpica@lfdr.de>; Wed, 23 Sep 2020 00:47:31 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2A34B1486BC0E;
	Tue, 22 Sep 2020 15:47:30 -0700 (PDT)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8BE7E1486BC0B
	for <devel@acpica.org>; Tue, 22 Sep 2020 15:47:28 -0700 (PDT)
MIME-Version: 1.0
From: dunkaist@gmail.com
To: devel@acpica.org
Date: Tue, 22 Sep 2020 22:47:28 -0000
Message-ID: <20200922224728.2835.56590@ml01.vlan13.01.org>
User-Agent: HyperKitty on https://lists.acpica.org/
Message-ID-Hash: J4HAXLKGYTW4XUUAFATI4MRI4QZ3HH2U
X-Message-ID-Hash: J4HAXLKGYTW4XUUAFATI4MRI4QZ3HH2U
X-MailFrom: dunkaist@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Automatic dereference when reading from ArgX
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/J4HAXLKGYTW4XUUAFATI4MRI4QZ3HH2U/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I've been struggling to find out how acpiexec behavior corresponds to what ACPI spec says.


ACPI 6.3 spec, Chapter 19.3.5.9.1 ArgX Objects, 1. Read from ArgX parameters:
> ObjectReference - Automatic dereference, return the target of the reference. Use of DeRefOf returns the same.

ACPI spec, Table 19-421 Reading from ArgX Objects:
> Parameter: RefOf(Obj)
> MTHD ArgX Type: Reference to object Obj
> Read operation on ArgX: Store(Arg0, ...)
> Result of read: Obj


Then, here is a table I've written (argx_deref.asl):

DefinitionBlock ("", "DSDT", 1, "BLAH", "BLAHDSDT", 0x00000001)
{
    Name (INT5, 5)
    Name (INTX, 0)

    Method (DRFA, 1) {
        printf("Arg0: %o", DeRefOf(Arg0))
        printf("Arg0: %o", Arg0)
        Store (DeRefOf(Arg0), INTX)
        Store (Arg0, INTX)       // <- line 10
        Debug = INTX
    }

    Method (MAIN, 0)
    {
        DRFA(RefOf(INT5))
    }
}


Finally, the output of `acpiexec -m -eo argx_deref.aml':

> Intel ACPI Component Architecture
> AML Execution/Debug Utility version 20200717
> ...
>    Nested method call     :     DRFA
> ACPI Debug:  "Arg0: 00000005"
> ACPI Debug:  "Arg0: [Reference Object]"
> ACPI Error: Cannot assign type [Reference] to [Integer] (must be type Int/Str/Buf) (20200717/exstoren-239)
> Failed at AML Offset 00024, Opcode 0070: Store (Arg0, INTX) /* External reference */
> ...


So, it turnes out (or at least seems to me) that Store(Arg0, ...) at line 10 reads a Reference object, not an Integer one as the spec says.
I.e. there is no automatic dereference.

Do I miss something? Could you elaborate on this, please?

Thank you,
Ivan
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
