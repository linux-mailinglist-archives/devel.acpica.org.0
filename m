Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D60620E3
	for <lists+devel-acpica@lfdr.de>; Mon,  8 Jul 2019 16:52:33 +0200 (CEST)
Received: from [127.0.0.1] (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8D0E421A00AE6;
	Mon,  8 Jul 2019 07:52:32 -0700 (PDT)
X-Original-To: devel@acpica.org
Delivered-To: devel@acpica.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=209.85.166.42; helo=mail-io1-f42.google.com;
 envelope-from=ahs3@redhat.com; receiver=devel@acpica.org 
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by ml01.01.org (Postfix) with ESMTPS id 1AB552194EB76
 for <devel@acpica.org>; Mon,  8 Jul 2019 07:52:30 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id j5so16501455ioj.8
 for <devel@acpica.org>; Mon, 08 Jul 2019 07:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:from:subject:organization:message-id
 :date:user-agent:mime-version:content-language
 :content-transfer-encoding;
 bh=LYX+ErmkhLHye5/ztc9N2rlWvJWOj1QVu7Z1PZ42dSQ=;
 b=Yb0IePNfyYX3/dn741TBWn2BNes0TS95IPsPpvPiTEZNquyha4MM6d8TmVfHpGvz9g
 oAFx3RQK+gvVLmk14BwrNLGYRf/SbIRnvfyECj0jlVVw42htSOlTLuqdudHnL3ZVmQIM
 1x5oprZlw2DxhtP6mv8BAR4/K+vOvwzAXqSwYrMPHtv1wNC6rzdnvePhpsgbEwlYAryA
 HQwINOlv/vnhE/a/9tcS7TOSUW0/s1f8+/1/LCBeOKkazQPd2r33LHk9/lmIGjudktdr
 h77q92ytf/p62keTRqfj3W9ZfCBxR5KZKyXJxby6JHr8ASMexrgtJu6KRoUr2W22OMSE
 tXHw==
X-Gm-Message-State: APjAAAWWpoohBqPvMfVSierORARjzSztrsOveQ3lu7jXSM1lLmV4+wpk
 yk3HSkubYaNCKgb6YODOpB5VA4vb7AM=
X-Google-Smtp-Source: APXvYqyahv0QR0PBGsTYFCHOc/jCHdXaZH/Oznv8E3E9cyPNYhrCI5me0wuyqXaeBqoKT21FnqTvng==
X-Received: by 2002:a5e:c70c:: with SMTP id f12mr4703967iop.293.1562597549255; 
 Mon, 08 Jul 2019 07:52:29 -0700 (PDT)
Received: from masetto.ahs3 (c-67-165-232-89.hsd1.co.comcast.net.
 [67.165.232.89])
 by smtp.gmail.com with ESMTPSA id m10sm17587776ioj.75.2019.07.08.07.52.28
 for <devel@acpica.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 07:52:28 -0700 (PDT)
To: devel@acpica.org
From: Al Stone <ahs3@redhat.com>
Organization: Red Hat, Inc.
Message-ID: <c54f0f72-d089-6bc8-863a-76828aad0b1a@redhat.com>
Date: Mon, 8 Jul 2019 08:52:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
Subject: [Devel] 20190703 release?
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

Howdy.

It appears that the acpica.org site has not been updated correctly.

The current revision on the downloads page still shows 20190509, and
20190703 is listed as a Previous Release.

Since most work is now showing up on github, would it make sense to
start consolidating the two (acpica.org and github) to keep things
simple?

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
