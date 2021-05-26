Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AC4391273
	for <lists+devel-acpica@lfdr.de>; Wed, 26 May 2021 10:35:33 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 80278100ED49E;
	Wed, 26 May 2021 01:35:31 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 14DBA100ED497
	for <devel@acpica.org>; Wed, 26 May 2021 01:35:29 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id q67so410651pfb.4
        for <devel@acpica.org>; Wed, 26 May 2021 01:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7ovUdr/UfZiAvf5V9cZ5izxdltN0dsbmxECPugreCcc=;
        b=PlV4lm9zksTMWU2VF5e2dObRzVzujrnJeTPmvV2yo/TmK8mhjalW4d8kThw2M+DgbL
         dLpujD7+2LpXhQP3oN1fDf+j7dakOa3jEMenKqxZNxTACz4B98oOR++aCmUwm8yHwhn1
         6NJTqXGLglJ3z9dyhRGnvLQORBldoNwN9U9eIOLCGmbstObrgLIrODe9DOPazCt6Cc08
         4IWru3TxFkQt3aVbqfV3uX6zVCLycJ4UpdKBAvTD1VhJnq1B6pudwW3lwM4NN+RJUS90
         iZeXv9N0B5rdJhARItnBiVcaukutRa8w2KqT6zPsDTgbrp7iiAim0MMMOpUWgfrVNGxO
         kV2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7ovUdr/UfZiAvf5V9cZ5izxdltN0dsbmxECPugreCcc=;
        b=VyhxNf7sgx15bT3onOao6i8MciCW7dbnZUao90ls/pZ+JZNsgpg6Cxe4EfAjEW45re
         LwWF7CAH8PZY3TecfdkGaedvIxzdQi7wBZbRqylN0XJVRvOBo8XScOdf8unR+ofFimDU
         xBFCTfpd+VwtLED73djdcLzXQYtSj/P4989Y2pjlUxFLvmJqsnrN0bcqaT+sFuLfBjfD
         F00TWtWuQ+O1KsdIE1qTzQlAnZT6Cp15Io6WYTd2n7e4m1d/ZkuU85+u+W82Lxil1NoP
         N+0hKm3U5aE93ZCM+PwxFEMt82q0xbOaydN5yP50QeeEpxzkRP09RViWPL84GuPL8dm0
         niDw==
X-Gm-Message-State: AOAM533za52uO+jIIPZAEakPFmMW7lUbxAF/Fv6b/hR88Gqvby6qy8oJ
	0Y9g/h5SjQJMfrq+H7F2E2XECKi504t/rghJE7M=
X-Google-Smtp-Source: ABdhPJykHhYQRw2KLnTaZd2rOvYqPSCPl/TfNeQJ6g8tjppPtu4A7EllMGHNwfM2YQFThKaa1GniRjEN2zy5ZGeU7sk=
X-Received: by 2002:a63:b507:: with SMTP id y7mr16323273pge.74.1622018129671;
 Wed, 26 May 2021 01:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210519210253.3578025-1-andy.shevchenko@gmail.com>
 <CAJZ5v0in=qEtVULLF=RwBTiFqiRK-DyPfD4F6uUAqeUfPFB8QQ@mail.gmail.com>
 <CAJZ5v0hsDpGtLHPQvcnof3c1LBnhoZSwWyHJdj1mOov9gV_W8A@mail.gmail.com> <50903d09-96f8-0dc9-a1f7-21bf1543b15a@gmail.com>
In-Reply-To: <50903d09-96f8-0dc9-a1f7-21bf1543b15a@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 26 May 2021 11:35:13 +0300
Message-ID: <CAHp75VeON6netzJAw0YR=wQBBabvQNpqSpY8MwDSxsTabpMZow@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>
Message-ID-Hash: DZTST4GVOBH25FDGODM7ASUDTVI57TH7
X-Message-ID-Hash: DZTST4GVOBH25FDGODM7ASUDTVI57TH7
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J. Wysocki" <rafael@kernel.org>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v1 1/1] ACPI: utils: Fix reference counting in for_each_acpi_dev_match()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/DZTST4GVOBH25FDGODM7ASUDTVI57TH7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 26, 2021 at 1:29 AM Daniel Scally <djrscally@gmail.com> wrote:
> On 20/05/2021 20:40, Rafael J. Wysocki wrote:
> > On Thu, May 20, 2021 at 9:13 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> >> On Wed, May 19, 2021 at 11:19 PM Andy Shevchenko
> >> <andy.shevchenko@gmail.com> wrote:
> >>> Currently it's possible to iterate over the dangling pointer in case the device
> >>> suddenly disappears. This may happen becase callers put it at the end of a loop.
> >>>
> >>> Instead, let's move that call inside acpi_dev_get_next_match_dev().
> >> Not really.
> > OK, I see what you want to achieve and the macro is actually buggy,
> > because it leaves unbalanced references behind.
>
>
> Yeah; I guess the originally intended use (which was "get all these
> devices") doesn't really tally with the naming or with the operation of
> similar functions in the kernel like the fwnode_handle ops; sorry about
> that. Anyway; I think Andy's fix is the right way to do it, so the
> calling code's responsible for holding onto a reference if it wants to
> keep it.

I think we need to postpone the fix till v5.14-rc1 is out. It appears
that some code has been changed in EFI and media subsystems so that
patch will be in conflict with.


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
