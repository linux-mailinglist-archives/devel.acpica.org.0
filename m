Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C6719D377
	for <lists+devel-acpica@lfdr.de>; Fri,  3 Apr 2020 11:24:36 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 1ABC1100EA2A1;
	Fri,  3 Apr 2020 02:25:24 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.67; helo=mail-ot1-f67.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B136510FCD5C4
	for <devel@acpica.org>; Fri,  3 Apr 2020 02:25:21 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id 22so6645187otf.0
        for <devel@acpica.org>; Fri, 03 Apr 2020 02:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QdFApNje4dVg6X1gfPZZooLWocDLTTaIU6KupyCadzc=;
        b=OGb13EsGbFYFb1/gJwOQCqr6Rwk35yoTSJyXw+xxSZcPPF9ILcjU2Bh1C53cMp7t4F
         DPh593aEJ9j6UL97xe7tyzVXvRc2JkhbW5oHkMhzLTe5CmXhr8IHJq7SMLQu/BH//odD
         u2jfrTtlpECToesP91VFyJxRXpk2aUR9YyElzR+GBBXIGiEJAztbuYId/3Y2dtMJJfQg
         eofrJnyePvYfYE/C76zUVR6g/21c7JleSjKROEoVa2grtrRw+NcrAOgY9NWetGCTKkJp
         CQ6YF/9nhqXDsLjwTplq9irA55E7oFO2Ksj3bssV1GpPHbY2E8UH7HnEl9N7k6XwkA1V
         IHBw==
X-Gm-Message-State: AGi0PuY+bSSQ8DER6jEd7iIEpdyNostPN9xv+IXVmoshq1AFg/UkOSts
	UENVUWKhIj6xZGR25Z4lQ0vaPeVwX5b6/Ju0cyo=
X-Google-Smtp-Source: APiQypJuXn7s2GqX4r3fjosMCpppzhRJ0zVb9uZF/5UUFNv03mouaz5qndIrJwVA2p47c5q5t3D5YwS1ivj/dDGXal8=
X-Received: by 2002:a9d:750a:: with SMTP id r10mr5371551otk.118.1585905870777;
 Fri, 03 Apr 2020 02:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200403064712.26746-1-yanaijie@huawei.com>
In-Reply-To: <20200403064712.26746-1-yanaijie@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 3 Apr 2020 11:24:19 +0200
Message-ID: <CAJZ5v0gHsUMS+LciZnzC12=QO+hsVkeQWHDR1LC8PMCxoWvtAQ@mail.gmail.com>
To: Jason Yan <yanaijie@huawei.com>, Robert Moore <robert.moore@intel.com>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: J4YI3QMDIDETRN3BJRLKEJV53L2GFLK4
X-Message-ID-Hash: J4YI3QMDIDETRN3BJRLKEJV53L2GFLK4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: make acpi_gbl_next_cmd_num static
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/J4YI3QMDIDETRN3BJRLKEJV53L2GFLK4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Apr 3, 2020 at 8:48 AM Jason Yan <yanaijie@huawei.com> wrote:
>
> Fix the following sparse warning:
>
> drivers/acpi/acpica/dbhistry.c:30:5: warning: symbol
> 'acpi_gbl_next_cmd_num' was not declared. Should it be static?
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Bob, Erik, I'm leaving this one to you.

> ---
>  drivers/acpi/acpica/dbhistry.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/dbhistry.c b/drivers/acpi/acpica/dbhistry.c
> index bb9600b867ee..801b35a08174 100644
> --- a/drivers/acpi/acpica/dbhistry.c
> +++ b/drivers/acpi/acpica/dbhistry.c
> @@ -27,7 +27,7 @@ static HISTORY_INFO acpi_gbl_history_buffer[HISTORY_SIZE];
>  static u16 acpi_gbl_lo_history = 0;
>  static u16 acpi_gbl_num_history = 0;
>  static u16 acpi_gbl_next_history_index = 0;
> -u32 acpi_gbl_next_cmd_num = 1;
> +static u32 acpi_gbl_next_cmd_num = 1;
>
>  /*******************************************************************************
>   *
> --
> 2.17.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
