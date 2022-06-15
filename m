Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD49A54D3C6
	for <lists+devel-acpica@lfdr.de>; Wed, 15 Jun 2022 23:32:07 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5EC9F100EA10E;
	Wed, 15 Jun 2022 14:32:05 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 8E34C100EB34F
	for <devel@acpica.org>; Wed, 15 Jun 2022 14:32:03 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id x62so17995519ede.10
        for <devel@acpica.org>; Wed, 15 Jun 2022 14:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=odvCzLSKKuiENzizfeaGPvIgCKaPVvEk14WpPahs/w0=;
        b=OnzhAziPMz7BHhj/klhh24Swx+QtNowWmbMd6LuDCBdP+N43Bru7ha5pDEi+zB8Wrn
         C5LJr23DLqYvwwlmXfU5XJSqKepu5Kld6wRDFojm8YhrHA91B8VfXbHpxmtQnT78d+8M
         sBKz1cmPGJzIE76Zqawbp47jx13Qukc/o3cujrY4VqY+++HfchJW6IdNvp3v7XcDVy47
         Qv7m6tXQpwATaT38bi/yk6TK1OBatkIfvQ1A187WEMFcQJJRJayYu+M4OxdBFC1wGF3R
         tlL3n4rMjbpmMhYzoIKKVL40bQlJ8DUZcBnR7mMjAqyxKQTywAPAR+2av4zBbXzvBy8S
         p2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=odvCzLSKKuiENzizfeaGPvIgCKaPVvEk14WpPahs/w0=;
        b=P/4SeOTpu4WATHInMzAJjsGusmK7SNanN9csJlCuzJaVGFrbKcZDMEY6FL8EWisoFI
         2A1Cpts4tH6G1YV6rUMlCLSDM29jz+BE9J5M3SKPqHYWiykb8bSQwvcRsBuk+JEVM5OW
         0y+x6vobVk1bHCa2RkphKI7yEjkyH6oIIXyZuoCDFbRiaOIf3tWZo56+8483kleulGcb
         4fOHutoSpYdmSZDnmQFB7CIAZ6If4oSDf6pIgPVLcqdrcFHfnMf7rGu4Ou5fw3F/mFtK
         +5xDq//aoyKIVff02X3OS0P0C2l15aZufUdTZUWR5g/Aqrs63Atf20kUrsA91bcvhAMi
         qFCw==
X-Gm-Message-State: AJIora+u57gZ81molm1HuZhdPaMSYm3pdbI9vfAVrFQzWPUwmkP+qiiI
	FkVht3aa59gD4BLFXqiUsFNaC0PTThforpq5tM8=
X-Google-Smtp-Source: AGRyM1tTcMur2c22XOrIYhYZpjD/tj2dl8cIS+3H0YGB/UpWbCUfUHZePvyqd7sDIfyssr64VznjuvMDXBNDbIPABAs=
X-Received: by 2002:a05:6402:249e:b0:42d:bb88:865b with SMTP id
 q30-20020a056402249e00b0042dbb88865bmr2263152eda.141.1655328721215; Wed, 15
 Jun 2022 14:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220615195643.12608-1-hdegoede@redhat.com> <20220615195643.12608-3-hdegoede@redhat.com>
In-Reply-To: <20220615195643.12608-3-hdegoede@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 15 Jun 2022 23:31:24 +0200
Message-ID: <CAHp75VcPEw93_3dZvKCadnAqrJCVvdVcKh+DodgBC68xkmJ7VQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID-Hash: EZ2F2CHWV2AVBGX33N45WVM7LMDEQBT5
X-Message-ID-Hash: EZ2F2CHWV2AVBGX33N45WVM7LMDEQBT5
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Andy Shevchenko <andy@kernel.org>, Kai-Heng Feng <kai.heng.feng@canonical.com>, =?UTF-8?Q?Johannes_Pen=C3=9Fel?= <johannespenssel@posteo.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RFC 2/4] ACPICA: Add \_SB.PC00, \SB.PCI0 to acpi_ns_early_initialize_devices()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EZ2F2CHWV2AVBGX33N45WVM7LMDEQBT5/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jun 15, 2022 at 9:57 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Since ACPICA commit f005ee6b90d1 / Linux commit 2d3349de8072
> ("ACPICA: Namespace: Reorder \_SB._INI to make sure it is evaluated
> before _REG evaluations") acpi_initialize_objects() calls \_SB._INI
> before executing _REG OpRegion methods, because the _REG methods may
> rely on initialization done by this _INI method.
>
> In many DSDTs the \_SB.PC00._INI / \_SB.PCI0._INI methods set an OSYS
> global variable based on _OSI evaluations.
>
> In some cases there are _REG methods which depend on the OSYS value and
> before this change ACPICA would run these _REG methods before running
> _SB.PC00._INI / \_SB.PCI0._INI causing issues.
>
> 2 examples of problems caused by running _REG methods before these
> _INI methods are:
>
> 1. on a "Lenovo IdeaPad 5 15ITL05" \_SB.PC00.LPCB.EC0._REG gets
> evaluated before \_SB.PC00._INI and that _REG contains:
>
>     If ((OSYS == 0x07DF))
>     {
>         Local0 = 0x06
>     }
>
>     If ((Acquire (LFCM, 0xA000) == Zero))
>     {
>         OSTY = Local0
>         ...
>
> With OSTY being a SystemMemory OpRegion field, due to the _INI running
> too late, Local0 stays at 0. Causing OSTY to be set to 0 instead of 6,
> which causes the brightness up/down keys to not work:
> https://bugzilla.kernel.org/show_bug.cgi?id=214899
>
> 2. On a "Lenovo Thinkbook 14-ILL" \\_SB_.PCI0.I2C0._REG gets
> evaluated before \_SB.PCI0._INI and that _REG contains:
>
>     If ((OSYS == 0x07DF))
>     {
>         ...
>         LNUX = Zero
>         TPID = 0x4E
>     }
>     else
>     {
>         LNUX = One
>         TPID = 0xBB
>     }
>
> And then later on the TPID value gets used to decide for which of multiple
> devices describing the touchpad _STA should return 0xF and the one which
> gets enabled by TPID=0xBB is broken, causing to the touchpad to not work:
> https://bugzilla.redhat.com/show_bug.cgi?id=1842039
>
> Fix these issues by adding \_SB.PC00._INI / \_SB.PCI0._INI to the list of
> _INI methods to run early (before executing _REG methods).

...

> -       char path[ACPI_PATH_SEGMENT_LENGTH + 2];
> +       char path[ACPI_PATH_SEGMENT_LENGTH * 2 + 2];

Strictly speaking this should be, IIUC,

1 + ACPI_PATH_SEGMENT_LENGTH + ACPI_NAMESEG_SIZE + 1

\\ + path segment length (with a separator) + name + \0

That said, it seems the original code adds 1 unneeded byte.

Perhaps a comment in the code?

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
