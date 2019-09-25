Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EFFBE466
	for <lists+devel-acpica@lfdr.de>; Wed, 25 Sep 2019 20:13:39 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 73A17202F8BAD;
	Wed, 25 Sep 2019 11:15:50 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=134.134.136.126; helo=mga18.intel.com;
 envelope-from=erik.schmauss@intel.com; receiver=devel@acpica.org 
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 0211D202ECFA6
 for <devel@acpica.org>; Wed, 25 Sep 2019 11:15:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 11:13:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="364404539"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga005.jf.intel.com with ESMTP; 25 Sep 2019 11:13:35 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 25 Sep 2019 11:13:35 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.236]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.226]) with mapi id 14.03.0439.000;
 Wed, 25 Sep 2019 11:13:34 -0700
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: "Moore, Robert" <robert.moore@intel.com>, Nikolaus Voss
 <nikolaus.voss@loewensteinmedical.de>, "Shevchenko, Andriy"
 <andriy.shevchenko@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Ferry
 Toth <fntoth@gmail.com>
Thread-Topic: [PATCH] ACPICA: make acpi_load_table() return table index
Thread-Index: AQHVaUE6PwWyj3qAlUyiJ16YhgOwE6cojRAAgABYowCAE+EegA==
Date: Wed, 25 Sep 2019 18:13:34 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C646E97@ORSMSX122.amr.corp.intel.com>
References: <20190906174605.GY2680@smile.fi.intel.com>
 <20190912080742.24642-1-nikolaus.voss@loewensteinmedical.de>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9679CE8@ORSMSX110.amr.corp.intel.com>
 <4929b1d2-c2a7-4efd-89e4-f02205e79c01@telfort.nl>
In-Reply-To: <4929b1d2-c2a7-4efd-89e4-f02205e79c01@telfort.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWU1OGVmOGItZjZjYi00MzM1LTlkYjQtMzg5ZGQ5MWZlNzAzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibGF4NVNjVkF5aXgrZ2cyblwvZmt1eU5DY01YOHNtTFVQaDNuWUtMc01Bc0ExS2VDVTIzanR5XC95KzZCbnVJY2ZIIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, "nv@vosn.de" <nv@vosn.de>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>



> -----Original Message-----
> From: Ferry Toth <ftoth@telfort.nl>
> Sent: Thursday, September 12, 2019 12:37 PM
> To: Moore, Robert <robert.moore@intel.com>; Nikolaus Voss
> <nikolaus.voss@loewensteinmedical.de>; Shevchenko, Andriy
> <andriy.shevchenko@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>;
> Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: Len Brown <lenb@kernel.org>; Jacek Anaszewski
> <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy
> <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-
> kernel@vger.kernel.org; nv@vosn.de
> Subject: Re: [PATCH] ACPICA: make acpi_load_table() return table index
> 
> Op 12-09-19 om 16:19 schreef Moore, Robert:
> > Nikolaus,
> > The ability to unload an ACPI table (especially AML tables such as SSDTs) is in
> the process of being deprecated in ACPICA -- since it is also deprecated in the
> current ACPI specification. This is being done because of the difficulty of
> deleting the namespace entries for the table.  FYI, Windows does not properly
> support this function either.
> 
> I really hope this is not the case. On x86 loading/unloading SSDTs has proven to
> be a powerful way to handle reconfigurable hardware without rebooting and
> without requiring dedicated platform drivers. Same for user plugable hardware
> on i2c/spi busses.
> 
> This has worked before and will violate the "don't break user space" rule.

If the table index wasn't being used, how did this work before?
Which commit broke this?

Bob and I are trying to understand if this is a regression or a new feature request...

Thanks,
Erik
> 
> I don't see why Windows is an example to follow. On Windows platform drivers
> don't get compiled into the kernel and don't need to be upstreamed.
> 
> > Bob
> >
> >
> > -----Original Message-----
> > From: Nikolaus Voss [mailto:nikolaus.voss@loewensteinmedical.de]
> > Sent: Thursday, September 12, 2019 1:08 AM
> > To: Shevchenko, Andriy <andriy.shevchenko@intel.com>; Schmauss, Erik
> > <erik.schmauss@intel.com>; Rafael J. Wysocki <rjw@rjwysocki.net>;
> > Moore, Robert <robert.moore@intel.com>
> > Cc: Len Brown <lenb@kernel.org>; Jacek Anaszewski
> > <jacek.anaszewski@gmail.com>; Pavel Machek <pavel@ucw.cz>; Dan Murphy
> > <dmurphy@ti.com>; linux-acpi@vger.kernel.org; devel@acpica.org;
> > linux-kernel@vger.kernel.org; nv@vosn.de; Nikolaus Voss
> > <nikolaus.voss@loewensteinmedical.de>
> > Subject: [PATCH] ACPICA: make acpi_load_table() return table index
> >
> > For unloading an ACPI table, it is necessary to provide the index of the table.
> The method intended for dynamically loading or hotplug addition of tables,
> acpi_load_table(), should provide this information via an optional pointer to
> the loaded table index.
> >
> > This patch fixes the table unload function of acpi_configfs.
> >
> > Reported-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Fixes: d06c47e3dd07f ("ACPI: configfs: Resolve objects on
> > host-directed table loads")
> > Signed-off-by: Nikolaus Voss <nikolaus.voss@loewensteinmedical.de>
> > ---
> >   drivers/acpi/acpi_configfs.c   | 2 +-
> >   drivers/acpi/acpica/dbfileio.c | 2 +-
> >   drivers/acpi/acpica/tbxfload.c | 8 ++++++--
> >   drivers/firmware/efi/efi.c     | 2 +-
> >   include/acpi/acpixf.h          | 3 ++-
> >   5 files changed, 11 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/acpi/acpi_configfs.c
> > b/drivers/acpi/acpi_configfs.c index 57d9d574d4dde..77f81242a28e6
> > 100644
> > --- a/drivers/acpi/acpi_configfs.c
> > +++ b/drivers/acpi/acpi_configfs.c
> > @@ -53,7 +53,7 @@ static ssize_t acpi_table_aml_write(struct config_item
> *cfg,
> >   	if (!table->header)
> >   		return -ENOMEM;
> >
> > -	ret = acpi_load_table(table->header);
> > +	ret = acpi_load_table(table->header, &table->index);
> >   	if (ret) {
> >   		kfree(table->header);
> >   		table->header = NULL;
> > diff --git a/drivers/acpi/acpica/dbfileio.c
> > b/drivers/acpi/acpica/dbfileio.c index c6e25734dc5cd..e1b6e54a96ac1
> > 100644
> > --- a/drivers/acpi/acpica/dbfileio.c
> > +++ b/drivers/acpi/acpica/dbfileio.c
> > @@ -93,7 +93,7 @@ acpi_status acpi_db_load_tables(struct
> acpi_new_table_desc *list_head)
> >   	while (table_list_head) {
> >   		table = table_list_head->table;
> >
> > -		status = acpi_load_table(table);
> > +		status = acpi_load_table(table, NULL);
> >   		if (ACPI_FAILURE(status)) {
> >   			if (status == AE_ALREADY_EXISTS) {
> >   				acpi_os_printf
> > diff --git a/drivers/acpi/acpica/tbxfload.c
> > b/drivers/acpi/acpica/tbxfload.c index 86f1693f6d29a..d08cd8ffcbdb6
> > 100644
> > --- a/drivers/acpi/acpica/tbxfload.c
> > +++ b/drivers/acpi/acpica/tbxfload.c
> > @@ -268,7 +268,8 @@ ACPI_EXPORT_SYMBOL_INIT(acpi_install_table)
> >    *
> >    * PARAMETERS:  table               - Pointer to a buffer containing the ACPI
> >    *                                    table to be loaded.
> > - *
> > + *              table_idx           - Pointer to a u32 for storing the table
> > + *                                    index, might be NULL
> >    * RETURN:      Status
> >    *
> >    * DESCRIPTION: Dynamically load an ACPI table from the caller's buffer.
> Must @@ -278,7 +279,7 @@ ACPI_EXPORT_SYMBOL_INIT(acpi_install_table)
> >    *              to ensure that the table is not deleted or unmapped.
> >    *
> >
> >
> *******************************************************************
> ***
> > ********/ -acpi_status acpi_load_table(struct acpi_table_header
> > *table)
> > +acpi_status acpi_load_table(struct acpi_table_header *table, u32
> > +*table_idx)
> >   {
> >   	acpi_status status;
> >   	u32 table_index;
> > @@ -297,6 +298,9 @@ acpi_status acpi_load_table(struct acpi_table_header
> *table)
> >   	status =
> acpi_tb_install_and_load_table(ACPI_PTR_TO_PHYSADDR(table),
> >
> 	ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL,
> >   						FALSE, &table_index);
> > +	if (table_idx)
> > +		*table_idx = table_index;
> > +
> >   	if (ACPI_SUCCESS(status)) {
> >
> >   		/* Complete the initialization/resolution of new objects */ diff
> > --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c index
> > ad3b1f4866b35..9773e4212baef 100644
> > --- a/drivers/firmware/efi/efi.c
> > +++ b/drivers/firmware/efi/efi.c
> > @@ -308,7 +308,7 @@ static __init int efivar_ssdt_load(void)
> >   			goto free_data;
> >   		}
> >
> > -		ret = acpi_load_table(data);
> > +		ret = acpi_load_table(data, NULL);
> >   		if (ret) {
> >   			pr_err("failed to load table: %d\n", ret);
> >   			goto free_data;
> > diff --git a/include/acpi/acpixf.h b/include/acpi/acpixf.h index
> > 3845c8fcc94e5..c90bbdc4146a6 100644
> > --- a/include/acpi/acpixf.h
> > +++ b/include/acpi/acpixf.h
> > @@ -452,7 +452,8 @@ ACPI_EXTERNAL_RETURN_STATUS(acpi_status
> ACPI_INIT_FUNCTION
> >   					       u8 physical))
> >
> >   ACPI_EXTERNAL_RETURN_STATUS(acpi_status
> > -			    acpi_load_table(struct acpi_table_header *table))
> > +			    acpi_load_table(struct acpi_table_header *table,
> > +					    u32 *table_idx))
> >
> >   ACPI_EXTERNAL_RETURN_STATUS(acpi_status
> >   			    acpi_unload_parent_table(acpi_handle object))
> > --
> > 2.17.1
> >
> >

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
