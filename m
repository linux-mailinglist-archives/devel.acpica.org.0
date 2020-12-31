Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0392E81FE
	for <lists+devel-acpica@lfdr.de>; Thu, 31 Dec 2020 21:46:21 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A20E7100EBBAC;
	Thu, 31 Dec 2020 12:46:19 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=79.96.170.134; helo=cloudserver094114.home.pl; envelope-from=rjw@rjwysocki.net; receiver=<UNKNOWN> 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl [79.96.170.134])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A2237100EBBA0
	for <devel@acpica.org>; Thu, 31 Dec 2020 12:46:16 -0800 (PST)
Received: from 89-77-60-66.dynamic.chello.pl (89.77.60.66) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.537)
 id adb218dee83d9126; Thu, 31 Dec 2020 21:46:12 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Stephen Berman <stephen.berman@gmx.net>
Date: Thu, 31 Dec 2020 21:46:11 +0100
Message-ID: <9709109.MH8tSaV5v9@kreacher>
In-Reply-To: <CAJZ5v0j7i86twMS+csYMaetUkvqjof4FD2GRNoZ_AN=SBF7F1w@mail.gmail.com>
References: <87blkbx1gt.fsf@gmx.net> <CAJZ5v0j86pX_a4bSLP=sobLoYhfQYV9dWL8HHf2941kXgND79g@mail.gmail.com> <CAJZ5v0j7i86twMS+csYMaetUkvqjof4FD2GRNoZ_AN=SBF7F1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID-Hash: TGBHKXE5BMCIGQB6ZU6TKWO44JPEGG3U
X-Message-ID-Hash: TGBHKXE5BMCIGQB6ZU6TKWO44JPEGG3U
X-MailFrom: rjw@rjwysocki.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Erik Kaneda <erik.kaneda@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: power-off delay/hang due to commit 6d25be57 (mainline)
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TGBHKXE5BMCIGQB6ZU6TKWO44JPEGG3U/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

On Wednesday, December 2, 2020 8:13:38 PM CET Rafael J. Wysocki wrote:
> On Wed, Dec 2, 2020 at 7:31 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> >
> > On Wed, Dec 2, 2020 at 7:03 PM Sebastian Andrzej Siewior
> > <bigeasy@linutronix.de> wrote:
> > >
> > > On 2020-10-26 18:20:59 [+0100], To Rafael J. Wysocki wrote:
> > > > > > > > Done as Bug 208877.
> > > > > > Rafael, do you have any suggestions?
> > > > >
> > > > > I've lost track of this sorry.
> > > > >
> > > > > I have ideas, let me get back to this next week.
> > > >
> > > > :)
> > >
> > > Rafael, any update? If you outline an idea or so then I may be able to
> > > form a patch out of it. Otherwise I have no idea how to fix this - other
> > > than telling the driver to not poll in smaller intervals than
> > > 30secs.
> >
> > The idea, roughly speaking, is to limit the number of outstanding work
> > items in the queue (basically, if there's a notification occurring
> > before the previous one can be handled, there is no need to queue up
> > another work item for it).
> 
> That's easier said than done, though, because of the way the work item
> queue-up is hooked up into the ACPICA code.

So scratch this and it wouldn't work in general anyway AFAICS.

ATM, I'm tempted to do something like the patch below (with the rationale
that it shouldn't be necessary to read the temperature right after updating
the trip points if polling is in use, because the next update through polling
will cause it to be read anyway and it will trigger trip point actions as
needed).

Stephen, can you give it a go, please?

---
 drivers/acpi/thermal.c |   17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

Index: linux-pm/drivers/acpi/thermal.c
===================================================================
--- linux-pm.orig/drivers/acpi/thermal.c
+++ linux-pm/drivers/acpi/thermal.c
@@ -911,24 +911,25 @@ static void acpi_thermal_notify(struct a
 	switch (event) {
 	case ACPI_THERMAL_NOTIFY_TEMPERATURE:
 		acpi_thermal_check(tz);
-		break;
+		return;
 	case ACPI_THERMAL_NOTIFY_THRESHOLDS:
 		acpi_thermal_trips_update(tz, ACPI_TRIPS_REFRESH_THRESHOLDS);
-		acpi_thermal_check(tz);
-		acpi_bus_generate_netlink_event(device->pnp.device_class,
-						  dev_name(&device->dev), event, 0);
 		break;
 	case ACPI_THERMAL_NOTIFY_DEVICES:
 		acpi_thermal_trips_update(tz, ACPI_TRIPS_REFRESH_DEVICES);
-		acpi_thermal_check(tz);
-		acpi_bus_generate_netlink_event(device->pnp.device_class,
-						  dev_name(&device->dev), event, 0);
 		break;
 	default:
 		ACPI_DEBUG_PRINT((ACPI_DB_INFO,
 				  "Unsupported event [0x%x]\n", event));
-		break;
+		return;
 	}
+
+	/* Trigger an update of the thermal zone unless polling is in use. */
+	if (!tz->polling_frequency)
+		acpi_thermal_check(tz);
+
+	acpi_bus_generate_netlink_event(device->pnp.device_class,
+					dev_name(&device->dev), event, 0);
 }
 
 /*


_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
