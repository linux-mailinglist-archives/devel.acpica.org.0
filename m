Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 177604B90FB
	for <lists+devel-acpica@lfdr.de>; Wed, 16 Feb 2022 20:06:05 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CA2F1100EAB12;
	Wed, 16 Feb 2022 11:06:02 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.179; helo=mail-yw1-f179.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 7C422100EAB00
	for <devel@acpica.org>; Wed, 16 Feb 2022 11:05:59 -0800 (PST)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-2d07ae0b1c4so9256597b3.11
        for <devel@acpica.org>; Wed, 16 Feb 2022 11:05:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yLrFIsE9bo3p9BnVIL7Uc7sprqnSKm0YOW7fBIQdERM=;
        b=f+L2WbuNfqWSPNbVTtMJVRjSExHIEx2ZhBAJGHrxf3tVlvQEWp8Ar3YTN3taKo9Q05
         2zhVQf/PGBLXgZNNdWHneX7sb+D6qT7FtvWn7QUIu6Cgz5TdpBDxhIqpMDJe7XjspjCQ
         Ouiay46C0nM8PJiuGoICPDQYZNk3LUiFN+6uU+I4rcGK4+kO0m+LF1aHDxM3v6kqQ3pB
         Uyyor7jh8sDUqZoeVJ8mFTolqRNmgcdyWD1dhXbxZs7qPwu9KlQb+3MJo6rvNsK0n4QZ
         saq4C2Cm9PQ7gi3T/WcBIp53AagMQzydoTvRXUmaHmnGXfb4zRtU3Uqu2/8BJxBFUMJW
         Cfow==
X-Gm-Message-State: AOAM530zucw7I5b6r7VLZ7Vy929nOS+Oh3WmT9/8uvI676jUj8yqILH9
	aY4u99gz/Sz43aY8I08dlJn9N8ZMh09mJAz2gwU=
X-Google-Smtp-Source: ABdhPJyFOmiGOmRDkw8czUhuWEAUWZI3b6hfKAcdDSxdtm3oSTgs7z2noREt7vOvPl7JarLhxJEUxltkCz2WrL99cSU=
X-Received: by 2002:a0d:c244:0:b0:2d1:1fbb:180d with SMTP id
 e65-20020a0dc244000000b002d11fbb180dmr3902361ywd.196.1645038358332; Wed, 16
 Feb 2022 11:05:58 -0800 (PST)
MIME-Version: 1.0
References: <20220215174743.GA878920@embeddedor> <202202151016.C0471D6E@keescook>
 <20220215192110.GA883653@embeddedor> <Ygv8wY75hNqS7zO6@unreal> <20220215193221.GA884407@embeddedor>
In-Reply-To: <20220215193221.GA884407@embeddedor>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 16 Feb 2022 20:05:47 +0100
Message-ID: <CAJZ5v0jpAnQk+Hub6ue6t712RW+W0YBjb_gAcZZbUeuYMGv7mg@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID-Hash: V3I5OJMIOK5QFMJKBRT6Y37FNFPNIQDS
X-Message-ID-Hash: V3I5OJMIOK5QFMJKBRT6Y37FNFPNIQDS
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Kees Cook <keescook@chromium.org>, GR-QLogic-Storage-Upstream@marvell.com, linux-alpha@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-ia64@vger.kernel.org, linux-s390@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>, sparclinux@vger.kernel.org, linux-um@lists.infradead.org, linux-xtensa@linux-xtensa.org, Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>, nouveau <nouveau@lists.freedesktop.org>, coresight@lists.linaro.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>, netdev <netdev@vger.kernel.org>, Linux OMAP Mailing List <linux-omap@vger.kernel.org>, "open list:TARGET SUBSYSTEM" <linux-scsi@vger.kernel.org>, target-devel@vger.kernel.org, mpi3mr-linuxdrv.pdl@broadcom.com, linux-staging@lists.linux.dev, linux-rpi-kernel@lists.infradead.org
 , sparmaintainer@unisys.com, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, Ext4 Developers List <linux-ext4@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, linux-arch <linux-arch@vger.kernel.org>, Linux Memory Management List <linux-mm@kvack.org>, greybus-dev@lists.linaro.org, linux-i3c@lists.infradead.org, linux-rdma@vger.kernel.org, "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>, "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <alsa-devel@alsa-project.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, linux-perf-users@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH][next] treewide: Replace zero-length arrays with flexible-array members
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/V3I5OJMIOK5QFMJKBRT6Y37FNFPNIQDS/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 15, 2022 at 8:24 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> On Tue, Feb 15, 2022 at 09:19:29PM +0200, Leon Romanovsky wrote:
> > On Tue, Feb 15, 2022 at 01:21:10PM -0600, Gustavo A. R. Silva wrote:
> > > On Tue, Feb 15, 2022 at 10:17:40AM -0800, Kees Cook wrote:
> > > > On Tue, Feb 15, 2022 at 11:47:43AM -0600, Gustavo A. R. Silva wrote:
> > > >
> > > > These all look trivially correct to me. Only two didn't have the end of
> > > > the struct visible in the patch, and checking those showed them to be
> > > > trailing members as well, so:
> > > >
> > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > >
> > > I'll add this to my -next tree.
> >
> > I would like to ask you to send mlx5 patch separately to netdev. We are working
> > to delete that file completely and prefer to avoid from unnecessary merge conflicts.
>
> Oh OK. Sure thing; I will do so.

Can you also send the ACPI patch separately, please?

We would like to route it through the upstream ACPICA code base.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
