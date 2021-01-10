Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7344A7924
	for <lists+devel-acpica@lfdr.de>; Wed,  2 Feb 2022 20:59:23 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9E3DF100E5DAE;
	Wed,  2 Feb 2022 11:59:22 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7B850100ED487
	for <devel@acpica.org>; Sun, 10 Jan 2021 07:38:20 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id q4so8185340plr.7
        for <devel@acpica.org>; Sun, 10 Jan 2021 07:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SqJS1ALYitmlc/SXec/egkB5H4wvJXw7RLjKoxmCYoc=;
        b=YgzSxaczo22CRZ0KG6AP6Z5ygHckUCV4hqfj6vZ5rBDGuDWf6lwFwQ1BQDWCgW69Ff
         wM+1PCEXBIWcN7AQ8B5pJ2Yo3rWvotC5xz5Cq/W6Iu/6o0m17mkpWppQ1kAUJwblkCWM
         hSGJ2gnXsYz5wS6TzyAcU91q52lKgjGOxmK33whULeTBR1MN2/Fp+wnXiQQDIB6JNMMJ
         ZI1PuY/BqBtCUFOszLO9pWeGHsrSOXHbJcgihIudwgmsg3Xe5d2tBz/aEBo1+nfpUljo
         PPHyjdS95lQODAck5Rik6VrEm8xaViYeKW7HDRtuhfNnN6iynssE3UkdmYQHpV1mgYcX
         zCGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SqJS1ALYitmlc/SXec/egkB5H4wvJXw7RLjKoxmCYoc=;
        b=cOAHdiiVTK9y+qh8SAn+35E9BKCm2VdaVJr9Uj6mayhp+z2qy1Cc2awRMQKB7NjqhV
         qME1C2nHtYf72VTyxP3PUdfHFrJ4Krqs3266gBgifvDHHFJ4alGN8+QkRDjgTe67oPEk
         MYaAa+G91mDxXc8nK2Lt386rafrH8PdZxuwlrjiDPjVlZ0koowW7AMvR8xpMAkwB6mQe
         6XgEWD8QSgFMqw/NDOsabOQy3TPoY3uIBVfr30VOddNPGwOvMy+n4Zve7DYOL2rMleAr
         pTDVq4XGpEmAvAc0OK1PuhzHW6nmf3D9pZTjzmqa/IayqZLK6RPdZppgXZJyHfaTerFV
         F5yA==
X-Gm-Message-State: AOAM533ImTDarlBgOpSRsVUn/TkVxNvTQw7YB9SGI1L+etiH5Q/2AGKs
	3XrqLKrLUZWkuAjOfXiQsZziXoMfrDB0s5gfoZ4=
X-Google-Smtp-Source: ABdhPJxcnfPIa3G0X8KNjVdup+JX/ToKTrqeSsR95jz+WVG6BkBEkRN4DAtYTrjraNdR8yQsyTldwj5nhUzyafAX8ss=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr13606980pjt.228.1610293099487;
 Sun, 10 Jan 2021 07:38:19 -0800 (PST)
MIME-Version: 1.0
References: <20210107132838.396641-1-djrscally@gmail.com> <20210107132838.396641-10-djrscally@gmail.com>
 <X/kOYeZtkCspoAC5@pendragon.ideasonboard.com> <CAHp75VeLiMdzXL3Awhco-w6JwJhZNVao_uj7F6bmuty_aW0SNQ@mail.gmail.com>
 <X/riDXHahRAXCQXC@pendragon.ideasonboard.com>
In-Reply-To: <X/riDXHahRAXCQXC@pendragon.ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 10 Jan 2021 17:38:03 +0200
Message-ID: <CAHp75VcntC5O8v8Q40Vw1oh9c-2eaq_ZRtjFLo1OFrwfku90Pw@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: GP57WVDXZXXLWL5IA4QZI53BPB7MZXJ2
X-Message-ID-Hash: GP57WVDXZXXLWL5IA4QZI53BPB7MZXJ2
X-Mailman-Approved-At: Wed, 02 Feb 2022 19:58:54 -0800
CC: Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Daniel Scally <djrscally@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "mchehab@kernel.org" <mchehab@kernel.org>, "yong.zhi@intel.com" <yong.zhi@intel.com>, "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>, "bingbu.cao@intel.com" <bingbu.cao@intel.com>, "tian.shu.qiu@intel.com" <tian.shu.qiu@intel.com>, "erik.kaneda@intel.com" <erik.kaneda@intel.com>, "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>, "laurent.pinchart+renesas@ideasonboard.com" <laurent.pinchart+renesas@ideasonboard.com>, "
 jacopo+renesas@jmondi.org" <jacopo+renesas@jmondi.org>, "kieran.bingham+renesas@ideasonboard.com" <kieran.bingham+renesas@ideasonboard.com>, "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>, "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>, "niklas.soderlund+renesas@ragnatech.se" <niklas.soderlund+renesas@ragnatech.se>, "prabhakar.mahadev-lad.rj@bp.renesas.com" <prabhakar.mahadev-lad.rj@bp.renesas.com>, "slongerbeam@gmail.com" <slongerbeam@gmail.com>, "heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 09/15] lib/test_printf.c: Use helper function to unwind array of software_nodes
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/GP57WVDXZXXLWL5IA4QZI53BPB7MZXJ2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jan 10, 2021 at 1:16 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Sat, Jan 09, 2021 at 11:07:33AM +0200, Andy Shevchenko wrote:
> > On Saturday, January 9, 2021, Laurent Pinchart wrote:
> > > Could you please let us know if you're fine with this patch getting
> > > merged in v5.12 through the linux-media tree ? The cover letter contains
> > > additional details (in a nutshell, this is a cross-tree series and we
> > > would like to avoid topic branches if possible).
> >
> > There is already a tag by Petr.
>
> I saw that, but looking at the corresponding e-mail, there was no clear
> acknowledgement that we could merge this patch through a different tree.

Fair point.

One question though, what so wrong with topic branches.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
