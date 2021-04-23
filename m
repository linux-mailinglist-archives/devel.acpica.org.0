Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DBB369984
	for <lists+devel-acpica@lfdr.de>; Fri, 23 Apr 2021 20:25:39 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id ED413100EAAF8;
	Fri, 23 Apr 2021 11:25:37 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.174; helo=mail-oi1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id BBF24100F227D
	for <devel@acpica.org>; Fri, 23 Apr 2021 11:25:36 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id v6so22228179oiv.3
        for <devel@acpica.org>; Fri, 23 Apr 2021 11:25:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qgWGrU+NRgbqW5EZG+gvjikL17VEIwiL+m90q0aPjwU=;
        b=KgLP1YcF0gygX0c/WFt4CvyrA+C0VEK3ljGW2sslm73gqIS/N9WfCNzebHjph+cvBB
         /Rt0PM7E8C8bJyyZRW4Yq/lZlfmnRjwe82EQNc2JLbhQqxoq9TlhJiFBGmKh0ouGPCMP
         3UCbir9zY4wR5vAZLEhv19qoRL+o4RU4Ev4XakFQvC6vsK37Y04wNkZ7bSRfEYhWpN/r
         o0Y3tvLnf+23tROWcRNTJ8koWG5URDt1d3fGDxyH980CYq32+mCEW7wA5qndzgScvC3F
         FePHlISU80hJVeY+BodZ/WPrvZkaaG1uvnVguKXLq3lw8xFdQaB8PCWg32ZhryfIHTd1
         XzfQ==
X-Gm-Message-State: AOAM530BK1SZeRxmWS6SUugrDxSXiQqCT+yf1I9FrlYwdjJHx3Nmh3cK
	jwlHVsxvdWyxwThGrILngM9AEtp9XhUW36VbVZ4=
X-Google-Smtp-Source: ABdhPJzIW9nCpFD4K+luzh3oa4XdA6nBZsXZR10JnAacbR+a5loiOX9m3bVXP0pS7HUWcs68mtIJTozgOqDI0y55Jkg=
X-Received: by 2002:aca:5fc3:: with SMTP id t186mr3628059oib.69.1619202335347;
 Fri, 23 Apr 2021 11:25:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210422214930.716596-1-sathyanarayanan.kuppuswamy@linux.intel.com>
 <CAJZ5v0gH-Zg7YZPf9joaMt1zfYfNkUGpo596=9QEJ1NKAw87qQ@mail.gmail.com> <df09a419-c881-c987-ef07-1b0e05bb171e@linux.intel.com>
In-Reply-To: <df09a419-c881-c987-ef07-1b0e05bb171e@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 23 Apr 2021 20:25:24 +0200
Message-ID: <CAJZ5v0gzCSrjjEKfu-whehh28eNMPaDAmjpBEikFFV00iEqbBQ@mail.gmail.com>
To: "Kuppuswamy, Sathyanarayanan" <sathyanarayanan.kuppuswamy@linux.intel.com>
Message-ID-Hash: 3QODZFKYTDEJ3TLJLHZCY23O5WWQXEG4
X-Message-ID-Hash: 3QODZFKYTDEJ3TLJLHZCY23O5WWQXEG4
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Erik Kaneda <erik.kaneda@intel.com>, Rafael J Wysocki <rjw@rjwysocki.net>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH v2 1/1] ACPICA: Add SVKL table headers
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3QODZFKYTDEJ3TLJLHZCY23O5WWQXEG4/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Apr 23, 2021 at 6:52 PM Kuppuswamy, Sathyanarayanan
<sathyanarayanan.kuppuswamy@linux.intel.com> wrote:
>
>
>
> On 4/23/21 5:36 AM, Rafael J. Wysocki wrote:
> > Evidently, this is ACPICA material, so I'm expecting to receive this
> > patch from Erik within the normal ACPICA development process, so I'm
> > not sure what the purpose of this submission is.
> >
>
> Erik already sent a pull request to merge this patch to ACPICA repo.
>
> After he updated the ACPICA commit ID, he sent it to me for Linux
> submission.
>
> I am not sure whether there is a special process for ACPICA related
> submission to Linux kernel. But if I had to guess, since I have sent
> both SVKL and MADT patches at the same time, Erik might have assumed
> that it should be merged in the same patch set and hence sent to me
> for upstream submission.
>
> > Has this patch been posted here for reference only?
>
> If this submission is incorrect, I can request Erik to submit it again
> for upstream merge.

All of the sign-offs under the original ACPICA commit should have been
preserved, then.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
