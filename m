Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2FF14674
	for <lists+devel-acpica@lfdr.de>; Mon,  6 May 2019 10:36:37 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CFC462125046E;
	Mon,  6 May 2019 01:36:35 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.167.193; helo=mail-oi1-f193.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 5E8C22194EB77
 for <devel@acpica.org>; Mon,  6 May 2019 01:36:34 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id k9so8868007oig.9
 for <devel@acpica.org>; Mon, 06 May 2019 01:36:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RI5tWDg9So1VuC7W9/kUG69QrGBsy3wNS2QspBOJr3w=;
 b=WV7iNFGBrD70F+v/+tbPTdtSMUDtoSycQZnBZJwxWbrbxQ1Ie3KijfYHGyRCsYD0hg
 juLEgjYgO6o4xD2Gh/TePfikFp357N/8x21idmnC3TidfmUfCx8CFsbH28dOvqgoweZM
 qty8yuu82NQoSt2ddq+bQZ6zlEb/APIM7zJBICqnOzN4LXYma0ePt1Uji851I+Z/0lmZ
 D7nzolX/87gRDYdlqaQjzNWfyHAgfVHTyeRFTcD/yqk5+Jbji5UFnvHv+Et51Pvh1wcj
 WwaHR6fNGeCthpWaENVlc/siQj9fGIzt/JhJJq1CVUrBgJkZaNko/FvXGVBSGh/gNxUF
 EUHg==
X-Gm-Message-State: APjAAAXPFkAjQCUA/SPfuZ7ZmxgiT+QyJu3Rac2PkhLFAjLspUMHuNHg
 9r1MZifA+U+1XCb8u4p9/GR4+wcGqnq6XBaSZr0=
X-Google-Smtp-Source: APXvYqwAJUUjNvKVg6KZ3xRKyBM0B1Mi/aBfBkvmIKfrou4l4YatPD9RnwfhnPr74P6+x5gOB/MDST+7GGsfyLwLVXk=
X-Received: by 2002:aca:f01:: with SMTP id 1mr387656oip.68.1557131793348; Mon,
 06 May 2019 01:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190501125322.23791-1-pierre-louis.bossart@linux.intel.com>
 <20190502045817.GZ3845@vkoul-mobl.Dlink>
In-Reply-To: <20190502045817.GZ3845@vkoul-mobl.Dlink>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 6 May 2019 10:36:22 +0200
Message-ID: <CAJZ5v0i+M8y3ddr+Z5o5af8OatMXq3xqCF5CUg5PjnANrTOSHw@mail.gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [Devel] [PATCH v2] ACPI / device_sysfs: change _ADR
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
 <alsa-devel@alsa-project.org>, "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, jank@cadence.com,
 Joe Perches <joe@perches.com>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Thu, May 2, 2019 at 6:58 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 01-05-19, 07:53, Pierre-Louis Bossart wrote:
> > Standards such as the MIPI DisCo for SoundWire 1.0 specification
> > assume the _ADR field is 64 bits.
> >
> > _ADR is defined as an "Integer" represented as 64 bits since ACPI 2.0
> > released in 2002. The low levels already use _ADR as 64 bits, e.g. in
> > struct acpi_device_info.
> >
> > This patch bumps the representation used for sysfs to 64 bits. To
> > avoid any compatibility/ABI issues, the printf format is only extended
> > to 16 characters when the actual _ADR value exceeds the 32 bit
> > maximum.
> >
> > Example with a SoundWire device, the results show the complete
> > vendorID and linkID which were omitted before:
> >
> > Before:
> > $ more /sys/bus/acpi/devices/device\:38/adr
> > 0x5d070000
> > After:
> > $ more /sys/bus/acpi/devices/device\:38/adr
> > 0x000010025d070000
> >
> > Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> > ---
> > v2: only use 64 bits when required to avoid compatibility issues
> > (feedback from Vinod and Rafael)
> >
> >  drivers/acpi/device_sysfs.c | 6 ++++--
> >  include/acpi/acpi_bus.h     | 2 +-
> >  2 files changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/acpi/device_sysfs.c b/drivers/acpi/device_sysfs.c
> > index 8940054d6250..7dda0ee05cd1 100644
> > --- a/drivers/acpi/device_sysfs.c
> > +++ b/drivers/acpi/device_sysfs.c
> > @@ -428,8 +428,10 @@ static ssize_t acpi_device_adr_show(struct device *dev,
> >  {
> >       struct acpi_device *acpi_dev = to_acpi_device(dev);
> >
> > -     return sprintf(buf, "0x%08x\n",
> > -                    (unsigned int)(acpi_dev->pnp.bus_address));
> > +     if (acpi_dev->pnp.bus_address > 0xFFFFFFFF)
>
> Would prefer to use U32_MAX instead of 0xFFFFFFFF

I would.
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
