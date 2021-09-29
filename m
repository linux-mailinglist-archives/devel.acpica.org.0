Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B67E41CD09
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Sep 2021 21:58:52 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 35C51100F3934;
	Wed, 29 Sep 2021 12:58:51 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=85.118.132.146; helo=mail.medvecky.net; envelope-from=r.marek@assembler.cz; receiver=<UNKNOWN> 
Received: from mail.medvecky.net (mail.medvecky.net [85.118.132.146])
	by ml01.01.org (Postfix) with ESMTP id 6A38D100F3931
	for <devel@acpica.org>; Wed, 29 Sep 2021 12:58:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.medvecky.net (Postfix) with ESMTP id 4F5D330AA83;
	Wed, 29 Sep 2021 21:58:47 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at medvecky.net
X-Spam-Flag: NO
X-Spam-Score: -2.899
X-Spam-Level: 
X-Spam-Status: No, score=-2.899 tagged_above=-999 required=3.8
	tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, HTML_MESSAGE=0.001]
	autolearn=ham autolearn_force=no
Received: from mail.medvecky.net ([127.0.0.1])
	by localhost (slovakia.medvecky.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48GixMmPTUet; Wed, 29 Sep 2021 21:58:43 +0200 (CEST)
Received: from [192.168.0.38] (ip-86-49-244-235.net.upcbroadband.cz [86.49.244.235])
	by mail.medvecky.net (Postfix) with ESMTPSA id 99BA030AA7F;
	Wed, 29 Sep 2021 21:58:43 +0200 (CEST)
To: devel@acpica.org, Devin Steffler <devinsteffler@gmail.com>
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
From: Rudolf Marek <r.marek@assembler.cz>
Message-ID: <d21a9612-b189-b565-8c97-cbeb8c2bd0d3@assembler.cz>
Date: Wed, 29 Sep 2021 21:58:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: WDX4KSWCWD22A7FPUIQ47YMBII6DTYJ2
X-Message-ID-Hash: WDX4KSWCWD22A7FPUIQ47YMBII6DTYJ2
X-MailFrom: r.marek@assembler.cz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WDX4KSWCWD22A7FPUIQ47YMBII6DTYJ2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============7870501381720665946=="

This is a multi-part message in MIME format.
--===============7870501381720665946==
Content-Type: multipart/alternative;
 boundary="------------CE973F8C4E621EE80622443D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CE973F8C4E621EE80622443D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Devin,

Dne 28. 09. 21 v 21:04 Devin Steffler napsal(a):
> Hello, I am using ACPICA to read battery information in QNX. That part is 
> working great so far. However, now some code that is being used to make beeps 
> via the PC speaker stopped working. Strangely, this code stops working on a 
> few devices only after ACPICA runs.

You mean same device with same mainboard / BIOS version?

Maybe SMI and/or ACPI bytecode turns on 8254 clock gating? You can

try to disassemble the ACPI DSDT/SSDT bytecode and look for it.

What you can also do, is to try out to send ACPI enable SMI command without

enabling ACPICA and see if it breaks. You can read the I/O port address

and data enable command from FADT. To disassemble the ACPI tables

use acpidump acpixtract and iasl utillites in linux.

> What could my ACPICA be doing (or failing to do) that could cause the beeps to 
> stop working with the code below? Is the PIT being disabled somehow? I guess 
> I'll need to learn more about the PIT and how to check its status to see if 
> it's being disabled after ACPICA runs. Here's example code for QNX to generate 
> a beep using the PC speaker: // 
> ----------------------------------------------- #include <sys/neutrino.h> 
> #include <hw/inout.h> #include <unistd.h> int main(void) { ThreadCtl( 
> _NTO_TCTL_IO, 0 ); // get I/O permissions // start a beep int freq = 1000; int 
> scale = 1193046 / freq; out8(0x43, 0xb6); out8(0x42, scale & 0xff); out8(0x42, 
> scale >> 8); out8(0x61, in8(0x61) | 3);

you can also try to see if your assembly for out8 is correct and maybe not 
re-ordered

by the compiler or that your asm clobber list is correct (same for in8)

> // let the beep play for a second delay(1000);

delay is an OS service right?

Thanks,

Rudolf


--------------CE973F8C4E621EE80622443D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font face="Helvetica, Arial, sans-serif">Hi Devin,<br>
    </font>
    <div class="moz-cite-prefix"><font face="Helvetica, Arial,
        sans-serif"><br>
      </font></div>
    <div class="moz-cite-prefix"><font face="Helvetica, Arial,
        sans-serif">Dne 28. 09. 21 v 21:04 Devin Steffler napsal(a):<br>
      </font></div>
    <blockquote type="cite"
cite="mid:CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com">
      <pre class="moz-quote-pre" wrap=""><font face="Helvetica, Arial, sans-serif">Hello,

I am using ACPICA to read battery information in QNX. That part is working
great so far. However, now some code that is being used to make beeps via
the PC speaker stopped working.

Strangely, this code stops working on a few devices only after ACPICA runs.</font></pre>
    </blockquote>
    <p>You mean same device with same mainboard / BIOS version?<br>
    </p>
    <p>Maybe SMI and/or ACPI bytecode turns on 8254 clock gating? You
      can <br>
    </p>
    <p>try to disassemble the ACPI DSDT/SSDT bytecode and look for it.</p>
    <p>What you can also do, is to try out to send ACPI enable SMI
      command without</p>
    <p>enabling ACPICA and see if it breaks. You can read the I/O port
      address</p>
    <p>and data enable command from FADT. To disassemble the ACPI tables</p>
    <p>use acpidump acpixtract and iasl utillites in linux.<br>
    </p>
    <blockquote type="cite"
cite="mid:CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com">
      <pre class="moz-quote-pre" wrap=""><font face="Helvetica, Arial, sans-serif">What could my ACPICA be doing (or failing to do) that could cause the beeps
to stop working with the code below? Is the PIT being disabled somehow? I
guess I'll need to learn more about the PIT and how to check its status to
see if it's being disabled after ACPICA runs.

Here's example code for QNX to generate a beep using the PC speaker:
// -----------------------------------------------
#include &lt;sys/neutrino.h&gt;
#include &lt;hw/inout.h&gt;
#include &lt;unistd.h&gt;

int main(void) {
    ThreadCtl( _NTO_TCTL_IO, 0 ); // get I/O permissions

    // start a beep
    int freq = 1000;
    int scale = 1193046 / freq;
    out8(0x43, 0xb6);
    out8(0x42, scale &amp; 0xff);
    out8(0x42, scale &gt;&gt; 8);
    out8(0x61, in8(0x61) | 3);</font></pre>
    </blockquote>
    <p>you can also try to see if your assembly for out8 is correct and
      maybe not re-ordered</p>
    <p>by the compiler or that your asm clobber list is correct (same
      for in8)<br>
    </p>
    <blockquote type="cite"
cite="mid:CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com">
      <pre class="moz-quote-pre" wrap=""><font face="Helvetica, Arial, sans-serif">
    // let the beep play for a second
    delay(1000);</font></pre>
    </blockquote>
    <p><font face="Helvetica, Arial, sans-serif">delay is an OS service
        right?</font></p>
    <p>Thanks,</p>
    <p>Rudolf<br>
    </p>
  </body>
</html>

--------------CE973F8C4E621EE80622443D--

--===============7870501381720665946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============7870501381720665946==--
