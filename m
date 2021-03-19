Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8981B342546
	for <lists+devel-acpica@lfdr.de>; Fri, 19 Mar 2021 19:51:17 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 42767100F2253;
	Fri, 19 Mar 2021 11:51:15 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.43; helo=mail-ot1-f43.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id DADD7100F2253
	for <devel@acpica.org>; Fri, 19 Mar 2021 11:51:12 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id k14-20020a9d7dce0000b02901b866632f29so9500512otn.1
        for <devel@acpica.org>; Fri, 19 Mar 2021 11:51:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=29ZEanNYNzIk58a8Y3Rva+TVwajoUYncNK5jliynVQM=;
        b=LOj4oC6uRBnyUP1J9rK+Cndf7kOPLlThz2H1wijFMjkcAKO0h7FNBOsj1E4YyR9Xpd
         rfMEfQPCp6pcowJF2eoHP/phrqrx3rf2PDYfLvAW2j+bevu02Z9Md63LQMP9cA9Nxokh
         PVgAu/s/G0jWxx1UxK3+wn1G3Wp/ywyi2Su1LIm3nGSnPpKxYC0XeWd5454m7XX7K+N0
         nuwSeTxEz5ep9Z/iexc+LEyVaYNK+88LRrPT0VlUU1c8QIut/EknsDxCYd3kPIcxkDB4
         3k9T6y1/hsfAao+ve3g5hFKTbmHkAkOsehifQPclyJT8HhRiNaDimcAafIQl0gFVSxQ7
         rn4w==
X-Gm-Message-State: AOAM530tO1mGvtod7s/a6Et+ahXKqCcUp4YwgDRYTgN/Hn0Agaom9eY1
	o9y6V2aQt6X13OJACVnVaoyuSLUvmNqsZBfUryk=
X-Google-Smtp-Source: ABdhPJz6cZGHWn7lejUkF5f78hrcjvURmosbcxZ2eeIEDki84Urf4wI1sn5ogAhmO1vtEP+hgkvT0td5PAS/r8lgrIw=
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr2244474otr.321.1616179872125;
 Fri, 19 Mar 2021 11:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210319183234.23629-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210319183234.23629-1-andriy.shevchenko@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 19 Mar 2021 19:51:00 +0100
Message-ID: <CAJZ5v0jihmos4gza_+0MzGsUfxJJ-5LGBOURVebdGsE_RuPhFA@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID-Hash: UAMPFHKX5CX7AHOX3G4IMWPUTFFPEEFE
X-Message-ID-Hash: UAMPFHKX5CX7AHOX3G4IMWPUTFFPEEFE
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPI: scan: Use unique number for instance_no
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UAMPFHKX5CX7AHOX3G4IMWPUTFFPEEFE/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 19, 2021 at 7:33 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> Current mechanism of incrementing and decrementing plain integer
> to get a next free instance_no when creating an ACPI device is buggy.
>
> The simple integer and operations line increment and decrement
> on top of it can't cover the possible gaps during run time. The
> arbitrary instantiation and elimination of the devices is racy

But it isn't racy AFAICS.  It always happens under acpi_device_lock().

> and after a couple of iterations with unequal amount of devices
> being added and removed we may reproduce a bug:
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
