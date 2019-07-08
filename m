Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E49862734
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Jul 2019 19:32:40 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id F123D212AC47A;
	Mon,  8 Jul 2019 10:32:38 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.166.42; helo=mail-io1-f42.google.com;
 envelope-from=ahs3@redhat.com; receiver=devel@acpica.org 
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 1127B2129705B
 for <devel@acpica.org>; Mon,  8 Jul 2019 10:32:37 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id o9so21515322iom.3
 for <devel@acpica.org>; Mon, 08 Jul 2019 10:32:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=qdqfUWpX/ntCjM6grnMzXH0H94GpoERXa2WV0N6S/U4=;
 b=UyUV+/FVLuA6cCpNxXQiyfFwskg8zCZXcxQKe1hwRTfwsz9Qb3vxHZY6h4K4+apc1v
 t+e+THAM978NJisasODs+CfrNnaMU121DU3A3v9K6Ds+8Wq/w7e1zb5r8hI0U7jqbom8
 7SJHQSTkTNlJnhFx3pq1utr27rswi27ozHjJ8ZjlcXzKu8HvVtDR29sJvJSlchVg+wCn
 uM58zsFcCpbAzP8FHCxrgM4Awlr81RX0zqpzN1TevLVQ4PpUR/qiEl/RyK4gXw+xaxlp
 qXjA+ef4QzNyEaprn41yIWS8RXmcF0YnimyDojC3jltq1jfJQzQWY8gxJNvT7u50yNFQ
 +2tQ==
X-Gm-Message-State: APjAAAXVqdpztJi1SG7YWXHHTsayuH+NlG0yc+/tRxceR6/JXhX/14Y+
 rUv1Qlm3cGwCw3DjUOFVfCAF0g==
X-Google-Smtp-Source: APXvYqxcPESAs788Os93XqR+iq6KK1w7KFWc/IaQZCF7Z05FYaWQbeuaxk9v97Q/GeGzS9wT2kCqCg==
X-Received: by 2002:a5d:94d7:: with SMTP id y23mr20739123ior.296.1562607156959; 
 Mon, 08 Jul 2019 10:32:36 -0700 (PDT)
Received: from masetto.ahs3 (c-67-165-232-89.hsd1.co.comcast.net.
 [67.165.232.89])
 by smtp.gmail.com with ESMTPSA id z17sm26035196iol.73.2019.07.08.10.32.36
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 10:32:36 -0700 (PDT)
To: "Schmauss, Erik" <erik.schmauss@intel.com>,
 "devel@acpica.org" <devel@acpica.org>
References: <c54f0f72-d089-6bc8-863a-76828aad0b1a@redhat.com>
 <CF6A88132359CE47947DB4C6E1709ED53C609601@ORSMSX122.amr.corp.intel.com>
From: Al Stone <ahs3@redhat.com>
Organization: Red Hat, Inc.
Message-ID: <4076c2f2-f156-2afb-0a2a-5cc94f28ba8f@redhat.com>
Date: Mon, 8 Jul 2019 11:32:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CF6A88132359CE47947DB4C6E1709ED53C609601@ORSMSX122.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Devel] 20190703 release?
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
Reply-To: ahs3@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: devel-bounces@acpica.org
Sender: "Devel" <devel-bounces@acpica.org>

On 7/8/19 10:59 AM, Schmauss, Erik wrote:
>> -----Original Message-----
>> From: Devel [mailto:devel-bounces@acpica.org] On Behalf Of Al Stone
>> Sent: Monday, July 8, 2019 7:52 AM
>> To: devel@acpica.org
>> Subject: [Devel] 20190703 release?
>>
>> Howdy.
> 
> Hi Al,
> 
> I hope things are going well for you.

Hey, Erik!  Yup, doing pretty well.  Hope you all are, too.

>>
>> It appears that the acpica.org site has not been updated correctly.
>>
>> The current revision on the downloads page still shows 20190509, and
>> 20190703 is listed as a Previous Release.
>>
>> Since most work is now showing up on github, would it make sense to start
>> consolidating the two (acpica.org and github) to keep things simple
> 
> There were updates being performed on our servers that host our content management system last week.
> There were some hiccups in the process and we couldn't upload some files due to configurations that were not properly migrated during the update...
> We're currently working on resolving these issues and we will send out release notes when we're able to upload all files..
> 
> I hope this didn't cause too much confusion
> 
> Erik

No worries.  I saw the FWTS update to 20190703, but neither the Debian
watcher nor the Fedora watcher saw a release come out so it got to be
a bit of a puzzle to solve.

Still, it may (or may not) make things simpler for you all to have just
one location to update in the future.  I'm just lazy enough that I would
definitely consider it :).

>>
>> --
>> ciao,
>> al
>> -----------------------------------
>> Al Stone
>> Software Engineer
>> Red Hat, Inc.
>> ahs3@redhat.com
>> -----------------------------------
>> _______________________________________________
>> Devel mailing list
>> Devel@acpica.org
>> https://lists.acpica.org/mailman/listinfo/devel


-- 
ciao,
al
-----------------------------------
Al Stone
Software Engineer
Red Hat, Inc.
ahs3@redhat.com
-----------------------------------
_______________________________________________
Devel mailing list
Devel@acpica.org
https://lists.acpica.org/mailman/listinfo/devel
