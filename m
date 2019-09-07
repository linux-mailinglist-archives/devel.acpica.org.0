Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B4AC958
	for <lists+devel-acpica@lfdr.de>; Sat,  7 Sep 2019 23:07:58 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 6C500202B75E0;
	Sat,  7 Sep 2019 14:08:35 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.167.196; helo=mail-oi1-f196.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 5AD8D202B75DB
 for <devel@acpica.org>; Sat,  7 Sep 2019 14:08:34 -0700 (PDT)
Received: by mail-oi1-f196.google.com with SMTP id w6so7766582oie.11
 for <devel@acpica.org>; Sat, 07 Sep 2019 14:07:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lxihL36gTuIiKNJx4Op/WHeQVZ11JcB3rmyLaJHmdCo=;
 b=PkOODBk7eqkHPMjrA118KXYBIgTPtSjJr4vMp8coRpOAY4do00esYy6LzvYud8nBlu
 JhZtkdlXvRD9M3reTuyobxReuRaDPwY/ERRpqrKQm7JBAoCsUOTECcoaRoiZYILyS7wW
 PeJC4A1g3+2ENe4AXUuNs0xSAdmSAiPxyHqa3jsZ3DgwRpq9Dg85IuhGObgjLvp6ynK3
 5PV/FQzq2L4oVDACE8SBckLPfq3GkeEZAtFHigccz7X1jfvKolBhLSR3CgpvUQMk9oy6
 Yqh4akj+E+ajLjP8mnebuR3BWrF+L8wKFPr8qzhbvBWg1Ys/WT8ujJRLE1MZK3N0tPL8
 NO2w==
X-Gm-Message-State: APjAAAVi5MLJT1V7bu+uj5MMOgfvtB0uFdpNRvDMrOXlv2XOyuy0p72j
 RxT2UaugPN0/qOoL4PRU+/nPeCWQ2hkJs3zHlso=
X-Google-Smtp-Source: APXvYqxw6Q7ZI39fbj1Yg06z2Zfw+1ml3g9QHcrVcWjLu638sWzxbHZQyQ71pyD0sHmJVs/hoPWxndejKSyVjZ8RsHk=
X-Received: by 2002:aca:da86:: with SMTP id
 r128mr12570871oig.103.1567890473848; 
 Sat, 07 Sep 2019 14:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <201909070020.yR8k4sTf%lkp@intel.com>
 <847405da-8a45-653b-d544-25b58ea48db1@oracle.com>
In-Reply-To: <847405da-8a45-653b-d544-25b58ea48db1@oracle.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 7 Sep 2019 23:07:39 +0200
Message-ID: <CAJZ5v0i7Y6DSuYzh0H4n+S8Pd2YAqVZTM+0VCamzW9CBcqFs0g@mail.gmail.com>
To: Joao Martins <joao.m.martins@oracle.com>
Subject: Re: [Devel] [pm:bleeding-edge 175/181]
 drivers/cpuidle/driver.c:270:4: error: 'cpuidle_prev_governor' undeclared;
 did you mean 'cpuidle_find_governor'?
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: kbuild test robot <lkp@intel.com>, Linux PM <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>, kbuild-all@01.org,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Fri, Sep 6, 2019 at 7:39 PM Joao Martins <joao.m.martins@oracle.com> wrote:
>
> On 9/6/19 5:44 PM, kbuild test robot wrote:
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> > head:   79f0d67a241f0583b994c73437caa54a4e942737
> > commit: 73d2bcced00671c2b724a31c3a4b3401c3e278d0 [175/181] cpuidle: allow governor switch on cpuidle_register_driver()
> > config: arm-defconfig (attached as .config)
> > compiler: arm-linux-gnueabi-gcc (GCC) 7.4.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 73d2bcced00671c2b724a31c3a4b3401c3e278d0
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.4.0 make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    drivers/cpuidle/driver.c: In function 'cpuidle_register_driver':
> >>> drivers/cpuidle/driver.c:270:4: error: 'cpuidle_prev_governor' undeclared (first use in this function); did you mean 'cpuidle_find_governor'?
> >        cpuidle_prev_governor = cpuidle_curr_governor;
> >        ^~~~~~~~~~~~~~~~~~~~~
> >        cpuidle_find_governor
> >    drivers/cpuidle/driver.c:270:4: note: each undeclared identifier is reported only once for each function it appears in
> >    drivers/cpuidle/driver.c: In function 'cpuidle_unregister_driver':
> >    drivers/cpuidle/driver.c:301:6: error: 'cpuidle_prev_governor' undeclared (first use in this function); did you mean 'cpuidle_find_governor'?
> >      if (cpuidle_prev_governor) {
> >          ^~~~~~~~~~~~~~~~~~~~~
> >          cpuidle_find_governor
> >
> Sorry, didn't build-test with CONFIG_CPU_IDLE_MULTIPLE_DRIVERS=y
>
> Rafael, should I take this message that you queued the series (and thus I submit
> a follow up fixing this), or I can just submit a v3 of this particular series?

Please submit a v3.  Thanks!
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
