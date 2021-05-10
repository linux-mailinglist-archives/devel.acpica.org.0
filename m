Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A41CA37955C
	for <lists+devel-acpica@lfdr.de>; Mon, 10 May 2021 19:23:17 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6F8CD100EBB61;
	Mon, 10 May 2021 10:23:16 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.48; helo=mail-ot1-f48.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8A225100EBBCB
	for <devel@acpica.org>; Mon, 10 May 2021 10:23:14 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id t4-20020a05683014c4b02902ed26dd7a60so4966696otq.7
        for <devel@acpica.org>; Mon, 10 May 2021 10:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YYGVy1dBjcY+gobayJq/B1W7IwBp6P5SIbqRmJkMD80=;
        b=ZhFG2v76xVYvsJrjFgec5jDcBbXBS/uMZWv+HmofU4Qu26HVFBzDrGB9WRBUzy4S5n
         jn1YfcUGa5cUkQBv11l4L/z1AqJYLiElJL+V28w+OEUBrqk8ozzfYqOr2bpQbCHPRbd9
         /rJ5wJtAD3h7+JbdShAgD0/wMDtgjVFh6sf11zxqhtvTWXGfzveCUIxAs4QCZcXa3byG
         b9jEXRoFLH7d6qK1oSL7AQypoHLDrLfdwGSPoY9Cx8cd0p9nTqKREwe4RzHfK8FtZ4Ry
         g5Ccz90PwYF8M8LFwC/V7eEU0mPu8UT9UgNQHNFDxpapbAsEQM832SXCB2NLi2A92NKF
         Zptw==
X-Gm-Message-State: AOAM532Nai6UTayRX6oX3Xnv9Bsi7+vC+/aTvJFSmgH8VUBKGQtK/JOZ
	WicGxOJ06ZO9cs4XfeuYM+oIeixa9vg6Dfeqszs=
X-Google-Smtp-Source: ABdhPJxbzEB1QZKZbR1O/LrXJZYYXc+/vJ4XxWgcDzo62GrJqXnyD1XoUJeYeVZmodAXbzZu4T6aRLhP7s3RqSYSh70=
X-Received: by 2002:a9d:5a7:: with SMTP id 36mr22485830otd.321.1620667393829;
 Mon, 10 May 2021 10:23:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210426023941.729334-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <20210426023941.729334-4-sathyanarayanan.kuppuswamy@linux.intel.com>
 <97e14cdc-ea98-18b8-0c89-db52440a7716@linux.intel.com> <CAJZ5v0gsqyXSr+Kw603333PZ=gnsBizNhyLAcu588OChEHT=AQ@mail.gmail.com>
 <4fa40e7a-bcb2-db0f-8dc5-28728b14377d@linux.intel.com>
In-Reply-To: <4fa40e7a-bcb2-db0f-8dc5-28728b14377d@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 10 May 2021 19:23:02 +0200
Message-ID: <CAJZ5v0jMo9+ohUJ_=KHL_QwEo5GmAn_fMkng==Zmy-AJ=MPRog@mail.gmail.com>
To: "Kuppuswamy, Sathyanarayanan" <sathyanarayanan.kuppuswamy@linux.intel.com>
Message-ID-Hash: 4JRAJ6BZBLGNOFUZP3RJSPGPWILREGNW
X-Message-ID-Hash: 4JRAJ6BZBLGNOFUZP3RJSPGPWILREGNW
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Rafael J Wysocki <rjw@rjwysocki.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>, Sean Christopherson <sean.j.christopherson@intel.com>, Andi Kleen <ak@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 3/3] x86/acpi, x86/boot: Add multiprocessor wake-up support
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4JRAJ6BZBLGNOFUZP3RJSPGPWILREGNW/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 10, 2021 at 7:10 PM Kuppuswamy, Sathyanarayanan
<sathyanarayanan.kuppuswamy@linux.intel.com> wrote:
>
>
>
> On 5/10/21 9:55 AM, Rafael J. Wysocki wrote:
> > I'm not sure how my comment regarding the fact that for a given CPU
> > this function is only usable once has been addressed.
> >
> > While it may not be a practical concern in the use case that you are
> > after (TDX), this is a generic mechanism and it needs to cover other
> > possible usage scenarios.
>
> For the same CPU, if we try to use mailbox again, firmware will not
> respond to it.

Well, theoretically, but what if it checks the mailbox every time for
all CPUs?  Or similar?

> So the command will timeout and return error.

If the firmware behaves as expected, but what if it doesn't?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
