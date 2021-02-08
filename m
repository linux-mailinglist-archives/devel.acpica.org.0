Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C981B3132DE
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Feb 2021 14:01:18 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2CB55100F2240;
	Mon,  8 Feb 2021 05:01:17 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.171; helo=mail-oi1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 46623100EB35F
	for <devel@acpica.org>; Mon,  8 Feb 2021 05:01:15 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id r75so1855120oie.11
        for <devel@acpica.org>; Mon, 08 Feb 2021 05:01:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gvxc4VC9l/IR/i8ANGFEq/fIycfe1+oz586mHeCkXyY=;
        b=dCiZAylnnL2w9t2kwtHpiCNkUqsHj//VBG6dNN+mQIBFb4h3cyvZDayhFO9bb0QkVy
         MthcDRXrZJMgSUgCzkGYpG4iO+8HYDSe1efjceSgQP6VgpBanjzSyyka3exZ7u99Dofj
         MUZtdBGhsyFVgb7qH7oV1YOSP7Epy5QPvexQUjhR1sqBs9DDH0xP9GDZu02+V0fr1xtn
         86Xtds43DalqrVzrqa3689rQcgpC8UvMaQ5LvhosL91mzvsYiPCv9K58Putd4iHF8gfp
         n74UjW5rxrTN/g8ZFNaRkPvaD1ZBK0y/fsQRNfC4Z+50NLXO0RiDZGo1nowL/3krE337
         2GBg==
X-Gm-Message-State: AOAM532s/MLPcMX19nengkLguZjaNCA4HrFxhbSn/Ft9pfJaMsXzuuTu
	AUS1/qQ77SMksM1SRAl4pJXoNl3rYbEBmGED8kg=
X-Google-Smtp-Source: ABdhPJwcBBneby+U8ATEJaNGJS/dzjUdsjmsd0GNONhJ+maNLDnptpwdadyvK1u/ZgGgN2gMddShxT5nyiPV0jERB0o=
X-Received: by 2002:a54:400b:: with SMTP id x11mr4489172oie.71.1612789274272;
 Mon, 08 Feb 2021 05:01:14 -0800 (PST)
MIME-Version: 1.0
References: <20210206084937.20853-1-ardb@kernel.org> <20210206104854.GC27503@dragon>
In-Reply-To: <20210206104854.GC27503@dragon>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 8 Feb 2021 14:00:58 +0100
Message-ID: <CAJZ5v0hMJnaHhUYib9d3yQ1CMHLE+Hu3UM4VoN=dOiyriTPmOw@mail.gmail.com>
To: Shawn Guo <shawn.guo@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: VHLCT6E5NGWYOWJ56A5OU2I752R6BUHO
X-Message-ID-Hash: VHLCT6E5NGWYOWJ56A5OU2I752R6BUHO
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux ARM <linux-arm-kernel@lists.infradead.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] Revert "ACPICA: Interpreter: fix memory leak by using existing buffer"
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/VHLCT6E5NGWYOWJ56A5OU2I752R6BUHO/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Feb 6, 2021 at 11:49 AM Shawn Guo <shawn.guo@linaro.org> wrote:
>
> On Sat, Feb 06, 2021 at 09:49:37AM +0100, Ard Biesheuvel wrote:
> > This reverts commit 32cf1a12cad43358e47dac8014379c2f33dfbed4.
> >
> > The 'exisitng buffer' in this case is the firmware provided table, and
> > we should not modify that in place. This fixes a crash on arm64 with
> > initrd table overrides, in which case the DSDT is not mapped with
> > read/write permissions.
> >
> > Cc: Robert Moore <robert.moore@intel.com>
> > Cc: Erik Kaneda <erik.kaneda@intel.com>
> > Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
> > Cc: Len Brown <lenb@kernel.org>
> > Reported-by: Shawn Guo <shawn.guo@linaro.org>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> Tested-by: Shawn Guo <shawn.guo@linaro.org>

Applied, thanks!

Erik, the upstream will need to sync up with this revert.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
