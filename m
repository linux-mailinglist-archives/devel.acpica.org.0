Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC76828F315
	for <lists+devel-acpica@lfdr.de>; Thu, 15 Oct 2020 15:20:05 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1752515F8FC77;
	Thu, 15 Oct 2020 06:20:04 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.87.231.69; helo=hermes.sgl.com; envelope-from=wmiles@sgl.com; receiver=<UNKNOWN> 
Received: from hermes.sgl.com (mail1.sgl.com [209.87.231.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A75DF15F8FC76
	for <devel@acpica.org>; Thu, 15 Oct 2020 06:20:01 -0700 (PDT)
Received: from hermes.sgl.com (hermes.sgl.com [127.0.0.1])
	by hermes.sgl.com (Postfix) with ESMTP id 4CBqdX2Z0fzB1BPT
	for <devel@acpica.org>; Thu, 15 Oct 2020 09:20:00 -0400 (EDT)
Authentication-Results: hermes.sgl.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)" header.d=sgl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sgl.com; h=
	content-language:content-type:content-type:in-reply-to
	:mime-version:user-agent:date:date:message-id:from:from
	:references:to:subject:subject; s=dkim; t=1602767996; x=
	1605359997; bh=OiTkVMeCc5SCgwXKeg8ckB0nZma4Fddv43TmV25++bg=; b=b
	RwO2aKVUzStuy0YG/ovvutjUQ10ZDn5P4MBqipkctpKb4I7f5QMM84wJOnd6Jc2t
	Swso6n12jTBDYkVUh1LHloIk8o7xc9/VNCy6MWKUriVSoPB+mkWMuldeP+nLaH3G
	UvRODqTTy0cod8gm8p1T4Q9rRDt8ax3qBqc/1S6Xdw=
X-Virus-Scanned: amavisd-new at hermes.sgl.com
Received: from hermes.sgl.com ([127.0.0.1])
	by hermes.sgl.com (hermes.sgl.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id lpKC_dMLexrD for <devel@acpica.org>;
	Thu, 15 Oct 2020 09:19:56 -0400 (EDT)
Received: from [192.168.1.50] (unknown [184.175.21.37])
	by hermes.sgl.com (Postfix) with ESMTPSA id 4CBqdS3hXlz9yQFK;
	Thu, 15 Oct 2020 09:19:56 -0400 (EDT)
To: Devin Steffler <devinsteffler@gmail.com>
References: <20201014160242.2619.13006@ml01.vlan13.01.org>
 <488f332a-5635-7cd7-ce50-bca18181e043@sgl.com>
 <CAAuRk_hD6MHQ53LXCu9ndjvCm0x8ixFV_8hLcCLA7RxN0zTUWQ@mail.gmail.com>
 <CAAuRk_g7GM8uGrbGYsA7WChyD37=-dAGjZ6YegryiFfYfEkgww@mail.gmail.com>
From: Will Miles <wmiles@sgl.com>
Message-ID: <2a69f79d-cfaa-8a90-b6d8-3fdc784fc144@sgl.com>
Date: Thu, 15 Oct 2020 09:19:52 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CAAuRk_g7GM8uGrbGYsA7WChyD37=-dAGjZ6YegryiFfYfEkgww@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: IN3G3UWBWBO3XLMNW5PQ6D7MLRK5VRZ5
X-Message-ID-Hash: IN3G3UWBWBO3XLMNW5PQ6D7MLRK5VRZ5
X-MailFrom: wmiles@sgl.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: devel@acpica.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Wake On LAN steps for QNX from S5
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/IN3G3UWBWBO3XLMNW5PQ6D7MLRK5VRZ5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============3815357203615870153=="

This is a multi-part message in MIME format.
--===============3815357203615870153==
Content-Type: multipart/alternative;
 boundary="------------2B297ACEF511B3C67D9E69FB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2B297ACEF511B3C67D9E69FB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Devin,

Glad to hear it worked for you!=C2=A0=C2=A0 I honestly don't know if ther=
e's an=20
ACPI procedure for configuring the WUC state, but I doubt it -- I would=20
expect that sort of feature to be managed by the operating system's=20
hardware drivers.=C2=A0=C2=A0 I didn't spend too much time studying the x=
86 BIOS=20
standards, though; my requirement was to implement a hardware enumerator=20
for legacy PC devices such as serial ports for QNX 6.6, we didn't need=20
to dig in to power management much.=C2=A0=C2=A0 I just happened to have a=
 copy of=20
the QNX 6.6 e1000 driver sources on hand and thought you'd be interested=20
to know that WUC was explicitly disabled there.=C2=A0=C2=A0 If anything, =
I expect=20
you'll find that the drivers have overridden the state set by the BIOS,=20
and so the BIOS expects that this feature is already enabled.

If you really want to be certain, you could try decompiling the ACPI=20
tables on your target board, identify the ethernet device, and walk=20
through all the function bytecode looking for relevant register=20
operations.=C2=A0 I did this once to patch up the power management proced=
ures=20
for an old laptop with switchable graphics to find out how to address=20
the LCD panel switch; it had been tied to ACPI power management calls to=20
power up and down the discrete graphics chip, and unfortunately that=20
approach was not supported by the chip vendor's graphics drivers after=20
2011.=C2=A0 It's a bit of a chore but it can be done.

Sorry I can't be of more help,

-Will

On 10/15/2020 7:30 AM, Devin Steffler wrote:
> Hi Will,
>
> Just wanted to confirm that setting the WUC bits did the trick. I'm=20
> guessing that there's no way to do that from ACPICA, correct?
>
> Thanks,
> Devin
>
>
> On Wed, Oct 14, 2020 at 6:18 PM Devin Steffler=20
> <devinsteffler@gmail.com <mailto:devinsteffler@gmail.com>> wrote:
>
>     Hi Will,
>
>     I think you hit the nail on the head. I just found out about the
>     WUC register as well via various online searches.
>
>     I am going to give that a shot and let you know.
>
>     If it is due to WUC bits, then do you know if there is a way to
>     toggle that programmatically with ACPICA in an agnostic way?
>     Otherwise I have a feeling I'll need to write lots of code for
>     different chipsets and it would not be very future proof. This
>     applies for different vendors as well (although QNX is really just
>     Intel, Realtek or ASIX).
>
>     Many thanks for your email.
>
>     Devin
>
>
>     On Wed, Oct 14, 2020, 1:15 PM Will Miles <wmiles@sgl.com
>     <mailto:wmiles@sgl.com>> wrote:
>
>         Hi Devin,
>
>         I did some of the initial porting work to compile ACPICA for
>         use in QNX
>         userspace.=C2=A0=C2=A0 I'm glad to hear you've had some success=
 with it!
>
>         I can't speak for current revisions; but at least as far as
>         the BSP
>         supplied with QNX 6.6, QNX's e1000 driver explicitly disables
>         wake-on-LAN when loaded by writing to the wakeup control (WUC)
>         register
>         on the device.=C2=A0=C2=A0 My recommendation would be to get a =
copy of the
>         datasheet for your device
>         (http://www.intel.com/content/www/us/en/embedded/products/netwo=
rking/ethernet-connection-i219-datasheet.html
>         <http://www.intel.com/content/www/us/en/embedded/products/netwo=
rking/ethernet-connection-i219-datasheet.html>
>
>         ?) and then, as part of your shutdown routine, explicitly
>         terminate the
>         QNX network drivers and then manually re-enable APM wakeup by
>         directly
>         interacting with the ethernet device registers.
>
>         Hope this is of some help,
>
>         -Will
>
>         On 10/14/2020 12:02 PM, devinsteffler@gmail.com
>         <mailto:devinsteffler@gmail.com> wrote:
>         > Hello,
>         >
>         > I raised a case with QNX about this last week but I haven't
>         heard back from them yet. In the meantime, I'm wondering if
>         the kind folks at ACPICA might be able to help with this. I'm
>         hoping that I'm not missing anything obvious.
>         >
>         > I'm using an Intel based x86_64 PC with QNX on it (an Intel
>         NUC NUC7i5DNB to be precise). QNX does not have ACPI support
>         built-in. As an example, QNX does not have a way to read
>         battery status or power down (soft off, S5) an x86 based PC.
>         >
>         > So I'm making my own ACPI driver for QNX based off of the
>         ACPICA code base. I've done this previously with success for
>         reading AC power/battery information on laptops using things
>         like _PSR from a ACPI0003 device as well as _STA, _BIF, and
>         _BST from PNP0C0A devices.
>         >
>         > Now I would like to try and get Wake On LAN working from a
>         soft off (S5) state.
>         >
>         > I'm able to enter S5 via the following code:
>         > -----------------------------------------------
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0AcpiEnterSleepStatePrep(5);
>         >
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0// disable interrupts, optional?
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0ThreadCtl( _NTO_TCTL_IO, 0 );
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0InterruptDisable();
>         >
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0AcpiEnterSleepState(5);
>         > -----------------------------------------------
>         >
>         > Unfortunately, when I enter S5 using that code, then Wake On
>         LAN no longer works when powered off. Although as you'll see
>         below, Wake On LAN no longer works if I go to S5 after having
>         used the QNX e1000 driver. If I don't use the e1000 driver
>         then Wake On LAN works. Although, I need the QNX e1000 driver
>         to have networking when running.
>         >
>         > I've made the following observations:
>         > - When I boot my device with Linux and power it off using
>         software, then I'm able to Wake On LAN just fine.
>         >=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while powered=
 off
>         > - If I boot into QNX and hold the power button for 10
>         seconds or so, it powers off and Wake On LAN works (whether
>         the QNX e1000 driver is loaded or not).
>         >=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while powered=
 off
>         > - If I boot into QNX and use software (the code above) to
>         power down, then Wake On LAN does not work.
>         >=C2=A0 =C2=A0 - in this case, the NIC LEDs remain off while po=
wered off
>         > - If I boot into QNX but do not start their networking stack
>         (or their e1000 driver) and use software (the code above) to
>         power down, then Wake On LAN does work.
>         >=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while powered=
 off
>         (they momentarily stop blinking, but then blink again shortly
>         afterwards)
>         >
>         > QNX has a pci-tool (similar to Linux's lspci tool). I can
>         use it to see the following:
>         >
>         ---------------------------------------------------------------=
-------------------
>         > # pci-tool -vvvv -d0:31:6
>         >
>         > B000:D31:F06 @ idx 0
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vid/did: 8086/156f
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Intel Corporation, <device id - unknown>
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 class/subclass/reg: 02/00/0=
0
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Ethernet Network Controller
>         > <snip>
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Details
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI supported states: D0 D3hot D3cold *
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI current state: D0
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PME's supported from states: D0 D3hot D3cold *
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PME's are disabled
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI data: [idx] val scale
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0 --=C2=
=A0 -- [02]=C2=A0
>         --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0 --=C2=
=A0 -- [06]=C2=A0
>         --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0 --=C2=
=A0 -- [10]=C2=A0
>         --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0 --=C2=
=A0 -- [14]=C2=A0
>         --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --
>         >
>         ---------------------------------------------------------------=
-------------------
>         >
>         > I can use this method in ACPI to get "PME's are enabled" outp=
ut:
>         > \_SB.PCI0.GLAN._DSW
>         >
>         > i.e.
>         >
>         ---------------------------------------------------------------=
-------------------
>         > # pci-tool -vvvv -d0:31:6
>         >
>         > B000:D31:F06 @ idx 0
>         > <snip>
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Details
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI supported states: D0 D3hot D3cold *
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI current state: D0
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PME's supported from states: D0 D3hot D3cold *
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PME's are enabled
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI data: [idx] val scale
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0 --=C2=
=A0 -- [02]=C2=A0
>         --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0 --=C2=
=A0 -- [06]=C2=A0
>         --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0 --=C2=
=A0 -- [10]=C2=A0
>         --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0 --=C2=
=A0 -- [14]=C2=A0
>         --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --
>         >
>         ---------------------------------------------------------------=
-------------------
>         >
>         > Although that doesn't help.
>         >
>         > Do I need to get the PMI current state to be D3hot prior to
>         entering S5 in order for Wake On LAN to work?
>         >
>         > However, I noticed that if I boot without the QNX e1000
>         driver, then Wake On LAN works by just going to S5 alone,
>         without _DSW. In this case:
>         >
>         ---------------------------------------------------------------=
-------------------
>         > # pci-tool -vvvv -d0:31:6
>         >
>         > B000:D31:F06 @ idx 0
>         > <snip>
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Details
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI supported states: D0 D3hot D3cold *
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI current state: D0
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PME's supported from states: D0 D3hot D3cold *
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PME's are disabled
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 PMI data: [idx] val scale
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0 --=C2=
=A0 -- [02]=C2=A0
>         --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0 --=C2=
=A0 -- [06]=C2=A0
>         --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0 --=C2=
=A0 -- [10]=C2=A0
>         --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --
>         >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0 --=C2=
=A0 -- [14]=C2=A0
>         --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --
>         >
>         ---------------------------------------------------------------=
-------------------
>         >
>         > It's almost like the QNX e1000 driver is putting the NIC
>         into some state that EFI does not recover from when
>         transitioning to S5. Maybe the PHY is being turned off. If
>         this is the case, then should calls to things like _DSW, _PRW
>         (and enabling GPE it returns), or even the LPI function 5 put
>         the PHY back on? The NIC LEDs shut off at the same time as the
>         power LED when entering S5 and do not come back on.
>         >
>         > For LPI I'm referring to this:
>         >
>         https://www.uefi.org/sites/default/files/resources/Intel_ACPI_L=
ow_Power_S0_Idle.pdf
>         <https://www.uefi.org/sites/default/files/resources/Intel_ACPI_=
Low_Power_S0_Idle.pdf>
>         >
>         > Any help is appreciated.
>         >
>         > Thanks,
>         > Devin
>         > _______________________________________________
>         > Devel mailing list -- devel@acpica.org <mailto:devel@acpica.o=
rg>
>         > To unsubscribe send an email to devel-leave@acpica.org
>         <mailto:devel-leave@acpica.org>
>         > %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
>         _______________________________________________
>         Devel mailing list -- devel@acpica.org <mailto:devel@acpica.org=
>
>         To unsubscribe send an email to devel-leave@acpica.org
>         <mailto:devel-leave@acpica.org>
>         %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
>

--------------2B297ACEF511B3C67D9E69FB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Devin,</p>
    <p>Glad to hear it worked for you!=C2=A0=C2=A0 I honestly don't know =
if
      there's an ACPI procedure for configuring the WUC state, but I
      doubt it -- I would expect that sort of feature to be managed by
      the operating system's hardware drivers.=C2=A0=C2=A0 I didn't spend=
 too much
      time studying the x86 BIOS standards, though; my requirement was
      to implement a hardware enumerator for legacy PC devices such as
      serial ports for QNX 6.6, we didn't need to dig in to power
      management much.=C2=A0=C2=A0 I just happened to have a copy of the =
QNX 6.6
      e1000 driver sources on hand and thought you'd be interested to
      know that WUC was explicitly disabled there.=C2=A0=C2=A0 If anythin=
g, I
      expect you'll find that the drivers have overridden the state set
      by the BIOS, and so the BIOS expects that this feature is already
      enabled.<br>
    </p>
    <p>If you really want to be certain, you could try decompiling the
      ACPI tables on your target board, identify the ethernet device,
      and walk through all the function bytecode looking for relevant
      register operations.=C2=A0 I did this once to patch up the power
      management procedures for an old laptop with switchable graphics
      to find out how to address the LCD panel switch; it had been tied
      to ACPI power management calls to power up and down the discrete
      graphics chip, and unfortunately that approach was not supported
      by the chip vendor's graphics drivers after 2011.=C2=A0 It's a bit =
of a
      chore but it can be done.</p>
    <p>Sorry I can't be of more help,</p>
    <p>-Will<br>
    </p>
    <div class=3D"moz-cite-prefix">On 10/15/2020 7:30 AM, Devin Steffler
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAuRk_g7GM8uGrbGYsA7WChyD37=3D-dAGjZ6YegryiFfYfEkgww@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi Will,</div>
        <div><br>
        </div>
        <div>Just wanted to confirm that setting the WUC bits did the
          trick. I'm guessing that there's no way to do that from
          ACPICA, correct?</div>
        <div><br>
        </div>
        <div>Thanks,<br>
        </div>
        <div>Devin</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 14, 2020 at 6:1=
8
          PM Devin Steffler &lt;<a href=3D"mailto:devinsteffler@gmail.com=
"
            moz-do-not-send=3D"true">devinsteffler@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Hi Will,
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">I think you hit the nail on the head. I jus=
t
              found out about the WUC register as well via various
              online searches.</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">I am going to give that a shot and let you
              know.</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">If it is due to WUC bits, then do you know
              if there is a way to toggle that programmatically with
              ACPICA in an agnostic way? Otherwise I have a feeling I'll
              need to write lots of code for different chipsets and it
              would not be very future proof. This applies for different
              vendors as well (although QNX is really just Intel,
              Realtek or ASIX).</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">Many thanks for your email.</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">Devin</div>
            <div dir=3D"auto"><br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 14, 2020, 1=
:15
              PM Will Miles &lt;<a href=3D"mailto:wmiles@sgl.com"
                target=3D"_blank" moz-do-not-send=3D"true">wmiles@sgl.com=
</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">Hi Devin,<br>
              <br>
              I did some of the initial porting work to compile ACPICA
              for use in QNX <br>
              userspace.=C2=A0=C2=A0 I'm glad to hear you've had some suc=
cess with
              it!<br>
              <br>
              I can't speak for current revisions; but at least as far
              as the BSP <br>
              supplied with QNX 6.6, QNX's e1000 driver explicitly
              disables <br>
              wake-on-LAN when loaded by writing to the wakeup control
              (WUC) register <br>
              on the device.=C2=A0=C2=A0 My recommendation would be to ge=
t a copy
              of the <br>
              datasheet for your device <br>
              (<a
href=3D"http://www.intel.com/content/www/us/en/embedded/products/networki=
ng/ethernet-connection-i219-datasheet.html"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true">http://www.intel.com/content/www=
/us/en/embedded/products/networking/ethernet-connection-i219-datasheet.ht=
ml</a>
              <br>
              ?) and then, as part of your shutdown routine, explicitly
              terminate the <br>
              QNX network drivers and then manually re-enable APM wakeup
              by directly <br>
              interacting with the ethernet device registers.<br>
              <br>
              Hope this is of some help,<br>
              <br>
              -Will<br>
              <br>
              On 10/14/2020 12:02 PM, <a
                href=3D"mailto:devinsteffler@gmail.com" rel=3D"noreferrer=
"
                target=3D"_blank" moz-do-not-send=3D"true">devinsteffler@=
gmail.com</a>
              wrote:<br>
              &gt; Hello,<br>
              &gt;<br>
              &gt; I raised a case with QNX about this last week but I
              haven't heard back from them yet. In the meantime, I'm
              wondering if the kind folks at ACPICA might be able to
              help with this. I'm hoping that I'm not missing anything
              obvious.<br>
              &gt;<br>
              &gt; I'm using an Intel based x86_64 PC with QNX on it (an
              Intel NUC NUC7i5DNB to be precise). QNX does not have ACPI
              support built-in. As an example, QNX does not have a way
              to read battery status or power down (soft off, S5) an x86
              based PC.<br>
              &gt;<br>
              &gt; So I'm making my own ACPI driver for QNX based off of
              the ACPICA code base. I've done this previously with
              success for reading AC power/battery information on
              laptops using things like _PSR from a ACPI0003 device as
              well as _STA, _BIF, and _BST from PNP0C0A devices.<br>
              &gt;<br>
              &gt; Now I would like to try and get Wake On LAN working
              from a soft off (S5) state.<br>
              &gt;<br>
              &gt; I'm able to enter S5 via the following code:<br>
              &gt; -----------------------------------------------<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0AcpiEnterSleepStatePrep(5);<=
br>
              &gt;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0// disable interrupts, optio=
nal?<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ThreadCtl( _NTO_TCTL_IO, 0 )=
;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0InterruptDisable();<br>
              &gt;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0AcpiEnterSleepState(5);<br>
              &gt; -----------------------------------------------<br>
              &gt;<br>
              &gt; Unfortunately, when I enter S5 using that code, then
              Wake On LAN no longer works when powered off. Although as
              you'll see below, Wake On LAN no longer works if I go to
              S5 after having used the QNX e1000 driver. If I don't use
              the e1000 driver then Wake On LAN works. Although, I need
              the QNX e1000 driver to have networking when running.<br>
              &gt;<br>
              &gt; I've made the following observations:<br>
              &gt; - When I boot my device with Linux and power it off
              using software, then I'm able to Wake On LAN just fine.<br>
              &gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while =
powered
              off<br>
              &gt; - If I boot into QNX and hold the power button for 10
              seconds or so, it powers off and Wake On LAN works
              (whether the QNX e1000 driver is loaded or not).<br>
              &gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while =
powered
              off<br>
              &gt; - If I boot into QNX and use software (the code
              above) to power down, then Wake On LAN does not work.<br>
              &gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs remain off w=
hile
              powered off<br>
              &gt; - If I boot into QNX but do not start their
              networking stack (or their e1000 driver) and use software
              (the code above) to power down, then Wake On LAN does
              work.<br>
              &gt;=C2=A0 =C2=A0 - in this case, the NIC LEDs blink while =
powered
              off (they momentarily stop blinking, but then blink again
              shortly afterwards)<br>
              &gt;<br>
              &gt; QNX has a pci-tool (similar to Linux's lspci tool). I
              can use it to see the following:<br>
              &gt;
-------------------------------------------------------------------------=
---------<br>
              &gt; # pci-tool -vvvv -d0:31:6<br>
              &gt;<br>
              &gt; B000:D31:F06 @ idx 0<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vid/did: 8086/156f<b=
r>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Intel Corporation, &lt;device id -
              unknown&gt;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 class/subclass/reg: =
02/00/00<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Ethernet Network Controller<br>
              &gt; &lt;snip&gt;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Detai=
ls<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI supported states: D0 D3hot
              D3cold *<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI current state: D0<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PME's supported from states: D0
              D3hot D3cold *<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PME's are disabled<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI data: [idx] val scale<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0=
 --=C2=A0 --=C2=A0
              [02]=C2=A0 --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0=
 --=C2=A0 --=C2=A0
              [06]=C2=A0 --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0=
 --=C2=A0 --=C2=A0
              [10]=C2=A0 --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0=
 --=C2=A0 --=C2=A0
              [14]=C2=A0 --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --<br>
              &gt;
-------------------------------------------------------------------------=
---------<br>
              &gt;<br>
              &gt; I can use this method in ACPI to get "PME's are
              enabled" output:<br>
              &gt; \_SB.PCI0.GLAN._DSW<br>
              &gt;<br>
              &gt; i.e.<br>
              &gt;
-------------------------------------------------------------------------=
---------<br>
              &gt; # pci-tool -vvvv -d0:31:6<br>
              &gt;<br>
              &gt; B000:D31:F06 @ idx 0<br>
              &gt; &lt;snip&gt;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Detai=
ls<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI supported states: D0 D3hot
              D3cold *<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI current state: D0<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PME's supported from states: D0
              D3hot D3cold *<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PME's are enabled<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI data: [idx] val scale<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0=
 --=C2=A0 --=C2=A0
              [02]=C2=A0 --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0=
 --=C2=A0 --=C2=A0
              [06]=C2=A0 --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0=
 --=C2=A0 --=C2=A0
              [10]=C2=A0 --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0=
 --=C2=A0 --=C2=A0
              [14]=C2=A0 --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --<br>
              &gt;
-------------------------------------------------------------------------=
---------<br>
              &gt;<br>
              &gt; Although that doesn't help.<br>
              &gt;<br>
              &gt; Do I need to get the PMI current state to be D3hot
              prior to entering S5 in order for Wake On LAN to work?<br>
              &gt;<br>
              &gt; However, I noticed that if I boot without the QNX
              e1000 driver, then Wake On LAN works by just going to S5
              alone, without _DSW. In this case:<br>
              &gt;
-------------------------------------------------------------------------=
---------<br>
              &gt; # pci-tool -vvvv -d0:31:6<br>
              &gt;<br>
              &gt; B000:D31:F06 @ idx 0<br>
              &gt; &lt;snip&gt;<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PMI Capability Detai=
ls<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI supported states: D0 D3hot
              D3cold *<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI current state: D0<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PME's supported from states: D0
              D3hot D3cold *<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PME's are disabled<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 PMI data: [idx] val scale<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [00]=C2=A0 00=C2=A0 01=C2=A0 [01]=C2=A0=
 --=C2=A0 --=C2=A0
              [02]=C2=A0 --=C2=A0 --=C2=A0 [03]=C2=A0 00=C2=A0 01<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [04]=C2=A0 00=C2=A0 01=C2=A0 [05]=C2=A0=
 --=C2=A0 --=C2=A0
              [06]=C2=A0 --=C2=A0 --=C2=A0 [07]=C2=A0 00=C2=A0 01<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [08]=C2=A0 --=C2=A0 --=C2=A0 [09]=C2=A0=
 --=C2=A0 --=C2=A0
              [10]=C2=A0 --=C2=A0 --=C2=A0 [11]=C2=A0 --=C2=A0 --<br>
              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [12]=C2=A0 --=C2=A0 --=C2=A0 [13]=C2=A0=
 --=C2=A0 --=C2=A0
              [14]=C2=A0 --=C2=A0 --=C2=A0 [15]=C2=A0 --=C2=A0 --<br>
              &gt;
-------------------------------------------------------------------------=
---------<br>
              &gt;<br>
              &gt; It's almost like the QNX e1000 driver is putting the
              NIC into some state that EFI does not recover from when
              transitioning to S5. Maybe the PHY is being turned off. If
              this is the case, then should calls to things like _DSW,
              _PRW (and enabling GPE it returns), or even the LPI
              function 5 put the PHY back on? The NIC LEDs shut off at
              the same time as the power LED when entering S5 and do not
              come back on.<br>
              &gt;<br>
              &gt; For LPI I'm referring to this:<br>
              &gt; <a
href=3D"https://www.uefi.org/sites/default/files/resources/Intel_ACPI_Low=
_Power_S0_Idle.pdf"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true">https://www.uefi.org/sites/defau=
lt/files/resources/Intel_ACPI_Low_Power_S0_Idle.pdf</a><br>
              &gt;<br>
              &gt; Any help is appreciated.<br>
              &gt;<br>
              &gt; Thanks,<br>
              &gt; Devin<br>
              &gt; _______________________________________________<br>
              &gt; Devel mailing list -- <a
                href=3D"mailto:devel@acpica.org" rel=3D"noreferrer"
                target=3D"_blank" moz-do-not-send=3D"true">devel@acpica.o=
rg</a><br>
              &gt; To unsubscribe send an email to <a
                href=3D"mailto:devel-leave@acpica.org" rel=3D"noreferrer"
                target=3D"_blank" moz-do-not-send=3D"true">devel-leave@ac=
pica.org</a><br>
              &gt; %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s<=
br>
              _______________________________________________<br>
              Devel mailing list -- <a href=3D"mailto:devel@acpica.org"
                rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"t=
rue">devel@acpica.org</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:devel-leave@acpica.org" rel=3D"noreferrer"
                target=3D"_blank" moz-do-not-send=3D"true">devel-leave@ac=
pica.org</a><br>
              %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s<br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------2B297ACEF511B3C67D9E69FB--

--===============3815357203615870153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============3815357203615870153==--
