Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E1D41CC16
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Sep 2021 20:47:30 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B06C1100F392C;
	Wed, 29 Sep 2021 11:47:28 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.53; helo=mail-ot1-f53.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BAC98100F392B
	for <devel@acpica.org>; Wed, 29 Sep 2021 11:47:26 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 5-20020a9d0685000000b0054706d7b8e5so4119080otx.3
        for <devel@acpica.org>; Wed, 29 Sep 2021 11:47:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0gh0/D+JLfsfJlqH0a917kdEGhqFFQged7ZchtYxclU=;
        b=NtERUn5ak89G3KMdcXxpsE8eywbRizir2Pxo391DcMafqdCk7/r0AvmwuH95U3HM1S
         y8q/nQp431Eb0A1lCInErWFbugIqkDbmCze/qKC0SY61ydzE3Dv4KB7zDILg5xWRmWSv
         lKOCouGEcpnLdhaY20jUHy2JpHrQ7Xc92cHK8oyyWQ5Ue0GCXKZC3A5RrLseNUpKTVmG
         xWY45AKIraHb/thHEnuYcLB1o/wUTe2xgjXsoxNNAi8/9618VcU11rUZ0URAw4lnTkmr
         Elzt4Lzg07ivfnGIVqjmND/3v3Yr05NizmBHERQfCL1JDuW124PDp1xTJwJVR2npi3lk
         b93A==
X-Gm-Message-State: AOAM533ZkhP1DYG8dnFXNPMu9xop59e5egVyZujaj3UJw6ZkzWhIVRnL
	hkH63a+V4/m4vYE0z5pKTtu6ThH/F3dNEzq6kdE=
X-Google-Smtp-Source: ABdhPJxH+pTTbk0IZjcDwThSOx5Jir6Y4UsNlmDuGsgVm/HkIDtlTJgQC59U2XUxYN6Z5+bFQKX+f2eMjXJsAaV2l/U=
X-Received: by 2002:a05:6830:165a:: with SMTP id h26mr1348976otr.301.1632941245560;
 Wed, 29 Sep 2021 11:47:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210927121338.938994-1-arnd@kernel.org>
In-Reply-To: <20210927121338.938994-1-arnd@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Sep 2021 20:47:14 +0200
Message-ID: <CAJZ5v0jJRYQPSfVV_hCD6uxch+vU6kvWV9-KAfqHckHgkFOeaA@mail.gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID-Hash: KAXC3WXS7S73JQM2VLWUCGU6P24U5PAU
X-Message-ID-Hash: KAXC3WXS7S73JQM2VLWUCGU6P24U5PAU
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Arnd Bergmann <arnd@arndb.de>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, llvm@lists.linux.dev
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: avoid NULL pointer arithmetic
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/KAXC3WXS7S73JQM2VLWUCGU6P24U5PAU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 27, 2021 at 2:13 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> There are some very old macros for doing an open-coded offsetof() and
> cast between pointer and integer in ACPI headers. clang-14 now complains
> about these:
>
> drivers/acpi/acpica/tbfadt.c:86:3: error: performing pointer subtraction with a null pointer has undefined behavior [-Werror,-Wnull-pointer-subtraction]
>          ACPI_FADT_OFFSET(pm_timer_block),
>          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/acpi/actbl.h:376:47: note: expanded from macro 'ACPI_FADT_OFFSET'
>  #define ACPI_FADT_OFFSET(f)             (u16) ACPI_OFFSET (struct acpi_table_fadt, f)
>                                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/acpi/actypes.h:511:41: note: expanded from macro 'ACPI_OFFSET'
>  #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/acpi/actypes.h:505:79: note: expanded from macro 'ACPI_PTR_DIFF'
>  #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
>                                                                               ^ ~~~~~~~~~~~~~~~~~~~~~~~
> Convert them to the modern equivalents.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  include/acpi/actypes.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
> index 92c71dfce0d5..285bc7b73de3 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -507,8 +507,8 @@ typedef u64 acpi_integer;
>  /* Pointer/Integer type conversions */
>
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
> -#define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#define ACPI_TO_INTEGER(p)              ((uintptr_t)(p))
> +#define ACPI_OFFSET(d, f)               offsetof(d, f)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
>
> --

Queued up as 5.16 material, converted into an upstream ACPICA pull
request and submitted, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
