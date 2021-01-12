Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A6E2F3A82
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jan 2021 20:30:55 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1A7F5100EB84C;
	Tue, 12 Jan 2021 11:30:54 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.43; helo=mail-ot1-f43.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 66709100EB84C
	for <devel@acpica.org>; Tue, 12 Jan 2021 11:30:51 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id q25so3371213otn.10
        for <devel@acpica.org>; Tue, 12 Jan 2021 11:30:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=579ECh+/HPGB6zPxi5v2gvgBTd45mQ9S7oiP7Tpxxs0=;
        b=Cwn7LpESFWvVa0CskNZFXhPZhRd1fuwTjctvYYIb6wgGP17r58416NBlVzosIZ23jQ
         h0K/WbWda0VTExaBZmRbaF5VwdCMZHDyeMupQiUOUT8+IF9ovwUiddsuV3fM3JTBFLRt
         4x75T/HIzWQFkAzair4aWmYvJSCTM6DxzlA1mWplmG2HhZsHci4LvD+7K7PKKgKv4M4V
         QMgoIPwHMlvIXtczAPikqgcIipFzAlXo+CeC9LtbwaG1AKaU9hTrLkuUJun74Sw686zP
         Xb8noGP71wPNPcn7vIFhES8qf1Z1lxDFkAHosidQ6TMnaPeuoHXb09gZGH7Xi8V0XuvQ
         doVw==
X-Gm-Message-State: AOAM533iymJZqnMsz0ukdOwGGi3J9sPfTJZrSUq8gRESh1aMgKr+iNZq
	KhtRS+tJtXBh9lN/GU+8qRlpE3cn8v0ZMOCKTvoTK7x1i6w=
X-Google-Smtp-Source: ABdhPJxGA5IXl+9x5eDMWOnGLjUhZhSzMHVZQan/08pLnADl6k3O6Pp4B7jpWz37P7At+vFZy8gXnHqGI5YooREy480=
X-Received: by 2002:a05:6830:4b5:: with SMTP id l21mr530252otd.321.1610479850617;
 Tue, 12 Jan 2021 11:30:50 -0800 (PST)
MIME-Version: 1.0
References: <20210107132838.396641-1-djrscally@gmail.com> <20210107132838.396641-8-djrscally@gmail.com>
 <X/kPck60UO/NYuRa@pendragon.ideasonboard.com>
In-Reply-To: <X/kPck60UO/NYuRa@pendragon.ideasonboard.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 20:30:39 +0100
Message-ID: <CAJZ5v0jH3vXwqAh4qqhTVmAoYxrY=S0GDST1kdkfwhQxbFv58Q@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID-Hash: CO4XE34J7LQJ4CZEZJH3XU5FJHKUIV36
X-Message-ID-Hash: CO4XE34J7LQJ4CZEZJH3XU5FJHKUIV36
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Daniel Scally <djrscally@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, yong.zhi@intel.com, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, tian.shu.qiu@intel.com, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.c
 om>, hverkuil-cisco@xs4all.nl, m.felsch@pengutronix.de, Niklas Soderlund <niklas.soderlund+renesas@ragnatech.se>, prabhakar.mahadev-lad.rj@bp.renesas.com, Steve Longerbeam <slongerbeam@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 07/15] device property: Define format macros for ports and endpoints
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CO4XE34J7LQJ4CZEZJH3XU5FJHKUIV36/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Jan 9, 2021 at 3:06 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rafael,
>
> Could you please let us know with an Acked-by

Done, sorry for the delay.

> if this patch can be merged through the linux-media tree for v5.12 ?

Yes, it can.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
