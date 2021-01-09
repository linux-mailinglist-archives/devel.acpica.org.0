Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C452E4A7923
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:15 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7D1AB100E5D24;
	Wed,  2 Feb 2022 11:59:11 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 552CB100ED4A2
	for <devel@acpica.org>; Sat,  9 Jan 2021 01:17:54 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id p12so4966059pju.5
        for <devel@acpica.org>; Sat, 09 Jan 2021 01:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+eeie3uHadqhiFrGXZUvgFZWfvINm2G9FKKa86lARfA=;
        b=VUbFWINtXcBKU4Z98mfXBOp1tnCb3ulDUp+ZpgX0ivqY/dTXw+Lq7vszTregwWCK0O
         dyhv6MZnjNANBm4paEPYSfcg6RyUFlDgj80EMK05wDblV3HAbKG3fFDlC1ciWJ7Boabc
         oaMOMg8CZbhZyEZVLyp+Bpi1j4yVcDIx7+/AFK34oqQM28G+6hkBj/g5s/a8YafJrxp6
         JnWAVT98TN4PQFhtUPBChQPYP77kItE8ykQgRevZGhFU6BFBsN1UwXRUDr610t+QXIYD
         a7uyR/mIfkTq35sk7dXCn/cLJH5ioCZ9MW7Bg3rerTr6C7/kmGFHgprVNqAsSsPJnROV
         cfSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+eeie3uHadqhiFrGXZUvgFZWfvINm2G9FKKa86lARfA=;
        b=HOYn1ChT/HMpDxYGirwkU6akkj6+9+aPsllLmW9jOkaV9jh5Bp2WaYG8SUYy6x9tl0
         ZjuVQyXSfP9EyhPWaKcxC/u6VajeFu2ERueN2pEh+rSGk9b4tYyGRHiM7DxsmxFsTLga
         hAhQ8qtTeOG8G8IX9AdJ1PAuUcP0tSxwGlGFMocoghPqPR7odZs+Eb4u6YEjHKT0Kgyu
         OW85j4k0LGsf99h/GmnB1gCTBcasaCO13QojKxqz6nyCTxDmni7/JT62QSbVw0qXSlDu
         nNaBPRCO77YrxaTTLrMI55t0QAAzN4N+eLo4ztF4yDrGAn3fUyIt41wkJmIgp9qGFF4W
         c2Eg==
X-Gm-Message-State: AOAM532waCk83vUHa+wCvUkFQH5yHjyngeBi/YjABlmIV7okTlPHYSuw
	xKGm7Kb6XmMEufT1+KGeT+dN5NnJSZ5n82wersY=
X-Google-Smtp-Source: ABdhPJy+MyWIYLyzZgoQjJ+d0XWM4IBBEIJkE+dhCluSuS68SgRyLcTfgX0E4wJh3hLuIA1vvpADddCkdPTV1RS3uo8=
X-Received: by 2002:a17:90a:1050:: with SMTP id y16mr8039326pjd.181.1610183873317;
 Sat, 09 Jan 2021 01:17:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90b:3011:0:0:0:0 with HTTP; Sat, 9 Jan 2021 01:17:52
 -0800 (PST)
In-Reply-To: <360b3783-b0ff-bdb8-5bcf-ec88a554503f@gmail.com>
References: <20201130133129.1024662-1-djrscally@gmail.com> <20201130133129.1024662-19-djrscally@gmail.com>
 <20201130200719.GB4077@smile.fi.intel.com> <778f23fc-b99c-33a2-642d-ca0e47fd4ed5@gmail.com>
 <CAHp75VeYOqJt9iKaGPA4=dkb2kYUbqUV4PGTn8uSsnUt_kSGSw@mail.gmail.com> <360b3783-b0ff-bdb8-5bcf-ec88a554503f@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 9 Jan 2021 11:17:52 +0200
Message-ID: <CAHp75Vcy878xKUUUDH5ory9uS-Vhhx_W1PZc=S6hsSLYJ0i60w@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: KTV5E3HBCQWREWZGKIVIMNIO2JJGSEYJ
X-Message-ID-Hash: KTV5E3HBCQWREWZGKIVIMNIO2JJGSEYJ
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:47 -0800
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Rasmus Villemoes <linux@
 rasmusvillemoes.dk>, "kieran.bingham+renesas@ideasonboard.com" <kieran.bingham+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jordan Hand <jorhand@linux.microsoft.com>, Tsuchiya Yuto <kitakar@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 18/18] ipu3: Add driver for dummy INT3472 ACPI device
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KTV5E3HBCQWREWZGKIVIMNIO2JJGSEYJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============1894641701342127579=="

--===============1894641701342127579==
Content-Type: multipart/alternative; boundary="000000000000cad06c05b87425da"

--000000000000cad06c05b87425da
Content-Type: text/plain; charset="UTF-8"

On Saturday, January 9, 2021, Daniel Scally <djrscally@gmail.com> wrote:

> Hi Andy
>
> On 08/01/2021 12:17, Andy Shevchenko wrote:
> > On Fri, Jan 8, 2021 at 1:56 AM Daniel Scally <djrscally@gmail.com>
> wrote:
> >> On 30/11/2020 20:07, Andy Shevchenko wrote:
> >>> On Mon, Nov 30, 2020 at 01:31:29PM +0000, Daniel Scally wrote:
> > ...
> >
> >>> It's solely Windows driver design...
> >>> Luckily I found some information and can clarify above table:
> >>>
> >>> 0x00 Reset
> >>> 0x01 Power down
> >>> 0x0b Power enable
> >>> 0x0c Clock enable
> >>> 0x0d LED (active high)
> >>>
> >>> The above text perhaps should go somewhere under Documentation.
> >> Coming back to this; there's a bit of an anomaly with the 0x01 Power
> >> Down pin for at least one platform.  As listed above, the OV2680 on one
> >> of my platforms has 3 GPIOs defined, and the table above gives them as
> >> type Reset, Power down and Clock enable. I'd assumed from this table
> >> that "power down" meant a powerdown GPIO (I.E. the one usually called
> >> PWDNB in Omnivision datasheets and "powerdown" in drivers), but the
> >> datasheet for the OV2680 doesn't list a separate reset and powerdown
> >> pin, but rather a single pin that performs both functions.
> > All of them are GPIOs, the question here is how they are actually
> > connected on PCB level and I have no answer to that. You have to find
> > schematics somewhere.
>
> Yeah; I've been trying to get those but so far, no dice.
>
>
Can you share the exact name / model of the hardware in question here? I
would try to search for the schematics.



> >
> >> Am I wrong to treat that as something that ought to be mapped as a
> >> powerdown GPIO to the sensors? Or do you know of any other way to
> >> reconcile that discrepancy?
> > The GPIOs can go directly to the sensors or be a control pin for
> > separate discrete power gates.
> > So, we can do one of the following:
> >  a) present PD GPIO as fixed regulator;
> >  b) present PD & Reset GPIOs as regulator;
> >  c) provide them as is to the sensor and sensor driver must do what it
> > considers right.
> >
> > Since we don't have schematics (yet?) and we have plenty of variations
> > of sensors, I would go to c) and update the driver of the affected
> > sensor as needed. Because even if you have separate discrete PD for
> > one sensor on one platform there is no guarantee that it will be the
> > same on another. Providing a "virtual" PD in a sensor that doesn't
> > support it is the best choice I think. Let's hear what Sakari and
> > other experienced camera sensor developers say.
> >
> > My vision is purely based on electrical engineering background,
> > experience with existing (not exactly camera) sensor drivers and
> > generic cases.
>
> Alright; thanks. I'm happy with C being the answer, so unless someone
> thinks differently I'll work on that basis.
>
>
Laurent answered that it is not the best choice from camera sensor driver
perspective.



> >> Failing that; the only way I can think to handle this is to register
> >> proxy GPIO pins assigned to the sensors as you suggested previously, and
> >> have them toggle the GPIO's assigned to the INT3472 based on platform
> >> specific mapping data (I.E. we register a pin called "reset", which on
> >> most platforms just toggles the 0x00 pin, but on this specific platform
> >> would drive both 0x00 and 0x01 together. We're already heading that way
> >> for the regulator consumer supplies so it's sort of nothing new, but I'd
> >> still rather not if it can be avoided.
> >
>


-- 
With Best Regards,
Andy Shevchenko

--000000000000cad06c05b87425da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, January 9, 2021, Daniel Scally &lt;<a href=3D"mailto:d=
jrscally@gmail.com">djrscally@gmail.com</a>&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Andy<br>
<br>
On 08/01/2021 12:17, Andy Shevchenko wrote:<br>
&gt; On Fri, Jan 8, 2021 at 1:56 AM Daniel Scally &lt;<a href=3D"mailto:djr=
scally@gmail.com">djrscally@gmail.com</a>&gt; wrote:<br>
&gt;&gt; On 30/11/2020 20:07, Andy Shevchenko wrote:<br>
&gt;&gt;&gt; On Mon, Nov 30, 2020 at 01:31:29PM +0000, Daniel Scally wrote:=
<br>
&gt; ...<br>
&gt;<br>
&gt;&gt;&gt; It&#39;s solely Windows driver design...<br>
&gt;&gt;&gt; Luckily I found some information and can clarify above table:<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 0x00 Reset<br>
&gt;&gt;&gt; 0x01 Power down<br>
&gt;&gt;&gt; 0x0b Power enable<br>
&gt;&gt;&gt; 0x0c Clock enable<br>
&gt;&gt;&gt; 0x0d LED (active high)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The above text perhaps should go somewhere under Documentation=
.<br>
&gt;&gt; Coming back to this; there&#39;s a bit of an anomaly with the 0x01=
 Power<br>
&gt;&gt; Down pin for at least one platform.=C2=A0 As listed above, the OV2=
680 on one<br>
&gt;&gt; of my platforms has 3 GPIOs defined, and the table above gives the=
m as<br>
&gt;&gt; type Reset, Power down and Clock enable. I&#39;d assumed from this=
 table<br>
&gt;&gt; that &quot;power down&quot; meant a powerdown GPIO (I.E. the one u=
sually called<br>
&gt;&gt; PWDNB in Omnivision datasheets and &quot;powerdown&quot; in driver=
s), but the<br>
&gt;&gt; datasheet for the OV2680 doesn&#39;t list a separate reset and pow=
erdown<br>
&gt;&gt; pin, but rather a single pin that performs both functions.<br>
&gt; All of them are GPIOs, the question here is how they are actually<br>
&gt; connected on PCB level and I have no answer to that. You have to find<=
br>
&gt; schematics somewhere.<br>
<br>
Yeah; I&#39;ve been trying to get those but so far, no dice.<br>
<br></blockquote><div><br></div><div>Can you share the exact name / model o=
f the hardware in question here? I would try to search for the schematics.<=
/div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt;<br>
&gt;&gt; Am I wrong to treat that as something that ought to be mapped as a=
<br>
&gt;&gt; powerdown GPIO to the sensors? Or do you know of any other way to<=
br>
&gt;&gt; reconcile that discrepancy?<br>
&gt; The GPIOs can go directly to the sensors or be a control pin for<br>
&gt; separate discrete power gates.<br>
&gt; So, we can do one of the following:<br>
&gt;=C2=A0 a) present PD GPIO as fixed regulator;<br>
&gt;=C2=A0 b) present PD &amp; Reset GPIOs as regulator;<br>
&gt;=C2=A0 c) provide them as is to the sensor and sensor driver must do wh=
at it<br>
&gt; considers right.<br>
&gt;<br>
&gt; Since we don&#39;t have schematics (yet?) and we have plenty of variat=
ions<br>
&gt; of sensors, I would go to c) and update the driver of the affected<br>
&gt; sensor as needed. Because even if you have separate discrete PD for<br=
>
&gt; one sensor on one platform there is no guarantee that it will be the<b=
r>
&gt; same on another. Providing a &quot;virtual&quot; PD in a sensor that d=
oesn&#39;t<br>
&gt; support it is the best choice I think. Let&#39;s hear what Sakari and<=
br>
&gt; other experienced camera sensor developers say.<br>
&gt;<br>
&gt; My vision is purely based on electrical engineering background,<br>
&gt; experience with existing (not exactly camera) sensor drivers and<br>
&gt; generic cases.<br>
<br>
Alright; thanks. I&#39;m happy with C being the answer, so unless someone<b=
r>
thinks differently I&#39;ll work on that basis.<br>
<br></blockquote><div><br></div><div>Laurent answered that it is not the be=
st choice from camera sensor driver perspective.</div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
&gt;&gt; Failing that; the only way I can think to handle this is to regist=
er<br>
&gt;&gt; proxy GPIO pins assigned to the sensors as you suggested previousl=
y, and<br>
&gt;&gt; have them toggle the GPIO&#39;s assigned to the INT3472 based on p=
latform<br>
&gt;&gt; specific mapping data (I.E. we register a pin called &quot;reset&q=
uot;, which on<br>
&gt;&gt; most platforms just toggles the 0x00 pin, but on this specific pla=
tform<br>
&gt;&gt; would drive both 0x00 and 0x01 together. We&#39;re already heading=
 that way<br>
&gt;&gt; for the regulator consumer supplies so it&#39;s sort of nothing ne=
w, but I&#39;d<br>
&gt;&gt; still rather not if it can be avoided.<br>
&gt;<br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--000000000000cad06c05b87425da--

--===============1894641701342127579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============1894641701342127579==--
