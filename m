Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8964E44654C
	for <lists+devel-acpica@lfdr.de>; Fri,  5 Nov 2021 15:58:31 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DC393100F2270;
	Fri,  5 Nov 2021 07:58:27 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.42; helo=mail-ot1-f42.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EFDE9100F226A
	for <devel@acpica.org>; Fri,  5 Nov 2021 07:58:25 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id g91-20020a9d12e4000000b0055ae68cfc3dso10723352otg.9
        for <devel@acpica.org>; Fri, 05 Nov 2021 07:58:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N29f2qG9N8qGZBGabftefpAZctoEUTP2dAZL8SLGpjU=;
        b=XlMQmpXLj8Aj6r/RNW7M1I4GaKMbXrdNudDLsS7dlgMzwrywGyq6xRPb7CyLZ0jhFs
         e5QR6t8lhKamjlr+0gkV2BrJYyRVZU1Q/XWLd81KzqzxZMC7pbWlhkQJ9wWM7hGaSkox
         ifP2CwCe8AEnOMFq4qp0Y8mVKUY+xXY2fkX8ic1m8C6oHd5eeLqey+bbe6sAwcqtG+bC
         UzkWz5cMohGMNPM4+HfRsRsSffs2JnYS08W20fhfe4Tz7RRLOPeAN7clYQryMjovzkTZ
         AyGx5RNlP+YXoHtKPWq6BB2kh8LnFFIIkZFIC80p09RwURNVDi15WaUBdkMAv3MrFCzT
         DR4w==
X-Gm-Message-State: AOAM531keI3O2PuCbfL5e7gRiL8TbpRBJYhM+BczAL2IV/A4Sy9g2aDX
	bjESrP3eyzJo03Assdhfu5W2MkzWR6aXHmHL5Gw=
X-Google-Smtp-Source: ABdhPJzbBsU2kX81at/Ihg+/gwg0il6C3IJjZmh66hovIKnVJ7ey9fb5vDJvLcs9yLkSzrEoh1M6QGh3i4lQhJ38mrE=
X-Received: by 2002:a05:6830:3484:: with SMTP id c4mr28386618otu.254.1636124304787;
 Fri, 05 Nov 2021 07:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <20211102182542.3460787-1-sudeep.holla@arm.com>
In-Reply-To: <20211102182542.3460787-1-sudeep.holla@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 5 Nov 2021 15:58:14 +0100
Message-ID: <CAJZ5v0jL2+1rzqB2aAJ0T6w3md2dyuHWZNKOk+AbioeD-4ccDA@mail.gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Message-ID-Hash: TNQW3F6LCBZKDKNP3272GIGENNT53QEI
X-Message-ID-Hash: TNQW3F6LCBZKDKNP3272GIGENNT53QEI
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Rafael J . Wysocki" <rafael@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH 0/3] ACPI: Add support for PCC Operation Region
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/TNQW3F6LCBZKDKNP3272GIGENNT53QEI/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Sudeep,

On Tue, Nov 2, 2021 at 7:26 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Hi,
>
> This series adds support for ACPI PCC OpRegion added in ACPI 6.3
> I understand that the ACPICA changes need to go via different route,
> but I am posting it together to give complete narative/picture for
> the review/discussion.
>
> Regards,
> Sudeep
>
> Sudeep Holla (3):
>   ACPICA: Fix wrong interpretation of PCC address
>   ACPICA: Add support for PCC Opregion special context data

The above two need to be submitted to the upstream project via GitHub
at https://github.com/acpica/acpica

The will be applicable to the Linux code base only after they have
been accepted by the upstream.

>   ACPI: PCC: Implement OperationRegion handler for the PCC Type 3 subtype

And this one will be applied when the above happens.

Thanks!
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
