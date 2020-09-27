Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2349027A265
	for <lists+devel-acpica@lfdr.de>; Sun, 27 Sep 2020 20:48:19 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id B45DD14CEC3F7;
	Sun, 27 Sep 2020 11:48:17 -0700 (PDT)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 3889C1481D060
	for <devel@acpica.org>; Sun, 27 Sep 2020 11:48:15 -0700 (PDT)
MIME-Version: 1.0
From: dunkaist@gmail.com
To: devel@acpica.org
Date: Sun, 27 Sep 2020 18:48:15 -0000
Message-ID: <20200927184815.2619.91033@ml01.vlan13.01.org>
User-Agent: HyperKitty on https://lists.acpica.org/
References: <BYAPR11MB3256F56601FD2F961B268C5F87380@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256F56601FD2F961B268C5F87380@BYAPR11MB3256.namprd11.prod.outlook.com>
Message-ID-Hash: 7YO24BW3LBVKJWM2XE25VLEKF63KWXNJ
X-Message-ID-Hash: 7YO24BW3LBVKJWM2XE25VLEKF63KWXNJ
X-MailFrom: dunkaist@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Automatic dereference when reading from ArgX
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7YO24BW3LBVKJWM2XE25VLEKF63KWXNJ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Robert,

It turned out that you answered my question more than 11 years ago [1], amazing.
The issue I faced is a confirmed bug [2].
Perhaps, I should have found this before, sorry.

Well, at least I understood the spec correctly.
ACPICA doesn't handle automatic dereference of RefOf.

Thank you for your time,
Ivan

[1] https://bugs.acpica.org/show_bug.cgi?id=707#c5
[2] https://bugs.acpica.org/show_bug.cgi?id=737
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
