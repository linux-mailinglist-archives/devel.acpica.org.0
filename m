Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A14317A1DE
	for <lists+devel-acpica@lfdr.de>; Thu,  5 Mar 2020 10:06:04 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CF8D710FC3776;
	Thu,  5 Mar 2020 01:06:53 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.195; helo=mail-oi1-f195.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1EED910FC3772
	for <devel@acpica.org>; Thu,  5 Mar 2020 01:06:52 -0800 (PST)
Received: by mail-oi1-f195.google.com with SMTP id c1so5255390oiy.2
        for <devel@acpica.org>; Thu, 05 Mar 2020 01:06:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TFaIpxONCt+sIKKd0QPqj0IgGgaDTj/hC/vgrFizdCQ=;
        b=C5qn+kODtS3nZTLZDa9mPauhwJfSx/MqyMRP2+0H8nHEYx+EYol5pavdUUQTwh3ftJ
         N6llqplJlFvfC6x6JTYRsEKmocTk8A20bfCEojEjk03DLcKC6PS5eSTvJVjvYs+LIRiT
         l7MdEy1SACUwvK158dnvwZQIONAeTxlW+4e9ZQUXnM6LfrhcBrKg8RNIYvOuRiQBa9TO
         6Xxhvy0t1VCKMTr7+XHf0RPqnQmEHGnTLHal44pa4KKaD09jSkK8CVH8QUWifCk3oXv2
         haU1UT19qf9A2+tnCu+1U84aLHD2fUWQjtEZbjNl+dHWKZOe4btsQUI101OzhRRZ2XFM
         bJ4g==
X-Gm-Message-State: ANhLgQ1rfQ37KS0lemdioQCQzPLiStxQ4H2y8d5FxbCF0vyWS92lJC/3
	wB64q4cpDb92sAs0bioI0Oa5OY6CxcsGop0btOY=
X-Google-Smtp-Source: ADFU+vsVto72cKF3MbnXe+qIld4wE26jLbmiKoIvdaN3p8hl2BHPVRl6eXOwNLvQlumM0l5svFNoiVz3tZWVRYd3M0s=
X-Received: by 2002:aca:bfc2:: with SMTP id p185mr5074380oif.57.1583399159819;
 Thu, 05 Mar 2020 01:05:59 -0800 (PST)
MIME-Version: 1.0
References: <20200305013509.GF5972@shao2-debian> <951b0986-bb35-d9a5-1639-0a8cdb3dcd04@intel.com>
 <cbe4887c-d54a-c4aa-e4bf-981b5fcc291d@intel.com>
In-Reply-To: <cbe4887c-d54a-c4aa-e4bf-981b5fcc291d@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 5 Mar 2020 10:05:48 +0100
Message-ID: <CAJZ5v0g2vzYQ04GyrpubLx2+B0O4SDbqoTDCvhnSyaj1j1xswA@mail.gmail.com>
To: Rong Chen <rong.a.chen@intel.com>
Message-ID-Hash: SCTRDKR2HMCQUZPI36RT6DW2LU54SG4P
X-Message-ID-Hash: SCTRDKR2HMCQUZPI36RT6DW2LU54SG4P
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, LKML <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, lkp@lists.01.org, Rafael Wysocki <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [cpufreq] 909c0e9cc1: fwq.fwq.med 210.0% improvement
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SCTRDKR2HMCQUZPI36RT6DW2LU54SG4P/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 5, 2020 at 9:18 AM Rong Chen <rong.a.chen@intel.com> wrote:
>
>
>
> On 3/5/20 3:50 PM, Rafael J. Wysocki wrote:
> > On 3/5/2020 2:35 AM, kernel test robot wrote:
> >> Greeting,
> >>
> >> FYI, we noticed a 210.0% improvement of fwq.fwq.med due to commit:
> >
> > Well, that sounds impressive. :-)
> >
> >
> >>
> >> commit: 909c0e9cc11ba39fa5a660583b25c2431cf54deb ("cpufreq:
> >> intel_pstate: Use passive mode by default without HWP")
> >> https://git.kernel.org/cgit/linux/kernel/git/rafael/linux-pm.git
> >> intel_pstate-passive
> >>
> >> in testcase: fwq
> >> on test machine: 16 threads Intel(R) Xeon(R) CPU D-1541 @ 2.10GHz
> >> with 48G memory
> >> with following parameters:
> >>
> >>     nr_task: 100%
> >>     samples: 100000ss
> >>     iterations: 18x
> >>     cpufreq_governor: powersave
> >
> > The governor should be schedutil, though, unless it is explicitly set
> > to powersave in the test environment.
> >
> > Is that the case?
> >
> >
>
> Hi Rafael,
>
> Yes, we set to powersave for this test.

I wonder why this is done?  Is there any particular technical reason
for doing that?
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
