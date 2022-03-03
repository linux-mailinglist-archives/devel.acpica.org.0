Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5B44CBD4C
	for <lists+devel-acpica@lfdr.de>; Thu,  3 Mar 2022 13:03:15 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 427C6100F226E;
	Thu,  3 Mar 2022 04:03:13 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.171; helo=mail-yb1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A32B0100F2243
	for <devel@acpica.org>; Thu,  3 Mar 2022 04:03:10 -0800 (PST)
Received: by mail-yb1-f171.google.com with SMTP id g1so9766029ybe.4
        for <devel@acpica.org>; Thu, 03 Mar 2022 04:03:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DjboJ/G8/4W1otFWQPurTWNijZtDW4ypJBpfagbu43Q=;
        b=uDA6FO4iHHDCeh0y2RqqHtrFNSaGlLGjkumTSbN1CO3olZKpB/wKbLffQROYSTA+Fr
         XLLhlR6Nj4eC98F6QVGL6I8w99NUYdP2La19hbTDt+27InN49Kiz86RLMITetErOe1Bi
         B3udKHWILFmiJob1BQUf064Q/dU4w16q0NyPwMR5OQwTIG8ucfvBUZCR9LYbG3bWDMMf
         OrfrZDvY8tLxFOtjmpKCYsFDTD6j+aM/bJh+Td0PfMUIPkkd0pX4oWtvzXRQDR/AY+MK
         fYtGBzXQdjk/IOm3IfSSr0WWRb4j2DbQ3a7N8JPehoRCBX4Ql9oMAQfOXTycH0uc8FWQ
         LLeA==
X-Gm-Message-State: AOAM533P9vZreV0YXm5vLxjmvKzEL5QOrchxvSIr3jK5YsGyOWcCW83U
	w97eBQn+czUHYLiFJ18iYmpTJldn/CvRymslPrw=
X-Google-Smtp-Source: ABdhPJyFQlRdBXJOEnibIE8dJrLYvPNawvDuXGBJsAA7xwYFswO5AfyOOTNNrJkTz8ToR2mU7ZhMqq+odTlqZZ8ACQk=
X-Received: by 2002:a25:24d7:0:b0:628:79dc:1250 with SMTP id
 k206-20020a2524d7000000b0062879dc1250mr12298601ybk.153.1646308989266; Thu, 03
 Mar 2022 04:03:09 -0800 (PST)
MIME-Version: 1.0
References: <202203021037.WWnG44C5-lkp@intel.com>
In-Reply-To: <202203021037.WWnG44C5-lkp@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 3 Mar 2022 13:02:58 +0100
Message-ID: <CAJZ5v0jUyneipaAU+xhJnO-Dce8RC6O9Un_Ly0vLiNyrj6eYXg@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID-Hash: NPZ2PVDDADGJSWC3P2N2M3F57ZIVDSQP
X-Message-ID-Hash: NPZ2PVDDADGJSWC3P2N2M3F57ZIVDSQP
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild@lists.01.org, Mark Cilissen <mark@yotsuba.nl>, kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Hans de Goede <hdegoede@redhat.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge 113/118] arch/x86/kernel/acpi/boot.c:1394 (null)() error: buffer overflow '(acpi_dmi_table[6])->matches' 4 <= 4
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/NPZ2PVDDADGJSWC3P2N2M3F57ZIVDSQP/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 3, 2022 at 12:52 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> head:   f7307721a01f4f14d21c699b270a870370cf34b9
> commit: ed00b2b8d737f87a2437d7bd7c7f90124b50da05 [113/118] x86 / ACPI: Work around broken XSDT on SEGA AALE board

Yes, this commit has been dropped already.

> config: x86_64-randconfig-m001 (https://download.01.org/0day-ci/archive/20220302/202203021037.WWnG44C5-lkp@intel.com/config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
