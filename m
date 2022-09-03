Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9055AC0CF
	for <lists+devel-acpica@lfdr.de>; Sat,  3 Sep 2022 20:38:04 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B8249100EA2DB;
	Sat,  3 Sep 2022 11:37:55 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.219.180; helo=mail-yb1-f180.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B277C100EA2C8
	for <devel@acpica.org>; Sat,  3 Sep 2022 11:37:52 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id g5so7475459ybg.11
        for <devel@acpica.org>; Sat, 03 Sep 2022 11:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=acDSEwPpSGt3/Sa5qq4bY+mv4UxFi1+u/sdIo3dqsdA=;
        b=syGr4MNZOP4Yx5+kG5P+Q8tf02FTrhuumC97v31Sjke/calRnBmCB09+EX4hSy0ajr
         sODzO4EAPU/rEZpI+1JsOUaJa8/LEWBwoCyZbXpzDhwWIpDaHHKqfqoo/G2vj5PvVAQQ
         uHbWh9dXd8XD7CdLXMVFXKBJRP7OIjkgWcybkTizvaM5YgW7cR/PsD+fRMJTq/rITyth
         0z8AqkKnBpKzGJGd17mBMMLZuOHa7y6wHXC5JzNVwkC41JnNLrG9EmgtWpzxPW1iaq3s
         v55Re1uwikmftMsbpryi9PA20LMUcARcmzrN8yS3Jv8ViGlvEE7/sqpzP36mhbDrLscK
         nXIw==
X-Gm-Message-State: ACgBeo19r2NYqL6hO8UynOerQWsjRNLuzqbFTMXtmuPDdSSiOFJ+fJww
	NUGQCOQNbg1uoXgtbNae1iC7MAGROsGVyX8sqcQ=
X-Google-Smtp-Source: AA6agR6IMJjLlJF0+Lly/WQ6I0yuPNaw47XRD0jcLbl2HZeCIJDsqPDyndKaaTGcHOy837NXuZypEIr2aC/54bb8d5s=
X-Received: by 2002:a25:2785:0:b0:69b:b1d2:fd05 with SMTP id
 n127-20020a252785000000b0069bb1d2fd05mr23015642ybn.81.1662230271421; Sat, 03
 Sep 2022 11:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAJZ5v0jVpCiwscgVQqS3yEwGaHUCPzR9pNDjt6qY6U4jJubt_A@mail.gmail.com>
 <20220829030555.22418-1-junming@nfschina.com>
In-Reply-To: <20220829030555.22418-1-junming@nfschina.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 3 Sep 2022 20:37:40 +0200
Message-ID: <CAJZ5v0g9L61BXztCVFreEE3W9skzR2LGukhwjEzDbbr8F6PaRw@mail.gmail.com>
To: shijm <junming@nfschina.com>
Message-ID-Hash: 3KG24QFVJK7CNR4BUK4UINAC7RUJCG4P
X-Message-ID-Hash: 3KG24QFVJK7CNR4BUK4UINAC7RUJCG4P
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] tools: Delete the initialization value
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3KG24QFVJK7CNR4BUK4UINAC7RUJCG4P/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 29, 2022 at 5:06 AM shijm <junming@nfschina.com> wrote:
>
> yes,just your said!

OK

I've applied the patch as 6.1 material under a new subject and with a
new changelog.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
