Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6652E26D0
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Dec 2020 13:24:32 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C4D46100ED4BF;
	Thu, 24 Dec 2020 04:24:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::1029; helo=mail-pj1-x1029.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1BD44100ED484
	for <devel@acpica.org>; Thu, 24 Dec 2020 04:24:29 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id v1so1044035pjr.2
        for <devel@acpica.org>; Thu, 24 Dec 2020 04:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7ioVoN+TtUwUxRFG1jMfrbYZ/LUETYJIEopRnDFJTwU=;
        b=GGxybWc9TGDh5iNw2yoesDsF9L3oYSFLZpZVSMM/Z0IEEjzfTVSBLg+9zweFaqgYgi
         q3h+syVE+LX+ASe/povghGdFNzeNTL38tePh2wxy6N0TgtBF74RB2bz+Fo4Xx71bZSUQ
         neF4OwbXvoqsYJUgELrFlvenYJ0EW0+mOP3MHwX8Co5M5bkhS6sA8dTxnkqHSZ7JUhsI
         tR3z88AGxl0Um+RXioAHIPUOZFN/FJAdC9udZZP+6YgFMZypUvEnZStPPiWsdkcfWt8t
         hZK46R3F5jNiwp77ey0IZm26Q4N793bB1DyVIzVfskUxu8JRjVXndQ7xyFcwFRxo3PqV
         oR7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7ioVoN+TtUwUxRFG1jMfrbYZ/LUETYJIEopRnDFJTwU=;
        b=aJNZnn6Ccnx5cVi9DUu16ZlC+X0Y8dXmJg0sEgWEE+xFvvU2S+Edk93Mx6jkpb5yeD
         1I/68XXqnyakmFs9l2O5zHSlRJgstWkcG0W35Xwt4fz4LPBip1eQ4f8SJ/JIVxcJPFLm
         X83KHM7qe48YgV/MOrhzGSnTyOOrQOkUZVgb5cwJ9jyKUeu3s8f72fxFms88vlt5Dnei
         rZ55xGuy+5hxqj++U7tM8fx8tsfQOQeE/QtrcneQlfELNeV907WBF0RAlAcoIhTkPtLL
         3alRTQruWWUGixdKvJ1/KsZGxcl92UfadHb7AkvPL9ljv2wpFWgX0qJyAb1u5dowVbR+
         vw2Q==
X-Gm-Message-State: AOAM531rArGaq//9apNEzaMwMlWF9jEEMLaR1na2gIwTlAqq7/TMUy7o
	2VozI5usDC5SSAcm9y4m3cgf7W7HC9vMt4AR4C4=
X-Google-Smtp-Source: ABdhPJwYo8Ew2cKK7fzwUbVqNe3b02Vu4fjijplekSl9eUb5S6AHsFuXwTuDdxQYFq+jq1paQ6PPyzg9EvLPeFE7tFs=
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr4246668pjt.228.1608812668603;
 Thu, 24 Dec 2020 04:24:28 -0800 (PST)
MIME-Version: 1.0
References: <20201224010907.263125-1-djrscally@gmail.com> <20201224010907.263125-8-djrscally@gmail.com>
In-Reply-To: <20201224010907.263125-8-djrscally@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 24 Dec 2020 14:24:12 +0200
Message-ID: <CAHp75Vft7gg1AcKCEU+E74eB_ZMouHFd-8uZ7pcVj5CoJzZpvQ@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: NPZBR53RZ55JRIRD57Q4FGKBRSSFHZSG
X-Message-ID-Hash: NPZBR53RZ55JRIRD57Q4FGKBRSSFHZSG
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, devel@acpica.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tian Shu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, kieran.bingham+renesas@ideasonboard.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Marco Felsch <m.felsch@pengutronix.de>, niklas.soderlund+renesas@ragnatech.se, Stev
 e Longerbeam <slongerbeam@gmail.com>, "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 07/14] software_node: Add support for fwnode_graph*() family of functions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NPZBR53RZ55JRIRD57Q4FGKBRSSFHZSG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 24, 2020 at 3:14 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
>
> This implements the remaining .graph_* callbacks in the

.graph_* ==> ->graph_*() ?

> fwnode operations structure for the software nodes. That makes
> the fwnode_graph*() functions available in the drivers also

graph*() -> graph_*() ?

> when software nodes are used.
>
> The implementation tries to mimic the "OF graph" as much as
> possible, but there is no support for the "reg" device
> property. The ports will need to have the index in their
> name which starts with "port@" (for example "port@0", "port@1",

> ...)

Looks not good, perhaps move to the previous line, or move port@1 example here?

> and endpoints will use the index of the software node
> that is given to them during creation. The port nodes can
> also be grouped under a specially named "ports" subnode,
> just like in DT, if necessary.
>
> The remote-endpoints are reference properties under the
> endpoint nodes that are named "remote-endpoint".

Few nitpicks here and there, after addressing them,
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Co-developed-by: Daniel Scally <djrscally@gmail.com>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
> Changes in v3
>         - Changed software_node_get_next_endpoint() to drop the variable
>         named "old"
>         - Used the macros defined in 06/14 instead of magic numbers
>         - Added some comments to explain behaviour a little where it's unclear
>
>  drivers/base/swnode.c | 112 +++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 111 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/base/swnode.c b/drivers/base/swnode.c
> index 2d07eb04c6c8..ff690029060d 100644
> --- a/drivers/base/swnode.c
> +++ b/drivers/base/swnode.c
> @@ -540,6 +540,112 @@ software_node_get_reference_args(const struct fwnode_handle *fwnode,
>         return 0;
>  }
>
> +static struct fwnode_handle *
> +swnode_graph_find_next_port(const struct fwnode_handle *parent,
> +                           struct fwnode_handle *port)
> +{
> +       struct fwnode_handle *old = port;
> +
> +       while ((port = software_node_get_next_child(parent, old))) {
> +               /*
> +                * ports have naming style "port@n", so we search for children
> +                * that follow that convention (but without assuming anything
> +                * about the index number)
> +                */

> +               if (!strncmp(to_swnode(port)->node->name, "port@",

You may use here corresponding _FMT macro.

> +                            FWNODE_GRAPH_PORT_NAME_PREFIX_LEN))
> +                       return port;
> +               old = port;
> +       }
> +
> +       return NULL;
> +}
> +
> +static struct fwnode_handle *
> +software_node_graph_get_next_endpoint(const struct fwnode_handle *fwnode,
> +                                     struct fwnode_handle *endpoint)
> +{
> +       struct swnode *swnode = to_swnode(fwnode);
> +       struct fwnode_handle *parent;
> +       struct fwnode_handle *port;
> +
> +       if (!swnode)
> +               return NULL;
> +
> +       if (endpoint) {
> +               port = software_node_get_parent(endpoint);
> +               parent = software_node_get_parent(port);
> +       } else {
> +               parent = software_node_get_named_child_node(fwnode, "ports");
> +               if (!parent)
> +                       parent = software_node_get(&swnode->fwnode);
> +
> +               port = swnode_graph_find_next_port(parent, NULL);
> +       }
> +
> +       for (; port; port = swnode_graph_find_next_port(parent, port)) {
> +               endpoint = software_node_get_next_child(port, endpoint);
> +               if (endpoint) {
> +                       fwnode_handle_put(port);
> +                       break;
> +               }
> +       }
> +
> +       fwnode_handle_put(parent);
> +
> +       return endpoint;
> +}
> +
> +static struct fwnode_handle *
> +software_node_graph_get_remote_endpoint(const struct fwnode_handle *fwnode)
> +{
> +       struct swnode *swnode = to_swnode(fwnode);
> +       const struct software_node_ref_args *ref;
> +       const struct property_entry *prop;
> +
> +       if (!swnode)
> +               return NULL;
> +
> +       prop = property_entry_get(swnode->node->properties, "remote-endpoint");
> +       if (!prop || prop->type != DEV_PROP_REF || prop->is_inline)
> +               return NULL;
> +
> +       ref = prop->pointer;
> +
> +       return software_node_get(software_node_fwnode(ref[0].node));
> +}
> +
> +static struct fwnode_handle *
> +software_node_graph_get_port_parent(struct fwnode_handle *fwnode)
> +{
> +       struct swnode *swnode = to_swnode(fwnode);
> +
> +       swnode = swnode->parent;
> +       if (swnode && !strcmp(swnode->node->name, "ports"))
> +               swnode = swnode->parent;
> +
> +       return swnode ? software_node_get(&swnode->fwnode) : NULL;
> +}
> +
> +static int
> +software_node_graph_parse_endpoint(const struct fwnode_handle *fwnode,
> +                                  struct fwnode_endpoint *endpoint)
> +{
> +       struct swnode *swnode = to_swnode(fwnode);
> +       int ret;
> +
> +       /* Ports have naming style "port@n", we need to select the n */

> +       ret = kstrtou32(swnode->parent->node->name + FWNODE_GRAPH_PORT_NAME_PREFIX_LEN,

Maybe a temporary variable?

  unsigned int prefix_len = FWNODE_GRAPH_PORT_NAME_PREFIX_LEN;
  ...
  ret = kstrtou32(swnode->parent->node->name + prefix_len,


> +                       10, &endpoint->port);
> +       if (ret)
> +               return ret;
> +
> +       endpoint->id = swnode->id;
> +       endpoint->local_fwnode = fwnode;
> +
> +       return 0;
> +}
> +
>  static const struct fwnode_operations software_node_ops = {
>         .get = software_node_get,
>         .put = software_node_put,
> @@ -551,7 +657,11 @@ static const struct fwnode_operations software_node_ops = {
>         .get_parent = software_node_get_parent,
>         .get_next_child_node = software_node_get_next_child,
>         .get_named_child_node = software_node_get_named_child_node,
> -       .get_reference_args = software_node_get_reference_args
> +       .get_reference_args = software_node_get_reference_args,
> +       .graph_get_next_endpoint = software_node_graph_get_next_endpoint,
> +       .graph_get_remote_endpoint = software_node_graph_get_remote_endpoint,
> +       .graph_get_port_parent = software_node_graph_get_port_parent,
> +       .graph_parse_endpoint = software_node_graph_parse_endpoint,
>  };
>
>  /* -------------------------------------------------------------------------- */
> --
> 2.25.1
>


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
