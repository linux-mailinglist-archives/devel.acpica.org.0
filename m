Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCCD4255EB
	for <lists+devel-acpica@lfdr.de>; Thu,  7 Oct 2021 16:59:19 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B7E23100EA2A5;
	Thu,  7 Oct 2021 07:59:17 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.41; helo=mail-oo1-f41.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D81CA100EBB97
	for <devel@acpica.org>; Thu,  7 Oct 2021 07:59:14 -0700 (PDT)
Received: by mail-oo1-f41.google.com with SMTP id y16-20020a4ade10000000b002b5dd6f4c8dso1972780oot.12
        for <devel@acpica.org>; Thu, 07 Oct 2021 07:59:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eFzZAHEX14XZWOHRwUjcD+VXQmrhGTSWpGdCFR4cayg=;
        b=P4Di16JTjHVN7vuJ2sgG4eVLRqxr3lDn0tfE9qoTkHTtT3iUT9/ur1dYb8kyc+llsu
         +u6P4P0AQL51hxg41HGEfOAiUmHqN5GViEiwxK815dVSsw3W9VJVD7+TaU/IYqovULvK
         o3O6i/wfuObWBcNx5/irjJ4ICuMNnQnrqjwQcsJ3I/6pSo0fjGSsqsvrGUU16KmWEsqM
         ZCR1D+oUHuOOrxLZp6riZ7u2l934T1KGi9aSCYEFlqZLoT48EaK569Z+TtoH6mrA5sHD
         kkRE2ir89Eur6P8e5R66W7B71Vp9tFBv48Pid72k7FC4Rb/BdM6YaANwkary4dR9YPRt
         z4qA==
X-Gm-Message-State: AOAM531FIVSOuDnniYIIbJkxh19kuXa4e4iQCmxJ+Ynu75K+bAKBVovu
	3oD4wXPvy/7ztH79K7WYIoxI907iUkdoATdZw/o=
X-Google-Smtp-Source: ABdhPJxav79DTvnZ7ENluLEbTka+prn3Eb5bllevPggdVkuTqKx5NoI4AvrvMdyve/m7L2mOSjSJknElLAHfslePx2o=
X-Received: by 2002:a4a:d9c6:: with SMTP id l6mr3720998oou.0.1633618753616;
 Thu, 07 Oct 2021 07:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <202110071853.ds7uW9eM-lkp@intel.com> <20211007112614.GA101488@e120877-lin.cambridge.arm.com>
In-Reply-To: <20211007112614.GA101488@e120877-lin.cambridge.arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 7 Oct 2021 16:59:02 +0200
Message-ID: <CAJZ5v0h3HZBDyv-jH7m86kzXk+aG9PvpO1RT1rRfvt2VmurcXg@mail.gmail.com>
To: Vincent Donnefort <vincent.donnefort@arm.com>
Message-ID-Hash: SSTZNJGQWKV2RPL42CPHSHXEEIZNRDMN
X-Message-ID-Hash: SSTZNJGQWKV2RPL42CPHSHXEEIZNRDMN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge 47/54] drivers/cpufreq/mediatek-cpufreq-hw.c:112:17: error: too few arguments to function 'cpufreq_table_find_index_dl'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SSTZNJGQWKV2RPL42CPHSHXEEIZNRDMN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 7, 2021 at 1:26 PM Vincent Donnefort
<vincent.donnefort@arm.com> wrote:
>
>
> On Thu, Oct 07, 2021 at 06:35:55PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> > head:   6cb3f7cfca6963de4f486c4bd99fdefa56f75870
> > commit: 1f39fa0dccff71d4788089b5e617229b19166867 [47/54] cpufreq: Introducing CPUFREQ_RELATION_E
> > config: arm-buildonly-randconfig-r001-20211007 (attached as .config)
> > compiler: arm-linux-gnueabi-gcc (GCC) 11.2.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=1f39fa0dccff71d4788089b5e617229b19166867
> >         git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> >         git fetch --no-tags rafael-pm bleeding-edge
> >         git checkout 1f39fa0dccff71d4788089b5e617229b19166867
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/cpufreq/
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    drivers/cpufreq/mediatek-cpufreq-hw.c: In function 'mtk_cpufreq_hw_fast_switch':
> > >> drivers/cpufreq/mediatek-cpufreq-hw.c:112:17: error: too few arguments to function 'cpufreq_table_find_index_dl'
> >      112 |         index = cpufreq_table_find_index_dl(policy, target_freq);
> >          |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    In file included from drivers/cpufreq/mediatek-cpufreq-hw.c:7:
> >    include/linux/cpufreq.h:814:19: note: declared here
> >      814 | static inline int cpufreq_table_find_index_dl(struct cpufreq_policy *policy,
> >          |                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >
>
> Rafael,
>
> The issue is this patch
>
>   cpufreq: Introducing CPUFREQ_RELATION_E
>
> How would you like to proceed? Do you want a v8 patch-set with the fix or just
> that patch updated?

Please send an incremental fix on top of the series.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
