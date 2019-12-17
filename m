Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE42122696
	for <lists+devel-acpica@lfdr.de>; Tue, 17 Dec 2019 09:23:32 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9E15D10113637;
	Tue, 17 Dec 2019 00:26:52 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.67; helo=mail-ot1-f67.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id ACDAF1011351D
	for <devel@acpica.org>; Tue, 17 Dec 2019 00:26:49 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id b18so4155974otp.0
        for <devel@acpica.org>; Tue, 17 Dec 2019 00:23:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JMeW8IXOTJKgWI7xudgMEupdZiEmd53J2UWjz91+kjc=;
        b=KB4soB+IyDUm8kY5KMLTEJbmFcYSSUcq98QS5N59n5GkfjLEfirvWS4NY/o3Fp1Trk
         +T9ASm8BOr9/fCuwf5rK6uFvWyYTFwlJVhcCSQFWVB9gJ72GwDfPL+gr16eTNmpB8z2q
         4NfOguu+xX9JkNWJFhCabhm9rsqxf3gD5RleFoUgDf/lVEg2DvOcW0JfNNh6PodRguYk
         x2XoWOh+sX/Nw6uQio/FTjPBi2m3W5U9P7jGY/bB+1uy5/E1etpdJocQMrUCRhvb/ZNv
         NeYhOAK8yyuM5VLU/Ref9xIi3D/+U3nsM6Y/tiIEfZ5TU9fcagyZo4QY+/TKOVjF9MTS
         r1tA==
X-Gm-Message-State: APjAAAXC/S0QO3kwRUpGqu40+9cJYbDnztdZ6TKjYqN0YIXHSnfIDXe/
	YxpUWl3NasljkG/p0buL5WKEn+9nwjQH4cyMUVg=
X-Google-Smtp-Source: APXvYqwU6UFXX7ZWRxkmNxJknYkkQQJcxP69ST8Knq9cN3tyhoz7l2BTSbOZP1Sd1lP9XXAK5Dfdz1cAJ0+8CWWQ6uA=
X-Received: by 2002:a05:6830:4b9:: with SMTP id l25mr37484806otd.266.1576571006380;
 Tue, 17 Dec 2019 00:23:26 -0800 (PST)
MIME-Version: 1.0
References: <201912162148.hTRbNfPp%lkp@intel.com> <CAJZ5v0iTOSnvZqKuL7gy7QBtdHxcM7wPS8qdgbvs6+sQxZX5yg@mail.gmail.com>
 <831EE4E5E37DCC428EB295A351E66249522A215D@shsmsx102.ccr.corp.intel.com>
In-Reply-To: <831EE4E5E37DCC428EB295A351E66249522A215D@shsmsx102.ccr.corp.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 17 Dec 2019 09:23:14 +0100
Message-ID: <CAJZ5v0gFbjbqTOD845RjzpJQXQY=ko=9GxwVxoqw0fPccfig4w@mail.gmail.com>
To: "Li, Philip" <philip.li@intel.com>
Message-ID-Hash: 6HTBJHCHUEZV7KGYHUM6IHIGRBMFSUVM
X-Message-ID-Hash: 6HTBJHCHUEZV7KGYHUM6IHIGRBMFSUVM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, lkp <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [kbuild-all] Re: [pm:intel_idle+acpi 4/10] acpi_processor.c:undefined reference to `acpi_processor_ffh_cstate_probe'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6HTBJHCHUEZV7KGYHUM6IHIGRBMFSUVM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 17, 2019 at 1:31 AM Li, Philip <philip.li@intel.com> wrote:
>
> > Subject: [kbuild-all] Re: [pm:intel_idle+acpi 4/10] acpi_processor.c:undefined
> > reference to `acpi_processor_ffh_cstate_probe'
> >
> > On Mon, Dec 16, 2019 at 2:26 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> > intel_idle+acpi
> > > head:   dcedc03145600b929a32acb85b212131b079bc46
> > > commit: 0300cf31f061e6287810c894337f29df2e200e2d [4/10] ACPI: processor:
> > Export acpi_processor_evaluate_cst()
> >
> > Outdated.  Please stop sending these.
> thanks for the input Rafael, we will ignore the following tests on it.

Well, the branch has been rebased since then and effectively it is a new one.

My point is that if something like that happens, the script should
discard the old branch and pull the new one from scratch.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
