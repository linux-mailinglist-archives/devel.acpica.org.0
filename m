Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 092254C4856
	for <lists+devel-acpica@lfdr.de>; Fri, 25 Feb 2022 16:10:35 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E354B100E5CF1;
	Fri, 25 Feb 2022 07:10:32 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.170; helo=mail-yb1-f170.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 51460100EB345
	for <devel@acpica.org>; Fri, 25 Feb 2022 07:10:29 -0800 (PST)
Received: by mail-yb1-f170.google.com with SMTP id b35so6414622ybi.13
        for <devel@acpica.org>; Fri, 25 Feb 2022 07:10:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6PHDsJtTHgIe1SVb8arRLmZRA4JR4a9wVJvHcDvAPGo=;
        b=V+CxqHzwBlUI8mzxz82LzzRHqHfIbOIVzR525e7YvJBxn/eemd1nQZeV9KJhswAcMG
         RXfqM6qyfTi+QD44UHzCFeRyZeGQ5a0UcX0aWX5e9oMgqez4WH0It5/Sblu2rLap+u2B
         5wMwmbXujnvHTonq6KkIaS6Rmol5OP1q7fKlF1x+AayQB8ToE4P4M0aI5yY5Yof7XZHI
         efXWQcnzajvIaOVmGpWYh+n5KYbGS+6AUgQEGF0FQwnIa1CzsC5I5hZnCzu2k6U057Y8
         5nvrOwJhiaQ8DmAA8FK9phPJJfVuEa845bsrAY41OlshVya0mMPuIDFGSO4KZTYlGyk8
         8tkQ==
X-Gm-Message-State: AOAM532jKc/2HyZ/+m1jayIvRZY4IvF6rkqEqIo47HuYAXx/CAha6kXW
	Y1PWqSbeQuEz3o4wC6wA1nt7JziIOmcef5vRUFw=
X-Google-Smtp-Source: ABdhPJzbCNciT/Vw4E176zijmDZb74ihGVfvi1mr48gxWn7RqdXe+0jEB+k+fPXqbvyly3jKI0SkyKS4ktc28TS8YP0=
X-Received: by 2002:a25:7785:0:b0:614:c283:2a3d with SMTP id
 s127-20020a257785000000b00614c2832a3dmr7796480ybc.137.1645801828185; Fri, 25
 Feb 2022 07:10:28 -0800 (PST)
MIME-Version: 1.0
References: <202202250758.oDiHyXAy-lkp@intel.com> <0d4d70ca-a17f-b8de-53f7-a85a59304d36@redhat.com>
In-Reply-To: <0d4d70ca-a17f-b8de-53f7-a85a59304d36@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 25 Feb 2022 16:10:17 +0100
Message-ID: <CAJZ5v0jmFJMrKT5RsR+JEfJHaYFxHTi2xjS0UnkNUhSn7-r==A@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: UPCEIJ3H65SGGRT3A7TSZ6F36JGVSIJT
X-Message-ID-Hash: UPCEIJ3H65SGGRT3A7TSZ6F36JGVSIJT
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>, llvm@lists.linux.dev, kbuild-all@lists.01.org, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge 59/73] arch/x86/include/asm/pci_x86.h:133:19: error: expected ';' after top level declarator
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UPCEIJ3H65SGGRT3A7TSZ6F36JGVSIJT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Feb 25, 2022 at 12:49 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi Rafael,
>
> On 2/25/22 00:24, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> > head:   8276cbee5a52543c614a1e1bc2624188d5970848
> > commit: 62fabd56faafe033eb0be3ba24000b8db13d4c17 [59/73] x86/PCI: Disable exclusion of E820 reserved addresses in some cases
> > config: x86_64-randconfig-a012 (https://download.01.org/0day-ci/archive/20220225/202202250758.oDiHyXAy-lkp@intel.com/config)
> > compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project d271fc04d5b97b12e6b797c6067d3c96a8d7470e)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=62fabd56faafe033eb0be3ba24000b8db13d4c17
> >         git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> >         git fetch --no-tags rafael-pm bleeding-edge
> >         git checkout 62fabd56faafe033eb0be3ba24000b8db13d4c17
> >         # save the config file to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    In file included from arch/x86/kernel/resource.c:4:
> >    arch/x86/include/asm/pci_x86.h:97:8: error: unknown type name 'raw_spinlock_t'
> >    extern raw_spinlock_t pci_config_lock;
> >           ^
> >>> arch/x86/include/asm/pci_x86.h:133:19: error: expected ';' after top level declarator
> >    extern void __init dmi_check_pciprobe(void);
> >                      ^
> >                      ;
> >    arch/x86/include/asm/pci_x86.h:134:19: error: expected ';' after top level declarator
> >    extern void __init dmi_check_skip_isa_align(void);
> >                      ^
> >                      ;
>
> So the problem here seems to be that arch/x86/include/asm/pci_x86.h does not include
> all the headers which it relies on. Instead it release on the files which include it
> to include those headers before hand.
>
> This should fix the errors reported here:
>
> --- a/arch/x86/include/asm/pci_x86.h
> +++ b/arch/x86/include/asm/pci_x86.h
> @@ -5,7 +5,9 @@
>   *     (c) 1999 Martin Mares <mj@ucw.cz>
>   */
>
> +#include <linux/init.h>
>  #include <linux/ioport.h>
> +#include <linux/spinlock.h>
>
>  #undef DEBUG
>
> I believe this is best squashed into the original commit,

Done, thanks!

> but let me know if
> you want me to send this out as a proper follow up patch; or if you want a
> new version of the troublesome commit to replace the original one.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
