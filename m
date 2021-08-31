Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6452B3FCD1A
	for <lists+devel-acpica@lfdr.de>; Tue, 31 Aug 2021 20:51:45 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7B6B2100EB82A;
	Tue, 31 Aug 2021 11:51:42 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.176; helo=mail-oi1-f176.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 5D607100EB829
	for <devel@acpica.org>; Tue, 31 Aug 2021 11:51:39 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id o185so338554oih.13
        for <devel@acpica.org>; Tue, 31 Aug 2021 11:51:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pAl6FCn0xjGx+leNhgbAOTdlqbzJCFFy67QvDdz1xcI=;
        b=D5WDn+885lQTsmotPFgwD8JjuAgek9sVceFj6X843216LGbcOwX9fN8tbxgIFmprtG
         L5TMljesSJN/r7AZWPA5GtPSeD1tyWglpXHa7NV+VTF10doGrnEBUmhr3z2Jbf1qWPEM
         q46obmNnf0XoAYovLh1KohLus1leR1XVnWcJJoPPZ3jFgXEPhYxBVRYjhaWc/1UtYwKY
         yqnjWb4J9OhZ8w1H+/URgop84kMpKlMV2Kt4dPvJ3Rd8pdGrMFewmY1QarBLAVHoVe2H
         a4w5ZE6pxu6lI8zvimZBt5Va3UJEOdqBMJpa5QWYTMli+CC34lhEZd2Nc2HfIS+eEkXc
         QmWQ==
X-Gm-Message-State: AOAM530shKcpAM7NJaJHfhJfSwOnBJDB0DTscIhlKkELHp5HpLVvsln+
	Oe2C69QfQMHMEvcr50l6eu8E5UpnbvGMapk58TE=
X-Google-Smtp-Source: ABdhPJwr3gSGs8wjMkRFy30kSPn37dT9HxNCFRRxYu5Qk4pPjX4Wo6oPAnpNML2i0v6TiCIvjdACwjxhdselfR+ybeg=
X-Received: by 2002:a05:6808:10c1:: with SMTP id s1mr4132859ois.69.1630435897582;
 Tue, 31 Aug 2021 11:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210813161842.222414-1-mario.limonciello@amd.com>
 <CAJZ5v0jynpMMnMBQuyJPYfSG-6JSe5=a6wW0UtUnpGuh68CqkA@mail.gmail.com> <b116a84b-c099-5bf4-6c25-f62cea856f45@amd.com>
In-Reply-To: <b116a84b-c099-5bf4-6c25-f62cea856f45@amd.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 31 Aug 2021 20:51:26 +0200
Message-ID: <CAJZ5v0ibUsBCoaz=BRpe42TuiVvSy68wj4VKs+H3Q6uKxCycJQ@mail.gmail.com>
To: "Limonciello, Mario" <mario.limonciello@amd.com>
Message-ID-Hash: UM4IZYI7CA2SHIBYMCKHAA2BUPNGRCXS
X-Message-ID-Hash: UM4IZYI7CA2SHIBYMCKHAA2BUPNGRCXS
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Borislav Petkov <bp@alien8.de>, Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, Alexander Deucher <Alexander.Deucher@amd.com>, Ray Huang <Ray.Huang@amd.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Erik Kaneda <erik.kaneda@intel.com>, "open list:SUSPEND TO RAM" <linux-pm@vger.kernel.org>, "open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>, "open list:ACPI" <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2] x86/acpi: Don't add CPUs that are not online capable
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/UM4IZYI7CA2SHIBYMCKHAA2BUPNGRCXS/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry for the delay.

On Tue, Aug 17, 2021 at 8:41 PM Limonciello, Mario
<mario.limonciello@amd.com> wrote:
>
> On 8/16/2021 09:04, Rafael J. Wysocki wrote:
> > On Fri, Aug 13, 2021 at 6:19 PM Mario Limonciello
> > <mario.limonciello@amd.com> wrote:
> >>
> >> A number of systems are showing "hotplug capable" CPUs when they
> >> are not really hotpluggable.  This is because the MADT has extra
> >> CPU entries to support different CPUs that may be inserted into
> >> the socket with different numbers of cores.
> >>
> >> Starting with ACPI 6.3 the spec has an Online Capable bit in the
> >> MADT used to determine whether or not a CPU is hotplug capable
> >> when the enabled bit is not set.
> >>
> >> Link: https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fuefi.org%2Fhtmlspecs%2FACPI_Spec_6_4_html%2F05_ACPI_Software_Programming_Model%2FACPI_Software_Programming_Model.html%3F%23local-apic-flags&amp;data=04%7C01%7Cmario.limonciello%40amd.com%7Ce6a384bf25274f88b49508d960bee40a%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637647195281368169%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3MWJ5NcRVJ7TP4tJH6uQRbqfZKSqe5RHjGxGbQEP13E%3D&amp;reserved=0
> >> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> >> ---
> >>   arch/x86/kernel/acpi/boot.c | 10 ++++++++++
> >>   include/acpi/actbl2.h       |  1 +
> >>   2 files changed, 11 insertions(+)
> >>
> >> Changes from v1->v2:
> >>   * Check the revision field in MADT to determine if it matches the
> >>     bump from ACPI 6.3 as suggested by Hanjun Guo
> >>   * Update description
> >>
> >> diff --git a/arch/x86/kernel/acpi/boot.c b/arch/x86/kernel/acpi/boot.c
> >> index e55e0c1fad8c..bfa69a5c9c0b 100644
> >> --- a/arch/x86/kernel/acpi/boot.c
> >> +++ b/arch/x86/kernel/acpi/boot.c
> >> @@ -53,6 +53,8 @@ int acpi_ioapic;
> >>   int acpi_strict;
> >>   int acpi_disable_cmcff;
> >>
> >> +bool acpi_support_online_capable;
> >
> > Missing static?
>
> Ack, thanks.
>
> >
> >> +
> >>   /* ACPI SCI override configuration */
> >>   u8 acpi_sci_flags __initdata;
> >>   u32 acpi_sci_override_gsi __initdata = INVALID_ACPI_IRQ;
> >> @@ -138,6 +140,8 @@ static int __init acpi_parse_madt(struct acpi_table_header *table)
> >>
> >>                  pr_debug("Local APIC address 0x%08x\n", madt->address);
> >>          }
> >> +       if (madt->header.revision >= 5)
> >> +               acpi_support_online_capable = true;
> >>
> >>          default_acpi_madt_oem_check(madt->header.oem_id,
> >>                                      madt->header.oem_table_id);
> >> @@ -239,6 +243,12 @@ acpi_parse_lapic(union acpi_subtable_headers * header, const unsigned long end)
> >>          if (processor->id == 0xff)
> >>                  return 0;
> >>
> >> +       /* don't register processors that can not be onlined */
> >> +       if (acpi_support_online_capable &&
> >> +           !(processor->lapic_flags & ACPI_MADT_ENABLED) &&
> >> +           !(processor->lapic_flags & ACPI_MADT_ONLINE_CAPABLE))
> >> +               return 0;
> >> +
> >>          /*
> >>           * We need to register disabled CPU as well to permit
> >>           * counting disabled CPUs. This allows us to size
> >> diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> >> index 2069ac38a4e2..fae45e383987 100644
> >> --- a/include/acpi/actbl2.h
> >> +++ b/include/acpi/actbl2.h
> >
> > The one below is an ACPICA change and I'd prefer it to be integrated
> > via the upstream ACPICA.
> >
> > Could you prepare an ACPICA pull request for just the bit below and
> > send it via GitHub?
>
> Sure thing.
> http://github.com/acpica/acpica/pull/708/
>
> They said they would take it later this month or next month.
>
> Given that, how do you want to proceed with the first part of this?
>
> Should I send a 2 patch series that will add the MADT bit to actbl2.h in
> advance of their next release, or should I wait to resubmit until after
> their next release and you've brought it into your tree?

If you want this to go into 5.15, I would suggest going for the first option.

Knowing that the ACPICA patch is going to reach upstream at one point,
I can put it into Linux in advance.

> >
> >> @@ -808,6 +808,7 @@ struct acpi_madt_multiproc_wakeup_mailbox {
> >>   /* MADT Local APIC flags */
> >>
> >>   #define ACPI_MADT_ENABLED           (1)        /* 00: Processor is usable if set */
> >> +#define ACPI_MADT_ONLINE_CAPABLE    (2)        /* 01: System HW supports enabling processor at runtime */
> >>
> >>   /* MADT MPS INTI flags (inti_flags) */
> >>
> >> --
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
