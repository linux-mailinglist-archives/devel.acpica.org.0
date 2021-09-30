Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CA341DFD1
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Sep 2021 19:12:29 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 75C23100F3FD9;
	Thu, 30 Sep 2021 10:12:27 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=85.118.132.146; helo=mail.medvecky.net; envelope-from=r.marek@assembler.cz; receiver=<UNKNOWN> 
Received: from mail.medvecky.net (mail.medvecky.net [85.118.132.146])
	by ml01.01.org (Postfix) with ESMTP id D927A100EA13E
	for <devel@acpica.org>; Thu, 30 Sep 2021 10:12:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.medvecky.net (Postfix) with ESMTP id 4CBE030AA83;
	Thu, 30 Sep 2021 19:12:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at medvecky.net
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 tagged_above=-999 required=3.8
	tests=[ALL_TRUSTED=-1, BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from mail.medvecky.net ([127.0.0.1])
	by localhost (slovakia.medvecky.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2o449ZU9fYwi; Thu, 30 Sep 2021 19:12:20 +0200 (CEST)
Received: from [192.168.0.115] (ip-86-49-244-235.net.upcbroadband.cz [86.49.244.235])
	by mail.medvecky.net (Postfix) with ESMTPSA id B6A0930AA7F;
	Thu, 30 Sep 2021 19:12:20 +0200 (CEST)
To: Devin Steffler <devinsteffler@gmail.com>, devel@acpica.org
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
 <CAAuRk_iKBx7Zmo60BDqFzmzqjz3q1vHPtNxje-KUcpixO_n+pg@mail.gmail.com>
From: Rudolf Marek <r.marek@assembler.cz>
Message-ID: <d81ebcde-8de7-7b09-911a-ede29e78b80b@assembler.cz>
Date: Thu, 30 Sep 2021 19:12:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAAuRk_iKBx7Zmo60BDqFzmzqjz3q1vHPtNxje-KUcpixO_n+pg@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: FFFH5O3RUR32EYAQB6YWGUC42HNAO63Y
X-Message-ID-Hash: FFFH5O3RUR32EYAQB6YWGUC42HNAO63Y
X-MailFrom: r.marek@assembler.cz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FFFH5O3RUR32EYAQB6YWGUC42HNAO63Y/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 30. 09. 21 15:53, Devin Steffler wrote:
> Hello,
> 
> Will Miles suggested that I monitor AcpiOsRead* and AcpiOsWrite* calls. I observed the following:
> ./test_sound # it plays fine
> ./acpica
> AcpiOsReadPort: read 0x0 from 0x1804 with width 16
> AcpiOsReadPort: read 0x0 from 0x1804 with width 16
> AcpiOsWritePort: write 0xa0 to 0xb2 with width 8

This is likely the SMI_CMD and ACPI_ENABLE see my other mail.

> AcpiOsReadPort: read 0x1 from 0x1804 with width 16
> ./test_sound # it stops working
> 
> To check if that write to 0xb2 is related, I modified AcpiOsWritePort to return AE_OK on all writes to Address 0xb2 without doing the actual write. I also modified AcpiOsReadPort to do a "fake read" of 1 when reading from port 0x1804 if there was a previous write to 0xb2. When I do this, then the beep continues to work and reading battery information via ACPI also continues to work (at least on this laptop, I haven't tested other devices yet).

Try vice versa, do not enable/use the ACPICA at all and write 0xa0 to 0xb2 to see if it breaks it.

> Looking at the PCH datasheet for the Intel i5 11357G CPU (what I'm using at the moment), it looks like writing to 0xb2 will trigger an SMI and set "APMC_EN =1" and is reported via APM_STS. Does this mean that it's supposed to activate power management and enable SMI interrupts for BIOS controlled power management (i.e. to be executed by ACPICA via SMI interrupt handlers)? 

It tells BIOS, hey I'm ACPI aware OS stop messing around. And basically BIOS runs some unknown code in SMM when you just write to 0xb2 the 0xA0 command.
This unknown code can possibly enable the 8254 clock gating.

>I'm not sure why that would break the PC speaker. Could it be that my OSL interrupt handling is broken and BIOS was relying on it to re-enable the devices needed to use the PC speaker?

The PC speaker does not do anything with IRQs. The PIT has no architecturally defined way to be disabled. I don't know what Intel smokes but lets not inhale, intel invented the clock gating to make programers life more miserable (problem for TSC/lapic clock calibration when you have no HPET)

> Or could APMC_EN=1 also "turn off some devices (that the PC speaker requires) to save power as they won't be used by this OS"? Should I instead be looking at the ACPI tables for this laptop to see if something is being turned off to save power and figure out how to turn them back on via ACPI calls?

This is likely not the problem. The ACPI tables do not instruct the hardware, because you commented out above write. Also most hardware for chipset is memory mapped, not IOport mapped. Try what I wrote above. If it breaks, it confirms that BIOS is doing something behind the scene which is not even ACPICA related.

> The same section (22.4.5 SMI#/SCI Generation) in the datasheet also states things like the following:
> "The SCI is a level-mode interrupt that is typically handled by an ACPI-aware operating
> system. In non-APIC systems (which is the default), the SCI IRQ is routed to one of
> the 8259 interrupts (IRQ 9, 10, or 11). The 8259 interrupt controller must be
> programmed to level mode for that interrupt."

I don't think it is problem with SCI. See above.

The 8254 clock gating will slow down the PIT frequency 16x and it will stop legacy IRQ 0  (on PIC/IOAPIC) generation as a symptom of clock gating. This is not documented but it behaves like that. Yes again intel did not stop the counter completely to detect it but slowed down. Sigh.

Maybe it also affects PC speaker that it generates waveforms too slowly. You can also try to search BIOS option in setup menu for clock gating or try to disable C11 power state in there.

Yes it is mess.

Thanks,
Rudolf
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
