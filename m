Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4A32F3A71
	for <lists+devel-acpica@lfdr.de>; Tue, 12 Jan 2021 20:30:02 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DFCE2100EB840;
	Tue, 12 Jan 2021 11:30:00 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.43; helo=mail-ot1-f43.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A4665100EB840
	for <devel@acpica.org>; Tue, 12 Jan 2021 11:29:58 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id x13so3378905oto.8
        for <devel@acpica.org>; Tue, 12 Jan 2021 11:29:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dBLiJeNQADKjUgSbhzyFOUFac404UUfzi1rI55CmkHI=;
        b=bEpAI21nvvDmgA+zu0l6SAR7nVCttCQzIBfGOhNC/0Qq1Ta4v7UGOMXr4zGPcR4nRo
         ORxYopnfjiN3RiJ8FzLckUOeF28C9jMTWncta97DRj6BtLN7h1mdGp/N4GANBISc+0DS
         /Y1vrrUjZvGetFY5M5xb+SHaCPVyceJZiV3xTaypbWGpQVLDrANyqV7W+EDNAPrdOw2I
         isYVC447NLYlt0SiRUoMJCq0XxY5nLHbFmd4TNQREESL7+URCE8e0mRDjdmW459+AmcX
         UavfYy3BhHMow9L9L4apOERgpbDxPqI8Cwf+pPjvVtnMqbx5WtO/CfsCcuw1aN9IIavG
         M/gQ==
X-Gm-Message-State: AOAM5300tIQQ0gR7p4r4nGpzo7ofzbtX9Pxn5AnrTB6/bPYD/wpvX1Hx
	2Qg5zTwWmXNOr4V/b3pV5BAL45IcM/REKnKxvOI=
X-Google-Smtp-Source: ABdhPJy/n4CyOG7sST+sBvOp4dcWNxGAIaKS2+2pUstHMvFelSX1gYALDbvieubLL47HjuuhD8Y/beILkYvFHG1IyX0=
X-Received: by 2002:a9d:208a:: with SMTP id x10mr652265ota.260.1610479797900;
 Tue, 12 Jan 2021 11:29:57 -0800 (PST)
MIME-Version: 1.0
References: <20210107132838.396641-1-djrscally@gmail.com> <20210107132838.396641-8-djrscally@gmail.com>
In-Reply-To: <20210107132838.396641-8-djrscally@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Jan 2021 20:29:46 +0100
Message-ID: <CAJZ5v0gzRvNwciDRa2CmnimaXwShzvouTK7_mNx9QGcwXe+v+A@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: BT5AJ5YODFRDX374HIHBKVJOLL6RRAHC
X-Message-ID-Hash: BT5AJ5YODFRDX374HIHBKVJOLL6RRAHC
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, yong.zhi@intel.com, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, tian.shu.qiu@intel.com, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, hverkuil-cisco@xs4all.nl, m.felsch@pengutronix.de, Niklas Soderlund <niklas.soderl
 und+renesas@ragnatech.se>, prabhakar.mahadev-lad.rj@bp.renesas.com, Steve Longerbeam <slongerbeam@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v5 07/15] device property: Define format macros for ports and endpoints
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BT5AJ5YODFRDX374HIHBKVJOLL6RRAHC/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 7, 2021 at 2:31 PM Daniel Scally <djrscally@gmail.com> wrote:
>
> OF, ACPI and software_nodes all implement graphs including nodes for ports
> and endpoints. These are all intended to be named with a common schema,
> as "port@n" and "endpoint@n" where n is an unsigned int representing the
> index of the node. To ensure commonality across the subsystems, provide a
> set of macros to define the format.
>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
> Changes in v5:
>
>         - Changed commit subject
>
>  include/linux/fwnode.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
> index fde4ad97564c..77414e431e89 100644
> --- a/include/linux/fwnode.h
> +++ b/include/linux/fwnode.h
> @@ -50,6 +50,13 @@ struct fwnode_endpoint {
>         const struct fwnode_handle *local_fwnode;
>  };
>
> +/*
> + * ports and endpoints defined as software_nodes should all follow a common
> + * naming scheme; use these macros to ensure commonality.
> + */
> +#define SWNODE_GRAPH_PORT_NAME_FMT             "port@%u"
> +#define SWNODE_GRAPH_ENDPOINT_NAME_FMT         "endpoint@%u"
> +
>  #define NR_FWNODE_REFERENCE_ARGS       8
>
>  /**
> --
> 2.25.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
