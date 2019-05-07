Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3856516567
	for <lists+devel-acpica@lfdr.de>; Tue,  7 May 2019 16:10:02 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6F3D92125583E;
	Tue,  7 May 2019 07:10:00 -0700 (PDT)
X-Original-To: Devel@acpica.org
Delivered-To: Devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=74.6.131.123; helo=sonic311-13.consmr.mail.bf2.yahoo.com;
 envelope-from=scoobi_doo@yahoo.com; receiver=devel@acpica.org 
Received: from sonic311-13.consmr.mail.bf2.yahoo.com
 (sonic311-13.consmr.mail.bf2.yahoo.com [74.6.131.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id B22822125582A
 for <Devel@acpica.org>; Tue,  7 May 2019 07:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1557238196; bh=3IaXW0/kogRGJl41WlNVE5CrJXgrIgmOrUJM7AvjCdk=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject;
 b=qu9IieEyNmvQtX/zaGzB0zpqEp0tqiSx6/3zwy4yAQ+ESqfUGNJX1yDF/Gc+8RHbE3WN3iMx5no2WzLDlplukekEtKLuN129+wODR4aRbYjRspk/WQxodaHQZh8H26U3MQHFWB//LT6CMUDll8XFMkdQ0DH90NERUIyt4+xQT866KVuFoos3NtYHr2AOo7qC/qBv4Vpln7a1NQ7futFoe6qoI4i9gu72pCoep3wixWNwaxL8O2WKaRPOXQP1mRpWylZhwn20hoTxe0sP8t1XWfNrsG3ahDnIvMCaMj/iJQp/BLOE6JyJbyCI0iZfXTo+LHmeH2m/uOWd73NIorayww==
X-YMail-OSG: 3X8OU3cVM1nvcOfd7y10v87FdfnCI0dOb2dWqMFdOmRfhjRammunqaCMuHo34H9
 bJ8.Qz1soidqA0Z89n.3c4gCa50mVkqomCzp0HVmamMNz2x1tfjjdnsJ3D7MfE87oDe0m3596Z20
 F2bfu.KIM_G8Mm2Hn7zZntyhPhsDROF_pi8NNYZnA7iui4RYQxyCo6Sw3W_7jNhNhvocerwxTuvU
 y5SHCfvzzChJHApOdxWj0_cIIgXc7f9zkTexwoCi_Ok957nRJWbi7lhW84QhXyVAWSc1z2OYZu2z
 awPLyBr.1v20NFlSJzM09PWMKzIlBhr2YbwamYPaN27DxasAyUx4xnjksMSsAqE9Znq5ZhivmiF0
 aKkqk9PIwLVADUt4GiQTplkF11K9Wbpnc40TWlN_KzL6h3iYePOWEPvyeNFXmIyZ7n6I69t0Oi1M
 wl4meBIYBihfGL_YPIzQpX0dw6F_O2QnpUAVrrDDl6cxgkBRIRFrsAh55H3rLkSKc3XkJ4FRqUy2
 5ioHbk_v1s5cXXOrjnYCK9oUJpJyC7Ln09uqsl5y2sIYplbfTwhOte4HNk9TwcK1RMXYzeOuVYrS
 BxVfXUmJlR9PPQKnh1jeBBWk3e0OB8zWDHIGLI0qVc_O8EiOqxY03gw5x_bJHcCH_7bHf0ZZn7VM
 aoA.DCfhz1OsguIcmcxhdgexKWYp1i3AL4RVZWjff1SHBihJ.k_U2Quqa62Sefp71ezDOFhmnlhl
 v5EjeyOY9IOJp_G23RKvNAPKH.yy0rJhqYoXRkyKzzLiHg0la61mB9Zt_..X4dlQ_Kg2YgAhYLaS
 mn3ZtChvjxLG.Fy9YKztQtA3mXVIBAjEkWuAbZ2DYBujhM47roQE9M35eSX45ntoT.8Ny9uL4XG0
 Si2UyFhVaI9j2kxIXtpqaRUvOq1GRIB.irNe0bMs1Hr_KLRr992tydQQkS0K1XRceQop1Dgmj3Gd
 r6vsjK.x_hf0ogD5bohhAWxFMbsSyN3ZHJFEKbvx2JeIwA7iS9y5D7Gmdgb2yzUXhc_SD5h8Bweo
 y0Op_um9rn4d1CJaNLmwk2VgljJn3vBZQ7cgEbkxljzBh4JIsHW76O7bBuXaupF4FpO.w7b5zvac
 S6Uouufwj7WscmMXnP3bDDyh3IV5Bp3UOlMXBs35Xb_yBGRiqvTUDpOK5GcAVtenf6cT_
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.bf2.yahoo.com with HTTP; Tue, 7 May 2019 14:09:56 +0000
Received: from 192.34.49.8 (EHLO [10.228.144.26]) ([192.34.49.8])
 by smtp412.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 99c25d2330bcef93de0556bbd2d3c967; 
 Tue, 07 May 2019 14:09:54 +0000 (UTC)
To: "Schmauss, Erik" <erik.schmauss@intel.com>,
 "freebsd-acpi@FreeBSD.org" <freebsd-acpi@FreeBSD.org>,
 "Devel@acpica.org" <Devel@acpica.org>, "Moore, Robert"
 <robert.moore@intel.com>, Jung-uk Kim <jkim@FreeBSD.org>
References: <1e3328ab-0b00-7abf-7182-b4291f18f197@yahoo.com>
 <CF6A88132359CE47947DB4C6E1709ED53C5A994E@ORSMSX122.amr.corp.intel.com>
From: Anthony Jenkins <Scoobi_doo@yahoo.com>
Message-ID: <e619b5de-f31e-b948-97de-dde13e5bd1e5@yahoo.com>
Date: Tue, 7 May 2019 10:09:52 -0400
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <CF6A88132359CE47947DB4C6E1709ED53C5A994E@ORSMSX122.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Devel] iasl -d and duplicate symbols (ACPI Error:
 AE_ALREADY_EXISTS)
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



On 5/6/19 2:03 PM, Schmauss, Erik wrote:
>
>> -----Original Message-----
>> From: Devel [mailto:devel-bounces@acpica.org] On Behalf Of Anthony
>> Jenkins
>> Sent: Monday, May 6, 2019 6:45 AM
>> To: freebsd-acpi@FreeBSD.org; Devel@acpica.org
>> Subject: [Devel] iasl -d and duplicate symbols (ACPI Error:
>> AE_ALREADY_EXISTS)
>>
>> Hi all,
>>
>> I am trying to patch the ACPI tables on my Dell XPS 15 9570 running FreeBSD
>> 13.0-CURRENT @ git commit 68c8581f772. 'acpidump -d -t' gives error
>> AE_ALREADY_EXISTS when trying to add symbol
>> \_SB.PCI0.XHC.RHUB.HS01._UPC.?? Google says this is because my BIOS' set
>> of ACPI tables contains two duplicate tables, and it fails to add symbols from
>> the 2nd table because they already exist from the 1st.
>>
> [Schmauss, Erik]
> +JK
> Hi,
>
>> Q: By "duplicate table", does this mean the entire body of the table
>> (excluding its header) is duplicated?
> It depends. A single table can declare multiple named objects. This message indicates that these symbols have been declared in multiple tables. If the entire body of the table is duplicated you should get a lot of these errors. However, it does not necessarily mean that there are duplicate tables. Some content may be different.

Okay, thanks.?? Understand I'm only talking about the extraction and 
decompilation of the ACPI tables /after/ booting, _not_ the FreeBSD 
kernel's acpica implementation parsing those tables during boot 
(although I'm sure they probably both use the same underlying 
functions).?? The command-line decompiler, 'iasl -d', stops with error 
when hitting the first duplicate symbol, but the kernel boot process 
trudges on.

>> What's the standard practice for handling this error? I assume I have to:
> In order to solve this issue, it must be done in the firmware. Please make sure that you have the latest firmware from dell.

I updated to BIOS rev 1.10.1 dated 2019-04-30 last night 
(https://www.dell.com/support/home/us/en/19/drivers/driversdetails?driverid=kkwch&oscode=biosa&productcode=xps-15-9570-laptop). 
Same error using iasl -d / acpidump -d -t.
> Once you do, please attach a dmesg of free BSD booting with the latest firmware. The dmesg should also contain these ACPI errors.

Done. http://www.qtchat.org/~ajenkins/dmesg.today

Excerpt from dmesg (just the AE_ALREADY_EXISTS errors):

acpi0: <DELL CBX3???? > on motherboard
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS01._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS01._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS02._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS02._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS03._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS03._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS04._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS04._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS05._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS05._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS06._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS06._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS07._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS07._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS08._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS08._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS09._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS09._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS10._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS10._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS11._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS11._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS12._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.HS12._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.USR1._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.USR1._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.USR2._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.USR2._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS01._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS01._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS02._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS02._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS03._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS03._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS04._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS04._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS05._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS05._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS06._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS06._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS07._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS07._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS08._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS08._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS09._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS09._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS10._UPC], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
Firmware Error (ACPI): Failure creating 
[\134_SB.PCI0.XHC.RHUB.SS10._PLD], AE_ALREADY_EXISTS (20190108/dswload2-477)
ACPI Error: AE_ALREADY_EXISTS, During name lookup/catalog 
(20190108/psobject-372)
ACPI: Skipping parse of AML opcode: OpcodeName unavailable (0x0014)
ACPI: 13 ACPI AML tables successfully acquired and loaded
PCIe: Memory Mapped configuration base @ 0xf0000000
ioapic0: routing intpin 9 (ISA IRQ 9) to lapic 0 vector 48
acpi0: Power Button (fixed)
acpi0: wakeup code va 0xfffffe0005dff000 pa 0x9e000
unknown: memory range not supported


> There are similar issues with Linux that I've been seeing but I would like to make sure that you have their latest firmware before involving dell...

I don't think I understand involving Dell at all. Granted, I would LOVE 
to enjoin Dell to fix their firmware, but large computer manufacturer 
historically could care less about my open-source OS' acpica symbol 
parsing errors.?? I thought that because of this, the general process for 
us open-source folks was to disassemble their buggy ACPI tables, patch 
them, reassemble them and tell the kernel to parse those fixed tables 
instead of the resident buggy ones.

https://docs.freebsd.org/doc/handbook/acpi-overview.html - 11.13.3 
Overriding the Default AML

>>   1. Identify the two duplicate tables
>>   2. Tell 'iasl -d' (which is what 'acpidump' calls to do the
>>      disassembly) to exclude one of the two tables
>>
>> I have no idea how to do either of these two tasks with the set of acpica tools
>> I have (iasl version 20190108)...anyone have any pointers?
>>
>> Is there a way to extract (using acpica tools) the body of a single named ACPI
>> table?
> No
>> I have some ideas for patches to acpica to help with this increasingly common
>> issue:
>>
>>    * Patch iasl(1) to emit more information about the origins of the
>>      symbols it parses, such that an AE_ALREADY_EXISTS error would also
>>      emit the origin (table name) of the existing symbol and that of the
>>      current table it's trying to add.
>>    * Patch iasl(1) to add a user option (flag) to ignore tables with
>>      duplicate symbols, possibly adding a parameter indicating number of
>>      duplicates or percentage of duplication before dropping that table.
>>
>> Would any/all of these patches be useful/considered for acceptance into
>> acpica?
> Possibly, I think the second option hides things from the user which can be even more confusing.

Right, the second option would purposely ignore duplicate symbols (in 
iasl(8) only) just so the user can get some disassembled AML to try to 
patch.?? (aside: I'd modify that option's granularity to ignore 
individual duplicate symbols, not whole tables with duplicate symbols.)?? 
Right now the tool throws up its hands at the first symbol collision and 
I get nothing.?? As an option to the command-line tool, the user has to 
choose to specify it, meaning he/she chooses to ignore those collisions.

Again, my hope was to patch the buggy ACPI tables by disassembling them 
with the command-line tool, reassembling them and passing the patched 
tables to the kernel at boot time.?? I can't even get iasl(8) to give me 
the table code because of the symbol collisions.

> First option seems better but it might be non-trivial. I'll bring it up with Bob.

Depends on there being metadata associated with each symbol.?? If the 
table origin of each symbol isn't in there already, I'd just have to add 
each parsed table to a dynamic list of origins, then add a pointer to 
the current table being parsed to each parsed symbol's metadata.?? A 
collision error (AE_ALREADY_EXISTS) would follow the existing symbol's 
pointer to its origin table and print that in the error message; 
similarly with the symbol that's being added.

Thanks again for your response!
Anthony

> I hope this helps. Let me know if you have any other questions
>
> Erik
>
>> Thanks in advance,
>> Anthony Jenkins
>>
>> _______________________________________________
>> Devel mailing list
>> Devel@acpica.org
>> https://lists.acpica.org/mailman/listinfo/devel

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
