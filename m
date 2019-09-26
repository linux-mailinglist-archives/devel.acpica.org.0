Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C53ABBFA09
	for <lists+devel-acpica@lfdr.de>; Thu, 26 Sep 2019 21:26:33 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id D47F22010BCF9;
	Thu, 26 Sep 2019 12:28:36 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.210.67; helo=mail-ot1-f67.google.com;
 envelope-from=rjwysocki@gmail.com; receiver=devel@acpica.org 
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 80B8221A134A1
 for <devel@acpica.org>; Thu, 26 Sep 2019 12:28:35 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id k32so163713otc.4
 for <devel@acpica.org>; Thu, 26 Sep 2019 12:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FWSNDGi3jKauQ9dQ/11vDbIdImhGLJ9T350jR54cptU=;
 b=ElbPFGaOwtlih4pBfiHwlMrXYlINPCUMCh8LZZgnSbJkY8rbOSuNP9YSPZDn0mSaC1
 L6uDR9JEDLvBJYTqmfvKNYsxAMO4mKmkOoxFQ+FXoY1RjO/5/UkZ2FyeIi85QxrAkdyj
 u6/tQwFEVZuUJXrxLej6njhsYLGJUmDO/8kbvY1FUDlxWNQGkP3ivGc3kgL+PCMegxJk
 TkXJeJ7dfVttEsbUCfA+EEqfZkKoVNIZTcMPXsJPVa+lm8sdf1RPvFML/UeMuwNLkbnE
 n6xBx+ZpPd+xoZFY2jWb32Yx+Z+GmwcOPchq2GP8/be9tnFwEpR+RVMDwiEPdjYPXw6u
 wlVw==
X-Gm-Message-State: APjAAAXLDBMSkmICgzAqqurnKEpJreerpNB231UD32G3P6BKZ3KKWf4z
 sOi7MDbTJdRgy40DczTf+l6zNZTdFUSnT+csmDw=
X-Google-Smtp-Source: APXvYqzW9DF/vWRb6DCPzhE4K2ZyyzirbhSAsNzpATto9PNZE1oQN6tTcBuhGTR8dBQ4vCwYDV6M2uzCLf9BDAv5XT0=
X-Received: by 2002:a9d:6a16:: with SMTP id g22mr260324otn.118.1569525989675; 
 Thu, 26 Sep 2019 12:26:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190906174605.GY2680@smile.fi.intel.com>
 <20190912080742.24642-1-nikolaus.voss@loewensteinmedical.de>
 <CF6A88132359CE47947DB4C6E1709ED53C6481B1@ORSMSX122.amr.corp.intel.com>
 <20190926163528.GH32742@smile.fi.intel.com>
 <CF6A88132359CE47947DB4C6E1709ED53C6481F2@ORSMSX122.amr.corp.intel.com>
 <alpine.DEB.2.20.1909262043380.13592@fox.voss.local>
In-Reply-To: <alpine.DEB.2.20.1909262043380.13592@fox.voss.local>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 26 Sep 2019 21:26:18 +0200
Message-ID: <CAJZ5v0g=onKCidHMLNWuYFCuhcQGmtDDp5QSGiHu1jhoDRuhWQ@mail.gmail.com>
To: Nikolaus Voss <nv@vosn.de>
Subject: Re: [Devel] [PATCH] ACPICA: make acpi_load_table() return table
 index
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
Cc: "Shevchenko, Andriy" <andriy.shevchenko@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "devel@acpica.org" <devel@acpica.org>, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Thu, Sep 26, 2019 at 8:44 PM Nikolaus Voss <nv@vosn.de> wrote:
>
> On Thu, 26 Sep 2019, Schmauss, Erik wrote:
> >> -----Original Message-----
> >> From: linux-acpi-owner@vger.kernel.org <linux-acpi-owner@vger.kernel.org>
> >> On Behalf Of Shevchenko, Andriy
> >> Sent: Thursday, September 26, 2019 9:35 AM
> >> To: Schmauss, Erik <erik.schmauss@intel.com>
> >> Cc: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>; Rafael J. Wysocki
> >> <rjw@rjwysocki.net>; Moore, Robert <robert.moore@intel.com>; Len Brown
> >> <lenb@kernel.org>; Jacek Anaszewski <jacek.anaszewski@gmail.com>; Pavel
> >> Machek <pavel@ucw.cz>; Dan Murphy <dmurphy@ti.com>; linux-
> >> acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org;
> >> nv@vosn.de
> >> Subject: Re: [PATCH] ACPICA: make acpi_load_table() return table index
> >>
> >> On Thu, Sep 26, 2019 at 07:09:05PM +0300, Schmauss, Erik wrote:
> >>>> -----Original Message-----
> >>>> From: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
> >>>> Sent: Thursday, September 12, 2019 1:08 AM
> >>>> To: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss, Erik
> >>>> <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>;
> >>>> Moore, Robert <robert.moore@intel.com>
> >>>> Cc: Len Brown <lenb@kernel.org>; Jacek Anaszewski
> >>>> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan
> >>>> Murphy <dmurphy@ti.com>; linux-acpi@vger.kernel.org;
> >>>> devel@acpica.org; linux- kernel@vger.kernel.org; nv@vosn.de;
> >>>> Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
> >>>> Subject: [PATCH] ACPICA: make acpi_load_table() return table index
> >>>>
> >>> Hi Nikolaus,
> >>>
> >>>> For unloading an ACPI table, it is necessary to provide the index of the table.
> >>>> The method intended for dynamically loading or hotplug addition of
> >>>> tables, acpi_load_table(), should provide this information via an
> >>>> optional pointer to the loaded table index.
> >>>
> >>> We'll take this patch for ACPICA upstream
> >>
> >> Erik,
> >>
> > Hi Andy,
> >
> >> how about to have also counterpart to acpi_load_table() which will do what it's
> >> done now in acpi_configfs.c via acpi_tb_*() API?
> >
> > I should have given more details. We decided to add this extra parameter
> > in AcpiLoadTable and we're going to create an AcpiUnloadTable function
> > that will take table index to unload the table (basically the
> > acpi_tb_unload..). Once we do this, you can use table indices with
> > AcpiUnloadTable and AcpiLoadTable.
>
> that's even better news.
>
> Rafael, shall I prepare anything?

I don't think so.  I'm expecting to get a proper fix from the upstream
through the normal process.

Thanks,
Rafael
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
