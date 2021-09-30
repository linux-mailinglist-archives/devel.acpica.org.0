Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C28B541DA58
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Sep 2021 14:56:49 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 56D4F100F3FCD;
	Thu, 30 Sep 2021 05:56:48 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::92b; helo=mail-ua1-x92b.google.com; envelope-from=devinsteffler@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F28C9100F3FCB
	for <devel@acpica.org>; Thu, 30 Sep 2021 05:56:46 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id b10so4128435uaw.1
        for <devel@acpica.org>; Thu, 30 Sep 2021 05:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FZdH1XRbTz+1vc6DEi9RbZiKPWU4BQL2LBhtnjx6bFE=;
        b=qy9k4S0IJHsBTs1Ked0kApWLJoJ7appkkgr6SYa4GP3sem3/Qc0BQYUzYcXVOY3tvo
         b0cn7Ak6B/d9ZoHqXPI5e8PvfEvaoiyWYDcJoLYZvaubjD3uknfhuLa4IdLYbtF5qWel
         Zyef5EF9Yrn+fLGPDNxZg9R9dbAxhrfaGqRveXBCqj0sP7e4I2vxlYRvxX6LRFs5Gjkb
         55jA5wSGo5leHUpmK5WNeVtJOTdP/GQ3yJx197ZAtbvZyuZZbNRCBcFIMpidDbotFiXf
         avmdDxFXVzIDwH35DOabZtEJDE5XCMH4m2DS7wAOlFhZWRzFLVUyoHGv6RKZ0KhpEbTG
         S8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FZdH1XRbTz+1vc6DEi9RbZiKPWU4BQL2LBhtnjx6bFE=;
        b=1Oi8CqNWFdwxcY8f9bZ8FwUwBuTKl9niQMtWDTYw7ruxqPxLyVbLtE0gzarJXpUaXA
         oBe40CEl/6LPmKBb5KcU1INIVt6TyZdXjN6ifRYyGL6Edn7Qx2+lQZ6jSmeTHNXtMtdG
         4uPosJr6M6jRRffgbT5ZREbvC0KKD/1N0LZ8DSMx6di5ZZVyIN+qn9QbtjBbwGtCS5gW
         +Q6MnMi3gMC9fWYugsf7DomONpu1HRqg3OJDMuFPsb1KqajUJ0nl9raWE+nDqBRdz7/N
         63aqELfcUIH7lu08V0Qbe6T4524IggYyleZ9ZF8QQUxQF2UP4ZK4BQRuq2ayPAlNDQMA
         crAg==
X-Gm-Message-State: AOAM533/rnjzO5dbwvV/Pvbi84aCP0eFj4SLtf27PpxaCv+XI5cjO2sz
	jDdyaoqdnXpo5F0pBxTHUOOtDx3V/jFxD6irfaI=
X-Google-Smtp-Source: ABdhPJwM0PkxWmD9lX2n8CkiRiFRnVwCl6QKJviU5VMAvO8ohee8snrCnRm0FGkw70Rg6ITc/UVeBt/f7rIUd4gI4BI=
X-Received: by 2002:ab0:5b03:: with SMTP id u3mr5143905uae.41.1633006605568;
 Thu, 30 Sep 2021 05:56:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
 <d21a9612-b189-b565-8c97-cbeb8c2bd0d3@assembler.cz>
In-Reply-To: <d21a9612-b189-b565-8c97-cbeb8c2bd0d3@assembler.cz>
From: Devin Steffler <devinsteffler@gmail.com>
Date: Thu, 30 Sep 2021 08:56:34 -0400
Message-ID: <CAAuRk_hhW+E0GhZY7TTKd8Q24u4j12thwW17G2gdxz1xCPYiyA@mail.gmail.com>
To: Rudolf Marek <r.marek@assembler.cz>
Message-ID-Hash: WA43IRJFRNJOBDNPUP76YTKNIC2U37UW
X-Message-ID-Hash: WA43IRJFRNJOBDNPUP76YTKNIC2U37UW
X-MailFrom: devinsteffler@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WA43IRJFRNJOBDNPUP76YTKNIC2U37UW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============1354789631898386294=="

--===============1354789631898386294==
Content-Type: multipart/alternative; boundary="000000000000a4114205cd35faf4"

--000000000000a4114205cd35faf4
Content-Type: text/plain; charset="UTF-8"

Hi Rudolf,

I have the ACPI utilities working in QNX as well (i.e. acpidump,
acpixtract, iasl, etc). The problem is I don't know what to look for in the
FADT.

So far I have only seen this happen on Lenovo based x86 PCs. For example,
the one that I have on hand is a Lenovo ThinkBook 14 Gen 2 laptop. If I
boot the ThinkBook into QNX, then I can play a beep over the PC speaker
just fine. However, after running ACPICA, then I can no longer play a beep
over the PC speaker anymore on this device.

How can I check for 8254 clock gating?

delay is a QNX call to sleep for the specified time in ms.

Thanks,
Devin

On Wed, Sep 29, 2021 at 3:58 PM Rudolf Marek <r.marek@assembler.cz> wrote:

> Hi Devin,
>
> Dne 28. 09. 21 v 21:04 Devin Steffler napsal(a):
>
> Hello,
>
> I am using ACPICA to read battery information in QNX. That part is working
> great so far. However, now some code that is being used to make beeps via
> the PC speaker stopped working.
>
> Strangely, this code stops working on a few devices only after ACPICA runs.
>
> You mean same device with same mainboard / BIOS version?
>
> Maybe SMI and/or ACPI bytecode turns on 8254 clock gating? You can
>
> try to disassemble the ACPI DSDT/SSDT bytecode and look for it.
>
> What you can also do, is to try out to send ACPI enable SMI command without
>
> enabling ACPICA and see if it breaks. You can read the I/O port address
>
> and data enable command from FADT. To disassemble the ACPI tables
>
> use acpidump acpixtract and iasl utillites in linux.
>
> What could my ACPICA be doing (or failing to do) that could cause the beeps
> to stop working with the code below? Is the PIT being disabled somehow? I
> guess I'll need to learn more about the PIT and how to check its status to
> see if it's being disabled after ACPICA runs.
>
> Here's example code for QNX to generate a beep using the PC speaker:
> // -----------------------------------------------
> #include <sys/neutrino.h>
> #include <hw/inout.h>
> #include <unistd.h>
>
> int main(void) {
>     ThreadCtl( _NTO_TCTL_IO, 0 ); // get I/O permissions
>
>     // start a beep
>     int freq = 1000;
>     int scale = 1193046 / freq;
>     out8(0x43, 0xb6);
>     out8(0x42, scale & 0xff);
>     out8(0x42, scale >> 8);
>     out8(0x61, in8(0x61) | 3);
>
> you can also try to see if your assembly for out8 is correct and maybe not
> re-ordered
>
> by the compiler or that your asm clobber list is correct (same for in8)
>
>
>     // let the beep play for a second
>     delay(1000);
>
> delay is an OS service right?
>
> Thanks,
>
> Rudolf
>

--000000000000a4114205cd35faf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=20
Rudolf,</div><div><br></div><div>I have the ACPI utilities working in QNX a=
s well (i.e. acpidump, acpixtract, iasl, etc). The problem is I don&#39;t k=
now what to look for in the FADT.</div><div><br></div><div>So far I have on=
ly seen this happen on Lenovo based x86 PCs. For example, the one that I ha=
ve on hand is a Lenovo ThinkBook 14 Gen 2 laptop. If I boot the ThinkBook i=
nto QNX, then I can play a beep over the PC speaker just fine. However, aft=
er running ACPICA, then I can no longer play a beep over the PC speaker any=
more on this device.</div><div><br></div><div>How can I check for 8254 cloc=
k gating?</div><div><br></div><div>delay is a QNX call to sleep for the spe=
cified time in ms.</div><div></div><div><br></div><div>Thanks,</div><div>De=
vin<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Sep 29, 2021 at 3:58 PM Rudolf Marek &lt;<a href=3D"ma=
ilto:r.marek@assembler.cz">r.marek@assembler.cz</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <font face=3D"Helvetica, Arial, sans-serif">Hi Devin,<br>
    </font>
    <div><font face=3D"Helvetica, Arial,
        sans-serif"><br>
      </font></div>
    <div><font face=3D"Helvetica, Arial,
        sans-serif">Dne 28. 09. 21 v 21:04 Devin Steffler napsal(a):<br>
      </font></div>
    <blockquote type=3D"cite">
      <pre><font face=3D"Helvetica, Arial, sans-serif">Hello,

I am using ACPICA to read battery information in QNX. That part is working
great so far. However, now some code that is being used to make beeps via
the PC speaker stopped working.

Strangely, this code stops working on a few devices only after ACPICA runs.=
</font></pre>
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
    <p>and data enable command from FADT. To disassemble the ACPI tables</p=
>
    <p>use acpidump acpixtract and iasl utillites in linux.<br>
    </p>
    <blockquote type=3D"cite">
      <pre><font face=3D"Helvetica, Arial, sans-serif">What could my ACPICA=
 be doing (or failing to do) that could cause the beeps
to stop working with the code below? Is the PIT being disabled somehow? I
guess I&#39;ll need to learn more about the PIT and how to check its status=
 to
see if it&#39;s being disabled after ACPICA runs.

Here&#39;s example code for QNX to generate a beep using the PC speaker:
// -----------------------------------------------
#include &lt;sys/neutrino.h&gt;
#include &lt;hw/inout.h&gt;
#include &lt;unistd.h&gt;

int main(void) {
    ThreadCtl( _NTO_TCTL_IO, 0 ); // get I/O permissions

    // start a beep
    int freq =3D 1000;
    int scale =3D 1193046 / freq;
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
    <blockquote type=3D"cite">
      <pre><font face=3D"Helvetica, Arial, sans-serif">
    // let the beep play for a second
    delay(1000);</font></pre>
    </blockquote>
    <p><font face=3D"Helvetica, Arial, sans-serif">delay is an OS service
        right?</font></p>
    <p>Thanks,</p>
    <p>Rudolf<br>
    </p>
  </div>

</blockquote></div>

--000000000000a4114205cd35faf4--

--===============1354789631898386294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============1354789631898386294==--
