Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB9F5A0EEF
	for <lists+devel-acpica@lfdr.de>; Thu, 25 Aug 2022 13:22:59 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E607C100E5DB4;
	Thu, 25 Aug 2022 04:22:56 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.171; helo=mail-yw1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 50662100EB341
	for <devel@acpica.org>; Thu, 25 Aug 2022 04:22:54 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-32a09b909f6so532616767b3.0
        for <devel@acpica.org>; Thu, 25 Aug 2022 04:22:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=zBAuYd6aZRMYP844dVDfOezCZkLQikm7pyO5BZEXKKI=;
        b=odDotds2hySO9Carw2Lez6w78waiprtecYR3L4vHflY7AV7sRnNuLxbjqu+qVBNeLB
         FyKVsa3ahU3dnTACZcqcECvkin/60J4kFtiKv0RdCo4YbEAxxeDPr8N/uMeAqTD3T2IX
         MOAhWJL92412Le3UsrQTj/FuudbLa4KiPiTW89EztUBpOZe16BgyRIOCN9JBudx4QKCZ
         dwOGWxkWubKwktbOs5r5EAXIjiKq3fGMqeWN5t7qolafBYX/fCZCWc+2Ho5k7K/6/9YI
         RLucJVNBSWk2Pajg1N7yVLKzB9aQAJfu7H2MMhn5VVSHeR4UmqZzvuPeArWgAbSUWUPN
         bM4g==
X-Gm-Message-State: ACgBeo3xrU56yZZjd4UK0Pl+EoBO6PCHIpXg9JcmdOLnm14nnPLJPJrZ
	9CSoJJIsWOsXe9SHUod4lvN6DddNu1IlswPw9VE=
X-Google-Smtp-Source: AA6agR6RKiwnjg0hA/QPVGn7rIdPTz+QbBVSW+tdchz15JNQtcfsiMul8ktR7HFomkZ7s43z4KN+FNjEXqFI7U1eWds=
X-Received: by 2002:a25:8d84:0:b0:695:836a:fcaf with SMTP id
 o4-20020a258d84000000b00695836afcafmr2755715ybl.633.1661426572692; Thu, 25
 Aug 2022 04:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220825090347.30555-1-junming@nfschina.com>
In-Reply-To: <20220825090347.30555-1-junming@nfschina.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 25 Aug 2022 13:22:41 +0200
Message-ID: <CAJZ5v0jVpCiwscgVQqS3yEwGaHUCPzR9pNDjt6qY6U4jJubt_A@mail.gmail.com>
To: shijm <junming@nfschina.com>
Message-ID-Hash: WPWLDQGHNIKCDVZIDCY4AORGPBRSF5SZ
X-Message-ID-Hash: WPWLDQGHNIKCDVZIDCY4AORGPBRSF5SZ
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] tools: Delete the initialization value
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/WPWLDQGHNIKCDVZIDCY4AORGPBRSF5SZ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Aug 25, 2022 at 11:04 AM shijm <junming@nfschina.com> wrote:
>
> From: Shi junming <junming@nfschina.com>
>
> From the perspective of commpier,delete the initialization value

I'm not sure what this means.

The initialization is unnecessary, because the variable in question is
always assigned a new value before reading it.  Is that what you
wanted to say?

> Signed-off-by: Shi junming <junming@nfschina.com>
> ---
>  tools/power/acpi/tools/pfrut/pfrut.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/power/acpi/tools/pfrut/pfrut.c b/tools/power/acpi/tools/pfrut/pfrut.c
> index d79c335594b2..52aa0351533c 100644
> --- a/tools/power/acpi/tools/pfrut/pfrut.c
> +++ b/tools/power/acpi/tools/pfrut/pfrut.c
> @@ -190,7 +190,7 @@ int main(int argc, char *argv[])
>         void *addr_map_capsule;
>         struct stat st;
>         char *log_buf;
> -       int ret = 0;
> +       int ret;
>
>         if (getuid() != 0) {
>                 printf("Please run the tool as root - Exiting.\n");
> --
> 2.18.2
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
