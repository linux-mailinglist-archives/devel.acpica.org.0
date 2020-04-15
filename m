Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C111A989B
	for <lists+devel-acpica@lfdr.de>; Wed, 15 Apr 2020 11:24:24 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id CAA8F1010630A;
	Wed, 15 Apr 2020 02:24:53 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.194; helo=mail-oi1-f194.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id E94EF10106308
	for <devel@acpica.org>; Wed, 15 Apr 2020 02:24:51 -0700 (PDT)
Received: by mail-oi1-f194.google.com with SMTP id b7so10351665oic.2
        for <devel@acpica.org>; Wed, 15 Apr 2020 02:24:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PeBwwUHexbq/B0mllpXl205PmqHG/3tGbcfB95WXpZk=;
        b=ubp0Pt7vORkOQqLo8wNCfXUcRYdr72JarWsURKR5O+j1JwgCJZCNkKBdDCz6s4dNYl
         cJec5D6Grbh+RSoQSYCPcFEW4P92skk5FD1iF7wm3dSvhIM4o4WVOHGE4zmXAFiRxR/c
         mmqZx4ZUcoY3QcMEkqTc65LKB+g5pt1rqGvsckIEv7UXNa00Y8bQpIer579SIWq7QYWz
         +kHGL+8POj9bAVSgRLI6gyiC9Rb+t2pvuSdVnn6KvNBuX0x3f2QGyGzEP3811i7TbwlE
         +6dTPL5NmbpQG6R3RTtf1uk9W1tMPxJizEh1nNc0fK8buKrM39/+elV4tojwWang0AtF
         Lqaw==
X-Gm-Message-State: AGi0PubIjQrTVlM9QUHEyhtYcqaMtvkY56c+XRhAhFAfFmdoHT3UjX56
	5ErP0El7MbvBi7NQBoT7/OqdfoTV78erwPvRPN8=
X-Google-Smtp-Source: APiQypJZrPtk9CTp5eBsivxylrSi0zfKsT9ogsSyvEIjXIEYZWQOgAkgP4CZqwUp9bBm3A0h4TeoQrnfXPtaDIa1khU=
X-Received: by 2002:a05:6808:81:: with SMTP id s1mr559297oic.68.1586942660307;
 Wed, 15 Apr 2020 02:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200415084933.6251-1-yanaijie@huawei.com>
In-Reply-To: <20200415084933.6251-1-yanaijie@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 15 Apr 2020 11:24:09 +0200
Message-ID: <CAJZ5v0ie67VHR40GjHnnAmW3fnO0V3ypLvsy9HSnq9_zR1bEMA@mail.gmail.com>
To: Jason Yan <yanaijie@huawei.com>, Robert Moore <robert.moore@intel.com>,
	Erik Kaneda <erik.kaneda@intel.com>
Message-ID-Hash: FVVCCOVONGLFSR27I3RHFORIDCI5ANVN
X-Message-ID-Hash: FVVCCOVONGLFSR27I3RHFORIDCI5ANVN
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rafael Wysocki <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: make acpi_protocol_lengths static
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/FVVCCOVONGLFSR27I3RHFORIDCI5ANVN/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Apr 15, 2020 at 10:23 AM Jason Yan <yanaijie@huawei.com> wrote:
>
> Fix the following sparse warning:
>
> drivers/acpi/acpica/exfield.c:25:10: warning: symbol
> 'acpi_protocol_lengths' was not declared. Should it be static?
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Erik, Bob, this one is yours. :-)

> ---
>  drivers/acpi/acpica/exfield.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/acpica/exfield.c b/drivers/acpi/acpica/exfield.c
> index e85eb31e5075..3323a2ba6a31 100644
> --- a/drivers/acpi/acpica/exfield.c
> +++ b/drivers/acpi/acpica/exfield.c
> @@ -22,7 +22,7 @@ ACPI_MODULE_NAME("exfield")
>   */
>  #define ACPI_INVALID_PROTOCOL_ID        0x80
>  #define ACPI_MAX_PROTOCOL_ID            0x0F
> -const u8 acpi_protocol_lengths[] = {
> +static const u8 acpi_protocol_lengths[] = {
>         ACPI_INVALID_PROTOCOL_ID,       /* 0 - reserved */
>         ACPI_INVALID_PROTOCOL_ID,       /* 1 - reserved */
>         0x00,                   /* 2 - ATTRIB_QUICK */
> --
> 2.21.1
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
