Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B86E528F167
	for <lists+devel-acpica@lfdr.de>; Thu, 15 Oct 2020 13:35:35 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4B28315F7902B;
	Thu, 15 Oct 2020 04:35:34 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.66; helo=mail-ot1-f66.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id CB7B215F79027
	for <devel@acpica.org>; Thu, 15 Oct 2020 04:35:31 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id m11so2532292otk.13
        for <devel@acpica.org>; Thu, 15 Oct 2020 04:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EV2xgnYYgtX5X8sAfXhIq7ufGHJKTdukoEvtEtKe4Zg=;
        b=TNP+WNMnVOs8KF6Ft2CPdCXnWtmR9t3rU1kPwNcdkkX7qphVEyl2QuK6DLclV5SMmx
         XxAW7oI6JyQugRKU+dl2D3xyqHA5gqXaz9Aysz/ik3u8/qC0mhCNXut2+WDG9cEgfBnZ
         FLTZ8wAnSfVSy1ECg6ZifT8IOy0MULAddXWuUvjUfvu3qVPdwVzmbKndfeaoR1aC7CuD
         HOnSntSsj6vO6QkMVW59XzTf8Ymi+ZMuoNLe6LoDnkHK2Og9VA1vVETSjg/wnS1fgKyY
         ptylh6bqFiPD2aw2Re6lP/m+UXX7O4+Sh4cJOcS2juzePEd4Pwp+HGMp/z1jdjacYyN5
         e47w==
X-Gm-Message-State: AOAM533LDLvwZcYZYogJJKMyE8uoeCaHaBlnRm4ooKlEStwJeArRfphq
	QZLSsTHU79NCT0cO25qx4jB9NtUiqDPap0zUpcw=
X-Google-Smtp-Source: ABdhPJyeS6FGw9MxaNzy5Q+U2JJWX+sFTRU1ItficcpZjwm66r2uw9bBu3SLf+1sIfbSoY/L17AZ21b4QnJRRsuZ2Zg=
X-Received: by 2002:a9d:ac9:: with SMTP id 67mr2394038otq.321.1602761730873;
 Thu, 15 Oct 2020 04:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <202009060245.jmydrp7B%lkp@intel.com> <BYAPR11MB3256FDBA54924A32BE878CF787050@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256FDBA54924A32BE878CF787050@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 15 Oct 2020 13:35:19 +0200
Message-ID: <CAJZ5v0he6mFq339L2o_r=ugG5auX4AUtZwABsFNFFBRcCBJszQ@mail.gmail.com>
To: "Moore, Robert" <robert.moore@intel.com>
Message-ID-Hash: CRBRRC6DKIDZN32S4NIUHR4CZ3LLR57I
X-Message-ID-Hash: CRBRRC6DKIDZN32S4NIUHR4CZ3LLR57I
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, "Kaneda, Erik" <erik.kaneda@intel.com>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [pm:acpica-osl 6/6] drivers/acpi/osl.c:1748:46: sparse: sparse: incorrect type in assignment (different address spaces)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CRBRRC6DKIDZN32S4NIUHR4CZ3LLR57I/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 14, 2020 at 10:37 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> I believe the file " drivers/acpi/osl.c " is part of the core linux, not ACPICA.

Yes, it is.

> -----Original Message-----
> From: kernel test robot <lkp@intel.com>
> Sent: Saturday, September 05, 2020 11:34 AM
> To: Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: kbuild-all@lists.01.org; linux-acpi@vger.kernel.org; devel@acpica.org; linux-pm@vger.kernel.org
> Subject: [Devel] [pm:acpica-osl 6/6] drivers/acpi/osl.c:1748:46: sparse: sparse: incorrect type in assignment (different address spaces)
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git acpica-osl
> head:   c32c3c4079f8a62616413abbead45b6622fb7602
> commit: c32c3c4079f8a62616413abbead45b6622fb7602 [6/6] ACPI: OSL: Make ACPICA use logical addresses of GPE blocks
> config: x86_64-randconfig-s022-20200904 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.2-191-g10164920-dirty
>         git checkout c32c3c4079f8a62616413abbead45b6622fb7602
>         # save the attached .config to linux build tree
>         make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
>
> sparse warnings: (new ones prefixed by >>)
>
>    drivers/acpi/osl.c:376:17: sparse: sparse: cast removes address space '__iomem' of expression
> >> drivers/acpi/osl.c:1748:46: sparse: sparse: incorrect type in assignment (different address spaces) @@     expected void *extern [addressable] [toplevel] acpi_gbl_xgpe0_block_logical_address @@     got void [noderef] __iomem * @@
> >> drivers/acpi/osl.c:1748:46: sparse:     expected void *extern [addressable] [toplevel] acpi_gbl_xgpe0_block_logical_address
>    drivers/acpi/osl.c:1748:46: sparse:     got void [noderef] __iomem *
> >> drivers/acpi/osl.c:1750:46: sparse: sparse: incorrect type in assignment (different address spaces) @@     expected void *extern [addressable] [toplevel] acpi_gbl_xgpe1_block_logical_address @@     got void [noderef] __iomem * @@
> >> drivers/acpi/osl.c:1750:46: sparse:     expected void *extern [addressable] [toplevel] acpi_gbl_xgpe1_block_logical_address
>    drivers/acpi/osl.c:1750:46: sparse:     got void [noderef] __iomem *
>    drivers/acpi/osl.c:1760:20: sparse: sparse: incorrect type in assignment (different address spaces) @@     expected void *rv @@     got void [noderef] __iomem * @@
>    drivers/acpi/osl.c:1760:20: sparse:     expected void *rv
>    drivers/acpi/osl.c:1760:20: sparse:     got void [noderef] __iomem *
>    drivers/acpi/osl.c:708:1: sparse: sparse: context imbalance in 'acpi_os_read_memory' - wrong count at exit
>    drivers/acpi/osl.c:741:1: sparse: sparse: context imbalance in 'acpi_os_write_memory' - wrong count at exit
>
> # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=c32c3c4079f8a62616413abbead45b6622fb7602
> git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> git fetch --no-tags pm acpica-osl
> git checkout c32c3c4079f8a62616413abbead45b6622fb7602
> vim +1748 drivers/acpi/osl.c
>
>   1742
>   1743  acpi_status __init acpi_os_initialize(void)
>   1744  {
>   1745          acpi_os_map_generic_address(&acpi_gbl_FADT.xpm1a_event_block);
>   1746          acpi_os_map_generic_address(&acpi_gbl_FADT.xpm1b_event_block);
>   1747
> > 1748          acpi_gbl_xgpe0_block_logical_address =
>   1749                  acpi_os_map_generic_address(&acpi_gbl_FADT.xgpe0_block);
> > 1750          acpi_gbl_xgpe1_block_logical_address =
>   1751                  acpi_os_map_generic_address(&acpi_gbl_FADT.xgpe1_block);
>   1752
>   1753          if (acpi_gbl_FADT.flags & ACPI_FADT_RESET_REGISTER) {
>   1754                  /*
>   1755                   * Use acpi_os_map_generic_address to pre-map the reset
>   1756                   * register if it's in system memory.
>   1757                   */
>   1758                  void *rv;
>   1759
>   1760                  rv = acpi_os_map_generic_address(&acpi_gbl_FADT.reset_register);
>   1761                  pr_debug(PREFIX "%s: map reset_reg %s\n", __func__,
>   1762                           rv ? "successful" : "failed");
>   1763          }
>   1764          acpi_os_initialized = true;
>   1765
>   1766          return AE_OK;
>   1767  }
>   1768
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
