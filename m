Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BED8330B67
	for <lists+devel-acpica@lfdr.de>; Fri, 31 May 2019 11:24:54 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 7B2C52128D868;
	Fri, 31 May 2019 02:24:53 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=79.96.170.134; helo=cloudserver094114.home.pl;
 envelope-from=rjw@rjwysocki.net; receiver=devel@acpica.org 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 8E9FD2128D6AC
 for <devel@acpica.org>; Fri, 31 May 2019 02:24:51 -0700 (PDT)
Received: from 79.184.255.225.ipv4.supernova.orange.pl (79.184.255.225) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id 639ee21c405379e7; Fri, 31 May 2019 11:24:48 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 31 May 2019 11:24:47 +0200
Message-ID: <67810452.HO43NzBsMe@kreacher>
In-Reply-To: <1556718785-4417-1-git-send-email-yamada.masahiro@socionext.com>
References: <1556718785-4417-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Subject: Re: [Devel] [PATCH v2] tools/power/acpi: exclude tools/* from
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
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, devel@acpica.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Wednesday, May 1, 2019 3:53:05 PM CEST Masahiro Yamada wrote:
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
> So, from the point of .gitignore grammar, the following check-in
> directories are also considered to be ignored:
> 
>   tools/power/acpi/tools/acpidbg
>   tools/power/acpi/tools/acpidump
>   tools/power/acpi/tools/ec
> 
> As the manual gitignore(5) says "Files already tracked by Git are not
> affected", this is not a problem as far as Git is concerned.
> 
> However, Git is not the only program that parses .gitignore because
> .gitignore is useful to distinguish build artifacts from source files.
> 
> For example, tar(1) supports the --exclude-vcs-ignore option. As of
> writing, this option does not work perfectly, but it intends to create
> a tarball excluding files specified by .gitignore.
> 
> So, I believe it is better to fix this issue.
> 
> You can fix it by prefixing the pattern with a slash; the leading slash
> means the specified pattern is relative to the current directory.
> 
> I also prefixed the "include" consistently. IMHO, it is safer when you
> intend to ignore specific files or directories.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> Changes in v2:
>   - Add more information to the commit log to clarify my main motivation
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

I actually have applied this one, not the v1, sorry for the confusion.




_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
