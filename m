Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A072A59E8E8
	for <lists+devel-acpica@lfdr.de>; Tue, 23 Aug 2022 19:19:44 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 95184100E6B80;
	Tue, 23 Aug 2022 10:19:42 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.171; helo=mail-yw1-f171.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 28AF2100EA555
	for <devel@acpica.org>; Tue, 23 Aug 2022 10:19:40 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-31f445bd486so396882887b3.13
        for <devel@acpica.org>; Tue, 23 Aug 2022 10:19:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=FC6hnZbwBtmw6oIIpxsgV+B+7mA53uX/U4iba0ioviU=;
        b=c4ReFn0+bKLPGpSNY3A1rRotgOmE+kvkgnfSyCTaJN6TTTGEoVWygz9Pt8Ch6Rc6BL
         w2QnERUUARV9IWFOLDiiBwXvaQJH+Qwjw23opO0I03507He1FU2vVvlmUSJp4w3bFtn7
         EYb+r0HS3wubeMqGjgluekNyiL+sqhcDO41iJF5z5JlYjBsh2RK7k4CJ7h1gXyi0SwkY
         M+l9lVf6Z1dcnhtG+zwOtXStED/Qm3NcFdqSzg3UQtAdDKsz+vzpFioBTKw655IoRJY6
         M8NlbBIzj46DyRgowno8Kiv964IV3Acl5XpLrATHebMmJc7oCHw9k/0rEJecdRGE5gy+
         rOMQ==
X-Gm-Message-State: ACgBeo0wO+su8yWAGqC17lrmY+FG7AMe/zGk+/C3fu/W+uo/QRrhqVSz
	ppuXdfkICKCy4Ggzj8rdzxMGOewyQfCsaqN+R7A=
X-Google-Smtp-Source: AA6agR4cTX5F8PyOjA1279e807GkwUK4KIWkE3KWOkDhaVt50kdCpplTQD6zGvPNuPABbFQ+fJ2lrIz5unWXRJ3z6zg=
X-Received: by 2002:a81:9906:0:b0:2db:640f:49d8 with SMTP id
 q6-20020a819906000000b002db640f49d8mr7298558ywg.326.1661275179229; Tue, 23
 Aug 2022 10:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220822154048.188253-1-justin.he@arm.com> <DBBPR08MB45381EB46B4714E0DCE63ABBF7709@DBBPR08MB4538.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB45381EB46B4714E0DCE63ABBF7709@DBBPR08MB4538.eurprd08.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Aug 2022 19:19:28 +0200
Message-ID: <CAJZ5v0hY5bA8iB4KdnZ3te8KOML8JQbPVs2Laaq7Lz=bh1amMA@mail.gmail.com>
To: Justin He <Justin.He@arm.com>
Message-ID-Hash: 5AY6VIOZPG4STSU2DM4ZXU6DU5PK74UG
X-Message-ID-Hash: 5AY6VIOZPG4STSU2DM4ZXU6DU5PK74UG
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: James Morse <James.Morse@arm.com>, Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Richter <rric@kernel.org>, Qiuxu Zhuo <qiuxu.zhuo@intel.com>, Yazen Ghannam <yazen.ghannam@amd.com>, Jonathan Corbet <corbet@lwn.net>, Jan Luebbe <jlu@pengutronix.de>, Khuong Dinh <khuong@os.amperecomputing.com>, Kani Toshi <toshi.kani@hpe.com>, Ard Biesheuvel <ardb@kernel.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Shuai Xue <xueshuai@linux.alibaba.com>, Jarkko Sakkinen <jarkko@kernel.org>, "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>, nd <nd@arm.com>, "Paul E. McKenney" <paulmck@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Neeraj Upadhyay <quic_neeraju@quicinc.com>, Randy Dunlap <rdunlap@
 infradead.org>, Damien Le Moal <damien.lemoal@opensource.wdc.com>, Muchun Song <songmuchun@bytedance.com>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [RESEND PATCH v3 0/9] Make ghes_edac a proper module
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5AY6VIOZPG4STSU2DM4ZXU6DU5PK74UG/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Aug 23, 2022 at 3:50 AM Justin He <Justin.He@arm.com> wrote:
>
> Hi,
> Sorry for resending the v3.
> There is an exceptional interrupt when I tried to post v3 at the first time.
> Maybe it is caused by a comma "," inside the mail name.
> E.g.
> Signed-off-by: Some, one <someone@site.com>
> Looks like a git sendemail issue?
>
> Anyway, sorry for the inconvenience.

I've received it twice, but no problem.

I need Boris to tell me what to do with this series.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
