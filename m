Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB8B41B6E0
	for <lists+devel-acpica@lfdr.de>; Tue, 28 Sep 2021 21:04:47 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 771EA100EA934;
	Tue, 28 Sep 2021 12:04:45 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::931; helo=mail-ua1-x931.google.com; envelope-from=devinsteffler@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com [IPv6:2607:f8b0:4864:20::931])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EF653100EA932
	for <devel@acpica.org>; Tue, 28 Sep 2021 12:04:42 -0700 (PDT)
Received: by mail-ua1-x931.google.com with SMTP id u11so15353472uaw.3
        for <devel@acpica.org>; Tue, 28 Sep 2021 12:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=XP5AFUtDSl+1CX0fjTHOfaGQ8rqNvtzePqOLpsuBLM0=;
        b=EpLV1exI6W7QqxMn/jubRuF9XlaDZtwt8hXkuBjdU89NbpsShtTcHcWjoMdcKl0WuT
         dwxqoeIuzY61VY4Rmkd+/ad4rwzJ/tf/u5Tw4mY+pkxJOo2gR1vCSZD+AQDgx1W3gV51
         Kef8IUglVOLquLwEtsh61mKnJv8VcQ/Sf3/tlApeUIci3gnBEbT9pXqzTuF1bgTEA4lB
         vIVOG7K+X9w3VeiR38vVy0bufQi9PgBsr4c8aZ2g5KP9motp/ErEW8ULoPmoaY+yXn5Y
         Diwc4400ssk/msWqZthoMnDCemWydG9smJd5qZ9VBMf4N/QwlIQP8/i51Wotsrlrwf6m
         +3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XP5AFUtDSl+1CX0fjTHOfaGQ8rqNvtzePqOLpsuBLM0=;
        b=sFGIj1uRJJ4/Og4GlPbE4xFzDX7riTWG8bV/agKotSbUR5uxcpLQPi1WqQu23on1U4
         cVLqd3Mi+qlvkcoE/SJ9cYeSWJlSQyTDgv/dtKyuQT0DzRRsHpVpYr8WmmTauFUOrjCQ
         z/5sAaKnZHnHhFPGzwGZ3MFLS2XL0Wk9+bXpPHn0umU2vA73wsRZr3WskELPBxHITA0D
         3uKxqm6qUyf3CDHSc8yNebJotnaHTy98//y0CVNEwY3HBTTTG+vIbv6K8DRTf0il7M/X
         mvM2ILO5TQxPTnVW+FvHpzvoM5MqEtowbQgPM+eEHUHjs5u4OFCQK8PvlSvMl9uAnU4N
         37Jg==
X-Gm-Message-State: AOAM533MX7JpG8eypjygFlZaOdYqqMAHYUPIdrQvrk88ZrzRNsiBMuf2
	XvG70U/XrGb2/5wcAmz+M1tzn0VxUavSywWitYOSKGz9oCg=
X-Google-Smtp-Source: ABdhPJwdy9L1YLHmohPPPbIAk5iyFQFJTwYoQgdtbwpOfm4t6vWSFLC/MgiwjyrKZ9KO6i4pE6tr3eT+s7qQeLMmj/E=
X-Received: by 2002:ab0:1047:: with SMTP id g7mr6832722uab.92.1632855880681;
 Tue, 28 Sep 2021 12:04:40 -0700 (PDT)
MIME-Version: 1.0
From: Devin Steffler <devinsteffler@gmail.com>
Date: Tue, 28 Sep 2021 15:04:29 -0400
Message-ID: <CAAuRk_jLAfxp7ryhuWPORetZaqMPoNmsHYP6Y=BtkCucAyp45w@mail.gmail.com>
To: devel@acpica.org
Message-ID-Hash: TDIG6VX6LPEMTGQOH5EXTFIV4V4O77JU
X-Message-ID-Hash: TDIG6VX6LPEMTGQOH5EXTFIV4V4O77JU
X-MailFrom: devinsteffler@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Question about ACPICA, QNX and making beeps
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TDIG6VX6LPEMTGQOH5EXTFIV4V4O77JU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============4902798302677020639=="

--===============4902798302677020639==
Content-Type: multipart/alternative; boundary="000000000000bccba205cd12e29c"

--000000000000bccba205cd12e29c
Content-Type: text/plain; charset="UTF-8"

Hello,

I am using ACPICA to read battery information in QNX. That part is working
great so far. However, now some code that is being used to make beeps via
the PC speaker stopped working.

Strangely, this code stops working on a few devices only after ACPICA runs.
It works fine if I don't start ACPICA. The code is using I/O ports 0x43,
0x42, and 0x61 to generate beeps. This seems to be an industry standard way
to make beeps on x86 based PCs using a Programmable Interval Timer (PIT).

What could my ACPICA be doing (or failing to do) that could cause the beeps
to stop working with the code below? Is the PIT being disabled somehow? I
guess I'll need to learn more about the PIT and how to check its status to
see if it's being disabled after ACPICA runs.

Here's example code for QNX to generate a beep using the PC speaker:
// -----------------------------------------------
#include <sys/neutrino.h>
#include <hw/inout.h>
#include <unistd.h>

int main(void) {
    ThreadCtl( _NTO_TCTL_IO, 0 ); // get I/O permissions

    // start a beep
    int freq = 1000;
    int scale = 1193046 / freq;
    out8(0x43, 0xb6);
    out8(0x42, scale & 0xff);
    out8(0x42, scale >> 8);
    out8(0x61, in8(0x61) | 3);

    // let the beep play for a second
    delay(1000);

    // stop the beep
    out8(0x61, in8(0x61) & ~3);

    return 0;
}
// -----------------------------------------------

Thanks,
Devin

--000000000000bccba205cd12e29c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div>I am using ACPICA to read =
battery information in QNX. That part is working great so far. However, now=
 some code that is being used to make beeps via the PC speaker stopped work=
ing.<div><br></div><div>Strangely, this code stops working on a few devices=
 only after ACPICA runs. It works fine if I don&#39;t start ACPICA. The cod=
e is using I/O ports 0x43, 0x42, and 0x61 to generate beeps. This seems to =
be an industry standard way to make beeps on x86 based PCs using a Programm=
able Interval Timer (PIT).</div><div><br></div><div>What could my ACPICA be=
 doing (or failing to do) that could cause the beeps to stop working with t=
he code below? Is the PIT being disabled somehow? I guess I&#39;ll need to =
learn more about the PIT and how to check its status to see if it&#39;s bei=
ng disabled after ACPICA runs.<br></div><div><br></div><div>Here&#39;s exam=
ple code for QNX to generate a beep using the PC speaker:</div><div>// ----=
-------------------------------------------<br></div><div>#include &lt;sys/=
neutrino.h&gt;<br>#include &lt;hw/inout.h&gt;<br>#include &lt;unistd.h&gt;<=
br><br>int main(void) {<br>=C2=A0=C2=A0=C2=A0 ThreadCtl( _NTO_TCTL_IO, 0 );=
 // get I/O permissions<br></div><div><br></div><div>=C2=A0=C2=A0=C2=A0 // =
start a beep<br></div><div>=C2=A0 =C2=A0 int freq =3D 1000;<br>=C2=A0 =C2=
=A0 int scale =3D 1193046 / freq;<br>=C2=A0 =C2=A0 out8(0x43, 0xb6);<br>=C2=
=A0 =C2=A0 out8(0x42, scale &amp; 0xff);<br>=C2=A0 =C2=A0 out8(0x42, scale =
&gt;&gt; 8);<br>=C2=A0 =C2=A0 out8(0x61, in8(0x61) | 3);<br></div><div>=C2=
=A0=C2=A0=C2=A0 <br></div><div>=C2=A0=C2=A0=C2=A0 // let the beep play for =
a second<br></div><div>=C2=A0=C2=A0=C2=A0 delay(1000);<br></div><div><br></=
div><div>=C2=A0=C2=A0=C2=A0 // stop the beep<br></div><div>=C2=A0 =C2=A0 ou=
t8(0x61, in8(0x61) &amp; ~3);<br><br>=C2=A0=C2=A0=C2=A0 return 0;<br>}</div=
><div>
// ----------------------------------------------- <br></div><div><br></div=
><div>Thanks,</div><div>Devin<br></div></div>

--000000000000bccba205cd12e29c--

--===============4902798302677020639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============4902798302677020639==--
