Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 153241D14A
	for <lists+devel-acpica@lfdr.de>; Tue, 14 May 2019 23:29:26 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C233621276BAD;
	Tue, 14 May 2019 14:29:24 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=79.96.170.134; helo=cloudserver094114.home.pl;
 envelope-from=rjw@rjwysocki.net; receiver=devel@acpica.org 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id B382C21276BA9
 for <devel@acpica.org>; Tue, 14 May 2019 14:29:22 -0700 (PDT)
Received: from 79.184.255.148.ipv4.supernova.orange.pl (79.184.255.148) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id bc0f4377005ba3a1; Tue, 14 May 2019 23:29:19 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Date: Tue, 14 May 2019 23:29:18 +0200
Message-ID: <1683867.ro8ObbCUgW@kreacher>
In-Reply-To: <CAJZ5v0i+M8y3ddr+Z5o5af8OatMXq3xqCF5CUg5PjnANrTOSHw@mail.gmail.com>
References: <20190501125322.23791-1-pierre-louis.bossart@linux.intel.com>
 <20190502045817.GZ3845@vkoul-mobl.Dlink>
 <CAJZ5v0i+M8y3ddr+Z5o5af8OatMXq3xqCF5CUg5PjnANrTOSHw@mail.gmail.com>
MIME-Version: 1.0
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
 <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Monday, May 6, 2019 10:36:22 AM CEST Rafael J. Wysocki wrote:
> On Thu, May 2, 2019 at 6:58 AM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 01-05-19, 07:53, Pierre-Louis Bossart wrote:
> > > Standards such as the MIPI DisCo for SoundWire 1.0 specification
> > > assume the _ADR field is 64 bits.
> > >
> > > _ADR is defined as an "Integer" represented as 64 bits since ACPI 2.0
> > > released in 2002. The low levels already use _ADR as 64 bits, e.g. in
> > > struct acpi_device_info.
> > >
> > > This patch bumps the representation used for sysfs to 64 bits. To
> > > avoid any compatibility/ABI issues, the printf format is only extended
> > > to 16 characters when the actual _ADR value exceeds the 32 bit
> > > maximum.
> > >
> > > Example with a SoundWire device, the results show the complete
> > > vendorID and linkID which were omitted before:
> > >
> > > Before:
> > > $ more /sys/bus/acpi/devices/device\:38/adr
> > > 0x5d070000
> > > After:
> > > $ more /sys/bus/acpi/devices/device\:38/adr
> > > 0x000010025d070000
> > >
> > > Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> > > ---
> > > v2: only use 64 bits when required to avoid compatibility issues
> > > (feedback from Vinod and Rafael)
> > >
> > >  drivers/acpi/device_sysfs.c | 6 ++++--
> > >  include/acpi/acpi_bus.h     | 2 +-
> > >  2 files changed, 5 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/acpi/device_sysfs.c b/drivers/acpi/device_sysfs.c
> > > index 8940054d6250..7dda0ee05cd1 100644
> > > --- a/drivers/acpi/device_sysfs.c
> > > +++ b/drivers/acpi/device_sysfs.c
> > > @@ -428,8 +428,10 @@ static ssize_t acpi_device_adr_show(struct device *dev,
> > >  {
> > >       struct acpi_device *acpi_dev = to_acpi_device(dev);
> > >
> > > -     return sprintf(buf, "0x%08x\n",
> > > -                    (unsigned int)(acpi_dev->pnp.bus_address));
> > > +     if (acpi_dev->pnp.bus_address > 0xFFFFFFFF)
> >
> > Would prefer to use U32_MAX instead of 0xFFFFFFFF
> 
> I would.
> 

I have made that change manually and applied the patch.

Thanks!



_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
