Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 991A64C494B
	for <lists+devel-acpica@lfdr.de>; Fri, 25 Feb 2022 16:39:53 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2CC1A100EB345;
	Fri, 25 Feb 2022 07:39:52 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.172; helo=mail-yb1-f172.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BDF45100EB847
	for <devel@acpica.org>; Fri, 25 Feb 2022 07:39:49 -0800 (PST)
Received: by mail-yb1-f172.google.com with SMTP id u12so6614799ybd.7
        for <devel@acpica.org>; Fri, 25 Feb 2022 07:39:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GR/V12DMRnmBhcnV69/MsoszncUmgemPWBCEqb7uAFo=;
        b=0yQ8fdwbshAFfPZqi1xELuNfpSLbq2IAf3ysEVTAk/n2OF0pI9Og2D3cRPddG6HYDH
         a+iHMyPbJrsLvh5y9LtF6bX9xZ/uQRn3uHZT9sAX2K3/2klCUnvmDnweVLbGhqeHNFyB
         9c/qfTvOttwAz6cqF0QJ6LC4EkIDzs4RjS5ziPyNVKMrZPieqweXfAvQ8bO/nTErBE0j
         u1hY49dAiREGJ1YGDtSBJKSipc/U1bpMKy2g0gfQ4kld9eNWfFMfrM7SKugY6vES2x1V
         wYT0SGS4GlcFbirHugU/w2LvHoNijkFiNwHFPDYT+jCwUc0P2d2cRUePJPt5U9cQKpt8
         mf3Q==
X-Gm-Message-State: AOAM533wucSqCwX/bUld9gNcolPbWn1mwJXWK/dYLhyHDQ9qMd7h234r
	6LvDRt9/CqhpCeXobuUp53c6sIHrKmBsGfSq50plgwaBUlA=
X-Google-Smtp-Source: ABdhPJzrx7n2dUleHMsZHJQcp+57rEJCDv9wJM6JngPqQvdEjC+z5wBhZrLOBtGS3O9r22saq3TEeeT6l0ZYLqQQJhw=
X-Received: by 2002:a25:bbc1:0:b0:610:b4ce:31db with SMTP id
 c1-20020a25bbc1000000b00610b4ce31dbmr7698406ybk.482.1645803588829; Fri, 25
 Feb 2022 07:39:48 -0800 (PST)
MIME-Version: 1.0
References: <20220224113807.91771-1-pmenzel@molgen.mpg.de> <20220224113807.91771-3-pmenzel@molgen.mpg.de>
In-Reply-To: <20220224113807.91771-3-pmenzel@molgen.mpg.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 25 Feb 2022 16:39:38 +0100
Message-ID: <CAJZ5v0gLn=EEsLLZBtFUKA9SkK88S1HQxj_Z11sPgnRE9T_RmQ@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID-Hash: CXNCHBNKCZ7V3VZWXNOIXSPP3A2NX4BB
X-Message-ID-Hash: CXNCHBNKCZ7V3VZWXNOIXSPP3A2NX4BB
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 3/4] acpi: exsystem: Warn about sleeps greater than 50 ms
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CXNCHBNKCZ7V3VZWXNOIXSPP3A2NX4BB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Feb 24, 2022 at 12:38 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Quick boottime is important, so warn about sleeps greater than 50 ms in
> ACPI.
>
> 50 ms is still long compared to distribution Linux kernels reaching initrd
> in 350 ms, so should probably changed to 10 ms, so people are aware
> about this.
>
> Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>

First off, as ACPICA material, this should be submitted to the
upstream project via https://github.com/acpica/acpica/.

> ---
>  drivers/acpi/acpica/exsystem.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/acpi/acpica/exsystem.c b/drivers/acpi/acpica/exsystem.c
> index 00f66af31ffa..bdffb8aac05c 100644
> --- a/drivers/acpi/acpica/exsystem.c
> +++ b/drivers/acpi/acpica/exsystem.c
> @@ -167,6 +167,11 @@ acpi_status acpi_ex_system_do_sleep(u64 how_long_ms)
>
>         acpi_ex_exit_interpreter();
>
> +       if (how_long_ms > 50) {
> +               ACPI_WARNING((AE_INFO,

Second, the log level is somewhat high for something like this.

> +                   "Time parameter %llu > 50 ms. Please contact firmware vendor for more responsive system.", how_long_ms));

Also, I would rephrase the warning message to something like "Firmware
issue: Excessive delay (%llu ms) in ACPI Control Method".

> +       }
> +
>         /*
>          * For compatibility with other ACPI implementations and to prevent
>          * accidental deep sleeps, limit the sleep time to something reasonable.
> --
> 2.35.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
