Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7FC28E528
	for <lists+devel-acpica@lfdr.de>; Wed, 14 Oct 2020 19:15:38 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 95AD515F18FC9;
	Wed, 14 Oct 2020 10:15:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.87.231.69; helo=athena.sgl.com; envelope-from=wmiles@sgl.com; receiver=<UNKNOWN> 
Received: from athena.sgl.com (mail1.sgl.com [209.87.231.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B52C615F18FB5
	for <devel@acpica.org>; Wed, 14 Oct 2020 10:15:36 -0700 (PDT)
Received: from athena.sgl.com (athena.sgl.com [127.0.0.1])
	by athena.sgl.com (Postfix) with ESMTP id 4CBJvq2mpszB0M5X
	for <devel@acpica.org>; Wed, 14 Oct 2020 13:15:35 -0400 (EDT)
Authentication-Results: athena.sgl.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)" header.d=sgl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sgl.com; h=
	content-transfer-encoding:content-language:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:to:subject:subject; s=dkim; t=
	1602695733; x=1605287734; bh=44MYRTg0nNVwNXE7Iu1On8HM82ot99r/IPF
	ImKQXWW0=; b=MWNBRII+Cr1qLbfMKPoReaKlBYSwFMGf/DOVgnbvF6JjOumXIeM
	GM5ja1DczGxcrf4TbHC/xwY2EcjObK+MgaC1xv4TIG22KB0WFusnADlEZ2BHNLqd
	dPLwGc5gmItX7sdJtWi2lEpltnwHNzk9vIwD9EylHothIa+e1tGyGXVk=
X-Virus-Scanned: amavisd-new at athena.sgl.com
Received: from athena.sgl.com ([127.0.0.1])
	by athena.sgl.com (athena.sgl.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id pTMjOXZwf_Lr for <devel@acpica.org>;
	Wed, 14 Oct 2020 13:15:33 -0400 (EDT)
Received: from [192.168.1.50] (unknown [184.175.21.37])
	by athena.sgl.com (Postfix) with ESMTPSA id 4CBJvn4gxnz9vnm0
	for <devel@acpica.org>; Wed, 14 Oct 2020 13:15:33 -0400 (EDT)
To: devel@acpica.org
References: <20201014160242.2619.13006@ml01.vlan13.01.org>
From: Will Miles <wmiles@sgl.com>
Message-ID: <488f332a-5635-7cd7-ce50-bca18181e043@sgl.com>
Date: Wed, 14 Oct 2020 13:15:32 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201014160242.2619.13006@ml01.vlan13.01.org>
Content-Language: en-US
Message-ID-Hash: RP35YKL3RR3GMO6COARY4K5Q6YV27ZOV
X-Message-ID-Hash: RP35YKL3RR3GMO6COARY4K5Q6YV27ZOV
X-MailFrom: wmiles@sgl.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Wake On LAN steps for QNX from S5
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RP35YKL3RR3GMO6COARY4K5Q6YV27ZOV/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hi Devin,

I did some of the initial porting work to compile ACPICA for use in QNX=20
userspace.=A0=A0 I'm glad to hear you've had some success with it!

I can't speak for current revisions; but at least as far as the BSP=20
supplied with QNX 6.6, QNX's e1000 driver explicitly disables=20
wake-on-LAN when loaded by writing to the wakeup control (WUC) register=20
on the device.=A0=A0 My recommendation would be to get a copy of the=20
datasheet for your device=20
(http://www.intel.com/content/www/us/en/embedded/products/networking/ethern=
et-connection-i219-datasheet.html=20
?) and then, as part of your shutdown routine, explicitly terminate the=20
QNX network drivers and then manually re-enable APM wakeup by directly=20
interacting with the ethernet device registers.

Hope this is of some help,

-Will

On 10/14/2020 12:02 PM, devinsteffler@gmail.com wrote:
> Hello,
>
> I raised a case with QNX about this last week but I haven't heard back fr=
om them yet. In the meantime, I'm wondering if the kind folks at ACPICA mig=
ht be able to help with this. I'm hoping that I'm not missing anything obvi=
ous.
>
> I'm using an Intel based x86_64 PC with QNX on it (an Intel NUC NUC7i5DNB=
 to be precise). QNX does not have ACPI support built-in. As an example, QN=
X does not have a way to read battery status or power down (soft off, S5) a=
n x86 based PC.
>
> So I'm making my own ACPI driver for QNX based off of the ACPICA code bas=
e. I've done this previously with success for reading AC power/battery info=
rmation on laptops using things like _PSR from a ACPI0003 device as well as=
 _STA, _BIF, and _BST from PNP0C0A devices.
>
> Now I would like to try and get Wake On LAN working from a soft off (S5) =
state.
>
> I'm able to enter S5 via the following code:
> -----------------------------------------------
> 	AcpiEnterSleepStatePrep(5);
>
> 	// disable interrupts, optional?
> 	ThreadCtl( _NTO_TCTL_IO, 0 );
> 	InterruptDisable();
>
> 	AcpiEnterSleepState(5);
> -----------------------------------------------
>
> Unfortunately, when I enter S5 using that code, then Wake On LAN no longe=
r works when powered off. Although as you'll see below, Wake On LAN no long=
er works if I go to S5 after having used the QNX e1000 driver. If I don't u=
se the e1000 driver then Wake On LAN works. Although, I need the QNX e1000 =
driver to have networking when running.
>
> I've made the following observations:
> - When I boot my device with Linux and power it off using software, then =
I'm able to Wake On LAN just fine.
>    - in this case, the NIC LEDs blink while powered off
> - If I boot into QNX and hold the power button for 10 seconds or so, it p=
owers off and Wake On LAN works (whether the QNX e1000 driver is loaded or =
not).
>    - in this case, the NIC LEDs blink while powered off
> - If I boot into QNX and use software (the code above) to power down, the=
n Wake On LAN does not work.
>    - in this case, the NIC LEDs remain off while powered off
> - If I boot into QNX but do not start their networking stack (or their e1=
000 driver) and use software (the code above) to power down, then Wake On L=
AN does work.
>    - in this case, the NIC LEDs blink while powered off (they momentarily=
 stop blinking, but then blink again shortly afterwards)
>
> QNX has a pci-tool (similar to Linux's lspci tool). I can use it to see t=
he following:
> -------------------------------------------------------------------------=
---------
> # pci-tool -vvvv -d0:31:6
>
> B000:D31:F06 @ idx 0
>          vid/did: 8086/156f
>                  Intel Corporation, <device id - unknown>
>          class/subclass/reg: 02/00/00
>                  Ethernet Network Controller
> <snip>
>          PMI Capability Details
>                  PMI supported states: D0 D3hot D3cold *
>                  PMI current state: D0
>                  PME's supported from states: D0 D3hot D3cold *
>                  PME's are disabled
>                  PMI data: [idx] val scale
>                          [00]  00  01  [01]  --  --  [02]  --  --  [03]  =
00  01
>                          [04]  00  01  [05]  --  --  [06]  --  --  [07]  =
00  01
>                          [08]  --  --  [09]  --  --  [10]  --  --  [11]  =
--  --
>                          [12]  --  --  [13]  --  --  [14]  --  --  [15]  =
--  --
> -------------------------------------------------------------------------=
---------
>
> I can use this method in ACPI to get "PME's are enabled" output:
> \_SB.PCI0.GLAN._DSW
>
> i.e.
> -------------------------------------------------------------------------=
---------
> # pci-tool -vvvv -d0:31:6
>
> B000:D31:F06 @ idx 0
> <snip>
>          PMI Capability Details
>                  PMI supported states: D0 D3hot D3cold *
>                  PMI current state: D0
>                  PME's supported from states: D0 D3hot D3cold *
>                  PME's are enabled
>                  PMI data: [idx] val scale
>                          [00]  00  01  [01]  --  --  [02]  --  --  [03]  =
00  01
>                          [04]  00  01  [05]  --  --  [06]  --  --  [07]  =
00  01
>                          [08]  --  --  [09]  --  --  [10]  --  --  [11]  =
--  --
>                          [12]  --  --  [13]  --  --  [14]  --  --  [15]  =
--  --
> -------------------------------------------------------------------------=
---------
>
> Although that doesn't help.
>
> Do I need to get the PMI current state to be D3hot prior to entering S5 i=
n order for Wake On LAN to work?
>
> However, I noticed that if I boot without the QNX e1000 driver, then Wake=
 On LAN works by just going to S5 alone, without _DSW. In this case:
> -------------------------------------------------------------------------=
---------
> # pci-tool -vvvv -d0:31:6
>
> B000:D31:F06 @ idx 0
> <snip>
>          PMI Capability Details
>                  PMI supported states: D0 D3hot D3cold *
>                  PMI current state: D0
>                  PME's supported from states: D0 D3hot D3cold *
>                  PME's are disabled
>                  PMI data: [idx] val scale
>                          [00]  00  01  [01]  --  --  [02]  --  --  [03]  =
00  01
>                          [04]  00  01  [05]  --  --  [06]  --  --  [07]  =
00  01
>                          [08]  --  --  [09]  --  --  [10]  --  --  [11]  =
--  --
>                          [12]  --  --  [13]  --  --  [14]  --  --  [15]  =
--  --
> -------------------------------------------------------------------------=
---------
>
> It's almost like the QNX e1000 driver is putting the NIC into some state =
that EFI does not recover from when transitioning to S5. Maybe the PHY is b=
eing turned off. If this is the case, then should calls to things like _DSW=
, _PRW (and enabling GPE it returns), or even the LPI function 5 put the PH=
Y back on? The NIC LEDs shut off at the same time as the power LED when ent=
ering S5 and do not come back on.
>
> For LPI I'm referring to this:
> https://www.uefi.org/sites/default/files/resources/Intel_ACPI_Low_Power_S=
0_Idle.pdf
>
> Any help is appreciated.
>
> Thanks,
> Devin
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org
> %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
