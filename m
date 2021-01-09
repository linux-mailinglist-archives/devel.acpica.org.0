Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA00B4A7922
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:14 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 72C61100E5D21;
	Wed,  2 Feb 2022 11:59:11 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D1F5B100ED4A2
	for <devel@acpica.org>; Sat,  9 Jan 2021 01:07:34 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id j1so6964726pld.3
        for <devel@acpica.org>; Sat, 09 Jan 2021 01:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=F1OY2xfXW6PZlt/+WB0TjKqYU7HMU4xJinTxoh0Ncl8=;
        b=VDOnc+X4ZzV4rzlj20vA/hf6aCQgtdLCs9HE+tYjjqUuhqd5a6zmPF9DKRkCvfsPei
         Kp1zqyjhMLkYN5fp4Vtf96GU+jGhIMncjs7+E7sCsKcQXODLL5NC3TAgxP5wjOQSOi3K
         cpk5ZUWJ/w9zyDk53SC/pvEZQaNsb9wbUdz9POdJdsRmFkVxhQlZyNqh99h3+Y2Lcx9Q
         wTTDduCqj2V0JLQFYGgBIX/dI6Dxjz39hKw1C20zkC6K11d3+K6NTRhFnIydbcKUWE23
         ereYZ0GH1CVdQ2pQGH2lRYBwLKTFGK0ILPnpyii4KwU3Kyb61aPLqgP46m/wNziIYbEE
         b3Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=F1OY2xfXW6PZlt/+WB0TjKqYU7HMU4xJinTxoh0Ncl8=;
        b=VPOKa0lcFCybVbQuRacuPsoKo17XEZaw06q/fC9TEt6U1cznE0LP8lPYX0VyHPOsaX
         G0N1EmBtMZc3fm7iDhPK5aMKCfcIAwlhDLNylghrOhrOUrHFO8o4lUv4mAfFXXDW7Xll
         2yHiE86GRG2iEY5DyutPx5qOJlQTJpdY0Os/4mzo3n96eadBt9MqjCOFuKKC80lWc2/L
         jaH/Qj0T8NsaoWLLC4/dAQoQQIXYryAjUSdWTF7pzqeAXgERkyrEv7C7EPj/j0qS3KxG
         D+jZlsFxLYTP5L9auUJoe4zMEwNb2YJ8q9wLQQ+sAyVMj7XlGeX2jFLP15vW9jN+q0s6
         C7hg==
X-Gm-Message-State: AOAM531TXZp9V/e/iTAwicb8MiM4fC1C4i1/CyVFUemcaIHuxwANVCd9
	MHSoBKJU5um4Cjd0NywWbtFATdcJXPmkySIE8Wk=
X-Google-Smtp-Source: ABdhPJzaVWWEPT4EHbg6wGuBNoMxOC0Ep4tUxIcTqyJJ1e98PHgUE/Y/x+ZSoMHuOJn8Ns6MnSxvHFLmly4mCdjTTfs=
X-Received: by 2002:a17:902:e98c:b029:da:cb88:f11d with SMTP id
 f12-20020a170902e98cb02900dacb88f11dmr7786323plb.17.1610183253747; Sat, 09
 Jan 2021 01:07:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90b:3011:0:0:0:0 with HTTP; Sat, 9 Jan 2021 01:07:33
 -0800 (PST)
In-Reply-To: <X/kOYeZtkCspoAC5@pendragon.ideasonboard.com>
References: <20210107132838.396641-1-djrscally@gmail.com> <20210107132838.396641-10-djrscally@gmail.com>
 <X/kOYeZtkCspoAC5@pendragon.ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 9 Jan 2021 11:07:33 +0200
Message-ID: <CAHp75VeLiMdzXL3Awhco-w6JwJhZNVao_uj7F6bmuty_aW0SNQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: 23ILF3F4TOFWCIOGTTTH5KM3WUP2QF2U
X-Message-ID-Hash: 23ILF3F4TOFWCIOGTTTH5KM3WUP2QF2U
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:46 -0800
CC: Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Daniel Scally <djrscally@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "mchehab@kernel.org" <mchehab@kernel.org>, "yong.zhi@intel.com" <yong.zhi@intel.com>, "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>, "bingbu.cao@intel.com" <bingbu.cao@intel.com>, "tian.shu.qiu@intel.com" <tian.shu.qiu@intel.com>, "erik.kaneda@intel.com" <erik.kaneda@intel.com>, "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>, "laurent.pinchart+renesas@ideasonboard.com" <laurent.pinchart+renesas@ideasonboard.com>, "
 jacopo+renesas@jmondi.org" <jacopo+renesas@jmondi.org>, "kieran.bingham+renesas@ideasonboard.com" <kieran.bingham+renesas@ideasonboard.com>, "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>, "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>, "niklas.soderlund+renesas@ragnatech.se" <niklas.soderlund+renesas@ragnatech.se>, "prabhakar.mahadev-lad.rj@bp.renesas.com" <prabhakar.mahadev-lad.rj@bp.renesas.com>, "slongerbeam@gmail.com" <slongerbeam@gmail.com>, "heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 09/15] lib/test_printf.c: Use helper function to unwind array of software_nodes
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/23ILF3F4TOFWCIOGTTTH5KM3WUP2QF2U/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============6113527449635921851=="

--===============6113527449635921851==
Content-Type: multipart/alternative; boundary="000000000000dceff705b8740020"

--000000000000dceff705b8740020
Content-Type: text/plain; charset="UTF-8"

On Saturday, January 9, 2021, Laurent Pinchart <
laurent.pinchart@ideasonboard.com> wrote:

> Hi Peter, Steven and Sergey,
>
> Could you please let us know if you're fine with this patch getting
> merged in v5.12 through the linux-media tree ? The cover letter contains
> additional details (in a nutshell, this is a cross-tree series and we
> would like to avoid topic branches if possible).


There is already a tag by Petr.


>
> On Thu, Jan 07, 2021 at 01:28:32PM +0000, Daniel Scally wrote:
> > Use the software_node_unregister_nodes() helper function to unwind this
> > array in a cleaner way.
> >
> > Acked-by: Petr Mladek <pmladek@suse.com>
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
> > Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Signed-off-by: Daniel Scally <djrscally@gmail.com>
> > ---
> > Changes in v5:
> >
> >       - None
> >
> >  lib/test_printf.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/lib/test_printf.c b/lib/test_printf.c
> > index 7ac87f18a10f..7d60f24240a4 100644
> > --- a/lib/test_printf.c
> > +++ b/lib/test_printf.c
> > @@ -644,9 +644,7 @@ static void __init fwnode_pointer(void)
> >       test(second_name, "%pfwP", software_node_fwnode(&softnodes[1]));
> >       test(third_name, "%pfwP", software_node_fwnode(&softnodes[2]));
> >
> > -     software_node_unregister(&softnodes[2]);
> > -     software_node_unregister(&softnodes[1]);
> > -     software_node_unregister(&softnodes[0]);
> > +     software_node_unregister_nodes(softnodes);
> >  }
> >
> >  static void __init
>
> --
> Regards,
>
> Laurent Pinchart
>


-- 
With Best Regards,
Andy Shevchenko

--000000000000dceff705b8740020
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, January 9, 2021, Laurent Pinchart &lt;<a href=3D"mailt=
o:laurent.pinchart@ideasonboard.com">laurent.pinchart@ideasonboard.com</a>&=
gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Hi Peter, Steven and Sergey,<b=
r>
<br>
Could you please let us know if you&#39;re fine with this patch getting<br>
merged in v5.12 through the linux-media tree ? The cover letter contains<br=
>
additional details (in a nutshell, this is a cross-tree series and we<br>
would like to avoid topic branches if possible).</blockquote><div><br></div=
><div>There is already a tag by Petr.</div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<br>
On Thu, Jan 07, 2021 at 01:28:32PM +0000, Daniel Scally wrote:<br>
&gt; Use the software_node_unregister_<wbr>nodes() helper function to unwin=
d this<br>
&gt; array in a cleaner way.<br>
&gt; <br>
&gt; Acked-by: Petr Mladek &lt;<a href=3D"mailto:pmladek@suse.com">pmladek@=
suse.com</a>&gt;<br>
&gt; Reviewed-by: Andy Shevchenko &lt;<a href=3D"mailto:andriy.shevchenko@l=
inux.intel.com">andriy.shevchenko@linux.<wbr>intel.com</a>&gt;<br>
&gt; Reviewed-by: Laurent Pinchart &lt;<a href=3D"mailto:laurent.pinchart@i=
deasonboard.com">laurent.pinchart@<wbr>ideasonboard.com</a>&gt;<br>
&gt; Reviewed-by: Sergey Senozhatsky &lt;<a href=3D"mailto:sergey.senozhats=
ky@gmail.com">sergey.senozhatsky@gmail.com</a>&gt;<br>
&gt; Suggested-by: Andy Shevchenko &lt;<a href=3D"mailto:andriy.shevchenko@=
linux.intel.com">andriy.shevchenko@linux.<wbr>intel.com</a>&gt;<br>
&gt; Signed-off-by: Daniel Scally &lt;<a href=3D"mailto:djrscally@gmail.com=
">djrscally@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v5:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- None<br>
&gt; <br>
&gt;=C2=A0 lib/test_printf.c | 4 +---<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/lib/test_printf.c b/lib/test_printf.c<br>
&gt; index 7ac87f18a10f..7d60f24240a4 100644<br>
&gt; --- a/lib/test_printf.c<br>
&gt; +++ b/lib/test_printf.c<br>
&gt; @@ -644,9 +644,7 @@ static void __init fwnode_pointer(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0test(second_name, &quot;%pfwP&quot;, softwar=
e_node_fwnode(&amp;<wbr>softnodes[1]));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0test(third_name, &quot;%pfwP&quot;, software=
_node_fwnode(&amp;<wbr>softnodes[2]));<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0software_node_unregister(&amp;<wbr>softnodes[2]);=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0software_node_unregister(&amp;<wbr>softnodes[1]);=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0software_node_unregister(&amp;<wbr>softnodes[0]);=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0software_node_unregister_<wbr>nodes(softnodes);<b=
r>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static void __init<br>
<br>
-- <br>
Regards,<br>
<br>
Laurent Pinchart<br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--000000000000dceff705b8740020--

--===============6113527449635921851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============6113527449635921851==--
