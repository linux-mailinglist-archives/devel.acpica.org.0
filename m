Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDB6105F9
	for <lists+devel-acpica@lfdr.de>; Wed,  1 May 2019 09:59:40 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 141D92122C2FD;
	Wed,  1 May 2019 00:59:39 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.167.194; helo=mail-oi1-f194.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id DB0C82121AA06
 for <devel@acpica.org>; Wed,  1 May 2019 00:59:37 -0700 (PDT)
Received: by mail-oi1-f194.google.com with SMTP id y64so7799882oia.7
 for <devel@acpica.org>; Wed, 01 May 2019 00:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zxgDmRsn1/IVmGuf5U9azTe0s7v3EA8DrDT/1fTHG9Q=;
 b=JEUtwEnWUQZbY34Q+nBbNzqrEbpu0lzOox5Np6XhyIrjw0vT8pwL3F0+gvsDj/TyEx
 hvgFdUMEMvIdomx7k3DEasxsHi3C32jWbuQ7eH0nmp2IekrzltCJZF/Mz/evmfaotmyC
 /fzkxJeYcLbHXyzgGvuAZOreTor0ys85hogohp8heiD73cAeRXt0xWFrM92+2LkDvI0a
 qvtKQMTuan7jAb7m9p8I0VkQNd3u8C7tCDKbM2Rfk0I6hTnA2iiGGjO4f5oHwTvhuXC7
 Cseg+f/FayxB2cDUk1FhfO9AxJD7xlYpmh8KG17ng2ELkgAWn34Z53uGfU0jL7VozY9c
 5m2A==
X-Gm-Message-State: APjAAAVJlTh3T64Dlq93TBgLQc7YCIMOTrC+TlWO+EibY0MTl4qHkAx9
 dqP7VqRu4eyQmOdFuN3/En3zMrQaln1c8w2r+UY=
X-Google-Smtp-Source: APXvYqwRucsn2ORnmZzJM80aybzIMoVJlKVHwZ0llOPopwmEQAxBSBA2QxPX+O9LwH4uQ12+7ADgZSOR7ZOcJJsf2+o=
X-Received: by 2002:aca:ba82:: with SMTP id k124mr6169480oif.110.1556697576304; 
 Wed, 01 May 2019 00:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190415151857.25531-1-pierre-louis.bossart@linux.intel.com>
 <20190416032923.GQ28103@vkoul-mobl>
 <CAJZ5v0jOkQ7aWn6B_yVTYd7y+78mpGSzBoGuWe3uCdzDRNE94Q@mail.gmail.com>
 <eda0ed4e-fc36-a53a-225f-e7d54bb73413@linux.intel.com>
In-Reply-To: <eda0ed4e-fc36-a53a-225f-e7d54bb73413@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 1 May 2019 09:59:25 +0200
Message-ID: <CAJZ5v0iwm5tLRy2mLX6_uTk2wh+1Y4VaEcqDx5Z1WDLZHMnpEg@mail.gmail.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Subject: Re: [Devel] [alsa-devel] [PATCH] ACPI / device_sysfs: change _ADR
 representation to 64 bits
X-BeenThere: devel@acpica.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
List-Unsubscribe: <https://lists.acpica.org/mailman/options/devel>,
 <mailto:devel-request@acpica.org?subject=unsubscribe>
List-Archive: <http://lists.acpica.org/pipermail/devel/>
List-Post: <mailto:devel@acpica.org>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Subscribe: <https://lists.acpica.org/mailman/listinfo/devel>,
 <mailto:devel-request@acpica.org?subject=subscribe>
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, jank@cadence.com,
 Joe Perches <joe@perches.com>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Tue, Apr 30, 2019 at 8:23 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
>
>
>
> On 4/16/19 3:09 AM, Rafael J. Wysocki wrote:
> > On Tue, Apr 16, 2019 at 5:29 AM Vinod Koul <vkoul@kernel.org> wrote:
> >>
> >> On 15-04-19, 10:18, Pierre-Louis Bossart wrote:
> >>> Standards such as the MIPI DisCo for SoundWire 1.0 specification
> >>> assume the _ADR field is 64 bits.
> >>>
> >>> _ADR is defined as an "Integer" represented as 64 bits since ACPI 2.0
> >>> released in 2002. The low levels already use _ADR as 64 bits, e.g. in
> >>> struct acpi_device_info.
> >>>
> >>> This patch bumps the representation used for sysfs to 64 bits.
> >>>
> >>> Example with a SoundWire device, the results show the complete
> >>> vendorID and linkID which were omitted before:
> >>>
> >>> Before:
> >>> $ more /sys/bus/acpi/devices/device\:38/adr
> >>> 0x5d070000
> >>> After:
> >>> $ more /sys/bus/acpi/devices/device\:38/adr
> >>> 0x000010025d070000
> >>
> >> This looks fine but the sysfs file is an ABI. Not sure if we can modify
> >> the value returned this way.. Though it should not cause userspace
> >> reading 32bits to break...
> >
> > Well, IIRC using "08" instead of "016" in the format field would
> > preserve the existing behavior for 32-bit values, wouldn't it?
>
> yes, but it makes the 64-bit address not aligned depending on the number
> of leading zeroes, see below. I get a migraine just looking at the results.

Well, scripts reading them won't get that, but fair enough.

> Maybe add a test to use 08 for values that are below 0xFFFFFFFF and 16
> for addresses who really need the full range, typically because of an
> encoding?

That would be fine by me.
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
