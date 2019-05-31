Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ED030B5E
	for <lists+devel-acpica@lfdr.de>; Fri, 31 May 2019 11:24:05 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 4F2D02128D866;
	Fri, 31 May 2019 02:24:03 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=79.96.170.134; helo=cloudserver094114.home.pl;
 envelope-from=rjw@rjwysocki.net; receiver=devel@acpica.org 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 0830A2128D6AC
 for <devel@acpica.org>; Fri, 31 May 2019 02:24:01 -0700 (PDT)
Received: from 79.184.255.225.ipv4.supernova.orange.pl (79.184.255.225) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id 519c7babe4363505; Fri, 31 May 2019 11:23:57 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 31 May 2019 11:23:57 +0200
Message-ID: <7038880.DppijN9Y0u@kreacher>
In-Reply-To: <1556549106-16119-1-git-send-email-yamada.masahiro@socionext.com>
References: <1556549106-16119-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Subject: Re: [Devel] [PATCH] tools/power/acpi: exclude tools/* from
 .gitignore pattern
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
Cc: linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, devel@acpica.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Monday, April 29, 2019 4:45:06 PM CEST Masahiro Yamada wrote:
> tools/power/acpi/.gitignore has the following entries:
> 
>   acpidbg
>   acpidump
>   ec
> 
> They are intended to ignore the following build artifacts:
> 
>   tools/power/acpi/acpidbg
>   tools/power/acpi/acpidump
>   tools/power/acpi/ec
> 
> However, those .gitignore entries are effective not only for the
> current directory, but also for any sub-directories.
> 
> So, the following directories are also considered to be ignored:
> 
>   tools/power/acpi/tools/acpidbg
>   tools/power/acpi/tools/acpidump
>   tools/power/acpi/tools/ec
> 
> They are obviously version-controlled, so should be excluded from the
> .gitignore patterns.
> 
> You can fix it by prefixing the patterns with '/', which means they
> are only effective in the current directory.
> 
> I also prefixed the "include" consistently. IMHO, '/' prefixing is
> safer when you intend to ignore specific files or directories.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  tools/power/acpi/.gitignore | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/tools/power/acpi/.gitignore b/tools/power/acpi/.gitignore
> index cba3d99..f698a0e 100644
> --- a/tools/power/acpi/.gitignore
> +++ b/tools/power/acpi/.gitignore
> @@ -1,4 +1,4 @@
> -acpidbg
> -acpidump
> -ec
> -include
> +/acpidbg
> +/acpidump
> +/ec
> +/include/
> 

Applied, thanks!




_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
