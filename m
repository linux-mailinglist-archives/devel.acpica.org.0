Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9336341DFA6
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Sep 2021 18:58:28 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 43C15100F3FD6;
	Thu, 30 Sep 2021 09:58:26 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=85.118.132.146; helo=mail.medvecky.net; envelope-from=r.marek@assembler.cz; receiver=<UNKNOWN> 
Received: from mail.medvecky.net (mail.medvecky.net [85.118.132.146])
	by ml01.01.org (Postfix) with ESMTP id 8FA84100ED48C
	for <devel@acpica.org>; Thu, 30 Sep 2021 09:58:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.medvecky.net (Postfix) with ESMTP id C8BCB30AA83;
	Thu, 30 Sep 2021 18:58:22 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at medvecky.net
X-Spam-Flag: NO
X-Spam-Score: -2.899
X-Spam-Level: 
X-Spam-Status: No, score=-2.899 tagged_above=-999 required=3.8
	tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mail.medvecky.net ([127.0.0.1])
	by localhost (slovakia.medvecky.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJMlxDtSCzwe; Thu, 30 Sep 2021 18:58:17 +0200 (CEST)
Received: from [192.168.0.115] (ip-86-49-244-235.net.upcbroadband.cz [86.49.244.235])
	by mail.medvecky.net (Postfix) with ESMTPSA id 51BE830AA7F;
	Thu, 30 Sep 2021 18:58:17 +0200 (CEST)
To: Devin Steffler <devinsteffler@gmail.com>
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
 <d21a9612-b189-b565-8c97-cbeb8c2bd0d3@assembler.cz>
 <CAAuRk_hhW+E0GhZY7TTKd8Q24u4j12thwW17G2gdxz1xCPYiyA@mail.gmail.com>
From: Rudolf Marek <r.marek@assembler.cz>
Message-ID: <4e7c48bf-b39d-bf69-9f6e-1581f9b5d0f9@assembler.cz>
Date: Thu, 30 Sep 2021 18:58:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAAuRk_hhW+E0GhZY7TTKd8Q24u4j12thwW17G2gdxz1xCPYiyA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: Q4TOZDL2J4BKCDYZPRNQP34JMLJKV3YM
X-Message-ID-Hash: Q4TOZDL2J4BKCDYZPRNQP34JMLJKV3YM
X-MailFrom: r.marek@assembler.cz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Q4TOZDL2J4BKCDYZPRNQP34JMLJKV3YM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Devin,

On 30. 09. 21 14:56, Devin Steffler wrote:
> Hi Rudolf,
> 
> I have the ACPI utilities working in QNX as well (i.e. acpidump, acpixtract, iasl, etc). The problem is I don't know what to look for in the FADT.

You need to look for SMI_CMD (likely ioport 0xb2) and ACPI_ENABLE fields.

> So far I have only seen this happen on Lenovo based x86 PCs. For example, the one that I have on hand is a Lenovo ThinkBook 14 Gen 2 laptop. If I boot the ThinkBook into QNX, then I can play a beep over the PC speaker just fine. However, after running ACPICA, then I can no longer play a beep over the PC speaker anymore on this device.

So Intels?

> How can I check for 8254 clock gating?

In the datasheet of Intel, search the southbridge for "8254" + look for some "gating" around. It is quite badly documented and sometimes under NDA only.

Thanks,
Rudolf


> delay is a QNX call to sleep for the specified time in ms.
> 
> Thanks,
> Devin
> 
> On Wed, Sep 29, 2021 at 3:58 PM Rudolf Marek <r.marek@assembler.cz <mailto:r.marek@assembler.cz>> wrote:
> 
>     Hi Devin,
> 
>     Dne 28. 09. 21 v 21:04 Devin Steffler napsal(a):
>>     Hello, I am using ACPICA to read battery information in QNX. That part is working great so far. However, now some code that is being used to make beeps via the PC speaker stopped working. Strangely, this code stops working on a few devices only after ACPICA runs.
> 
>     You mean same device with same mainboard / BIOS version?
> 
>     Maybe SMI and/or ACPI bytecode turns on 8254 clock gating? You can
> 
>     try to disassemble the ACPI DSDT/SSDT bytecode and look for it.
> 
>     What you can also do, is to try out to send ACPI enable SMI command without
> 
>     enabling ACPICA and see if it breaks. You can read the I/O port address
> 
>     and data enable command from FADT. To disassemble the ACPI tables
> 
>     use acpidump acpixtract and iasl utillites in linux.
> 
>>     What could my ACPICA be doing (or failing to do) that could cause the beeps to stop working with the code below? Is the PIT being disabled somehow? I guess I'll need to learn more about the PIT and how to check its status to see if it's being disabled after ACPICA runs. Here's example code for QNX to generate a beep using the PC speaker: // ----------------------------------------------- #include <sys/neutrino.h> #include <hw/inout.h> #include <unistd.h> int main(void) { ThreadCtl( _NTO_TCTL_IO, 0 ); // get I/O permissions // start a beep int freq = 1000; int scale = 1193046 / freq; out8(0x43, 0xb6); out8(0x42, scale & 0xff); out8(0x42, scale >> 8); out8(0x61, in8(0x61) | 3);
> 
>     you can also try to see if your assembly for out8 is correct and maybe not re-ordered
> 
>     by the compiler or that your asm clobber list is correct (same for in8)
> 
>>     // let the beep play for a second delay(1000);
> 
>     delay is an OS service right?
> 
>     Thanks,
> 
>     Rudolf
> 
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
