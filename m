Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9452A13431
	for <lists+devel-acpica@lfdr.de>; Fri,  3 May 2019 21:55:02 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3C58E2124B927;
	Fri,  3 May 2019 12:55:01 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=192.55.52.120; helo=mga04.intel.com;
 envelope-from=robert.moore@intel.com; receiver=devel@acpica.org 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id C8AFB2194EB76
 for <devel@acpica.org>; Fri,  3 May 2019 12:54:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 12:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="343204990"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga005.fm.intel.com with ESMTP; 03 May 2019 12:54:58 -0700
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 12:54:58 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.28]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.68]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 12:54:58 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
Thread-Topic: [PATCH v2] ACPI / device_sysfs: change _ADR representation to
 64 bits
Thread-Index: AQHVABzpPFu1CoIi4kGbA9d0A2PiXaZZ03bg
Date: Fri, 3 May 2019 19:54:57 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B958C7AE@ORSMSX110.amr.corp.intel.com>
References: <20190501125322.23791-1-pierre-louis.bossart@linux.intel.com>
In-Reply-To: <20190501125322.23791-1-pierre-louis.bossart@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzI4NDBhMDUtN2FiMC00Y2Q1LTljZGItY2VmYTE0MDQ1Yjg3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTWNnRytaTnE2b3A3b2pvMEVmQWlmWUgwVWtZbVE0MzEwc3MxSEpZVWNqVTQ0eGx5U0I2Rm1BS0ZmQjBtNEtoeCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
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
Cc: "tiwai@suse.de" <tiwai@suse.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "liam.r.girdwood@linux.intel.com" <liam.r.girdwood@linux.intel.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "jank@cadence.com" <jank@cadence.com>, "joe@perches.com" <joe@perches.com>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



> -----Original Message-----
> From: Pierre-Louis Bossart [mailto:pierre-louis.bossart@linux.intel.com]
> Sent: Wednesday, May 1, 2019 5:53 AM
> To: alsa-devel@alsa-project.org
> Cc: linux-kernel@vger.kernel.org; tiwai@suse.de; broonie@kernel.org;
> vkoul@kernel.org; gregkh@linuxfoundation.org;
> liam.r.girdwood@linux.intel.com; jank@cadence.com; joe@perches.com;
> srinivas.kandagatla@linaro.org; Pierre-Louis Bossart <pierre-
> louis.bossart@linux.intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>;
> Len Brown <lenb@kernel.org>; Moore, Robert <robert.moore@intel.com>;
> Schmauss, Erik <erik.schmauss@intel.com>; open list:ACPI <linux-
> acpi@vger.kernel.org>; open list:ACPI COMPONENT ARCHITECTURE (ACPICA)
> <devel@acpica.org>
> Subject: [PATCH v2] ACPI / device_sysfs: change _ADR representation to
> 64 bits
> 
> Standards such as the MIPI DisCo for SoundWire 1.0 specification assume
> the _ADR field is 64 bits.
> 
> _ADR is defined as an "Integer" represented as 64 bits since ACPI 2.0
> released in 2002. The low levels already use _ADR as 64 bits, e.g. in
> struct acpi_device_info.
> 
[Moore, Robert] 

Just to be precise: since acpi 2.0 the integer width is either 32 bits or 64 bits, depending on the version number of the DSDT (1-->32, 2 or greater --> 64).


> This patch bumps the representation used for sysfs to 64 bits. To avoid
> any compatibility/ABI issues, the printf format is only extended to 16
> characters when the actual _ADR value exceeds the 32 bit maximum.
> 
> Example with a SoundWire device, the results show the complete vendorID
> and linkID which were omitted before:
> 
> Before:
> $ more /sys/bus/acpi/devices/device\:38/adr
> 0x5d070000
> After:
> $ more /sys/bus/acpi/devices/device\:38/adr
> 0x000010025d070000
> 
> Signed-off-by: Pierre-Louis Bossart <pierre-
> louis.bossart@linux.intel.com>
> ---
> v2: only use 64 bits when required to avoid compatibility issues
> (feedback from Vinod and Rafael)
> 
>  drivers/acpi/device_sysfs.c | 6 ++++--
>  include/acpi/acpi_bus.h     | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/acpi/device_sysfs.c b/drivers/acpi/device_sysfs.c
> index 8940054d6250..7dda0ee05cd1 100644
> --- a/drivers/acpi/device_sysfs.c
> +++ b/drivers/acpi/device_sysfs.c
> @@ -428,8 +428,10 @@ static ssize_t acpi_device_adr_show(struct device
> *dev,  {
>  	struct acpi_device *acpi_dev = to_acpi_device(dev);
> 
> -	return sprintf(buf, "0x%08x\n",
> -		       (unsigned int)(acpi_dev->pnp.bus_address));
> +	if (acpi_dev->pnp.bus_address > 0xFFFFFFFF)
> +		return sprintf(buf, "0x%016llx\n", acpi_dev-
> >pnp.bus_address);
> +	else
> +		return sprintf(buf, "0x%08llx\n", acpi_dev->pnp.bus_address);
>  }
>  static DEVICE_ATTR(adr, 0444, acpi_device_adr_show, NULL);
> 
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h index
> f7981751ac77..9075e28ea60a 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -230,7 +230,7 @@ struct acpi_device_dir {
>  /* Plug and Play */
> 
>  typedef char acpi_bus_id[8];
> -typedef unsigned long acpi_bus_address;
> +typedef u64 acpi_bus_address;
>  typedef char acpi_device_name[40];
>  typedef char acpi_device_class[20];
> 
> --
> 2.17.1

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
