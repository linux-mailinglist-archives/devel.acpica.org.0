Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A358514B19
	for <lists+devel-acpica@lfdr.de>; Mon,  6 May 2019 15:45:34 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id E8F9C21250C80;
	Mon,  6 May 2019 06:45:32 -0700 (PDT)
X-Original-To: Devel@acpica.org
Delivered-To: Devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=66.163.185.31; helo=sonic313-56.consmr.mail.ne1.yahoo.com;
 envelope-from=scoobi_doo@yahoo.com; receiver=devel@acpica.org 
Received: from sonic313-56.consmr.mail.ne1.yahoo.com
 (sonic313-56.consmr.mail.ne1.yahoo.com [66.163.185.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 624FD21237813
 for <Devel@acpica.org>; Mon,  6 May 2019 06:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1557150329; bh=U82iVBMhTcODQ/WGIh2Jw+Plkz5XEfXsYqkv6oeFpVM=;
 h=To:From:Subject:Date:From:Subject;
 b=bfmGFPtRuGIPhFkFZOwS8Cs2Y/K0tAOXU1BA2qNY73mGxz/jl33G/8iWmdFmcHVA8sHKSZftYiEj1lg9/jXLOrF+/HcNP1vPKHefgAxczC2iJME2OfZUu+DPIIM96q2IS2gxt36dcjLIEjWSUImgrizf0ChX9OnEvqSOI3fHzvlpk6eBkXK/sHwAmt/dVYXSevFlU0+XyBwPLkRvGblo1r+n3WvZ+xY02g6gLcEJQwI2OrZVTTtW/5N8l0EZfgEJRHzL+V23RYE+2qF8caE5B9+iTfJAlGA3rLxNBRIIuEh0+xRq/n1bpKHl09lydTizjBbpFwI4A7u4qkNkGbwmEw==
X-YMail-OSG: X6BEyowVM1lo3c4X.WyqP3V48WTV6qYbhuCL7B2NIi_AWWLUj8RxXNgbB0vWfMK
 ZtPXH_egYayBkKHh_gW5JWh9ZtW8A0TEIyUQ4zUeHaxyah3u5xBeR0OxRXpiHrJ5MvlxuHzzvZ8L
 X8swl0BKNNAPSN85GnEKfVduGwmBbbY6JNN22I_WjdEcYSkhkEStmR26fHxH0VIKXDF4jdISAmeo
 9U.GTN9emSzdbEsuUpTv1bBmY5AqIKxogYB4NPfqCFtpAC3wngQKRUEmLpVk4AkngoaHS5IaA.jJ
 QwalAxGThFuac9ChTlPtpHX9D_UcluR0mxP6peOVAHURJI8WV0_.pFb2tN1xG8W2RcCcr5kJtKzL
 O.YiHKAYSlDLr4cm18NxBXAi50xVkX65D2OEVLp1crhNb7G4V6morC.IPJCTwpQ7lhYz9kGGUEdo
 LUHcmqttimI6sCLJL9HG7MwD_TyM1zXTe5R9EMZyHAmaISPEQLAPQMM072GWRECkLV2Txd.I0_Zj
 7GVakOO6o4gepP8jZoaS08EU27F.zfKFEsHSQTvscpvwcK0hI0DDpvoZ6QseD9met9oSKvBf48w2
 RZPgX5yD5BHCqj7oGOM86MwTaid.OdQT2h6EIPsFA1YCnntOIYqM6hi08VRRFM5JFYvRYxBDy8Wt
 asMpFYhBkrx29wDZM6XaNJIvJxCEVyS9rS4i7bO0Ij9jT0QbfjkAcbE77XAvvNbwshrB.iRelcc_
 KB3Gqo4u80pN1j5rPoOAQ1pvDTsgbGaFoQaG1A4U62uL_K4YxUD3Stj0c595cyZ9.qUXPbm4CjOr
 o3StkK4MOAPBpCbzm9xrngu_Y3YVfIeU36AQNIMTNAmX2aeer8lwQ5rdTQTaDJ0pIrzHm6Ujj3nW
 wH1bBqO6jujnH8aWbnjc31ck6VUSXyMJYHlbPetTyFAdoRB0.hUsBKFFy8ZDlw_6mbASXE0viY.Q
 qXuLpRN4mVfdWO32J7DHSYvOC_M9njhEJ7zOYwFRYbqOb5pYwP8fOvRn9wMis8sZegDD4KohUBcc
 8tg3HUWXljuRp9nuTBkbLGZbV3N73HjVNHHc2JNCQuf8P6KeveoovweCZjEcoo5tgudErz.OFxpx
 WPyeiVKZs6T7r1sFl2KmjoDUEALZe4SbtQ5R9WQpNClmlibsA8pJVZjgATpywyCH2YI7a1gti0HJ
 oGS8s
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Mon, 6 May 2019 13:45:29 +0000
Received: from 192.34.49.8 (EHLO [10.228.144.26]) ([192.34.49.8])
 by smtp409.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 1e094a13b55bb5fb8f927d68fc976983; 
 Mon, 06 May 2019 13:45:29 +0000 (UTC)
To: freebsd-acpi@FreeBSD.org, Devel@acpica.org
From: Anthony Jenkins <Scoobi_doo@yahoo.com>
Message-ID: <1e3328ab-0b00-7abf-7182-b4291f18f197@yahoo.com>
Date: Mon, 6 May 2019 09:45:28 -0400
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
Content-Language: en-US
Subject: [Devel] iasl -d and duplicate symbols (ACPI Error:
 AE_ALREADY_EXISTS)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

Hi all,

I am trying to patch the ACPI tables on my Dell XPS 15 9570 running 
FreeBSD 13.0-CURRENT @ git commit 68c8581f772. 'acpidump -d -t' gives 
error AE_ALREADY_EXISTS when trying to add symbol 
\_SB.PCI0.XHC.RHUB.HS01._UPC.?? Google says this is because my BIOS' set 
of ACPI tables contains two duplicate tables, and it fails to add 
symbols from the 2nd table because they already exist from the 1st.

Q: By "duplicate table", does this mean the entire body of the table 
(excluding its header) is duplicated?

What's the standard practice for handling this error? I assume I have to:

 1. Identify the two duplicate tables
 2. Tell 'iasl -d' (which is what 'acpidump' calls to do the
    disassembly) to exclude one of the two tables

I have no idea how to do either of these two tasks with the set of 
acpica tools I have (iasl version 20190108)...anyone have any pointers?

Is there a way to extract (using acpica tools) the body of a single 
named ACPI table?

I have some ideas for patches to acpica to help with this increasingly 
common issue:

  * Patch iasl(1) to emit more information about the origins of the
    symbols it parses, such that an AE_ALREADY_EXISTS error would also
    emit the origin (table name) of the existing symbol and that of the
    current table it's trying to add.
  * Patch iasl(1) to add a user option (flag) to ignore tables with
    duplicate symbols, possibly adding a parameter indicating number of
    duplicates or percentage of duplication before dropping that table.

Would any/all of these patches be useful/considered for acceptance into 
acpica?

Thanks in advance,
Anthony Jenkins

_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
