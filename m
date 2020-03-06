Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7920D17B99E
	for <lists+devel-acpica@lfdr.de>; Fri,  6 Mar 2020 10:54:59 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 933B510FC33EF;
	Fri,  6 Mar 2020 01:55:48 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.65; helo=mail-ot1-f65.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 92C0D10FC316E
	for <devel@acpica.org>; Fri,  6 Mar 2020 01:55:46 -0800 (PST)
Received: by mail-ot1-f65.google.com with SMTP id v10so1868164otp.2
        for <devel@acpica.org>; Fri, 06 Mar 2020 01:54:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZddTJZL3AntI4PKGAxsh5Sq6ETyogrz2w07vElT0QyA=;
        b=ZHkMr5a9kn7cVXX1I8kKytoXJMMypK+VDzHof4JpzRxq6NohdNlXd2c6wPegVItp0D
         lIW90MODuZ/a5zVdlfPvmm7Y6SOAyTek2Gox1iZ7dHA5YeTN/Y5y9zydiZgZWkmRY2j9
         zOJ3XgXF4/oKocVfyMOsryXJdrqZExxrxN66O6LPeW/W4Vz38bqMY3Pek+NUBk3tYHXm
         x1QYaXNkRnRyjdaa01Myw91G0uRbKpLEugaCGB4Qt3MExePd0pjNM+aKj6PNgfBx+tU5
         s803K4jSxts5jIs+R2qWXnDVGKmASKEygxkbKxyL+DHshCRJh5DJ8oZHyGkVVs95JWsb
         SumA==
X-Gm-Message-State: ANhLgQ1OjZyyWfeJCzX3VvOUI5L5FealC023LM+/nyKcNecxBJR4GTCU
	vjXlu8wWKXkQfcIPzAQ943PTx/3GuGwOUcVM+nY=
X-Google-Smtp-Source: ADFU+vtqRXDBI3R0DZ+1xYRefdIX7rKVaaXBMQIFjIo+Fbyy9C/VEwHjIb8g6CYzSBwDU+IQDzxlfDndhYrUBX/vp6M=
X-Received: by 2002:a9d:67d7:: with SMTP id c23mr1822295otn.262.1583488493901;
 Fri, 06 Mar 2020 01:54:53 -0800 (PST)
MIME-Version: 1.0
References: <20200305013509.GF5972@shao2-debian> <951b0986-bb35-d9a5-1639-0a8cdb3dcd04@intel.com>
 <cbe4887c-d54a-c4aa-e4bf-981b5fcc291d@intel.com> <CAJZ5v0g2vzYQ04GyrpubLx2+B0O4SDbqoTDCvhnSyaj1j1xswA@mail.gmail.com>
 <87zhcuyxce.fsf@yhuang-dev.intel.com>
In-Reply-To: <87zhcuyxce.fsf@yhuang-dev.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 6 Mar 2020 10:54:42 +0100
Message-ID: <CAJZ5v0g3f1Rf0HFLH+hWkbW6q0_E1RjhX2AeUxa_DHfJRQj7Qw@mail.gmail.com>
To: "Huang, Ying" <ying.huang@intel.com>
Message-ID-Hash: Q5PMFRGLPLXRCFMYBJ7RLKXSTJLW5U3G
X-Message-ID-Hash: Q5PMFRGLPLXRCFMYBJ7RLKXSTJLW5U3G
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Rong Chen <rong.a.chen@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, LKML <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, lkp@lists.01.org, Andi Kleen <andi.kleen@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [LKP] Re: [cpufreq] 909c0e9cc1: fwq.fwq.med 210.0% improvement
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/Q5PMFRGLPLXRCFMYBJ7RLKXSTJLW5U3G/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 6, 2020 at 4:29 AM Huang, Ying <ying.huang@intel.com> wrote:
>
> Hi, Rafael,
>
> "Rafael J. Wysocki" <rafael@kernel.org> writes:
>
> > On Thu, Mar 5, 2020 at 9:18 AM Rong Chen <rong.a.chen@intel.com> wrote:
> >>
> >>
> >>
> >> On 3/5/20 3:50 PM, Rafael J. Wysocki wrote:
> >> > On 3/5/2020 2:35 AM, kernel test robot wrote:
> >> >> Greeting,
> >> >>
> >> >> FYI, we noticed a 210.0% improvement of fwq.fwq.med due to commit:
> >> >
> >> > Well, that sounds impressive. :-)
> >> >
> >> >
> >> >>
> >> >> commit: 909c0e9cc11ba39fa5a660583b25c2431cf54deb ("cpufreq:
> >> >> intel_pstate: Use passive mode by default without HWP")
> >> >> https://git.kernel.org/cgit/linux/kernel/git/rafael/linux-pm.git
> >> >> intel_pstate-passive
> >> >>
> >> >> in testcase: fwq
> >> >> on test machine: 16 threads Intel(R) Xeon(R) CPU D-1541 @ 2.10GHz
> >> >> with 48G memory
> >> >> with following parameters:
> >> >>
> >> >>     nr_task: 100%
> >> >>     samples: 100000ss
> >> >>     iterations: 18x
> >> >>     cpufreq_governor: powersave
> >> >
> >> > The governor should be schedutil, though, unless it is explicitly set
> >> > to powersave in the test environment.
> >> >
> >> > Is that the case?
> >> >
> >> >
> >>
> >> Hi Rafael,
> >>
> >> Yes, we set to powersave for this test.
> >
> > I wonder why this is done?  Is there any particular technical reason
> > for doing that?
>
> fwq is a noise benchmark to measure the hardware and software noise
> level.  More information could be found in the following document.
>
> https://asc.llnl.gov/sequoia/benchmarks/FTQ_summary_v1.1.pdf
>
> In 0day, to measure the noise introduced by power management, we will
> run fwq with the performance and powersave governors.  Do you think this
> is reasonable?  Or we should use some other governors?

I think that the schedutil governor should be tested too if present.

Also note that for the intel_pstate driver "powersave" may mean
different things depending on the current operation mode of the
driver.  If scaling_driver is "intel_pstate", then "powersave" is the
driver's built-in algorithm.  If scaling_driver is "intel_cpufreq",
though, "powersave" means running at the minimum frequency all the
time.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
