Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF9F59E8AC
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Aug 2022 19:15:16 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 40548100E6C3F;
	Tue, 23 Aug 2022 10:15:15 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.181; helo=mail-yw1-f181.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 1B425100EA555
	for <devel@acpica.org>; Tue, 23 Aug 2022 10:15:13 -0700 (PDT)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-32a09b909f6so397427117b3.0
        for <devel@acpica.org>; Tue, 23 Aug 2022 10:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=xSFNOJlym8FyrOBEvPYLVgoTndKDA46syAL7gGM1hOQ=;
        b=38UUxhgZyOZwOucpidzugdER1Z7RfCv/B4Eqd34ZJPucKR/QSH2U2NSvx1ina00We9
         M07TwCI2MM+nCfU73kwz2KeWqB59Q8lBVrwFqPQK/9hHooCHSrWYqsraJAUVqWyMU/ri
         6imXILDf3XbGmcK4tdRXvLBTBhYxpkv0wankjLbf9dNqs5nYiRl7FAScLQ3uaHFzsuUL
         rTUlkny+I86RJATodZZ+8B2AZBPM9xVDLY4zkl1ugulitdxRLkZiKoXjkAGBFMDV6dMH
         LnSwUJiwD+7DQnGRdfrYAGk6ZuNbsI2Rz5sJj8tHmX3L1k6OVxb9M0KgLIrnmMrEFueQ
         AzCA==
X-Gm-Message-State: ACgBeo0u8wGADa/1/HxxEIgUek+1+hgKdDXOoACJilgqmw5oIEBEXlsl
	nq/Ud1FtBWTVPLUItjJ3Bf+S+YQ0fXD4ugRw+dQ=
X-Google-Smtp-Source: AA6agR6wVbKtF7UDOTRRPr2VBYorKqh9xH2F7ddWUbFhnA2Q6INyF/YwWXao1fhCx13Aln4bqi0l+/jeBbnoJGIgFqc=
X-Received: by 2002:a81:9906:0:b0:2db:640f:49d8 with SMTP id
 q6-20020a819906000000b002db640f49d8mr7277324ywg.326.1661274912179; Tue, 23
 Aug 2022 10:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220822091416.6177-1-zeming@nfschina.com>
In-Reply-To: <20220822091416.6177-1-zeming@nfschina.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Aug 2022 19:15:01 +0200
Message-ID: <CAJZ5v0iFW4OxhWrPiBOvg7AneEuey27sFKYH_XEWSbA+qNppDg@mail.gmail.com>
To: Li zeming <zeming@nfschina.com>
Message-ID-Hash: H6HQCAHQSYES3FKJRDV25ZUDNKY47LBM
X-Message-ID-Hash: H6HQCAHQSYES3FKJRDV25ZUDNKY47LBM
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] power/acpi: Remove unnecessary return in acpi_os_** function;
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/H6HQCAHQSYES3FKJRDV25ZUDNKY47LBM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 22, 2022 at 11:16 AM Li zeming <zeming@nfschina.com> wrote:
>
> Remove the return in the function; it looks clearer.
>
> Signed-off-by: Li zeming <zeming@nfschina.com>

This is ACPICA code, so please submit changes against it to the
upstream ACPICA project on GitHub.  Thanks!

> ---
>  tools/power/acpi/os_specific/service_layers/osunixxf.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/tools/power/acpi/os_specific/service_layers/osunixxf.c b/tools/power/acpi/os_specific/service_layers/osunixxf.c
> index b3651a04d68c..127630c38f1a 100644
> --- a/tools/power/acpi/os_specific/service_layers/osunixxf.c
> +++ b/tools/power/acpi/os_specific/service_layers/osunixxf.c
> @@ -510,8 +510,6 @@ void *acpi_os_map_memory(acpi_physical_address where, acpi_size length)
>
>  void acpi_os_unmap_memory(void *where, acpi_size length)
>  {
> -
> -       return;
>  }
>  #endif
>
> @@ -1313,5 +1311,4 @@ acpi_os_execute(acpi_execute_type type,
>
>  void acpi_os_wait_events_complete(void)
>  {
> -       return;
>  }
> --
> 2.18.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
