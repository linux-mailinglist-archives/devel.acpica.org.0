Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 835DC17F23A
	for <lists+devel-acpica@lfdr.de>; Tue, 10 Mar 2020 09:46:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 484BD10FC3602;
	Tue, 10 Mar 2020 01:47:02 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.195; helo=mail-oi1-f195.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 017B610FC35BD
	for <devel@acpica.org>; Tue, 10 Mar 2020 01:46:59 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id g6so13076474oiy.1
        for <devel@acpica.org>; Tue, 10 Mar 2020 01:46:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A8GV2HuSqXBx4DrwJWUZYgLB27q46+xOcdSszllMiCI=;
        b=s2MmdKDQF+W9Dxc0f/MRhLXVNnjFuyQcGHKL6GnSQ+QZXe+lDeSDVJpDN1KwfETLeC
         2Wqt5KyFYmf7zFZ9xUJbVrgzSWm/POugFuzGDiKuOP0t8WvLO3bbA+se80VRhJ4XAbVm
         C0kpbC4BXrfGEPFkd6VnncbJ5VFNI5Ncx5uji2ptiH0spOkETx9YxJhoiImye98Nf9jC
         bC/GYgaD3avWr2GNzO3uySLH0VmjRCD8yzd6HbRwtV6u3m59QBn6SfSkQNKiqGYAvFiS
         a4N+aUhfcx4S1Pwp6pgMxEY425xsx4c4wgQUx+CIpLHDcIdKkLKX8SthBFhcyBSHkHAQ
         0Gkw==
X-Gm-Message-State: ANhLgQ3dQLbdDzgRGT3toIGaVYE7DHCOv1Kxf8BJmrKzYOvYaAWQwTMb
	dlJHt59pbR/jzPbn/gcIxO8SXy6Y813iSMgN5U4=
X-Google-Smtp-Source: ADFU+vttQqetvNaCij6CJgxOr6ZhOH0rw6dT6OZELsXWp4+In7/oAlCGDZCXVnl7OX4oCGpGQHis/ArFx874qPoc7Zk=
X-Received: by 2002:aca:df0b:: with SMTP id w11mr352964oig.68.1583829968022;
 Tue, 10 Mar 2020 01:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200305013509.GF5972@shao2-debian> <951b0986-bb35-d9a5-1639-0a8cdb3dcd04@intel.com>
 <cbe4887c-d54a-c4aa-e4bf-981b5fcc291d@intel.com> <CAJZ5v0g2vzYQ04GyrpubLx2+B0O4SDbqoTDCvhnSyaj1j1xswA@mail.gmail.com>
 <87zhcuyxce.fsf@yhuang-dev.intel.com> <CAJZ5v0g3f1Rf0HFLH+hWkbW6q0_E1RjhX2AeUxa_DHfJRQj7Qw@mail.gmail.com>
 <87imjez5rl.fsf@yhuang-dev.intel.com>
In-Reply-To: <87imjez5rl.fsf@yhuang-dev.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 10 Mar 2020 09:45:57 +0100
Message-ID: <CAJZ5v0hdAnN-mu8b9g19cM8AqYGXDbs1qVxLu-qE-3P6fP1=XA@mail.gmail.com>
To: "Huang, Ying" <ying.huang@intel.com>
Message-ID-Hash: EVAW2WUKELYLOCOSZE7EB255MRV6PMY2
X-Message-ID-Hash: EVAW2WUKELYLOCOSZE7EB255MRV6PMY2
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Rong Chen <rong.a.chen@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, LKML <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, lkp@lists.01.org, Andi Kleen <andi.kleen@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [LKP] Re: [cpufreq] 909c0e9cc1: fwq.fwq.med 210.0% improvement
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/EVAW2WUKELYLOCOSZE7EB255MRV6PMY2/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 9, 2020 at 2:17 AM Huang, Ying <ying.huang@intel.com> wrote:
>
> "Rafael J. Wysocki" <rafael@kernel.org> writes:
>
> > On Fri, Mar 6, 2020 at 4:29 AM Huang, Ying <ying.huang@intel.com> wrote:
> >>
> >> Hi, Rafael,
> >>
> >> "Rafael J. Wysocki" <rafael@kernel.org> writes:
> >>
> >> > On Thu, Mar 5, 2020 at 9:18 AM Rong Chen <rong.a.chen@intel.com> wrote:
> >> >>
> >> >>
> >> >>
> >> >> On 3/5/20 3:50 PM, Rafael J. Wysocki wrote:
> >> >> > On 3/5/2020 2:35 AM, kernel test robot wrote:
> >> >> >> Greeting,
> >> >> >>
> >> >> >> FYI, we noticed a 210.0% improvement of fwq.fwq.med due to commit:
> >> >> >
> >> >> > Well, that sounds impressive. :-)
> >> >> >
> >> >> >
> >> >> >>
> >> >> >> commit: 909c0e9cc11ba39fa5a660583b25c2431cf54deb ("cpufreq:
> >> >> >> intel_pstate: Use passive mode by default without HWP")
> >> >> >> https://git.kernel.org/cgit/linux/kernel/git/rafael/linux-pm.git
> >> >> >> intel_pstate-passive
> >> >> >>
> >> >> >> in testcase: fwq
> >> >> >> on test machine: 16 threads Intel(R) Xeon(R) CPU D-1541 @ 2.10GHz
> >> >> >> with 48G memory
> >> >> >> with following parameters:
> >> >> >>
> >> >> >>     nr_task: 100%
> >> >> >>     samples: 100000ss
> >> >> >>     iterations: 18x
> >> >> >>     cpufreq_governor: powersave
> >> >> >
> >> >> > The governor should be schedutil, though, unless it is explicitly set
> >> >> > to powersave in the test environment.
> >> >> >
> >> >> > Is that the case?
> >> >> >
> >> >> >
> >> >>
> >> >> Hi Rafael,
> >> >>
> >> >> Yes, we set to powersave for this test.
> >> >
> >> > I wonder why this is done?  Is there any particular technical reason
> >> > for doing that?
> >>
> >> fwq is a noise benchmark to measure the hardware and software noise
> >> level.  More information could be found in the following document.
> >>
> >> https://asc.llnl.gov/sequoia/benchmarks/FTQ_summary_v1.1.pdf
> >>
> >> In 0day, to measure the noise introduced by power management, we will
> >> run fwq with the performance and powersave governors.  Do you think this
> >> is reasonable?  Or we should use some other governors?
> >
> > I think that the schedutil governor should be tested too if present.
> >
> > Also note that for the intel_pstate driver "powersave" may mean
> > different things depending on the current operation mode of the
> > driver.  If scaling_driver is "intel_pstate", then "powersave" is the
> > driver's built-in algorithm.  If scaling_driver is "intel_cpufreq",
> > though, "powersave" means running at the minimum frequency all the
> > time.
>
> Thanks for your guidance.  We will test schedutil governor in the future
> too.
>
> As for powersave, should we stop testing it?

You cannot stop testing it, because it is the default governor
algorithm for intel_pstate working in the active mode.

>  Or just pay attention to the possible issue you pointed out?

Yes, please!

Basically, I would recommend to test the following configurations by default:

(1) scaling_driver = intel_pstate + scaling_governor = powersave

(2) scaling_driver = intel_cpufreq + scaling_governor = schedutil

The other ones are kind of less interesting.

[Note that in order to switch over from intel_pstate to intel_cpufreq,
you need to write "passive" into
/sys/devices/system/cpu/intel_pstate/status and if that write fails,
configuration (2) is not available and may be skipped.]

> Should we add ondemand governor?

Not necessarily, maybe as a reference only if you have spare cycles.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
