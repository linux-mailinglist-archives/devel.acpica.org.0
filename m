Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 637D12A6C9E
	for <lists+devel-acpica@lfdr.de>; Wed,  4 Nov 2020 19:24:14 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 066C21651137D;
	Wed,  4 Nov 2020 10:24:13 -0800 (PST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4454A164F8B96
	for <devel@acpica.org>; Wed,  4 Nov 2020 10:24:11 -0800 (PST)
MIME-Version: 1.0
From: devinsteffler@gmail.com
To: devel@acpica.org
Date: Wed, 04 Nov 2020 18:24:11 -0000
Message-ID: <20201104182411.2796.58819@ml01.vlan13.01.org>
User-Agent: HyperKitty on https://lists.acpica.org/
Message-ID-Hash: EEDTDTCFCIJL6X3B6L5SWSD5K7LY3RUU
X-Message-ID-Hash: EEDTDTCFCIJL6X3B6L5SWSD5K7LY3RUU
X-MailFrom: devinsteffler@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] The PC speaker beep stops working on Lenovo M90n after enabling ACPI (in QNX)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EEDTDTCFCIJL6X3B6L5SWSD5K7LY3RUU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I've run into a strange situation and I'm wondering if anyone can provide some insight into what might be happening. I'm using code that's basically the same as the following example to create a beep using the internal PC speaker: https://wiki.osdev.org/PC_Speaker#Sample_Code.

I'm running QNX on a Lenovo M90n (Intel i5-8365U CPU). I'm using my own ACPICA based driver to manage things like reading battery level.

Strangely though, on this machine, after ACPI is enabled then the PC speaker stops working as expected. I've narrowed it down to the following initialization code within ACPICA:
Status = AcpiHwWritePort (AcpiGbl_FADT.SmiCommand, // 0xB2 on this x86_64 platform (Lenovo M90n)
            (UINT32) AcpiGbl_FADT.AcpiEnable,   // 0xA0 on this x86_64 platform (Lenovo M90n)
	    8);

Before that line executes, I can generate a beep just fine. However, as soon as that line returns, then I cannot generate beeps anymore.

The speaker itself is still functional. If I toggle the in/out value of the speaker via port 0x61 then I hear an audible click. So it's almost as if the PIT itself is not generating a square wave on channel 2 when put into mode 3.

For example, for a 2 second beep:
- Before ACPI is enabled, I hear a 2 second beep at my desired frequency.
- After ACPI is enabled via the line specified above, then I hear a click, then two seconds later I hear another click. There is no beep in between the clicks.

Any ideas are appreciated. Is the SMI handler implemented in the PC's UEFI firmware? If so, does this behavior suggest that there's a bug in it (and I should be contacting Lenovo for support)? From what I found online, it looks like writing to 0xB2 should generate an SMI interrupt (handled by the SMI handler, which should process the value 0xA0 that ACPICA is sending to it).

I haven't tried to replicate the issue on any other OS yet, but maybe I should try that as well.

Thanks,
Devin
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
