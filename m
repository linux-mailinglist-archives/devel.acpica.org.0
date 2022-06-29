Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 402A35606C7
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Jun 2022 18:56:53 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DAF75100EA92F;
	Wed, 29 Jun 2022 09:56:51 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.170; helo=mail-yw1-f170.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A5D6C100F227A
	for <devel@acpica.org>; Wed, 29 Jun 2022 09:56:49 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-31c1d580e4bso22022187b3.3
        for <devel@acpica.org>; Wed, 29 Jun 2022 09:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZkIej0UJ7PuUWn58IixeF0LRQS/u6RyIKeOWZv4NbdA=;
        b=ieYGSFcAyN3bulUAfy9Q2uujh8/yOvQ0q22lHyj20CBOZt/FBW5Rf8x6BlrGILQp16
         cToVK9I3pcvgFDGr2eXv1oYCEBjBkMk5Vf0GtPQe/5FYX0YQWPL5lmX36ICQXN4x9V6b
         7Wv+2JN36CciRaD8OgfzCHbwwdcw1BbDiv59TZeG5tLGHFoCoZ5Et1v48z0XMd6oMCNU
         A8E5msrlXcTsaR12Us/U18wz5qg1vzV6dFsfnfO3pPsWfnIsXRyuuGirndPBwlGIAjvv
         1JnRh454p8cSB2zECWH4FbJCbZDzFnbMNP/maSF4+CMz3grPfSKrdZCpYwnYGaf3Sx0r
         DBrQ==
X-Gm-Message-State: AJIora/LJcGWhURoaXDLVWmMCQNsm6ZSk1OaQVKmCrxvRCq0PWeqwQRI
	zOzkToHfpaT1nnAxcLvEvc+48wYUTF0L9eAxtL0=
X-Google-Smtp-Source: AGRyM1s2CbxkModmI/0O7hOvmw6DE7xd5G7FVUCy9hKt/wft6RsAcDx/TDDEpy8faKzufOPehWVJII78xYd5Usg/KAk=
X-Received: by 2002:a0d:d811:0:b0:31b:ddc4:c0ac with SMTP id
 a17-20020a0dd811000000b0031bddc4c0acmr5025839ywe.149.1656521808695; Wed, 29
 Jun 2022 09:56:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220617025152.1908638-1-luriwen@hotmail.com> <TYWP286MB2601A75D517AE71EE569CE15B1AF9@TYWP286MB2601.JPNP286.PROD.OUTLOOK.COM>
 <87v8szoccp.fsf@stealth>
In-Reply-To: <87v8szoccp.fsf@stealth>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Jun 2022 18:56:37 +0200
Message-ID: <CAJZ5v0gAJSfWmEJjawSHWnYB-rsBxcMyUQjAf4F3jpMhnjx+-Q@mail.gmail.com>
To: Punit Agrawal <punit.agrawal@bytedance.com>
Message-ID-Hash: YLKGC5W4N2GIWFNFAYYLXXBWT25GNUND
X-Message-ID-Hash: YLKGC5W4N2GIWFNFAYYLXXBWT25GNUND
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Riwen Lu <luriwen@hotmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Riwen Lu <luriwen@kylinos.cn>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] ACPI/processor: Remove unused function acpi_processor_get_limit_info()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YLKGC5W4N2GIWFNFAYYLXXBWT25GNUND/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jun 17, 2022 at 11:42 AM Punit Agrawal
<punit.agrawal@bytedance.com> wrote:
>
> Riwen Lu <luriwen@hotmail.com> writes:
>
> > From: Riwen Lu <luriwen@kylinos.cn>
> >
> > Commit 22e7551eb6fd ("ACPI / processor: Remove acpi_processor_get_limit_info()"),
> > left behind this, remove it.
> >
> > Signed-off-by: Riwen Lu <luriwen@kylinos.cn>
> >
> > ---
> > v1 -> v2:
> >  - Make this patch base on ("ACPI: Split out processor thermal register
> >    from ACPI PSS").
>
> For such changes, it is better to send all the related patches as a
> series so it's easy to see the dependencies . In a series the easy /
> obvious fixes should be earlier so it's easier for them to be merged
> while the more significant changes are still being discussed.
>
> Hopefully in this case Rafael too agrees with the dependency patch -
> otherwise, it's just extra churn on the lists.
>
> But don't resend just yet - give some time for others to add their
> feedback.
>
> > ---
> >  include/acpi/processor.h | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/include/acpi/processor.h b/include/acpi/processor.h
> > index ba1e3ed98d3d..9fa49686957a 100644
> > --- a/include/acpi/processor.h
> > +++ b/include/acpi/processor.h
> > @@ -441,7 +441,6 @@ static inline int acpi_processor_hotplug(struct acpi_processor *pr)
> >  #endif /* CONFIG_ACPI_PROCESSOR_IDLE */
> >
> >  /* in processor_thermal.c */
> > -int acpi_processor_get_limit_info(struct acpi_processor *pr);
> >  int acpi_processor_thermal_init(struct acpi_processor *pr,
> >                               struct acpi_device *device);
> >  void acpi_processor_thermal_exit(struct acpi_processor *pr,
>
> Fwiw,
>
> Reviewed-by: Punit Agrawal <punit.agrawal@bytedance.com>

Applied as 5.20 material with some edits in the subject and changelog.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
