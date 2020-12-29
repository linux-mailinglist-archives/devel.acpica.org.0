Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C72162E71C4
	for <lists+devel-acpica@lfdr.de>; Tue, 29 Dec 2020 16:23:56 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9F214100ED4BC;
	Tue, 29 Dec 2020 07:23:54 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.174; helo=mail-oi1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 52D38100ED4AE
	for <devel@acpica.org>; Tue, 29 Dec 2020 07:23:52 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id p5so14902787oif.7
        for <devel@acpica.org>; Tue, 29 Dec 2020 07:23:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RBJgLUxrrIIeWckdaZ1KmYo7l7pnSTRV7mAG4e50Ne0=;
        b=LGBg7DkRsxvFWJsCP/wfqm1u6C7M/aBeN5eo4KbabdASFE402MM/itYr+0O9GM+mUL
         3DKcjqx8lCo90gLLE6OTZNRxCX1DS9n8xp/i7Gjtu4Z5Yt1rwGAssmjKrpYhbUUmycRQ
         uu+1S1YNgvN6KTIS66gBwR4sXI6txbExSPHWXIP05hmwfIZ59KDU4dAkh6i5SAhRgLhe
         BMSTP/ku+/VLwWrAR64KkHG/q0bLeB1WuMtLVzOaQFjcZ72nkN6jhs0PniUVqBY6h42v
         iZv1DqNqThDBEd+3FPJAeC96LZalzfAysrKqHHIPvKr5sZX8xHoR3FSGFh2rUYHvZTD0
         //pg==
X-Gm-Message-State: AOAM53132cWI5aDAZDbqNlKG78Pd3vPsHqFnE6167DPA2uwba18u58uy
	imsOc+iDhPkd+MZ9Pwho+lfZUL0lsbzTjrxcI2Q=
X-Google-Smtp-Source: ABdhPJxuGKm6/Hwlj/BuybBTMnu3brDltAfE2lX7PWFNrMDuMv5GcStW46R91vFr4CGKXj11QFP7z5gXmtSOoTSYofA=
X-Received: by 2002:aca:4c1:: with SMTP id 184mr2732472oie.157.1609255431165;
 Tue, 29 Dec 2020 07:23:51 -0800 (PST)
MIME-Version: 1.0
References: <202012271352.JvNDF17O-lkp@intel.com> <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
 <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com>
In-Reply-To: <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 29 Dec 2020 16:23:29 +0100
Message-ID: <CAJZ5v0je=BeU98tkXmE9Mu1aiqc4=o288S=uOuFwh=okWJC2eQ@mail.gmail.com>
To: Mark Pearson <markpearson@lenovo.com>
Message-ID-Hash: RYDTYLTKN2QSM3LL54YR76FMERNA2MI7
X-Message-ID-Hash: RYDTYLTKN2QSM3LL54YR76FMERNA2MI7
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [External] Re: [pm:bleeding-edge 8612/8615] drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/RYDTYLTKN2QSM3LL54YR76FMERNA2MI7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 29, 2020 at 12:18 AM Mark Pearson <markpearson@lenovo.com> wrote:
>
> Hi Hans
>
> On 27/12/2020 06:56, Hans de Goede wrote:
> > Hi,
> >
> > On 12/27/20 6:11 AM, kernel test robot wrote:
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> >> head:   a33520709645543f108361fe21fa9434a351c4e9
> >> commit: 8c9b909fb1282e43792433e6c1cba125ccfc6201 [8612/8615] ACPI: platform-profile: Add platform profile support
> >> config: x86_64-randconfig-a015-20201221 (attached as .config)
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install x86_64 cross compiling tool for clang build
> >>         # apt-get install binutils-x86-64-linux-gnu
> >>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8c9b909fb1282e43792433e6c1cba125ccfc6201
> >>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> >>         git fetch --no-tags pm bleeding-edge
> >>         git checkout 8c9b909fb1282e43792433e6c1cba125ccfc6201
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>>> drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >>            if (!pprof || !pprof->choices || !pprof->profile_set ||
> >>                          ~~~~~~~~^~~~~~~
> >>    1 warning generated.
> >
> >
> > Ah, this is caused by changing choices from a single long to:
> >
> >       unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
> >
> > So that we can use for_each_set_bit and are future proof for more then
> > 32 profiles.
> >
> > To fix this the check should be changed into this (untested):
> >
> > #include <linux/bitmap.h>
> >
> >       if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> >           !pprof->profile_set || !pprof->profile_get) {
> >               mutex_unlock(&profile_lock);
> >               return -EINVAL;
> >       }
> >
> > Mark can you provide a (tested) patch for this?
> >
> > Regards,
> >
> > Hans
> >
> Will do!

Please note that I'm not going to push the material to Linus with this
warning, so if you want it to go into 5.11, that needs to be addressed
timely.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
