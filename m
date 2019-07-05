Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2032A6034C
	for <lists+devel-acpica@lfdr.de>; Fri,  5 Jul 2019 11:43:45 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A755E212B083D;
	Fri,  5 Jul 2019 02:43:43 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=79.96.170.134; helo=cloudserver094114.home.pl;
 envelope-from=rjw@rjwysocki.net; receiver=devel@acpica.org 
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id B7D14212B0819
 for <devel@acpica.org>; Fri,  5 Jul 2019 02:43:41 -0700 (PDT)
Received: from 79.184.254.216.ipv4.supernova.orange.pl (79.184.254.216) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id d34c4fd5c247d611; Fri, 5 Jul 2019 11:43:39 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: robert.moore@intel.com, erik.schmauss@intel.com
Date: Fri, 05 Jul 2019 11:43:38 +0200
Message-ID: <2847939.QcJ3fIVZhg@kreacher>
In-Reply-To: <CAMhj-NcA8J8rD1PC6mH+HAjBdv2H532UB5aB5-0Y6VWtUh=8-g@mail.gmail.com>
References: <CAMhj-NcA8J8rD1PC6mH+HAjBdv2H532UB5aB5-0Y6VWtUh=8-g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Devel] [PATCH] ACPICA: Fix compilation with bare-metal
 toolchian
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
Cc: linux-acpi@vger.kernel.org, devel@acpica.org,
 "Laster K." <officiallazerl0rd@gmail.com>, rafael.j.wysocki@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On Saturday, June 22, 2019 11:03:54 PM CEST Laster K. wrote:
> An ifdef expects to be compiled with full-fledged Linux toolchain,
> but it's common to compile kernel with just bare-metal toolchain
> which doesn't define __linux__. So, also add __KERNEL__ check.
> 
> Signed-off-by: Laster K. (lazerl0rd) <officiallazerl0rd@gmail.com>
> ---
> Apologies for the multiple/spammed e-mails, I was having mail client issues.
> 
>  include/acpi/platform/acenv.h   | 2 +-
>  include/acpi/platform/acenvex.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/acpi/platform/acenv.h b/include/acpi/platform/acenv.h
> index 35ab3f87cc29..b69319198cb8 100644
> --- a/include/acpi/platform/acenv.h
> +++ b/include/acpi/platform/acenv.h
> @@ -148,7 +148,7 @@
> 
>  #endif
> 
> -#if defined(_LINUX) || defined(__linux__)
> +#if defined(_LINUX) || defined(__KERNEL__) || defined(__linux__)
>  #include <acpi/platform/aclinux.h>
> 
>  #elif defined(_APPLE) || defined(__APPLE__)
> diff --git a/include/acpi/platform/acenvex.h b/include/acpi/platform/acenvex.h
> index 2e36c8344897..c7697a47e33f 100644
> --- a/include/acpi/platform/acenvex.h
> +++ b/include/acpi/platform/acenvex.h
> @@ -19,7 +19,7 @@
>   *
>   *****************************************************************************/
> 
> -#if defined(_LINUX) || defined(__linux__)
> +#if defined(_LINUX) || defined(__KERNEL__) || defined(__linux__)
>  #include <acpi/platform/aclinuxex.h>
> 
>  #elif defined(__DragonFly__)
> 

Erik, Bob, any input here?



_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
