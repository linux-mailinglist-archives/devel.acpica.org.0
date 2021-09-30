Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D00641DB89
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Sep 2021 15:54:12 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F1BF6100F3FD1;
	Thu, 30 Sep 2021 06:54:09 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::e33; helo=mail-vs1-xe33.google.com; envelope-from=devinsteffler@gmail.com; receiver=<UNKNOWN> 
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 043EA100ED48C
	for <devel@acpica.org>; Thu, 30 Sep 2021 06:54:07 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id o124so7404783vsc.6
        for <devel@acpica.org>; Thu, 30 Sep 2021 06:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=gy1ZnfrH4fjiT7MWjnsf5emyTELxgzFNUieC6lTYyRo=;
        b=B5Dtolbz1N+yMjvpfr9FMNVKm0N0tj1HIegdL+vcOC9mExxbDpY97MpZ0HVmuqYzsO
         ExviohZeF71IrHObd41YLXbJK/9XA0gY0AeGP72bl069uc1W4ccJdza2HlAko1r9Uxoh
         WnKSs92fSNO7UzvS3BBvAFiTt9uhtIYMOmkS/WhS11KcOJT8pPjPJoSJF4ZpKpSaMVYG
         QIp7KazCmIPeKlkX+oqO27KEnh8HA/P4LzLpgp5jmfw6E1A8Bz/w5qhYqGxubd9Suw2r
         vkjmeplOfAR0QMB1XEdGv6unE46B98+39cIyqBszhqBSVZ8F9LjNL6o6iKMJqvIg18nm
         y2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=gy1ZnfrH4fjiT7MWjnsf5emyTELxgzFNUieC6lTYyRo=;
        b=ghSGRMSmh3hKeoptmwpcnfri1veOi7wDt66m1gy+O+7UgTC5gelZlUyvj/OOZZi0x9
         80ljSEclFsYfESxlCylwjLHjksWkOpLZ9NVQAzOeHkkDooDXHYn+Br1t3tH+aRDFCZag
         dphEoKijexXMA7mcLSHOJJGXJl2hfojfBXwY1sAEzpmcEHUdxxNVXK92q8eG89I3KtXd
         LyHLW0CBiMNpCFQpuqqgX0phTeWWpAkU5g+/5g24hQFRZgr8DzIaFNCu7tueCusLXO7F
         0Ycrdbjg8FQpv5pQ5BZg1r4AbL/5loAqsR0HSIMbSvl/95c3d3YAdjE8z8VjOgH1LzBL
         RA9A==
X-Gm-Message-State: AOAM532oBhZv43bcqV/A4spixeXNuSnZ1FeKnAUOKLIVrGLLF6IV5EXZ
	NDnK/V9DJrqXOzg0o9T8xnJUpmomJwD98fkFgKF2+qlklv4=
X-Google-Smtp-Source: ABdhPJwFd7F4KteBfhRK3G3NfYrrudmcz2WWIKjWY8YpvJOw81C1clwP3I8RxfS2jfuD87RfOqnJGoSAZB2MUtgYecU=
X-Received: by 2002:a05:6102:22d6:: with SMTP id a22mr3920161vsh.16.1633010046137;
 Thu, 30 Sep 2021 06:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
In-Reply-To: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
From: Devin Steffler <devinsteffler@gmail.com>
Date: Thu, 30 Sep 2021 09:53:55 -0400
Message-ID: <CAAuRk_iKBx7Zmo60BDqFzmzqjz3q1vHPtNxje-KUcpixO_n+pg@mail.gmail.com>
To: devel@acpica.org
Message-ID-Hash: SVTE47SUO5XMYLH3UFGS4RCT6RWBPE3W
X-Message-ID-Hash: SVTE47SUO5XMYLH3UFGS4RCT6RWBPE3W
X-MailFrom: devinsteffler@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SVTE47SUO5XMYLH3UFGS4RCT6RWBPE3W/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============5014919848958370737=="

--===============5014919848958370737==
Content-Type: multipart/alternative; boundary="000000000000b6fbe505cd36c79b"

--000000000000b6fbe505cd36c79b
Content-Type: text/plain; charset="UTF-8"

Hello,

Will Miles suggested that I monitor AcpiOsRead* and AcpiOsWrite* calls. I
observed the following:
./test_sound # it plays fine
./acpica
AcpiOsReadPort: read 0x0 from 0x1804 with width 16
AcpiOsReadPort: read 0x0 from 0x1804 with width 16
AcpiOsWritePort: write 0xa0 to 0xb2 with width 8
AcpiOsReadPort: read 0x1 from 0x1804 with width 16
./test_sound # it stops working

To check if that write to 0xb2 is related, I modified AcpiOsWritePort to
return AE_OK on all writes to Address 0xb2 without doing the actual write.
I also modified AcpiOsReadPort to do a "fake read" of 1 when reading from
port 0x1804 if there was a previous write to 0xb2. When I do this, then the
beep continues to work and reading battery information via ACPI also
continues to work (at least on this laptop, I haven't tested other devices
yet).

I'm not really sure where to go from here. For this laptop, this might be a
suitable workaround for me as I'm only using ACPICA at the moment to read
battery information and for system shutdown. However, this might not be an
acceptable workaround for other devices (or if I end up needing other ACPI
functionality in the future that depends on this). I also suspect that my
OSL might be missing something that is causing this.

Looking at the PCH datasheet for the Intel i5 11357G CPU (what I'm using at
the moment), it looks like writing to 0xb2 will trigger an SMI and set
"APMC_EN =1" and is reported via APM_STS. Does this mean that it's supposed
to activate power management and enable SMI interrupts for BIOS controlled
power management (i.e. to be executed by ACPICA via SMI interrupt
handlers)? I'm not sure why that would break the PC speaker. Could it be
that my OSL interrupt handling is broken and BIOS was relying on it to
re-enable the devices needed to use the PC speaker?

Or could APMC_EN=1 also "turn off some devices (that the PC speaker
requires) to save power as they won't be used by this OS"? Should I instead
be looking at the ACPI tables for this laptop to see if something is being
turned off to save power and figure out how to turn them back on via ACPI
calls?

The same section (22.4.5 SMI#/SCI Generation) in the datasheet also states
things like the following:
"The SCI is a level-mode interrupt that is typically handled by an
ACPI-aware operating
system. In non-APIC systems (which is the default), the SCI IRQ is routed
to one of
the 8259 interrupts (IRQ 9, 10, or 11). The 8259 interrupt controller must
be
programmed to level mode for that interrupt."

Thanks,
Devin

On Tue, Sep 28, 2021 at 3:04 PM Devin Steffler <devinsteffler@gmail.com>
wrote:

> Hello,
>
> I am using ACPICA to read battery information in QNX. That part is working
> great so far. However, now some code that is being used to make beeps via
> the PC speaker stopped working.
>
> Strangely, this code stops working on a few devices only after ACPICA
> runs. It works fine if I don't start ACPICA. The code is using I/O ports
> 0x43, 0x42, and 0x61 to generate beeps. This seems to be an industry
> standard way to make beeps on x86 based PCs using a Programmable Interval
> Timer (PIT).
>
> What could my ACPICA be doing (or failing to do) that could cause the
> beeps to stop working with the code below? Is the PIT being disabled
> somehow? I guess I'll need to learn more about the PIT and how to check its
> status to see if it's being disabled after ACPICA runs.
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
>     // let the beep play for a second
>     delay(1000);
>
>     // stop the beep
>     out8(0x61, in8(0x61) & ~3);
>
>     return 0;
> }
> // -----------------------------------------------
>
> Thanks,
> Devin
>

--000000000000b6fbe505cd36c79b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Will Miles suggested =
that I monitor=20
AcpiOsRead* and AcpiOsWrite* calls. I observed the following:</div><div>./t=
est_sound # it plays fine</div><div>./acpica</div><div>AcpiOsReadPort: read=
 0x0 from 0x1804 with width 16<br>AcpiOsReadPort: read 0x0 from 0x1804 with=
 width 16<br>AcpiOsWritePort: write 0xa0 to 0xb2 with width 8<br>AcpiOsRead=
Port: read 0x1 from 0x1804 with width 16</div><div>./test_sound # it stops =
working</div><div><br></div><div></div><div>To check if that write to 0xb2 =
is related, I modified=20
AcpiOsWritePort to return AE_OK on all writes to Address 0xb2 without doing=
 the actual write. I also modified=20
AcpiOsReadPort to do a &quot;fake read&quot; of 1 when reading from port 0x=
1804 if there was a previous write to 0xb2. When I do this, then the beep c=
ontinues to work and reading battery information via ACPI also continues to=
 work (at least on this laptop, I haven&#39;t tested other devices yet).</d=
iv><div><br></div><div>I&#39;m not really sure where to go from here. For t=
his laptop, this might be a suitable workaround for me as I&#39;m only usin=
g ACPICA at the moment to read battery information and for system shutdown.=
 However, this might not be an acceptable workaround for other devices (or =
if I end up needing other ACPI functionality in the future that depends on =
this). I also suspect that my OSL might be missing something that is causin=
g this.<br></div><div><br></div><div>Looking at the PCH datasheet for the I=
ntel i5 11357G CPU (what I&#39;m using at the moment), it looks like writin=
g to 0xb2 will trigger an SMI and set &quot;APMC_EN =3D1&quot; and is repor=
ted via APM_STS. Does this mean that it&#39;s supposed to activate power ma=
nagement and enable SMI interrupts for BIOS controlled power management (i.=
e. to be executed by ACPICA via SMI interrupt handlers)? I&#39;m not sure w=
hy that would break the PC speaker. Could it be that my OSL interrupt handl=
ing is broken and BIOS was relying on it to re-enable the devices needed to=
 use the PC speaker?</div><div><br></div><div>Or could APMC_EN=3D1 also &qu=
ot;turn off some devices (that the PC speaker requires) to save power as th=
ey won&#39;t be used by this OS&quot;? Should I instead be looking at the A=
CPI tables for this laptop to see if something is being turned off to save =
power and figure out how to turn them back on via ACPI calls?<br></div><div=
><br></div><div>The same section (22.4.5 SMI#/SCI Generation) in the datash=
eet also states things like the following:</div><div>&quot;The SCI is a lev=
el-mode interrupt that is typically handled by an ACPI-aware operating<br>s=
ystem. In non-APIC systems (which is the default), the SCI IRQ is routed to=
 one of<br>the 8259 interrupts (IRQ 9, 10, or 11). The 8259 interrupt contr=
oller must be<br>programmed to level mode for that interrupt.&quot;</div><b=
r><div>Thanks,</div><div>Devin<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 28, 2021 at 3:04 PM Dev=
in Steffler &lt;<a href=3D"mailto:devinsteffler@gmail.com">devinsteffler@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div>I am using ACPICA t=
o read battery information in QNX. That part is working great so far. Howev=
er, now some code that is being used to make beeps via the PC speaker stopp=
ed working.<div><br></div><div>Strangely, this code stops working on a few =
devices only after ACPICA runs. It works fine if I don&#39;t start ACPICA. =
The code is using I/O ports 0x43, 0x42, and 0x61 to generate beeps. This se=
ems to be an industry standard way to make beeps on x86 based PCs using a P=
rogrammable Interval Timer (PIT).</div><div><br></div><div>What could my AC=
PICA be doing (or failing to do) that could cause the beeps to stop working=
 with the code below? Is the PIT being disabled somehow? I guess I&#39;ll n=
eed to learn more about the PIT and how to check its status to see if it&#3=
9;s being disabled after ACPICA runs.<br></div><div><br></div><div>Here&#39=
;s example code for QNX to generate a beep using the PC speaker:</div><div>=
// -----------------------------------------------<br></div><div>#include &=
lt;sys/neutrino.h&gt;<br>#include &lt;hw/inout.h&gt;<br>#include &lt;unistd=
.h&gt;<br><br>int main(void) {<br>=C2=A0=C2=A0=C2=A0 ThreadCtl( _NTO_TCTL_I=
O, 0 ); // get I/O permissions<br></div><div><br></div><div>=C2=A0=C2=A0=C2=
=A0 // start a beep<br></div><div>=C2=A0 =C2=A0 int freq =3D 1000;<br>=C2=
=A0 =C2=A0 int scale =3D 1193046 / freq;<br>=C2=A0 =C2=A0 out8(0x43, 0xb6);=
<br>=C2=A0 =C2=A0 out8(0x42, scale &amp; 0xff);<br>=C2=A0 =C2=A0 out8(0x42,=
 scale &gt;&gt; 8);<br>=C2=A0 =C2=A0 out8(0x61, in8(0x61) | 3);<br></div><d=
iv>=C2=A0=C2=A0=C2=A0 <br></div><div>=C2=A0=C2=A0=C2=A0 // let the beep pla=
y for a second<br></div><div>=C2=A0=C2=A0=C2=A0 delay(1000);<br></div><div>=
<br></div><div>=C2=A0=C2=A0=C2=A0 // stop the beep<br></div><div>=C2=A0 =C2=
=A0 out8(0x61, in8(0x61) &amp; ~3);<br><br>=C2=A0=C2=A0=C2=A0 return 0;<br>=
}</div><div>
// ----------------------------------------------- <br></div><div><br></div=
><div>Thanks,</div><div>Devin<br></div></div>
</blockquote></div>

--000000000000b6fbe505cd36c79b--

--===============5014919848958370737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============5014919848958370737==--
