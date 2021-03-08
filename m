Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E81D331027
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Mar 2021 14:57:17 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B338E100EBBCD;
	Mon,  8 Mar 2021 05:57:15 -0800 (PST)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=134.134.136.20; helo=mga02.intel.com; envelope-from=andy.shevchenko@gmail.com; receiver=<UNKNOWN> 
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 321C5100EC1E3
	for <devel@acpica.org>; Mon,  8 Mar 2021 05:57:14 -0800 (PST)
IronPort-SDR: eoBEOVG2lYjuyL1QPW8mUr51RXP5gsGDgruEK4XSMnlgHefbAPyqW6pc4sOGiMY/aRtHUM0hpC
 BsYNKwUlw9pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="175140517"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400";
   d="scan'208";a="175140517"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2021 05:57:13 -0800
IronPort-SDR: y7vlO1ZA2ifHMhH+r9TWzkrV9NvFjAt1sBk3WHBE5e1lqHdlk6qXWckWfrSUFCrRF3XTbMxTIE
 N5f/lPC1De+Q==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400";
   d="scan'208";a="437486815"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2021 05:57:07 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andy.shevchenko@gmail.com>)
	id 1lJGNc-00ApWj-AU; Mon, 08 Mar 2021 15:57:04 +0200
Date: Mon, 8 Mar 2021 15:57:04 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <YEYtME2AxpXBq6iF@smile.fi.intel.com>
References: <20210222130735.1313443-1-djrscally@gmail.com>
 <20210222130735.1313443-2-djrscally@gmail.com>
 <CAHp75VfPuDjt=ZfHkwErF7_6Ks6wpqXO8mtq-2KjV+mU_PXFtg@mail.gmail.com>
 <615bad5e-6e68-43c9-dd0b-f26d2832d52f@gmail.com>
 <CAHp75Vc2iwvh1RiYmQDPSvgNvGT_gBcGTK67F+MhWgXyoxqn0A@mail.gmail.com>
 <CAJZ5v0ijOhT3PVm6-gqnqycE-YZhD00dGbtK1UEV5nfrOF5Obw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0ijOhT3PVm6-gqnqycE-YZhD00dGbtK1UEV5nfrOF5Obw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID-Hash: MFY4AKZOXQQ2WIOHE4ZR43YQ2JXUAVE7
X-Message-ID-Hash: MFY4AKZOXQQ2WIOHE4ZR43YQ2JXUAVE7
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Daniel Scally <djrscally@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rajmohan Mani <rajmohan.mani@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Wolfram Sang <wsa@kernel.org>, Lee Jones <lee.jones@linaro.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Maximilian Luz <luzmaximilian@gmail.com>, Erik Kaneda <erik.kaneda@intel.com>, me@fabwu.ch, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>, Platform Driver <platform-driver-x86@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" 
 <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v3 1/6] ACPI: scan: Extend acpi_walk_dep_device_list()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/MFY4AKZOXQQ2WIOHE4ZR43YQ2JXUAVE7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 08, 2021 at 02:36:27PM +0100, Rafael J. Wysocki wrote:
> On Sun, Mar 7, 2021 at 9:39 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Sun, Mar 7, 2021 at 3:36 PM Daniel Scally <djrscally@gmail.com> wrote:
> > > On 22/02/2021 13:34, Andy Shevchenko wrote:
> > > > On Mon, Feb 22, 2021 at 3:12 PM Daniel Scally <djrscally@gmail.com> wrote:
> > > >> The acpi_walk_dep_device_list() is not as generalisable as its name
> > > >> implies, serving only to decrement the dependency count for each
> > > >> dependent device of the input. Extend the function to instead accept
> > > >> a callback which can be applied to all the dependencies in acpi_dep_list.
> > > >> Replace all existing calls to the function with calls to a wrapper, passing
> > > >> a callback that applies the same dependency reduction.
> > > > The code looks okay to me, if it was the initial idea, feel free to add
> > > > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

...

> > > >> +void acpi_dev_flag_dependency_met(acpi_handle handle)

> > > > Since it's acpi_dev_* namespace, perhaps it should take struct acpi_device here?
> > >
> > > I can do this, but I avoided it because in most of the uses in the
> > > kernel currently there's no struct acpi_device, they're just passing
> > > ACPI_HANDLE(dev) instead, so I'd need to get the adev with
> > > ACPI_COMPANION() in each place. It didn't seem worth it...
> 
> It may not even be possible sometimes, because that function may be
> called before creating all of the struct acpi_device objects (like in
> the case of deferred enumeration).
> 
> > > but happy to
> > > do it if you'd prefer it that way?
> >
> > I see, let Rafael decide then. I'm not pushing here.
> 
> Well, it's a matter of correctness.

Looking at your above comment it is indeed. Thanks for clarification!
But should we have acpi_dev_*() namespace for this function if it takes handle?

For time being nothing better than following comes to my mind:

__acpi_dev_flag_dependency_met() => __acpi_flag_device_dependency_met()
acpi_dev_flag_dependency_met() => acpi_flag_device_dependency_met()

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
