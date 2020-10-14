Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0F228E8B5
	for <lists+devel-acpica@lfdr.de>; Thu, 15 Oct 2020 00:19:05 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A9CF815919766;
	Wed, 14 Oct 2020 15:19:03 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::b31; helo=mail-yb1-xb31.google.com; envelope-from=devinsteffler@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BEDCD15919765
	for <devel@acpica.org>; Wed, 14 Oct 2020 15:19:00 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id s89so557722ybi.12
        for <devel@acpica.org>; Wed, 14 Oct 2020 15:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r7N+A/NjPO1RufMFeeUCyfPNrD9ll5d0Yx7hoaslygE=;
        b=G7tFM7mReIocPedOw0k/PwE1NUKWk88zX2q14hNflcDIkUoD3Bdi/C7BeFpMvsvTkv
         vraQrq9gpI8w2oHw5OfUIlzFQEj4YUFA5R1+48GTSZNXwpNFXyG/w+3+teefT1mA+wx5
         RwA+B4odPku0SZydDY0uvxXsPsft6qK4bOpBz4BIL67OJVHFzzMOZldxvTJwHIkDzK+0
         nw3dSmfszlrx1KXpF1eCCHZydZynRAxSH40oyxns1QZeCcvfmchWZKdEdFysXcl8OuJC
         biM4iaWf5L3Lah+J2ubLFGr3DpAdoNdLTh0FahcKDpT3ZnbVt6kgBkYROto3BDJg2i40
         /AEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r7N+A/NjPO1RufMFeeUCyfPNrD9ll5d0Yx7hoaslygE=;
        b=OXPAmgzTCjjjRA/JEshg1r+Kjtz+3e3wPX8gnpTjuHg8xIRFgw1fJJ4Llk4C0faH3K
         UcGLumR5/Sv9vRiW1/SeSklZM4UQZuQRqzZFLy5m4MVvhtvXRXBpdP8R56M6270EfBM4
         4E7ap8Bs0xPsAsP3mCXhpQ+b06xG98rtajOvb58Wn3HZOAnyW4Xq37gVdUS1hl8bNcW8
         e9cjo0te0/7Mkh19Fi/mTWVTCkm6979Fb/CCfF6Pe8oY5kfpBCbUGTFg4RQbGPq733S0
         IyUSpuyXXHXcANwnfvYpFl80phMP0NrgrlT6444WVFlwGynqK9ZW4kFhxbKTZTFE9c2O
         foEg==
X-Gm-Message-State: AOAM533p5RHQgtWEBbCUX/ZmftlLYKZGdyx3AJ1OsOaBlm/1FdpEwxH7
	I6vPvDEmOdsTzindzX+csvOBd7/TjDRMp/UCFeadZ8KN2H8=
X-Google-Smtp-Source: ABdhPJy5hSc/zLVA6fgt+yyWLFqhr47LAe6lah0keX1vwsEbWaAJX8YLCKix2oWSxB5Ep5FsD2JS0BeKxyabyJa2y3E=
X-Received: by 2002:a25:8005:: with SMTP id m5mr1330800ybk.187.1602713939264;
 Wed, 14 Oct 2020 15:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <20201014160242.2619.13006@ml01.vlan13.01.org> <488f332a-5635-7cd7-ce50-bca18181e043@sgl.com>
In-Reply-To: <488f332a-5635-7cd7-ce50-bca18181e043@sgl.com>
From: Devin Steffler <devinsteffler@gmail.com>
Date: Wed, 14 Oct 2020 18:18:46 -0400
Message-ID: <CAAuRk_hD6MHQ53LXCu9ndjvCm0x8ixFV_8hLcCLA7RxN0zTUWQ@mail.gmail.com>
To: Will Miles <wmiles@sgl.com>
Message-ID-Hash: ABBDG3R6QWY7SN6GULD2I6RGENUQGWWV
X-Message-ID-Hash: ABBDG3R6QWY7SN6GULD2I6RGENUQGWWV
X-MailFrom: devinsteffler@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Wake On LAN steps for QNX from S5
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ABBDG3R6QWY7SN6GULD2I6RGENUQGWWV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============3997156705965310419=="

--===============3997156705965310419==
Content-Type: multipart/alternative; boundary="00000000000006c97e05b1a8eb3d"

--00000000000006c97e05b1a8eb3d
Content-Type: text/plain; charset="UTF-8"

Hi Will,

I think you hit the nail on the head. I just found out about the WUC
register as well via various online searches.

I am going to give that a shot and let you know.

If it is due to WUC bits, then do you know if there is a way to toggle that
programmatically with ACPICA in an agnostic way? Otherwise I have a feeling
I'll need to write lots of code for different chipsets and it would not be
very future proof. This applies for different vendors as well (although QNX
is really just Intel, Realtek or ASIX).

Many thanks for your email.

Devin


On Wed, Oct 14, 2020, 1:15 PM Will Miles <wmiles@sgl.com> wrote:

> Hi Devin,
>
> I did some of the initial porting work to compile ACPICA for use in QNX
> userspace.   I'm glad to hear you've had some success with it!
>
> I can't speak for current revisions; but at least as far as the BSP
> supplied with QNX 6.6, QNX's e1000 driver explicitly disables
> wake-on-LAN when loaded by writing to the wakeup control (WUC) register
> on the device.   My recommendation would be to get a copy of the
> datasheet for your device
> (
> http://www.intel.com/content/www/us/en/embedded/products/networking/ethernet-connection-i219-datasheet.html
> ?) and then, as part of your shutdown routine, explicitly terminate the
> QNX network drivers and then manually re-enable APM wakeup by directly
> interacting with the ethernet device registers.
>
> Hope this is of some help,
>
> -Will
>
> On 10/14/2020 12:02 PM, devinsteffler@gmail.com wrote:
> > Hello,
> >
> > I raised a case with QNX about this last week but I haven't heard back
> from them yet. In the meantime, I'm wondering if the kind folks at ACPICA
> might be able to help with this. I'm hoping that I'm not missing anything
> obvious.
> >
> > I'm using an Intel based x86_64 PC with QNX on it (an Intel NUC
> NUC7i5DNB to be precise). QNX does not have ACPI support built-in. As an
> example, QNX does not have a way to read battery status or power down (soft
> off, S5) an x86 based PC.
> >
> > So I'm making my own ACPI driver for QNX based off of the ACPICA code
> base. I've done this previously with success for reading AC power/battery
> information on laptops using things like _PSR from a ACPI0003 device as
> well as _STA, _BIF, and _BST from PNP0C0A devices.
> >
> > Now I would like to try and get Wake On LAN working from a soft off (S5)
> state.
> >
> > I'm able to enter S5 via the following code:
> > -----------------------------------------------
> >       AcpiEnterSleepStatePrep(5);
> >
> >       // disable interrupts, optional?
> >       ThreadCtl( _NTO_TCTL_IO, 0 );
> >       InterruptDisable();
> >
> >       AcpiEnterSleepState(5);
> > -----------------------------------------------
> >
> > Unfortunately, when I enter S5 using that code, then Wake On LAN no
> longer works when powered off. Although as you'll see below, Wake On LAN no
> longer works if I go to S5 after having used the QNX e1000 driver. If I
> don't use the e1000 driver then Wake On LAN works. Although, I need the QNX
> e1000 driver to have networking when running.
> >
> > I've made the following observations:
> > - When I boot my device with Linux and power it off using software, then
> I'm able to Wake On LAN just fine.
> >    - in this case, the NIC LEDs blink while powered off
> > - If I boot into QNX and hold the power button for 10 seconds or so, it
> powers off and Wake On LAN works (whether the QNX e1000 driver is loaded or
> not).
> >    - in this case, the NIC LEDs blink while powered off
> > - If I boot into QNX and use software (the code above) to power down,
> then Wake On LAN does not work.
> >    - in this case, the NIC LEDs remain off while powered off
> > - If I boot into QNX but do not start their networking stack (or their
> e1000 driver) and use software (the code above) to power down, then Wake On
> LAN does work.
> >    - in this case, the NIC LEDs blink while powered off (they
> momentarily stop blinking, but then blink again shortly afterwards)
> >
> > QNX has a pci-tool (similar to Linux's lspci tool). I can use it to see
> the following:
> >
> ----------------------------------------------------------------------------------
> > # pci-tool -vvvv -d0:31:6
> >
> > B000:D31:F06 @ idx 0
> >          vid/did: 8086/156f
> >                  Intel Corporation, <device id - unknown>
> >          class/subclass/reg: 02/00/00
> >                  Ethernet Network Controller
> > <snip>
> >          PMI Capability Details
> >                  PMI supported states: D0 D3hot D3cold *
> >                  PMI current state: D0
> >                  PME's supported from states: D0 D3hot D3cold *
> >                  PME's are disabled
> >                  PMI data: [idx] val scale
> >                          [00]  00  01  [01]  --  --  [02]  --  --  [03]
> 00  01
> >                          [04]  00  01  [05]  --  --  [06]  --  --  [07]
> 00  01
> >                          [08]  --  --  [09]  --  --  [10]  --  --  [11]
> --  --
> >                          [12]  --  --  [13]  --  --  [14]  --  --  [15]
> --  --
> >
> ----------------------------------------------------------------------------------
> >
> > I can use this method in ACPI to get "PME's are enabled" output:
> > \_SB.PCI0.GLAN._DSW
> >
> > i.e.
> >
> ----------------------------------------------------------------------------------
> > # pci-tool -vvvv -d0:31:6
> >
> > B000:D31:F06 @ idx 0
> > <snip>
> >          PMI Capability Details
> >                  PMI supported states: D0 D3hot D3cold *
> >                  PMI current state: D0
> >                  PME's supported from states: D0 D3hot D3cold *
> >                  PME's are enabled
> >                  PMI data: [idx] val scale
> >                          [00]  00  01  [01]  --  --  [02]  --  --  [03]
> 00  01
> >                          [04]  00  01  [05]  --  --  [06]  --  --  [07]
> 00  01
> >                          [08]  --  --  [09]  --  --  [10]  --  --  [11]
> --  --
> >                          [12]  --  --  [13]  --  --  [14]  --  --  [15]
> --  --
> >
> ----------------------------------------------------------------------------------
> >
> > Although that doesn't help.
> >
> > Do I need to get the PMI current state to be D3hot prior to entering S5
> in order for Wake On LAN to work?
> >
> > However, I noticed that if I boot without the QNX e1000 driver, then
> Wake On LAN works by just going to S5 alone, without _DSW. In this case:
> >
> ----------------------------------------------------------------------------------
> > # pci-tool -vvvv -d0:31:6
> >
> > B000:D31:F06 @ idx 0
> > <snip>
> >          PMI Capability Details
> >                  PMI supported states: D0 D3hot D3cold *
> >                  PMI current state: D0
> >                  PME's supported from states: D0 D3hot D3cold *
> >                  PME's are disabled
> >                  PMI data: [idx] val scale
> >                          [00]  00  01  [01]  --  --  [02]  --  --  [03]
> 00  01
> >                          [04]  00  01  [05]  --  --  [06]  --  --  [07]
> 00  01
> >                          [08]  --  --  [09]  --  --  [10]  --  --  [11]
> --  --
> >                          [12]  --  --  [13]  --  --  [14]  --  --  [15]
> --  --
> >
> ----------------------------------------------------------------------------------
> >
> > It's almost like the QNX e1000 driver is putting the NIC into some state
> that EFI does not recover from when transitioning to S5. Maybe the PHY is
> being turned off. If this is the case, then should calls to things like
> _DSW, _PRW (and enabling GPE it returns), or even the LPI function 5 put
> the PHY back on? The NIC LEDs shut off at the same time as the power LED
> when entering S5 and do not come back on.
> >
> > For LPI I'm referring to this:
> >
> https://www.uefi.org/sites/default/files/resources/Intel_ACPI_Low_Power_S0_Idle.pdf
> >
> > Any help is appreciated.
> >
> > Thanks,
> > Devin
> > _______________________________________________
> > Devel mailing list -- devel@acpica.org
> > To unsubscribe send an email to devel-leave@acpica.org
> > %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org
> %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
>

--00000000000006c97e05b1a8eb3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Will,<div dir=3D"auto"><br></div><div dir=3D"auto">I t=
hink you hit the nail on the head. I just found out about the WUC register =
as well via various online searches.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">I am going to give that a shot and let you know.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">If it is due to WUC bits, then do you=
 know if there is a way to toggle that programmatically with ACPICA in an a=
gnostic way? Otherwise I have a feeling I&#39;ll need to write lots of code=
 for different chipsets and it would not be very future proof. This applies=
 for different vendors as well (although QNX is really just Intel, Realtek =
or ASIX).</div><div dir=3D"auto"><br></div><div dir=3D"auto">Many thanks fo=
r your email.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Devin</div=
><div dir=3D"auto"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 14, 2020, 1:15 PM Will Miles &lt;=
<a href=3D"mailto:wmiles@sgl.com">wmiles@sgl.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Hi Devin,<br>
<br>
I did some of the initial porting work to compile ACPICA for use in QNX <br=
>
userspace.=C2=A0=C2=A0 I&#39;m glad to hear you&#39;ve had some success wit=
h it!<br>
<br>
I can&#39;t speak for current revisions; but at least as far as the BSP <br=
>
supplied with QNX 6.6, QNX&#39;s e1000 driver explicitly disables <br>
wake-on-LAN when loaded by writing to the wakeup control (WUC) register <br=
>
on the device.=C2=A0=C2=A0 My recommendation would be to get a copy of the =
<br>
datasheet for your device <br>
(<a href=3D"http://www.intel.com/content/www/us/en/embedded/products/networ=
king/ethernet-connection-i219-datasheet.html" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">http://www.intel.com/content/www/us/en/embedded/products=
/networking/ethernet-connection-i219-datasheet.html</a> <br>
?) and then, as part of your shutdown routine, explicitly terminate the <br=
>
QNX network drivers and then manually re-enable APM wakeup by directly <br>
interacting with the ethernet device registers.<br>
<br>
Hope this is of some help,<br>
<br>
-Will<br>
<br>
On 10/14/2020 12:02 PM, <a href=3D"mailto:devinsteffler@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">devinsteffler@gmail.com</a> wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I raised a case with QNX about this last week but I haven&#39;t heard =
back from them yet. In the meantime, I&#39;m wondering if the kind folks at=
 ACPICA might be able to help with this. I&#39;m hoping that I&#39;m not mi=
ssing anything obvious.<br>
&gt;<br>
&gt; I&#39;m using an Intel based x86_64 PC with QNX on it (an Intel NUC NU=
C7i5DNB to be precise). QNX does not have ACPI support built-in. As an exam=
ple, QNX does not have a way to read battery status or power down (soft off=
, S5) an x86 based PC.<br>
&gt;<br>
&gt; So I&#39;m making my own ACPI driver for QNX based off of the ACPICA c=
ode base. I&#39;ve done this previously with success for reading AC power/b=
attery information on laptops using things like _PSR from a ACPI0003 device=
 as well as _STA, _BIF, and _BST from PNP0C0A devices.<br>
&gt;<br>
&gt; Now I would like to try and get Wake On LAN working from a soft off (S=
5) state.<br>
&gt;<br>
&gt; I&#39;m able to enter S5 via the following code:<br>
&gt; -----------------------------------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0AcpiEnterSleepStatePrep(5);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0// disable interrupts, optional?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ThreadCtl( _NTO_TCTL_IO, 0 );<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0InterruptDisable();<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0AcpiEnterSleepState(5);<br>
&gt; -----------------------------------------------<br>
&gt;<br>
&gt; Unfortunately, when I enter S5 using that code, then Wake On LAN no lo=
nger works when powered off. Although as you&#39;ll see below, Wake On LAN =
no longer works if I go to S5 after having used the QNX e1000 driver. If I =
don&#39;t use the e1000 driver then Wake On LAN works. Although, I need the=
 QNX e1000 driver to have networking when running.<br>
&gt;<br>
&gt; I&#39;ve made the following observations:<br>
&gt; - When I boot my device with Linux and power it off using software, th=
en I&#39;m able to Wake On LAN just fine.<br>
&gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while powered off<br>
&gt; - If I boot into QNX and hold the power button for 10 seconds or so, i=
t powers off and Wake On LAN works (whether the QNX e1000 driver is loaded =
or not).<br>
&gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while powered off<br>
&gt; - If I boot into QNX and use software (the code above) to power down, =
then Wake On LAN does not work.<br>
&gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs remain off while powered off=
<br>
&gt; - If I boot into QNX but do not start their networking stack (or their=
 e1000 driver) and use software (the code above) to power down, then Wake O=
n LAN does work.<br>
&gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while powered off (the=
y momentarily stop blinking, but then blink again shortly afterwards)<br>
&gt;<br>
&gt; QNX has a pci-tool (similar to Linux&#39;s lspci tool). I can use it t=
o see the following:<br>
&gt; ----------------------------------------------------------------------=
------------<br>
&gt; # pci-tool -vvvv -d0:31:6<br>
&gt;<br>
&gt; B000:D31:F06 @ idx 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vid/did: 8086/156f<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Intel Co=
rporation, &lt;device id - unknown&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 class/subclass/reg: 02/00/00<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ethernet=
 Network Controller<br>
&gt; &lt;snip&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Details<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI supp=
orted states: D0 D3hot D3cold *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI curr=
ent state: D0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PME&#39;=
s supported from states: D0 D3hot D3cold *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PME&#39;=
s are disabled<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI data=
: [idx] val scale<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0 --=C2=A0 --=C2=
=A0 [02]=C2=A0 --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0 --=C2=A0 --=C2=
=A0 [06]=C2=A0 --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0 --=C2=A0 --=C2=
=A0 [10]=C2=A0 --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0 --=C2=A0 --=C2=
=A0 [14]=C2=A0 --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --<br>
&gt; ----------------------------------------------------------------------=
------------<br>
&gt;<br>
&gt; I can use this method in ACPI to get &quot;PME&#39;s are enabled&quot;=
 output:<br>
&gt; \_SB.PCI0.GLAN._DSW<br>
&gt;<br>
&gt; i.e.<br>
&gt; ----------------------------------------------------------------------=
------------<br>
&gt; # pci-tool -vvvv -d0:31:6<br>
&gt;<br>
&gt; B000:D31:F06 @ idx 0<br>
&gt; &lt;snip&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Details<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI supp=
orted states: D0 D3hot D3cold *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI curr=
ent state: D0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PME&#39;=
s supported from states: D0 D3hot D3cold *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PME&#39;=
s are enabled<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI data=
: [idx] val scale<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0 --=C2=A0 --=C2=
=A0 [02]=C2=A0 --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0 --=C2=A0 --=C2=
=A0 [06]=C2=A0 --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0 --=C2=A0 --=C2=
=A0 [10]=C2=A0 --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0 --=C2=A0 --=C2=
=A0 [14]=C2=A0 --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --<br>
&gt; ----------------------------------------------------------------------=
------------<br>
&gt;<br>
&gt; Although that doesn&#39;t help.<br>
&gt;<br>
&gt; Do I need to get the PMI current state to be D3hot prior to entering S=
5 in order for Wake On LAN to work?<br>
&gt;<br>
&gt; However, I noticed that if I boot without the QNX e1000 driver, then W=
ake On LAN works by just going to S5 alone, without _DSW. In this case:<br>
&gt; ----------------------------------------------------------------------=
------------<br>
&gt; # pci-tool -vvvv -d0:31:6<br>
&gt;<br>
&gt; B000:D31:F06 @ idx 0<br>
&gt; &lt;snip&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Details<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI supp=
orted states: D0 D3hot D3cold *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI curr=
ent state: D0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PME&#39;=
s supported from states: D0 D3hot D3cold *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PME&#39;=
s are disabled<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI data=
: [idx] val scale<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0 --=C2=A0 --=C2=
=A0 [02]=C2=A0 --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0 --=C2=A0 --=C2=
=A0 [06]=C2=A0 --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0 --=C2=A0 --=C2=
=A0 [10]=C2=A0 --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0 --=C2=A0 --=C2=
=A0 [14]=C2=A0 --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --<br>
&gt; ----------------------------------------------------------------------=
------------<br>
&gt;<br>
&gt; It&#39;s almost like the QNX e1000 driver is putting the NIC into some=
 state that EFI does not recover from when transitioning to S5. Maybe the P=
HY is being turned off. If this is the case, then should calls to things li=
ke _DSW, _PRW (and enabling GPE it returns), or even the LPI function 5 put=
 the PHY back on? The NIC LEDs shut off at the same time as the power LED w=
hen entering S5 and do not come back on.<br>
&gt;<br>
&gt; For LPI I&#39;m referring to this:<br>
&gt; <a href=3D"https://www.uefi.org/sites/default/files/resources/Intel_AC=
PI_Low_Power_S0_Idle.pdf" rel=3D"noreferrer noreferrer" target=3D"_blank">h=
ttps://www.uefi.org/sites/default/files/resources/Intel_ACPI_Low_Power_S0_I=
dle.pdf</a><br>
&gt;<br>
&gt; Any help is appreciated.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Devin<br>
&gt; _______________________________________________<br>
&gt; Devel mailing list -- <a href=3D"mailto:devel@acpica.org" target=3D"_b=
lank" rel=3D"noreferrer">devel@acpica.org</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:devel-leave@acpica.o=
rg" target=3D"_blank" rel=3D"noreferrer">devel-leave@acpica.org</a><br>
&gt; %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s<br>
_______________________________________________<br>
Devel mailing list -- <a href=3D"mailto:devel@acpica.org" target=3D"_blank"=
 rel=3D"noreferrer">devel@acpica.org</a><br>
To unsubscribe send an email to <a href=3D"mailto:devel-leave@acpica.org" t=
arget=3D"_blank" rel=3D"noreferrer">devel-leave@acpica.org</a><br>
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s<br>
</blockquote></div>

--00000000000006c97e05b1a8eb3d--

--===============3997156705965310419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============3997156705965310419==--
