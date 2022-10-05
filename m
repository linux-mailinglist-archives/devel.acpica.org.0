Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2055F57CC
	for <lists+devel-acpica@lfdr.de>; Wed,  5 Oct 2022 17:49:57 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id C1B46100EA2D5;
	Wed,  5 Oct 2022 08:49:54 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.174; helo=mail-qt1-f174.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 58F30100EA2D0
	for <devel@acpica.org>; Wed,  5 Oct 2022 08:49:52 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id cj27so10127683qtb.7
        for <devel@acpica.org>; Wed, 05 Oct 2022 08:49:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vmiWEVCToBe67RJhgjCgJCKlKhQhca5a1Yk6C0OW+aw=;
        b=tyzqjrY4quZKO6d2BdOQsjB2R/EZAh8UGzgPjkOjSSOQNjiMT1Lo7+ShG78sDwfQD1
         2CH2K8Bs4zMsVD64e8CPnwmsrwxFKd/Ia7NFKmGJmn814op8LBPNxUvdDXF6oxH4mNxG
         PCakuDuOuG7oSRlfCBIJyqNN/Q3fb4ydNJxVCzfhSZZQnwRWqHmJGOr7DjPNVqWRGWrl
         0gqDXDgaAQWN83gUKWVxZpOYFxCjddh7292S1v9D6aviMwCDGyP52JYjfmV7plCiFxOM
         cE6+ZeLVLy1UlVxIPuVfu6b76gaBhl/hY3Ywy+VEvimX1nPy9FVQbfN0mOLWjWmXX2qM
         2tVg==
X-Gm-Message-State: ACrzQf3AU9Y8bQJybziKkn9XqXsRTPGsQkcStyAlhV21r7Lb4eZabBWI
	t6jwThdiCV/vCISJMT6gJ+ENnFiF63jlIzpohc8=
X-Google-Smtp-Source: AMsMyM5aUyTQMOXAg3gyXwCNgnbCTi1H8Ar9/ASt+PFQiPUsMtl48zIG45NDgI/i7bsOutEj8b0zsIah6NQdpDLYClw=
X-Received: by 2002:a05:622a:11c8:b0:35c:e912:a8ea with SMTP id
 n8-20020a05622a11c800b0035ce912a8eamr188341qtk.17.1664984991179; Wed, 05 Oct
 2022 08:49:51 -0700 (PDT)
MIME-Version: 1.0
References: <20221004230541.449243-1-Ashish.Kalra@amd.com> <20221005154105.454809-1-Ashish.Kalra@amd.com>
In-Reply-To: <20221005154105.454809-1-Ashish.Kalra@amd.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 5 Oct 2022 17:49:40 +0200
Message-ID: <CAJZ5v0jM8WrE1u1x5K26Lj0kEvRfQB=nk4vOXYEnoG-zeuywRw@mail.gmail.com>
To: Ashish Kalra <Ashish.Kalra@amd.com>
Message-ID-Hash: 5WXT2ZXPLR2HLFQ2HB2XADSXBQQXIIO7
X-Message-ID-Hash: 5WXT2ZXPLR2HLFQ2HB2XADSXBQQXIIO7
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: bp@alien8.de, devel@acpica.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, rafael@kernel.org, tony.luck@intel.com
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] ACPI: APEI: Fix num_ghes to unsigned int
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/5WXT2ZXPLR2HLFQ2HB2XADSXBQQXIIO7/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 5, 2022 at 5:41 PM Ashish Kalra <Ashish.Kalra@amd.com> wrote:
>
> Yes, on one of our AMD EPYC processors, num_ghes is 32776 and we get the following call trace due to vmalloc() failure beacuse of the overflow:

But int should be more than sufficient to accommodate that number.

I think that the overflow takes place during the execution of this statement:

len += (num_ghes * GHES_ESOURCE_PREALLOC_MAX_SIZE);

because the right-hand side of it is of type int, because both
multiplication operands are int.

You should say that in the changelog.
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
