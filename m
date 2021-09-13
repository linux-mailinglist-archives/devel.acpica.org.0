Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D5E408AF4
	for <lists+devel-acpica@lfdr.de>; Mon, 13 Sep 2021 14:20:59 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 703AE100EBB6E;
	Mon, 13 Sep 2021 05:20:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.171; helo=mail-oi1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 50868100EBB68
	for <devel@acpica.org>; Mon, 13 Sep 2021 05:20:52 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id w19so13731429oik.10
        for <devel@acpica.org>; Mon, 13 Sep 2021 05:20:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6LkH8BDThjwDkIUVEv4G7HiQl/Op2m1UQzXKeVLvZVY=;
        b=mQnVyroHDZEyKGobiubaGVFg8t/obBx6UN6zK2ti0og7/QP+6ldyqUzWj9pgqxpGVq
         7tEPUKCZRiSYOmzDwnSOCulEpIbI6HPdFXLX+zueRi61RUVKukC440pWmL9NsfQRg74s
         l92vqkpnfRHLfT5hQH7140pHhqqd4+dTD9boi2p6Ul0AI6in7fYlWc/fC37Xj1/L9Tif
         Cjc7u9oiRtr5qyFsFV6RTttWuUmdGbIELuJItyftfWB+prM6bILNqAn8vY7G4XfNq4Rj
         18WLSNsPgykdUgPE9AJdBcY8tcpOTMip54EuDgcUcNx0mJvP4rUdqU1PK7WQkntFPVec
         6OpQ==
X-Gm-Message-State: AOAM532xqclK2eaeet0iBvmt7PsEanxLyhcG4TOFd5IZ3GptSJgOz2j7
	TuWh5S7fTth48uPPnwsp1QErQtfcK9wmVF0aTFM=
X-Google-Smtp-Source: ABdhPJx/9hiTq1jXolVCkmhHWNiQy0NxIAlRexLuKACbIOgNqoBUilaDDEqAUxmlsrQtCOTDiFmH1XeeM81nR7ywEYk=
X-Received: by 2002:aca:afcd:: with SMTP id y196mr7489386oie.71.1631535651501;
 Mon, 13 Sep 2021 05:20:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210909120116.150912-1-sashal@kernel.org> <20210909120116.150912-24-sashal@kernel.org>
 <20210910074535.GA454@amd> <YTy/etsK39d/+Zhh@sashalap>
In-Reply-To: <YTy/etsK39d/+Zhh@sashalap>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 13 Sep 2021 14:20:35 +0200
Message-ID: <CAJZ5v0hze08S1ORK7Pwa3N5TBX5Jj=jeKqye=wv7dpzDArss3Q@mail.gmail.com>
To: Sasha Levin <sashal@kernel.org>
Message-ID-Hash: ZU6PE55LU7JLPXQIGMWR4RJONBYEOFOS
X-Message-ID-Hash: ZU6PE55LU7JLPXQIGMWR4RJONBYEOFOS
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pavel Machek <pavel@denx.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Stable <stable@vger.kernel.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH AUTOSEL 4.4 24/35] ACPICA: iASL: Fix for WPBT table with no command-line arguments
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZU6PE55LU7JLPXQIGMWR4RJONBYEOFOS/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Sep 11, 2021 at 4:38 PM Sasha Levin <sashal@kernel.org> wrote:
>
> On Fri, Sep 10, 2021 at 09:45:36AM +0200, Pavel Machek wrote:
> >Hi!
> >
> >> Handle the case where the Command-line Arguments table field
> >> does not exist.
> >>
> >> ACPICA commit d6487164497fda170a1b1453c5d58f2be7c873d6
> >
> >I'm not sure what is going on here, but adding unused definition will
> >not make any difference for 4.4 users, so we don't need this in
> >-stable...?
>
> Ugh, dropped, thanks!
>
> I wonder what this patch actually does upstream.

There are AML compiler changes in it, but the compiler is not included
into the Linux kernel.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
