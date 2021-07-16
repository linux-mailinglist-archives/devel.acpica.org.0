Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1653CBB25
	for <lists+devel-acpica@lfdr.de>; Fri, 16 Jul 2021 19:27:36 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A0824100F2243;
	Fri, 16 Jul 2021 10:27:35 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.174; helo=mail-oi1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BF758100EB33F
	for <devel@acpica.org>; Fri, 16 Jul 2021 10:27:32 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id a132so896310oib.6
        for <devel@acpica.org>; Fri, 16 Jul 2021 10:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CeaYmmqy0BTpl+jDq91lfBNwbCyDsDM5K5yy/bAjZb8=;
        b=nMzcaLpatH5MA2QFVGPMBGLfg+dpYPIRWix0ETXpxliqgacQKvTciGe18G1Rp7j/BU
         85YoJccZqywCUxdeBoQnuHqZDf1yANKLeRTKvdKg9zeXWOSRcmQySUNLmSicSVGhMoF1
         vG1918FuqjWWzHtuNigLUXlQ+j7nJ7e2Y9H//zPVY77AO687lXzVXEQcofl566Wgedps
         ochsq1Rjd3vF9kaYniKDSKjUo3iIaj7KClBdrSzy6nlqfPooIwPX+RfEHJSQ+5WksXtj
         TXu9qJ/zb8dojGvYf81uCw90vadLbpq6QdNLCRvcax2i+ao0maSbbNPA7r2O45hQ+JMJ
         IILQ==
X-Gm-Message-State: AOAM531tn1iBB1K1OV+bygxWwOzGLaovfb4xGBpForHqWpHosn6N8EF2
	iz4wB6LlRw9AkSfFodGRILDg8iHtX/g/N68Mf/A=
X-Google-Smtp-Source: ABdhPJwREseWLWurDmxtUAjhpSaJUD5vYvIYiRBtvUwiqgC0pgq77pnXlc+lgYa79H2Ecw7YYi0BHyoK3SF9OmCUYpY=
X-Received: by 2002:a05:6808:10d0:: with SMTP id s16mr8300574ois.69.1626456451648;
 Fri, 16 Jul 2021 10:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210712182121.2936794-1-andy.shevchenko@gmail.com> <d542bc45-6e52-dc12-69bf-76fa6dcaaf5e@gmail.com>
In-Reply-To: <d542bc45-6e52-dc12-69bf-76fa6dcaaf5e@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 16 Jul 2021 19:27:20 +0200
Message-ID: <CAJZ5v0jR5T2+EHXz_RqzMDxb0i9pDhQTDZomWe3po91A7Bb-xg@mail.gmail.com>
To: Daniel Scally <djrscally@gmail.com>, Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID-Hash: MJT3ITNGJMTMKORYVPGLN7ATXQQ6MM2V
X-Message-ID-Hash: MJT3ITNGJMTMKORYVPGLN7ATXQQ6MM2V
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Ard Biesheuvel <ardb@kernel.org>, Yong Zhi <yong.zhi@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPI: utils: Fix reference counting in for_each_acpi_dev_match()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MJT3ITNGJMTMKORYVPGLN7ATXQQ6MM2V/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jul 14, 2021 at 12:32 AM Daniel Scally <djrscally@gmail.com> wrote:
>
> Hi Andy - thanks for fixing this
>
> On 12/07/2021 19:21, Andy Shevchenko wrote:
> > Currently it's possible to iterate over the dangling pointer in case the device
> > suddenly disappears. This may happen becase callers put it at the end of a loop.
> >
> > Instead, let's move that call inside acpi_dev_get_next_match_dev().
> >
> > Fixes: 803abec64ef9 ("media: ipu3-cio2: Add cio2-bridge to ipu3-cio2 driver")
> > Fixes: bf263f64e804 ("media: ACPI / bus: Add acpi_dev_get_next_match_dev() and helper macro")
> > Fixes: edbd1bc4951e ("efi/dev-path-parser: Switch to use for_each_acpi_dev_match()")
> > Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
>
> Reviewed-by: Daniel Scally <djrscally@gmail.com>

Applied as 5.14-rc material, thanks!

> > ---
> > v2:
> > - rebased on top of v5.14-rc1 and hence added fix for EFI code
> > - added kernel documentation update to point out that
> >   acpi_dev_get_next_match_dev() drops a reference on the given
> >   ACPI device (Rafael)
> >
> >  drivers/acpi/utils.c                       | 7 +++----
> >  drivers/firmware/efi/dev-path-parser.c     | 1 -
> >  drivers/media/pci/intel/ipu3/cio2-bridge.c | 6 ++----
> >  include/acpi/acpi_bus.h                    | 5 -----
> >  4 files changed, 5 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> > index e7ddd281afff..d5cedffeeff9 100644
> > --- a/drivers/acpi/utils.c
> > +++ b/drivers/acpi/utils.c
> > @@ -860,11 +860,9 @@ EXPORT_SYMBOL(acpi_dev_present);
> >   * Return the next match of ACPI device if another matching device was present
> >   * at the moment of invocation, or NULL otherwise.
> >   *
> > - * FIXME: The function does not tolerate the sudden disappearance of @adev, e.g.
> > - * in the case of a hotplug event. That said, the caller should ensure that
> > - * this will never happen.
> > - *
> >   * The caller is responsible for invoking acpi_dev_put() on the returned device.
> > + * On the other hand the function invokes  acpi_dev_put() on the given @adev
> > + * assuming that its reference counter had been increased beforehand.
> >   *
> >   * See additional information in acpi_dev_present() as well.
> >   */
> > @@ -880,6 +878,7 @@ acpi_dev_get_next_match_dev(struct acpi_device *adev, const char *hid, const cha
> >       match.hrv = hrv;
> >
> >       dev = bus_find_device(&acpi_bus_type, start, &match, acpi_dev_match_cb);
> > +     acpi_dev_put(adev);
> >       return dev ? to_acpi_device(dev) : NULL;
> >  }
> >  EXPORT_SYMBOL(acpi_dev_get_next_match_dev);
> > diff --git a/drivers/firmware/efi/dev-path-parser.c b/drivers/firmware/efi/dev-path-parser.c
> > index 10d4457417a4..eb9c65f97841 100644
> > --- a/drivers/firmware/efi/dev-path-parser.c
> > +++ b/drivers/firmware/efi/dev-path-parser.c
> > @@ -34,7 +34,6 @@ static long __init parse_acpi_path(const struct efi_dev_path *node,
> >                       break;
> >               if (!adev->pnp.unique_id && node->acpi.uid == 0)
> >                       break;
> > -             acpi_dev_put(adev);
> >       }
> >       if (!adev)
> >               return -ENODEV;
> > diff --git a/drivers/media/pci/intel/ipu3/cio2-bridge.c b/drivers/media/pci/intel/ipu3/cio2-bridge.c
> > index 4657e99df033..59a36f922675 100644
> > --- a/drivers/media/pci/intel/ipu3/cio2-bridge.c
> > +++ b/drivers/media/pci/intel/ipu3/cio2-bridge.c
> > @@ -173,10 +173,8 @@ static int cio2_bridge_connect_sensor(const struct cio2_sensor_config *cfg,
> >       int ret;
> >
> >       for_each_acpi_dev_match(adev, cfg->hid, NULL, -1) {
> > -             if (!adev->status.enabled) {
> > -                     acpi_dev_put(adev);
> > +             if (!adev->status.enabled)
> >                       continue;
> > -             }
> >
> >               if (bridge->n_sensors >= CIO2_NUM_PORTS) {
> >                       acpi_dev_put(adev);
> > @@ -185,7 +183,6 @@ static int cio2_bridge_connect_sensor(const struct cio2_sensor_config *cfg,
> >               }
> >
> >               sensor = &bridge->sensors[bridge->n_sensors];
> > -             sensor->adev = adev;
> >               strscpy(sensor->name, cfg->hid, sizeof(sensor->name));
> >
> >               ret = cio2_bridge_read_acpi_buffer(adev, "SSDB",
> > @@ -215,6 +212,7 @@ static int cio2_bridge_connect_sensor(const struct cio2_sensor_config *cfg,
> >                       goto err_free_swnodes;
> >               }
> >
> > +             sensor->adev = acpi_dev_get(adev);
> >               adev->fwnode.secondary = fwnode;
> >
> >               dev_info(&cio2->dev, "Found supported sensor %s\n",
> > diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> > index 1ae993fee4a5..b9d434a93632 100644
> > --- a/include/acpi/acpi_bus.h
> > +++ b/include/acpi/acpi_bus.h
> > @@ -707,11 +707,6 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv);
> >   * @hrv: Hardware Revision of the device, pass -1 to not check _HRV
> >   *
> >   * The caller is responsible for invoking acpi_dev_put() on the returned device.
> > - *
> > - * FIXME: Due to above requirement there is a window that may invalidate @adev
> > - * and next iteration will use a dangling pointer, e.g. in the case of a
> > - * hotplug event. That said, the caller should ensure that this will never
> > - * happen.
> >   */
> >  #define for_each_acpi_dev_match(adev, hid, uid, hrv)                 \
> >       for (adev = acpi_dev_get_first_match_dev(hid, uid, hrv);        \
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
