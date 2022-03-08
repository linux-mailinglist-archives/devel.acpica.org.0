Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CC4D207B
	for <lists+devel-acpica@lfdr.de>; Tue,  8 Mar 2022 19:49:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E1A8B100F394A;
	Tue,  8 Mar 2022 10:49:29 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.175; helo=mail-yw1-f175.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 3E0BE100F3949
	for <devel@acpica.org>; Tue,  8 Mar 2022 10:49:27 -0800 (PST)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-2db2add4516so212789637b3.1
        for <devel@acpica.org>; Tue, 08 Mar 2022 10:49:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nyh3q5AmkurI2j9g19+bjblbFKnL13Pmrx5aakYOePA=;
        b=uucVaVx7aP/tHVjHLmXbW/2vt+RvRiW8cljbtSBBxSYWfyOrXVxRdcCP3edLKAwgYb
         WRJfTKcXy2FZsFmtr0u6FMtyaZGefxOaicG9hiJ7Kd//ZnGbnEEvofvvSgcq9VVA7U/i
         p5cY/nrXklWurQv8Cijwds3VbsZ7Nh6oHVabCB+XQD3/l2/5Pmd5SN5aPYAASnZJrV8b
         14QA0moo5R9jhL/oiDuXZu4xfr4kO1/dkTfUDPtns52V6bfg5JZqzcotY5TTiMj/+hpn
         glQOKKxejULh0vB8xqnfi87tgfJODrmCTaXQ+jhUPEwBzSygl3GUz+qqGBHfVkAc78nj
         b1Gw==
X-Gm-Message-State: AOAM533mlcMIkgm2+7ggDmiCGn9YE9ZkkZus08GNbbgpCyqxRBc/pPHA
	aiARveQDfDpoH9yg4R7sFm73kI/CZ9gz2IYVLSE=
X-Google-Smtp-Source: ABdhPJyl72NZ6wDli1DHB6/e0VogH4/zmns8SSrZS40ksbFAEj7L52VY5eIm2zoGpaWqlSF/Urmx0lmT7Wj83M3eSq8=
X-Received: by 2002:a81:19c3:0:b0:2dc:2686:14e3 with SMTP id
 186-20020a8119c3000000b002dc268614e3mr14009637ywz.515.1646765365090; Tue, 08
 Mar 2022 10:49:25 -0800 (PST)
MIME-Version: 1.0
References: <20220306111838.810959-1-chenhuacai@loongson.cn>
In-Reply-To: <20220306111838.810959-1-chenhuacai@loongson.cn>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 8 Mar 2022 19:49:14 +0100
Message-ID: <CAJZ5v0hsHMcqd==+cJZUcd3T11NUU6bSphFbBRjvv1ktCuH08w@mail.gmail.com>
To: Huacai Chen <chenhuacai@loongson.cn>
Message-ID-Hash: YUZ6K4I2BQGJWMJSDYYQMIFBNQ5QTWYG
X-Message-ID-Hash: YUZ6K4I2BQGJWMJSDYYQMIFBNQ5QTWYG
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Xuefeng Li <lixuefeng@loongson.cn>, Huacai Chen <chenhuacai@gmail.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Jianmin Lv <lvjianmin@loongson.cn>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH V2 0/2] ACPI: Add LoongArch-related definitions
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YUZ6K4I2BQGJWMJSDYYQMIFBNQ5QTWYG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Mar 6, 2022 at 12:17 PM Huacai Chen <chenhuacai@loongson.cn> wrote:
>
> LoongArch is a new RISC ISA, which is a bit like MIPS or RISC-V.
> LoongArch includes a reduced 32-bit version (LA32R), a standard 32-bit
> version (LA32S) and a 64-bit version (LA64). LoongArch use ACPI as its
> boot protocol LoongArch-specific interrupt controllers (similar to APIC)
> are already added in the next revision of ACPI Specification (current
> revision is 6.4).
>
> This patchset are preparing to add LoongArch support in mainline kernel,
> we can see a snapshot here:
> https://github.com/loongson/linux/tree/loongarch-next
>
> Cross-compile tool chain to build kernel:
> https://github.com/loongson/build-tools/releases
>
> Loongson and LoongArch documentations:
> https://github.com/loongson/LoongArch-Documentation
>
> ECR for LoongArch-specific interrupt controllers:
> https://mantis.uefi.org/mantis/view.php?id=2203
> https://mantis.uefi.org/mantis/view.php?id=2313
>
> ACPI changes of LoongArch have been approved in the last year, but the
> new version of ACPI SPEC hasn't been made public yet.
>
> V2: Remove merged patches and update commit messages.
>
> Huacai Chen and Jianmin Lv(2):
>  ACPICA: MADT: Add LoongArch APICs support.
>  ACPICA: Events: Support fixed pcie wake event.

Both patches in this series are mostly ACPICA material which needs to
be submitted to the upstream ACPICA project via
https://github.com/acpica/acpica

It will be pulled by the Linux kernel from there.

>
> Signed-off-by: Huacai Chen <chenhuacai@loongson.cn>
> Signed-off-by: Jianmin Lv <lvjianmin@loongson.cn>
> ---
>  drivers/acpi/acpica/evevent.c  |  17 ++++--
>  drivers/acpi/acpica/hwsleep.c  |  12 ++++
>  drivers/acpi/acpica/utglobal.c |   4 ++
>  drivers/acpi/tables.c          |  10 ++++

This tables.c change can be submitted as a separate patch when the
ACPICA changes get integrated.

>  include/acpi/actbl2.h          | 125 ++++++++++++++++++++++++++++++++++++++++-
>  include/acpi/actypes.h         |   3 +-
>  6 files changed, 163 insertions(+), 8 deletions(-)
> --
> 2.27.0
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
