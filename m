Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B83B40D6FE
	for <lists+devel-acpica@lfdr.de>; Thu, 16 Sep 2021 12:04:29 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B2FA1100EB32F;
	Thu, 16 Sep 2021 03:04:27 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.50; helo=mail-ot1-f50.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id AA5FB100EBBDD
	for <devel@acpica.org>; Thu, 16 Sep 2021 03:04:24 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id y63-20020a9d22c5000000b005453f95356cso714287ota.11
        for <devel@acpica.org>; Thu, 16 Sep 2021 03:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aXboLe7jV/T9ZwIpHPlMdYn8bDy/deTb5yXB9iBxj90=;
        b=08Le022nsc2/mhXVExv60j9LIaK65yl73xYJCa8yvVPrt0Ms+v1y8/sCMwgHApMEIL
         VDTIMXr99RdpKeQXuFsQII4OgBAmiNfDe6Zbbk/KCtsSzTCwQeEG0fuFOvN9bu/xFXPo
         AMhXsZxsMVTQrh2do3EKLJqiQie9jhxbDJmkPOkYu/Q83KBOS2iYOVTJXsjX9nDY/g+3
         494ADvWz8+BUqF0NTtGnjnbxY/CGJE2eviP+0DMI1+OgD8sNkCoEExynd4KJNYYwaqip
         JNW6g6wk0s75eWLOju8KOWPZ1FqrjR3+VnIdZrOlnEimvu5lhR1ja/HlNT0M8tClYDHj
         cRtQ==
X-Gm-Message-State: AOAM5318JB7nGTOROcVyl+IYwYwyU/xjuZnKaySTViAogy41Qn4e52W+
	W+AOIKHG8fc+F04lPO7tOQiPvFmxjQAqvBzm93A=
X-Google-Smtp-Source: ABdhPJxBB0Xwnx9NawGCWaepqPnYcPi5Bq9WcdHJgDpVXE6ei3zcoaUK3n+9QTFA40FFOX0KNdFIxuLz7hqRymSC2ng=
X-Received: by 2002:a9d:6945:: with SMTP id p5mr3965118oto.301.1631786663910;
 Thu, 16 Sep 2021 03:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <202109160821.skJVoHhq-lkp@intel.com> <YULrCIRyvuryjoGE@kuha.fi.intel.com>
In-Reply-To: <YULrCIRyvuryjoGE@kuha.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 16 Sep 2021 12:04:12 +0200
Message-ID: <CAJZ5v0idEO8LUvh+yWCV-f7Ha37thLo5fhnypMRSwEXLRd4EYQ@mail.gmail.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Message-ID-Hash: ZLIHMA7XGPXTP4OJGBTTXBLF76PP5C6W
X-Message-ID-Hash: ZLIHMA7XGPXTP4OJGBTTXBLF76PP5C6W
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel test robot <lkp@intel.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>, kbuild-all@lists.01.org, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge 6/11] drivers/base/swnode.c:1120:17: error: too many arguments to function 'software_node_notify'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/ZLIHMA7XGPXTP4OJGBTTXBLF76PP5C6W/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 16, 2021 at 8:58 AM Heikki Krogerus
<heikki.krogerus@linux.intel.com> wrote:
>
> On Thu, Sep 16, 2021 at 08:13:24AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> > head:   9808623e1bba7d929b50865d7e2d7042cd4e5e7b
> > commit: 810fc8571f8b70a4263266d979f97edec2804574 [6/11] software node: balance refcount for managed sw nodes
> > config: arc-randconfig-r001-20210916 (attached as .config)
> > compiler: arc-elf-gcc (GCC) 11.2.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=810fc8571f8b70a4263266d979f97edec2804574
> >         git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> >         git fetch --no-tags rafael-pm bleeding-edge
> >         git checkout 810fc8571f8b70a4263266d979f97edec2804574
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash drivers/
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    drivers/base/swnode.c: In function 'device_create_managed_software_node':
> > >> drivers/base/swnode.c:1120:17: error: too many arguments to function 'software_node_notify'
> >     1120 |                 software_node_notify(dev, KOBJ_ADD);
> >          |                 ^~~~~~~~~~~~~~~~~~~~
> >    In file included from drivers/base/swnode.c:14:
> >    drivers/base/base.h:206:6: note: declared here
> >      206 | void software_node_notify(struct device *dev);
> >          |      ^~~~~~~~~~~~~~~~~~~~
>
> Ah, that was modified in commit 384f5a857bae ("software nodes: Split
> software_node_notify()").
>
> So the patch is OK for stable, but for v5.15-rc1 it has to be changed:
>
> diff --git a/drivers/base/swnode.c b/drivers/base/swnode.c
> index 7bd0f3cfb7eb4..c46f6a8e14d23 100644
> --- a/drivers/base/swnode.c
> +++ b/drivers/base/swnode.c
> @@ -1116,6 +1116,9 @@ int device_create_managed_software_node(struct device *dev,
>         to_swnode(fwnode)->managed = true;
>         set_secondary_fwnode(dev, fwnode);
>
> +       if (device_is_registered(dev))
> +               software_node_notify(dev);
> +
>         return 0;
>  }
>  EXPORT_SYMBOL_GPL(device_create_managed_software_node);
>
>
> Rafael, how do want to handle this?

I'll fix up the commit, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
