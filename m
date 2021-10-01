Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA0B41F577
	for <lists+devel-acpica@lfdr.de>; Fri,  1 Oct 2021 21:08:55 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id BB5E6100F484A;
	Fri,  1 Oct 2021 12:08:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::92a; helo=mail-ua1-x92a.google.com; envelope-from=devinsteffler@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com [IPv6:2607:f8b0:4864:20::92a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DC1C7100EBB6A
	for <devel@acpica.org>; Fri,  1 Oct 2021 12:08:51 -0700 (PDT)
Received: by mail-ua1-x92a.google.com with SMTP id u5so4458952uao.13
        for <devel@acpica.org>; Fri, 01 Oct 2021 12:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uet2gf6rU0BeEzm4AFWYMi3bFZbh/l4+4kVHJgZjrkg=;
        b=hnyqeYFiZ+jJzQzfsYR+Cc3mGYo+t9OSrSu75ApzK+ER+vDdCUbVEODzX6SEK1hMtg
         cI7z8+kPv/JeNCk8wK73ppqtSm3rVxIF8DCzWAY+D46Su2znTd9+YVjmJ7oPJ+2tivLQ
         wiBUJYFQhKuvYapMNmHQmbOycBKZCAukNvAXE5CyYYQ0+AV08ZkQZdizS8gnaUqxkcRQ
         hEB7+w2K+MscMGwAsGB/r9jtwAhvG3qRGug5zJexv3vKKrZmbwxCAuLH204NN4GYYwnG
         ZnqN2FYeSffwWKEpPmWQyhGL9J0IJLGnLBRNcA5xPXMsr+8Jn5WD6cDquceIrRvn+3qP
         pK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uet2gf6rU0BeEzm4AFWYMi3bFZbh/l4+4kVHJgZjrkg=;
        b=tW15W+3mqP+j93osXi6vwy46JpdlY+KEpzqk0TMEqHoIbhI1vZNLKNvx7Q+myr+gpm
         tULC25Aa/1wZASEPAx5R8Ihg6MZE/3A2BwYjbsr6HaT+5dpTBgWQ1pNEKd7xsjkdlyid
         4IqfsB42K3B5+dCQS2LugzpTxCBBPzKS3A+BBtcsld6yftnfpuxJhxHV92kas0mENPm1
         9H5HN2Pp15Si3MRsxM0gdyfHijbgWq03M7LCfwtgvR7F4wMCVc7DaNA9RO5qbIlbEMla
         5V3CsKILonfLXadnf9UbpfOPNZt//3rcN7ydjKKwy/cOGJMuHbWpWtlEmHYsg+isZUGa
         YHNg==
X-Gm-Message-State: AOAM532cQoKLeidVW8U2JOSqj/Y48G0ZmfVA5PBvCO5OX5zVrw1/2W9/
	ZVJ/z6mVdJ+MO846OJONoU6IutOrqMz2eb+2dgVM64R8E28=
X-Google-Smtp-Source: ABdhPJyx51jUiHMRHU+p98oWvLuHbmkW8pCfqvPncA3KY4e5i6GGY4aC6o24NOSWExhM1XliETecp4N6wyee7GT9yIo=
X-Received: by 2002:ab0:5b03:: with SMTP id u3mr11894979uae.41.1633115330710;
 Fri, 01 Oct 2021 12:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
 <CAAuRk_iKBx7Zmo60BDqFzmzqjz3q1vHPtNxje-KUcpixO_n+pg@mail.gmail.com> <d81ebcde-8de7-7b09-911a-ede29e78b80b@assembler.cz>
In-Reply-To: <d81ebcde-8de7-7b09-911a-ede29e78b80b@assembler.cz>
From: Devin Steffler <devinsteffler@gmail.com>
Date: Fri, 1 Oct 2021 15:08:39 -0400
Message-ID: <CAAuRk_g-rQQONwOCVvtzeO8Eq1XhcRDtyZzOnBsdAYGOdkbDpw@mail.gmail.com>
To: Rudolf Marek <r.marek@assembler.cz>
Message-ID-Hash: DQPIVHHDRAMFXDDPJK3LXSEG35HVLPEU
X-Message-ID-Hash: DQPIVHHDRAMFXDDPJK3LXSEG35HVLPEU
X-MailFrom: devinsteffler@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DQPIVHHDRAMFXDDPJK3LXSEG35HVLPEU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============2773226659897914582=="

--===============2773226659897914582==
Content-Type: multipart/alternative; boundary="0000000000002a10bd05cd4f4b5c"

--0000000000002a10bd05cd4f4b5c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

You're correct. Simply writing 0xa0 to 0xb2 will cause this.

I'm having a hard time figuring out what 0xb2 is. It seems like an I/O port
that causes an SMI and sets APMC_EN=3D1. That's all that I could find so fa=
r.
I have no idea yet what the bits in 0xa0 do.

Is this telling the BIOS that I have an APM aware OS (not ACPI)? If that's
the case, then I have a feeling that my ACPICA should be instead doing
something to say "I'm not APM aware" so that it doesn't try to do this. Or
is being "APM aware" required for ACPI functionality since it's the
successor to APM? On this system reading battery information works fine
without this write to 0xb2. I would have to test on other devices as well
to check if that's always the case or not.

As a side note, in case it's relevant, I am setting the following in my
ACPICA:
#define ACPI_OS_NAME                    "Microsoft Windows NT"

That was done arbitrarily or perhaps out of laziness/lack of testing
support. The comment above ACPI_OS_NAME suggests that it's obsolete anyways=
.

Unfortunately, I don't see any option in the BIOS relating to clock gating
or C11 power states.

Should I pursue allowing the write but then disable the clock gating
separately? I'm not sure how to do that yet.

I started to learn about clock gating. I wanted to see if I could confirm
that clock gating happens when 0xa0 is written to 0xb2. I stumbled on the
following information from Intel:
Datasheet:
https://www.intel.com/content/dam/www/public/us/en/documents/technical-spec=
ifications/300-series-chipset-on-package-pch-datasheet-vol-2.pdf
-------------------------------------------------
30.2.20 ITSS Power Reduction Control (ITSSPRC)=E2=80=94Offset 3300h
Power controls for the entire interrupt and timer subsystem.
Bit 2:
"8254 Static Clock Gating Enable (CGE8254): When set, the 8254 timer is
disabled statically. This bit shall be set by BIOS if the 8254 feature is
not needed in
the system or before BIOS hands off the system that supports C11. Normal
operation
of 8254 requires this bit to 0."
-------------------------------------------------

Unfortunately, I haven't been able to get access to that bit yet. The P2SB
Bridge is hidden. I've found a way to get the SBREG_BAR from the P2SB
Bridge in the QNX BSP. However, using it to read the ITSSPRC still returns
0xFFFFFFFF. I was hoping that I could clear that bit if it is getting set
to test if that makes the PC speaker work again.

Part of this is a learning exercise for me, but part of it is also to get a
proper fix for this system. If this is just an "APM thing" that shouldn't
be enabled to begin with on my system, then I guess I need to figure out
how to tell BIOS that this OS is "not APM aware". Either that, or just
block 0xa0 writes to 0xb2 (but that feels like the wrong approach).

Thanks,
Devin



On Thu, Sep 30, 2021 at 1:12 PM Rudolf Marek <r.marek@assembler.cz> wrote:

> On 30. 09. 21 15:53, Devin Steffler wrote:
> > Hello,
> >
> > Will Miles suggested that I monitor AcpiOsRead* and AcpiOsWrite* calls.
> I observed the following:
> > ./test_sound # it plays fine
> > ./acpica
> > AcpiOsReadPort: read 0x0 from 0x1804 with width 16
> > AcpiOsReadPort: read 0x0 from 0x1804 with width 16
> > AcpiOsWritePort: write 0xa0 to 0xb2 with width 8
>
> This is likely the SMI_CMD and ACPI_ENABLE see my other mail.
>
> > AcpiOsReadPort: read 0x1 from 0x1804 with width 16
> > ./test_sound # it stops working
> >
> > To check if that write to 0xb2 is related, I modified AcpiOsWritePort t=
o
> return AE_OK on all writes to Address 0xb2 without doing the actual write=
.
> I also modified AcpiOsReadPort to do a "fake read" of 1 when reading from
> port 0x1804 if there was a previous write to 0xb2. When I do this, then t=
he
> beep continues to work and reading battery information via ACPI also
> continues to work (at least on this laptop, I haven't tested other device=
s
> yet).
>
> Try vice versa, do not enable/use the ACPICA at all and write 0xa0 to 0xb=
2
> to see if it breaks it.
>
> > Looking at the PCH datasheet for the Intel i5 11357G CPU (what I'm usin=
g
> at the moment), it looks like writing to 0xb2 will trigger an SMI and set
> "APMC_EN =3D1" and is reported via APM_STS. Does this mean that it's supp=
osed
> to activate power management and enable SMI interrupts for BIOS controlle=
d
> power management (i.e. to be executed by ACPICA via SMI interrupt
> handlers)?
>
> It tells BIOS, hey I'm ACPI aware OS stop messing around. And basically
> BIOS runs some unknown code in SMM when you just write to 0xb2 the 0xA0
> command.
> This unknown code can possibly enable the 8254 clock gating.
>
> >I'm not sure why that would break the PC speaker. Could it be that my OS=
L
> interrupt handling is broken and BIOS was relying on it to re-enable the
> devices needed to use the PC speaker?
>
> The PC speaker does not do anything with IRQs. The PIT has no
> architecturally defined way to be disabled. I don't know what Intel smoke=
s
> but lets not inhale, intel invented the clock gating to make programers
> life more miserable (problem for TSC/lapic clock calibration when you hav=
e
> no HPET)
>
> > Or could APMC_EN=3D1 also "turn off some devices (that the PC speaker
> requires) to save power as they won't be used by this OS"? Should I inste=
ad
> be looking at the ACPI tables for this laptop to see if something is bein=
g
> turned off to save power and figure out how to turn them back on via ACPI
> calls?
>
> This is likely not the problem. The ACPI tables do not instruct the
> hardware, because you commented out above write. Also most hardware for
> chipset is memory mapped, not IOport mapped. Try what I wrote above. If i=
t
> breaks, it confirms that BIOS is doing something behind the scene which i=
s
> not even ACPICA related.
>
> > The same section (22.4.5 SMI#/SCI Generation) in the datasheet also
> states things like the following:
> > "The SCI is a level-mode interrupt that is typically handled by an
> ACPI-aware operating
> > system. In non-APIC systems (which is the default), the SCI IRQ is
> routed to one of
> > the 8259 interrupts (IRQ 9, 10, or 11). The 8259 interrupt controller
> must be
> > programmed to level mode for that interrupt."
>
> I don't think it is problem with SCI. See above.
>
> The 8254 clock gating will slow down the PIT frequency 16x and it will
> stop legacy IRQ 0  (on PIC/IOAPIC) generation as a symptom of clock gatin=
g.
> This is not documented but it behaves like that. Yes again intel did not
> stop the counter completely to detect it but slowed down. Sigh.
>
> Maybe it also affects PC speaker that it generates waveforms too slowly.
> You can also try to search BIOS option in setup menu for clock gating or
> try to disable C11 power state in there.
>
> Yes it is mess.
>
> Thanks,
> Rudolf
>
>

--0000000000002a10bd05cd4f4b5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=20
Rudolf,</div><div><br></div><div>You&#39;re correct. Simply writing 0xa0 to=
 0xb2 will cause this.</div><div><br></div><div>I&#39;m having a hard time =
figuring out what 0xb2 is. It seems like an I/O port that causes an SMI and=
 sets APMC_EN=3D1. That&#39;s all that I could find so far. I have no idea =
yet what the bits in 0xa0 do.<br></div><div><br></div><div>Is this telling =
the BIOS that I have an APM aware OS (not ACPI)? If that&#39;s the case, th=
en I have a feeling that my ACPICA should be instead doing something to say=
 &quot;I&#39;m not APM aware&quot; so that it doesn&#39;t try to do this. O=
r is being &quot;APM aware&quot; required for ACPI functionality since it&#=
39;s the successor to APM? On this system reading battery information works=
 fine without this write to 0xb2. I would have to test on other devices as =
well to check if that&#39;s always the case or not.<br></div><div><br></div=
><div>As a side note, in case it&#39;s relevant, I am setting the following=
 in my ACPICA:</div><div>#define ACPI_OS_NAME =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Microsoft Windows NT&quot;<b=
r></div><div><br></div><div>That was done arbitrarily or perhaps out of laz=
iness/lack of testing support. The comment above ACPI_OS_NAME suggests that=
 it&#39;s obsolete anyways.<br></div><br><div>Unfortunately, I don&#39;t se=
e any option in the BIOS relating to clock gating or C11 power states.<br><=
/div><div><br></div><div>Should I pursue allowing the write but then disabl=
e the clock gating separately? I&#39;m not sure how to do that yet.<br></di=
v><div><br></div><div>I started to learn about clock gating. I wanted to se=
e if I could confirm that clock gating happens when 0xa0 is written to 0xb2=
. I stumbled on the following information from Intel:</div><div></div><div>=
Datasheet: <a href=3D"https://www.intel.com/content/dam/www/public/us/en/do=
cuments/technical-specifications/300-series-chipset-on-package-pch-datashee=
t-vol-2.pdf" target=3D"_blank">https://www.intel.com/content/dam/www/public=
/us/en/documents/technical-specifications/300-series-chipset-on-package-pch=
-datasheet-vol-2.pdf</a></div><div>
-------------------------------------------------

</div><div>30.2.20 ITSS Power Reduction Control (ITSSPRC)=E2=80=94Offset 33=
00h<br>Power controls for the entire interrupt and timer subsystem.<br>Bit =
2:<br>&quot;8254 Static Clock Gating Enable (CGE8254): When set, the 8254 t=
imer is <br>disabled statically. This bit shall be set by BIOS if the 8254 =
feature is not needed in <br>the system or before BIOS hands off the system=
 that supports C11. Normal operation <br>of 8254 requires this bit to 0.&qu=
ot;<br>-------------------------------------------------</div><div><br></di=
v><div>Unfortunately, I haven&#39;t been able to get access to that bit yet=
. The P2SB Bridge is hidden. I&#39;ve found a way to get the SBREG_BAR from=
 the P2SB Bridge in the QNX BSP. However, using it to read the ITSSPRC stil=
l returns 0xFFFFFFFF. I was hoping that I could clear that bit if it is get=
ting set to test if that makes the PC speaker work again.</div><div><br></d=
iv><div>Part of this is a learning exercise for me, but part of it is also =
to get a proper fix for this system. If this is just an &quot;APM thing&quo=
t; that shouldn&#39;t be enabled to begin with on my system, then I guess I=
 need to figure out how to tell BIOS that this OS is &quot;not APM aware&qu=
ot;. Either that, or just block 0xa0 writes to 0xb2 (but that feels like th=
e wrong approach).<br></div><br><div>Thanks,</div><div>Devin<br></div><div>=
<div><br></div><div><br></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 30, 2021 at 1:12 PM Rudolf =
Marek &lt;<a href=3D"mailto:r.marek@assembler.cz" target=3D"_blank">r.marek=
@assembler.cz</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On 30. 09. 21 15:53, Devin Steffler wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; Will Miles suggested that I monitor AcpiOsRead* and AcpiOsWrite* calls=
. I observed the following:<br>
&gt; ./test_sound # it plays fine<br>
&gt; ./acpica<br>
&gt; AcpiOsReadPort: read 0x0 from 0x1804 with width 16<br>
&gt; AcpiOsReadPort: read 0x0 from 0x1804 with width 16<br>
&gt; AcpiOsWritePort: write 0xa0 to 0xb2 with width 8<br>
<br>
This is likely the SMI_CMD and ACPI_ENABLE see my other mail.<br>
<br>
&gt; AcpiOsReadPort: read 0x1 from 0x1804 with width 16<br>
&gt; ./test_sound # it stops working<br>
&gt; <br>
&gt; To check if that write to 0xb2 is related, I modified AcpiOsWritePort =
to return AE_OK on all writes to Address 0xb2 without doing the actual writ=
e. I also modified AcpiOsReadPort to do a &quot;fake read&quot; of 1 when r=
eading from port 0x1804 if there was a previous write to 0xb2. When I do th=
is, then the beep continues to work and reading battery information via ACP=
I also continues to work (at least on this laptop, I haven&#39;t tested oth=
er devices yet).<br>
<br>
Try vice versa, do not enable/use the ACPICA at all and write 0xa0 to 0xb2 =
to see if it breaks it.<br>
<br>
&gt; Looking at the PCH datasheet for the Intel i5 11357G CPU (what I&#39;m=
 using at the moment), it looks like writing to 0xb2 will trigger an SMI an=
d set &quot;APMC_EN =3D1&quot; and is reported via APM_STS. Does this mean =
that it&#39;s supposed to activate power management and enable SMI interrup=
ts for BIOS controlled power management (i.e. to be executed by ACPICA via =
SMI interrupt handlers)? <br>
<br>
It tells BIOS, hey I&#39;m ACPI aware OS stop messing around. And basically=
 BIOS runs some unknown code in SMM when you just write to 0xb2 the 0xA0 co=
mmand.<br>
This unknown code can possibly enable the 8254 clock gating.<br>
<br>
&gt;I&#39;m not sure why that would break the PC speaker. Could it be that =
my OSL interrupt handling is broken and BIOS was relying on it to re-enable=
 the devices needed to use the PC speaker?<br>
<br>
The PC speaker does not do anything with IRQs. The PIT has no architectural=
ly defined way to be disabled. I don&#39;t know what Intel smokes but lets =
not inhale, intel invented the clock gating to make programers life more mi=
serable (problem for TSC/lapic clock calibration when you have no HPET)<br>
<br>
&gt; Or could APMC_EN=3D1 also &quot;turn off some devices (that the PC spe=
aker requires) to save power as they won&#39;t be used by this OS&quot;? Sh=
ould I instead be looking at the ACPI tables for this laptop to see if some=
thing is being turned off to save power and figure out how to turn them bac=
k on via ACPI calls?<br>
<br>
This is likely not the problem. The ACPI tables do not instruct the hardwar=
e, because you commented out above write. Also most hardware for chipset is=
 memory mapped, not IOport mapped. Try what I wrote above. If it breaks, it=
 confirms that BIOS is doing something behind the scene which is not even A=
CPICA related.<br>
<br>
&gt; The same section (22.4.5 SMI#/SCI Generation) in the datasheet also st=
ates things like the following:<br>
&gt; &quot;The SCI is a level-mode interrupt that is typically handled by a=
n ACPI-aware operating<br>
&gt; system. In non-APIC systems (which is the default), the SCI IRQ is rou=
ted to one of<br>
&gt; the 8259 interrupts (IRQ 9, 10, or 11). The 8259 interrupt controller =
must be<br>
&gt; programmed to level mode for that interrupt.&quot;<br>
<br>
I don&#39;t think it is problem with SCI. See above.<br>
<br>
The 8254 clock gating will slow down the PIT frequency 16x and it will stop=
 legacy IRQ 0=C2=A0 (on PIC/IOAPIC) generation as a symptom of clock gating=
. This is not documented but it behaves like that. Yes again intel did not =
stop the counter completely to detect it but slowed down. Sigh.<br>
<br>
Maybe it also affects PC speaker that it generates waveforms too slowly. Yo=
u can also try to search BIOS option in setup menu for clock gating or try =
to disable C11 power state in there.<br>
<br>
Yes it is mess.<br>
<br>
Thanks,<br>
Rudolf<br>
<br>
</blockquote></div>

--0000000000002a10bd05cd4f4b5c--

--===============2773226659897914582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============2773226659897914582==--
