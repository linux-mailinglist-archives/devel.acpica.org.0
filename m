Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F583560781
	for <lists+devel-acpica@lfdr.de>; Wed, 29 Jun 2022 19:42:37 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 14831100F227A;
	Wed, 29 Jun 2022 10:42:35 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.169; helo=mail-yb1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A40A7100EB857
	for <devel@acpica.org>; Wed, 29 Jun 2022 10:42:33 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id x184so26525354ybg.12
        for <devel@acpica.org>; Wed, 29 Jun 2022 10:42:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pUMwPBaoEzZXR1TnAOeXdEHa/2Y772IY4opAxZndNg8=;
        b=YJm8sQmxrExmHaa5E35Nj8fr12vClfzD5cBtRxNLEWupfYtQnleBK9HYpwmveDnppr
         VPW2AI68r1Hgyq8daGrW5vRedPaj1m+YesVyXlADsDO806qHIR8x1ofzC0YiUNM0gW4T
         UHlZkRzpWHIorj8Elomajxe+GpIzdIDJd1mUhs3lSqxpL+Z+yGfl69+1Qm2Sp8Y4+vMy
         K3VKprErWMRbvXrKzDtteSjWVLcd8gj7vEWP8iYLAfjtAJ5GJTW5uDjFQd0covO1IOp1
         rRgNmJuUe87WmM48NC6Fk3o9dxsOEoDfHu3WjQTZ6ziK0BI/H4e6uogjz69wNF03r8sd
         pv5A==
X-Gm-Message-State: AJIora8Nc8K4J4bg7TZT8OEdymBxFCKEjANdNusqWo7466SHjw4h7avQ
	JtvQ5QtAJn4RW8Jprs6f1pX6tyUsTBt5UMpwEo0=
X-Google-Smtp-Source: AGRyM1t8LC1Ep9fcsH+VbM/9n93Ms2dFPn2OJ9K0fw/bmK8kPR+5++pkGbDYz8NsjgUENeImKRO4zsv36WqfLJn8qQo=
X-Received: by 2002:a25:ae26:0:b0:66d:1fdc:263c with SMTP id
 a38-20020a25ae26000000b0066d1fdc263cmr4783018ybj.137.1656524552557; Wed, 29
 Jun 2022 10:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220620092546.8298-1-hdegoede@redhat.com>
In-Reply-To: <20220620092546.8298-1-hdegoede@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Jun 2022 19:42:21 +0200
Message-ID: <CAJZ5v0i08vYPyDFY3KeK9vxbgfND4HUD7qMjpmK8dHQaURy-tg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: YW22B7VT27OHV2GP5SPVVSYGCKQIA2JN
X-Message-ID-Hash: YW22B7VT27OHV2GP5SPVVSYGCKQIA2JN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Andy Shevchenko <andy@kernel.org>, Kai-Heng Feng <kai.heng.feng@canonical.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 0/4] ACPI: EC: Various cleanups
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/YW22B7VT27OHV2GP5SPVVSYGCKQIA2JN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jun 20, 2022 at 11:26 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi All,
>
> Here is a set of cleanups / removal of no longer necessary
> quirks (or so I believe please review carefully). These are all
> things which I noticed while working on my:
> "[RFC 0/4] ACPI[CA]: fix ECDT EC probe ordering issues" series.
>
> Regards,
>
> Hans
>
> p.s.
> Talking about my "[RFC 0/4] ACPI[CA]: fix ECDT EC probe ordering issues"
> series, it would be great if someone can take a look at this and let me
> know if that series seems sane. Then I can convert the ACPICA changes
> from kernel patches to upstream github acpica patches and submit a
> pull-req for those at github.
>
>
> Hans de Goede (4):
>   ACPI: EC: Remove duplicate ThinkPad X1 Carbon 6th entry from DMI
>     quirks
>   ACPI: EC: Drop the EC_FLAGS_IGNORE_DSDT_GPE quirk
>   ACPI: EC: Re-use boot_ec when possible even when
>     EC_FLAGS_TRUST_DSDT_GPE is set
>   ACPI: EC: Drop unused ident initializers from dmi_system_id tables
>
>  drivers/acpi/ec.c | 140 ++++++++++++++++------------------------------
>  1 file changed, 48 insertions(+), 92 deletions(-)
>
> --

All four patches applied as 5.20 material, thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
