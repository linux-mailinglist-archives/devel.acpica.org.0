Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D2037A4D8
	for <lists+devel-acpica@lfdr.de>; Tue, 11 May 2021 12:45:33 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5F45E100EC1D5;
	Tue, 11 May 2021 03:45:31 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.175; helo=mail-oi1-f175.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0DFF9100EC1C8
	for <devel@acpica.org>; Tue, 11 May 2021 03:45:29 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id i81so18632048oif.6
        for <devel@acpica.org>; Tue, 11 May 2021 03:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G6u/v5pBgRg/r9/xunKJA/aeWT5HHENr+pYBgEABwaM=;
        b=A2YuLV5g5g9wUQHiYXNtJcpgphThBW/cKFjIe4zWXVLvW2ZN++dItnVDjja6ysu9/R
         wzInZxD4koUqxriVBKwgBHKxiT0je83Pz28PGlmoCUDT3wuHdLCyd4dF+zw/HtwmilFe
         mM47i50hJaUQMfl+pU6EGkDoQrST5R2ok9jppm19m8S6ydQNWPFGXdFedYI3I0+m1GmD
         7/Ys1G/+2eax0UKmT5qtzCxw+5c5PO6EzZuufnPfNHmYLyQDpqXQ/mFfThr1Xx4Fs7CB
         wvLhPFuZprmGgUmocC+WAQ8T1R9RlgmDhouqNw8WjM3tC3Ct7a8Ph1yhrZSGmG6OM1fw
         3B6w==
X-Gm-Message-State: AOAM533RDsINRYJcJxAf8edT5KMQSk59W392Gy7bpwwgdOsglCQ1yaZu
	dCFMez2A5X86/TapUA3v02FSWC8cG6GrliT5nWo=
X-Google-Smtp-Source: ABdhPJwdZXJ1ob0LZQ7EGgUCIILvcrD+X3ZUrC0FuYdEvHrdhEo5dPSceGjRdF/CLveke651T/GDoEkrNARhJEq2tH8=
X-Received: by 2002:a05:6808:90d:: with SMTP id w13mr6972892oih.71.1620729928220;
 Tue, 11 May 2021 03:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210426023941.729334-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <20210426023941.729334-4-sathyanarayanan.kuppuswamy@linux.intel.com>
 <97e14cdc-ea98-18b8-0c89-db52440a7716@linux.intel.com> <CAJZ5v0gsqyXSr+Kw603333PZ=gnsBizNhyLAcu588OChEHT=AQ@mail.gmail.com>
 <4fa40e7a-bcb2-db0f-8dc5-28728b14377d@linux.intel.com> <20210510172237.GU4032392@tassilo.jf.intel.com>
 <CAJZ5v0iFsBWwXhqtLbTMicBSFme0HCvg+2xgtMgpkFMupk_Rkw@mail.gmail.com> <bc14b461-6431-c5ce-7117-854af8454900@linux.intel.com>
In-Reply-To: <bc14b461-6431-c5ce-7117-854af8454900@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 11 May 2021 12:45:17 +0200
Message-ID: <CAJZ5v0hFfVCm25wUCetOm4YdZKwt5h2jknN9ad1nnpxuR16KkQ@mail.gmail.com>
To: "Kuppuswamy, Sathyanarayanan" <sathyanarayanan.kuppuswamy@linux.intel.com>
Message-ID-Hash: BRHUQ6T4J33SRE3BSI2ACGIWXP7EP7TM
X-Message-ID-Hash: BRHUQ6T4J33SRE3BSI2ACGIWXP7EP7TM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Andi Kleen <ak@linux.intel.com>, Rafael J Wysocki <rjw@rjwysocki.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, Erik Kaneda <erik.kaneda@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>, Sean Christopherson <sean.j.christopherson@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 3/3] x86/acpi, x86/boot: Add multiprocessor wake-up support
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <>
List-Archive: <>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 10, 2021 at 11:15 PM Kuppuswamy, Sathyanarayanan
<sathyanarayanan.kuppuswamy@linux.intel.com> wrote:
>
>
>
> On 5/10/21 10:24 AM, Rafael J. Wysocki wrote:
> > The wakeup function can return an error when it is called for the
> > second time on the same CPU.
>
> To do this, we can only maintain the wakeup status of the CPUs. Can
> you check whether following physid_mask based status maintenance is
> acceptable?

It would work for me except for a couple of nits below.

> --- a/arch/x86/kernel/acpi/boot.c
> +++ b/arch/x86/kernel/acpi/boot.c
> @@ -67,6 +67,7 @@ static u64 acpi_lapic_addr __initdata = APIC_DEFAULT_PHYS_BASE;
>
>   static struct acpi_madt_multiproc_wakeup_mailbox *acpi_mp_wake_mailbox;
>   static u64 acpi_mp_wake_mailbox_paddr;
> +static physid_mask_t apic_id_wakemap = PHYSID_MASK_NONE;
>
>   #ifdef CONFIG_X86_IO_APIC
>   /*
> @@ -347,6 +348,13 @@ static int acpi_wakeup_cpu(int apicid, unsigned long start_ip)
>
>          acpi_mp_wake_mailbox_init();
>
> +       /* Check if the given CPU (apicid) is already awake */

The reason why is that the wakeup mechanism used here is only usable
once per CPU by the spec, so I would add this information to the
comment.  Maybe something like "According to the ACPI specification
(ACPI 6.4, Section ...), the mailbox-based wakeup mechanism cannot be
used more than once for the same CPU, so avoid doing that."

> +       if (physid_isset(apicid, apic_id_wakemap)) {
> +               pr_err("APIC ID %x is already awake, so failed to wakeup\n",
> +                               apicid);

And I would reword the message like this "CPU already awake (APIC ID
%x), skipping wakeup\n".

> +               return -EINVAL;
> +       }
> +
>          if (!acpi_mp_wake_mailbox)

Note, though, that instead of having this additional flag, you may as
well create a mask that is fully populated initially and clear the IDs
of the woken-up CPUs in it.  Then, you'd only need one check here
instead of two.

>                  return -EINVAL;
>
> @@ -374,8 +382,18 @@ static int acpi_wakeup_cpu(int apicid, unsigned long start_ip)
>          while (READ_ONCE(acpi_mp_wake_mailbox->command) && timeout--)
>                  cpu_relax();
>
> -       /* If timedout, return error */
> -       return timeout ? 0 : -EIO;
> +       if (timeout) {
> +               /*
> +                * If the CPU wakeup process is successful, store the
> +                * status in apic_id_wakemap to prevent re-wakeup
> +                * requests.
> +                */
> +               physid_set(apicid, apic_id_wakemap);
> +               return 0;
> +       }
> +
> +       /* If timed out (timeout == 0), return error */
> +       return -EIO;
>   }
>
>
> --
> Sathyanarayanan Kuppuswamy
> Linux Kernel Developer
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
