Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1D83421F7
	for <lists+devel-acpica@lfdr.de>; Fri, 19 Mar 2021 17:33:45 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E66E8100F227D;
	Fri, 19 Mar 2021 09:33:43 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.53; helo=mail-ot1-f53.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 64651100F2251
	for <devel@acpica.org>; Fri, 19 Mar 2021 09:33:41 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id f73-20020a9d03cf0000b02901b4d889bce0so9062867otf.12
        for <devel@acpica.org>; Fri, 19 Mar 2021 09:33:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mTTDsfCnwE/UlPHmkrKO/4B15PlJYD/cBG8z+cd3Hsk=;
        b=nKKrZ+ydw0QUTbleowDs8a3pj9odYnR+AJrb0cpv8DCsGWDzP6p82GdUbwD+cmot14
         8vY2dxs2agGx/twt/epxZaimRoiybUQMcMqZDSFZ+0Lrviy5Li40NUG5h+4crfi7djNe
         mNE9/WLdET3FDXm2x9bkKu6rXmDXcxMqzthWJvuH3/VWqHqLvHHs62BTmjlSmfX5rPh4
         DYViJ1b3tbYzTm3V2qVcP/jZkeZ+8Zoi6b350wiega8n1QE5zDdCOytQftGBe6LsfQhk
         4N/LBQSveQ0zPwubWVFtutFJNAVr4VsBPc8cqHAafiCR1dhg5RV5TH6trcLBskHycr2y
         A3Kg==
X-Gm-Message-State: AOAM533kUtDk/1tVDREs9lcDwGW+3jv2E0AutGeE+J3+LTdXKpdAZaQB
	rLgXt8bFdjYnwCC30wbciNRAtWX9ZYEpnsPtmP4=
X-Google-Smtp-Source: ABdhPJxo9ibekhIRsbHdobKGANRCDgumEJVtclwVzMhodcUzqa2UlJxFCB96TnGrkRDDy55qB+LRwsmA3hIWWOM2wzU=
X-Received: by 2002:a9d:4811:: with SMTP id c17mr1828711otf.206.1616171619493;
 Fri, 19 Mar 2021 09:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210317050641.4158096-1-unixbhaskar@gmail.com> <859a36ad-f9c6-942d-770e-e9e0306d34e4@infradead.org>
In-Reply-To: <859a36ad-f9c6-942d-770e-e9e0306d34e4@infradead.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 19 Mar 2021 17:33:28 +0100
Message-ID: <CAJZ5v0j8x2FF6rEuZFUaokzPigPpxD6u0Cu2JK7Au3mj5d=93w@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>, Bhaskar Chowdhury <unixbhaskar@gmail.com>
Message-ID-Hash: PDLY675GPU27JNLZI2CVHXW2PIFMT46F
X-Message-ID-Hash: PDLY675GPU27JNLZI2CVHXW2PIFMT46F
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] include: acpi: A typo fix in the file cppc_acpi.h
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PDLY675GPU27JNLZI2CVHXW2PIFMT46F/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Mar 17, 2021 at 6:17 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 3/16/21 10:06 PM, Bhaskar Chowdhury wrote:
> >
> > s/folowing/following/
> >
> > Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
>
> > ---
> >  include/acpi/cppc_acpi.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/acpi/cppc_acpi.h b/include/acpi/cppc_acpi.h
> > index c7fc4524e151..d174721bab33 100644
> > --- a/include/acpi/cppc_acpi.h
> > +++ b/include/acpi/cppc_acpi.h
> > @@ -31,7 +31,7 @@
> >  #define      CMD_READ 0
> >  #define      CMD_WRITE 1
> >
> > -/* Each register has the folowing format. */
> > +/* Each register has the following format. */
> >  struct cpc_reg {
> >       u8 descriptor;
> >       u16 length;
> > --

Applied as 5.13 material with a minor edit in the subject, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
