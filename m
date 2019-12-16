Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59912120878
	for <lists+devel-acpica@lfdr.de>; Mon, 16 Dec 2019 15:22:00 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 18D1F10097F1E;
	Mon, 16 Dec 2019 06:25:21 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.194; helo=mail-oi1-f194.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 52DC010097F1A
	for <devel@acpica.org>; Mon, 16 Dec 2019 06:25:19 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id a67so3407777oib.6
        for <devel@acpica.org>; Mon, 16 Dec 2019 06:21:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SaHjW4n0zvwoawguKMSzzinC58G2gxyriauO/X4GMCM=;
        b=X9bVRe72vBCtID82gnomiUuwHmAlk1wVxrAtipDf09PXo8VgMPUdiDdfqwSk/jAENP
         9xVMvdMTwq7291epFgHckB2Wnkye7ltvfuplRIvC4/GCv191Skf4Ijnfu4IfmTqZQgNq
         nLRqGHlfhDe3dDcqA5fGzpmFD85E2ngAcCROahB7JeyQ1xH4UhvurW2E78HF3Tm99orq
         lgL45K+9wqqHFyE6Oh+RuQcuDG5CRLQXY5cferipVG7HJZjH7tiMpX+9S8BXK+tGn2Fg
         /YXeB3kS/pq+TgZt8LRzIekFuM3sgoHiNVLsApJfsmdhWJXRWUybuRuXnmyNCuV8F8vy
         8AIQ==
X-Gm-Message-State: APjAAAWe0kXQul0FpteZUuXp+L6cIOKFXAj2ninMT79QR/0VgXkMewsc
	jz5DFg3jY7xaJazYxV/t/q4v0Hh6eL/YaKp3Uko=
X-Google-Smtp-Source: APXvYqx7e1cUSJQewGZjGCWSnzYCUwFNC6T/ar6UamMUtChiL1yRn9RrIJ5esh13a0l7XzpmylQ57sR31ILTFk2gVgU=
X-Received: by 2002:a05:6808:1c5:: with SMTP id x5mr9945222oic.57.1576506116067;
 Mon, 16 Dec 2019 06:21:56 -0800 (PST)
MIME-Version: 1.0
References: <201912162148.hTRbNfPp%lkp@intel.com>
In-Reply-To: <201912162148.hTRbNfPp%lkp@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 16 Dec 2019 15:21:45 +0100
Message-ID: <CAJZ5v0iTOSnvZqKuL7gy7QBtdHxcM7wPS8qdgbvs6+sQxZX5yg@mail.gmail.com>
To: kbuild test robot <lkp@intel.com>
Message-ID-Hash: NRUD4XYQ6ZTFYTRCOYKBAPQGZZTMQO7E
X-Message-ID-Hash: NRUD4XYQ6ZTFYTRCOYKBAPQGZZTMQO7E
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, kbuild-all@lists.01.org, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [pm:intel_idle+acpi 4/10] acpi_processor.c:undefined reference to `acpi_processor_ffh_cstate_probe'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NRUD4XYQ6ZTFYTRCOYKBAPQGZZTMQO7E/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Dec 16, 2019 at 2:26 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git intel_idle+acpi
> head:   dcedc03145600b929a32acb85b212131b079bc46
> commit: 0300cf31f061e6287810c894337f29df2e200e2d [4/10] ACPI: processor: Export acpi_processor_evaluate_cst()

Outdated.  Please stop sending these.

> config: x86_64-randconfig-b002-20191216 (attached as .config)
> compiler: gcc-7 (Debian 7.5.0-1) 7.5.0
> reproduce:
>         git checkout 0300cf31f061e6287810c894337f29df2e200e2d
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    ld: drivers/acpi/acpi_processor.o: in function `acpi_processor_evaluate_cst':
> >> acpi_processor.c:(.text+0x542): undefined reference to `acpi_processor_ffh_cstate_probe'
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
