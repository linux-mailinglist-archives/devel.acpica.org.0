Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D411715D521
	for <lists+devel-acpica@lfdr.de>; Fri, 14 Feb 2020 11:02:14 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7134510FC33ED;
	Fri, 14 Feb 2020 02:05:30 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=79.96.170.134; helo=cloudserver094114.home.pl; envelope-from=rjw@rjwysocki.net; receiver=<UNKNOWN> 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl [79.96.170.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 9BE7810FC33EC
	for <devel@acpica.org>; Fri, 14 Feb 2020 02:05:27 -0800 (PST)
Received: from 79.184.254.199.ipv4.supernova.orange.pl (79.184.254.199) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.341)
 id 9072457127e571a4; Fri, 14 Feb 2020 11:02:07 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, erik.kaneda@intel.com
Date: Fri, 14 Feb 2020 11:02:07 +0100
Message-ID: <2712088.SaWAGPlJqS@kreacher>
In-Reply-To: <20200214063003.29741-1-christophe.jaillet@wanadoo.fr>
References: <20200214063003.29741-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID-Hash: P3TQ63FTEZOZXJPDFQMBGMRTGUOYGADM
X-Message-ID-Hash: P3TQ63FTEZOZXJPDFQMBGMRTGUOYGADM
X-MailFrom: rjw@rjwysocki.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-acpi@vger.kernel.org, devel@acpica.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPICA: Fix a typo in acuuid.h
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/P3TQ63FTEZOZXJPDFQMBGMRTGUOYGADM/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Transfer-Encoding: 7bit

On Friday, February 14, 2020 7:30:03 AM CET Christophe JAILLET wrote:
> The comment related to the ending of the include guard should be related to
> __ACUUID_H__, not __AUUID_H__ (i.e. 'C' is missing).
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Erik, please route this through the upstream.

Thanks!

> ---
>  include/acpi/acuuid.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/acpi/acuuid.h b/include/acpi/acuuid.h
> index 9dd4689a39cf..9e1367b19069 100644
> --- a/include/acpi/acuuid.h
> +++ b/include/acpi/acuuid.h
> @@ -57,4 +57,4 @@
>  #define UUID_THERMAL_EXTENSIONS         "14d399cd-7a27-4b18-8fb4-7cb7b9f4e500"
>  #define UUID_DEVICE_PROPERTIES          "daffd814-6eba-4d8c-8a91-bc9bbf4aa301"
>  
> -#endif				/* __AUUID_H__ */
> +#endif				/* __ACUUID_H__ */
> 



_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
