Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85093332E3C
	for <lists+devel-acpica@lfdr.de>; Tue,  9 Mar 2021 19:26:13 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id DAAC1100EB842;
	Tue,  9 Mar 2021 10:26:11 -0800 (PST)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::429; helo=mail-wr1-x429.google.com; envelope-from=jacz@semihalf.com; receiver=<UNKNOWN> 
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id A163B100EB83E
	for <devel@acpica.org>; Tue,  9 Mar 2021 10:26:10 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id h98so17597452wrh.11
        for <devel@acpica.org>; Tue, 09 Mar 2021 10:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=GI42vCTlbs6jvPZ6gKf6Nh5K7EeGvlrGCLUgbg0rOKo=;
        b=HfzQ9bMLHpExls/9zjaCSaRG0ZfvxqsgUEJ65lmx5mQDf8/bkcIFH+kAsN/hLy+jjt
         CQJzLEM8cPdy6GYLvm+vapnAAoIJMIQh/u/OL+plDAGE3NbST7TZepsRFHfF3ubk8Nk9
         ao1e/b22cUHLJIZOaN+0e0b3NRPkGioea/4wkXDYHJP5s0mjKTd7JWWynWb21glUkdFM
         +WHIlhkai6Ooz60sqzEDi+ZANmUtk4wSn/AVgZq7D2W8gk+1YI/dejK5BnU0dO0SG1i0
         IibkXxZ0L5rOi0EHH9lyf95ByWdB+J/URqu7+apogoR9QMbRwdvFk/FDCEWvWJ4Wp6lU
         eQMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GI42vCTlbs6jvPZ6gKf6Nh5K7EeGvlrGCLUgbg0rOKo=;
        b=FDS+zpgFvaqgDk0C/SEcPmPA9JUyihIXoQJJ3Ws1L5xiSluMFgoZiVDaEjr/EpqwY/
         lNlIiPVkTydKIUTGVnvtO8Pb2SzZlc/3EBz7Exx3W2XrQ8/sw7nY5cO8r4Ypt3Caiwyi
         5QHHlQ+XmrGE9FHekKuVTu3cZuO7qBcv2Ik1x9a4/1Zw/8McCXpmDYzmonb0azckgL0H
         y9rzgSpgrAk3KjH8bEDwHxXUGbEtpCXeoUv/WeE+dDVxhbQQ1Usvg40AAuwNAmRHytEA
         zkSo6f1Y3y0pyr5Dn26zXx7m81nDIgehG+U1/IUbfsbBp3RSsbOBIe8S9+mvuWiBSJP6
         MB0A==
X-Gm-Message-State: AOAM530OWme7lOC0Ze8rHb1dgHfRWamnFtL2T5XRZMMxgqmxUvA/yTqg
	StdvOderLncGjcOpKvtnsG7EM3kdaYtCZoNvnaguokSShLmHVQ==
X-Google-Smtp-Source: ABdhPJwXETn4F3qSk8qej/VnIwnIQW0MmZeae67TnZ4kapXZeW27Fnbizla2o5dUXQSPFDdz1WyBbKmJYDQY+2AjNdw=
X-Received: by 2002:a5d:5105:: with SMTP id s5mr30991050wrt.140.1615314367924;
 Tue, 09 Mar 2021 10:26:07 -0800 (PST)
MIME-Version: 1.0
From: Jakub Czapiga <jacz@semihalf.com>
Date: Tue, 9 Mar 2021 19:25:57 +0100
Message-ID: <CAFyd4VbFdF0hyPm60w+AT1KO=TzxQS+oE-j2TiQDsuL7=B+Q8g@mail.gmail.com>
To: devel@acpica.org
Message-ID-Hash: BOXDPJZFC6WFRZNJ6TV2SM6CLGNC7EPX
X-Message-ID-Hash: BOXDPJZFC6WFRZNJ6TV2SM6CLGNC7EPX
X-MailFrom: jacz@semihalf.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] ACPI table testing with ACPICA
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BOXDPJZFC6WFRZNJ6TV2SM6CLGNC7EPX/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: multipart/mixed; boundary="===============0643691527802056606=="

--===============0643691527802056606==
Content-Type: multipart/alternative; boundary="00000000000019d9ff05bd1eaf33"

--00000000000019d9ff05bd1eaf33
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I am working on a system for AML testing. Basically I want to create some
kind of unit-testing environment allowing to load generated ACPI tables
(preferably from memory buffer) and check methods' behavior, check
variables, check if all required objects are present etc.

My first idea was to dump generated ACPI tables into files, load them into
AcpiExec process and communicate with it using Python. I wonder if it is
possible to use provided source code as a library and write tests in C
instead of Python with a custom framework.

Could you please guide me in the right direction?

P.S.
https://acpica.org/contact does not work. Captcha is empty.

Regards,
Jakub Czapiga
jacz@semihalf.com

--00000000000019d9ff05bd1eaf33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I am working=
 on a system for AML testing.=20
Basically I want to create some kind of unit-testing environment=20
allowing to load generated ACPI tables (preferably from memory buffer)=20
and check methods&#39; behavior, check variables, check if all required=20
objects are present etc. <br></div><div><br></div><div>My first idea was to=
 dump generated ACPI tables into files, load them=20
into AcpiExec process and communicate with it using Python. I wonder if=20
it is possible to use provided source code as a library and write tests=20
in C instead of Python with a custom framework. <br></div><div><br></div><d=
iv>Could you please guide me in the right direction?</div><div><br></div><d=
iv>P.S.</div><div><a href=3D"https://acpica.org/contact">https://acpica.org=
/contact</a> does not work. Captcha is empty.<br></div><div><br></div><div>=
Regards,</div><div>Jakub Czapiga</div><div><a href=3D"mailto:jacz@semihalf.=
com">jacz@semihalf.com</a><br></div></div>

--00000000000019d9ff05bd1eaf33--

--===============0643691527802056606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--===============0643691527802056606==--
