Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEAF538BCD
	for <lists+devel-acpica@lfdr.de>; Tue, 31 May 2022 09:07:34 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id A4996100F3945;
	Tue, 31 May 2022 00:07:32 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=194.104.111.102; helo=de-smtp-delivery-102.mimecast.com; envelope-from=jlee@suse.com; receiver=<UNKNOWN> 
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com [194.104.111.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 76387100EAB18
	for <devel@acpica.org>; Tue, 31 May 2022 00:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=mimecast20200619;
	t=1653980847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=tOX98SX04M7fiGSZW2PRWo8Y5rfRlCKjiavfxBQwKCY=;
	b=dlrJDrV4NsZOGOFRQKGd+CUos3dhWmBfbBpkcc9Jw36UvE3t1T8+XOw/B2IJa03CS1fUDz
	HrbRjSmNEz3YrMea+/VwkQ2BBDLwZsnVhcLe+OevCF0EJDuFFkLwUwYbeT0mv9mYVmnX63
	z8H7loN68ax4K63M53UJxtuk4/OJWRU=
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2057.outbound.protection.outlook.com [104.47.12.57]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-12-_h4HBKNVML6XzpBbHh0h1g-1; Tue, 31 May 2022 09:07:24 +0200
X-MC-Unique: _h4HBKNVML6XzpBbHh0h1g-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XVhIngIuG+VBAy2xzyvD30hrhXuUZMo2cjfmVQRqmchoLjHOmzm0kHfnF+0NounoNXRPM/n8d+iPwXqeu6WtvZ2l841j+S5fDzpwRrmOn22WuJMnnhlEPkjjp3H7/buh4Qxz796XZkDjcahVTGjm3UNWXJo6JXKndQTCCOU6krZ1Aby6XiHMig8jRKrlUiTQqTfgwn6XlITTB2RGetmVfo5a1ATn/xnVZxEWQ1UJMXnlKUC9nvWzuDanC7JrEAchYJsWNao0UfzLAw0j/BBUFj6gUB/0Fs3K8+F3xjPubhEj/K/khSPGioUbNt1U4DM5RSWTJsXrcpXYnz0NQyxcNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tOX98SX04M7fiGSZW2PRWo8Y5rfRlCKjiavfxBQwKCY=;
 b=J7Pyp5Yoynjy/f5tLJnX6ItFacyzOhLa03d84zOHI7ogU+/cPxXE1uBjWPUfrb//1G48cIEMJprGl3LZoV/93J26CkpB4LIf9E1DPFWNiP2VAUhTDyZSjPuEhLAg6QtIFdxM0xvP92epjCo8bX2M5nTCHM+oZhCtt47qA//l8WRTwpikWZwCdfVXBJ4vgseJ/BGForlqYKyQiuTa0NwIcZHbhvOeq8z0qs8jYfJBrIKf+b9mGYhiZE6cL6uNEv2joGlWHcvkjIYU5rlvs4P7xr7y5CVTwVpF5M+tRBas7fGC/7MgPbwI1DRh5EexwVagSSkwyReYH6d38j/RMvCOyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from DB8PR04MB7164.eurprd04.prod.outlook.com (2603:10a6:10:129::23)
 by VI1PR04MB6831.eurprd04.prod.outlook.com (2603:10a6:803:135::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Tue, 31 May
 2022 07:07:22 +0000
Received: from DB8PR04MB7164.eurprd04.prod.outlook.com
 ([fe80::88f7:136:e93:c42c]) by DB8PR04MB7164.eurprd04.prod.outlook.com
 ([fe80::88f7:136:e93:c42c%5]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 07:07:21 +0000
Date: Tue, 31 May 2022 15:07:14 +0800
From: joeyli <jlee@suse.com>
To: devel@acpica.org
Message-ID: <20220531070714.GA20481@linux-l9pv.suse>
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-ClientProxiedBy: HK0PR01CA0065.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::29) To DB8PR04MB7164.eurprd04.prod.outlook.com
 (2603:10a6:10:129::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 518322ae-ff49-4643-1c38-08da42d43508
X-MS-TrafficTypeDiagnostic: VI1PR04MB6831:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB68313FB3428B35C50F24BB20A3DC9@VI1PR04MB6831.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eUHrslkiUTHPfydFuDw4iNI3UQOILbx/MR6WulC55+aFqLfKznVRvRkfP0qjpIIAW6qGDuu5eagyHJrY0heUvt113xOD7UZYRV57T0xsySlq3FlTZJDU7Gqg6NiNKYSP6rTTSvBV9Z8SghtyOAJ6LLtLrFdyyPMkO34wJJY3gjWbCpk2S2uH92eRWljXUa3+VaisGHqPHHai+euEGfQa5ClqZm0RSCMheEQcrDAW1LCWC1l4PxcUZIRYKbMrmljq1BQFTeIXXeQ/rTiF+/VFISuuOkB+Z2QUTP+8trdTWF6P7z9Cw4tXmP1AbRFVuHEgyJw3/mMB3Mh/MNLJK35PzK4P8lf9J/z44Ya/hacrF8+uqhhEBEhBGKBUBvnuK4vpYxFX2hzFldQ6R4KIkToLqHxOV9nXWPE3j7RRgJWfOSxydfXpCnsxchbIN0JCdXAdNmTyiL7/CPfjPUhWRlnNb4kCA56yw0kqijFzfdmWMwNlRyvot80hnyVq1xmltAGLRgjidA3hFhCh1980zAxllRvP3uN+PDq0/hKzpgiPtPNAej51CRk7qkz17gIYcR8mu4Vv8C/rv45C7QGS20WT8+tUXsk1v0dtHFOzySLdtBeAsMPUVEcZ5SZSIu1HtnOq+Z7sJLm4i/WWhUW2BNwACCmThKnV+Bd6MqoFfLG+3Tno/Pl683TlId3haodL9miF3KnLofZ7N1TjQGH0geQnf2ZoKjmyynQVtGfsb1e+yecsRihrYJEnSwgnsf1H9z/Y8s4LWKSHRvAQwkfPES7hhg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB7164.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6506007)(26005)(6512007)(33656002)(6916009)(8676002)(2906002)(316002)(9686003)(966005)(508600001)(6486002)(6666004)(86362001)(186003)(38100700002)(558084003)(8936002)(36756003)(1076003)(66946007)(66476007)(66556008)(5660300002)(43062005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?QlwF4yWD+/+wRHbvaPBC14yQHbAXKzuGRay7BYOirSkyz5kI4Y5YJVCTZsJU?=
 =?us-ascii?Q?iIGMZwyjQsYMyWm4ZL6UmKwN5onlcJLRTA/fgPS6DaCqTQiSc8Ob85JfdQeF?=
 =?us-ascii?Q?YaOFX7WUntQPgqSIInItpY76VyH0QD4kpVoFp5oCG2IePtThHffRgSTBzCba?=
 =?us-ascii?Q?ARMzv9/bP2yCcNa6kW8ap+JhMT/P9bOurrQOjiOPQOC4nKLp62pjQ0j+bt/d?=
 =?us-ascii?Q?VSZfZB6Lj0WT0IBT3k+aHQlpFofX7BFpLh8aysPxAaPCtrBo9Az5/76t5Mpa?=
 =?us-ascii?Q?Z2RZbDKr55a62fIyXk7aLSIiqJymzlGCcxoFKGMbltsTuhDzoFYZrHVstkyL?=
 =?us-ascii?Q?v66IWGtUEbOQLAwOdRdSnJ8wf6JD4lPNXjCu1MifCY6YtLVMnNRvoTvo7mAE?=
 =?us-ascii?Q?MiLCKLmDFLQy0z4jvct+6ubq6FacSm299MA2oS8+xpMwE7eaPKqBfnEaHoiX?=
 =?us-ascii?Q?e6/PLS/zrqy2d3abz8SJ8xiDDQGlXi5nnwwdWJZTifAIcHawEQ0tW+NdZlAF?=
 =?us-ascii?Q?tCd4Pizpfdk84q5k3EWMH0wt7V/FqvgAYVeXfzmRN9d7g2O541ojTaYcTYaQ?=
 =?us-ascii?Q?ToJPMHIGpYFLJXkUDEgdMbBgL+mDyn1zsdH+XG2L9+UDBBlIuz5joR3GCYEd?=
 =?us-ascii?Q?mTq3PfGmdy9jOSGKOET9o+dHrjUa7cR4WL9hiBwU7w+AZkDbA3Vp7PNMSzow?=
 =?us-ascii?Q?CgEk1njLVUWitwen+dYEq5Gp5P5pliQPQHfhDc/OLhoilloe26kxDHmATL9O?=
 =?us-ascii?Q?uF04DUVYGwEMnZElQBNW27AromDCo5B4sm9v2n61RK9KKu2L4daplxNlL+qR?=
 =?us-ascii?Q?voj0beAnfcxZOC4xPTbV9a0ynomL4LRU1DMPdt0IqZr+J5tGjXgF7TTXzEtk?=
 =?us-ascii?Q?ay2duqt5jeT5pb6h5orPiSLbBIgzX0y/M3pmBnn81kRQ6QKfaYBk1HecXEuP?=
 =?us-ascii?Q?J2IlQdg2a9j1/xPrVUAx5uTEwePhbcg6euA046l+hDGfp5y2iuv78jhALSlW?=
 =?us-ascii?Q?481GmkPMmDP446PtAdDXx0gfgyMR0WhRZea1j5P0GSPuJmaTyGm8VWx/Mg1O?=
 =?us-ascii?Q?eoxV0+BvgpHEvAfhKiZtkU9zTxIHE62rIhr85pUKH+I2AFLzOGTwysUuJFdV?=
 =?us-ascii?Q?Kgb0uJvFS8125g38lJ2hCvfDxSy9E8hasCUDz39u3H1Z1V/XP9ZtEkFLXZIV?=
 =?us-ascii?Q?+ZjOO1wpCYdXjiUMIIz2TM7hsWXo5wx45Q7+GWz09IhlBPQ6arCjAtBL0wlI?=
 =?us-ascii?Q?2Ao5gLRLHz7UEgFzo40KPlQ4Oj+pd8fOsmCSxNYYQq3XfwzwFBZTqKqlA4gz?=
 =?us-ascii?Q?uZZh2Isj4Oxc68Me/nuJI27WC0zyq6JRwnqUekckPkBU2hwqSTWKQxWro4RF?=
 =?us-ascii?Q?1D/WzG7WTn/PIsjQWbe3qbb5sI8IXSbWK1dt4By5vyeQvwVrDf+Q0hs2VIIW?=
 =?us-ascii?Q?+feCtzI8pbgUmlImRTCMdQXPsgoM17YgfpjjqM+oikLKl1STNKzw6WJJZXTU?=
 =?us-ascii?Q?HrSDWaBZCAzIiaNvIh9LAxmn296jx7skiN4sS8jAnFkdYcgckl3+oa0Cr7Oy?=
 =?us-ascii?Q?Cpln1r4yfrBzgP6B9cSVRmLsEJL0WXolkOrha86P9wlEUVW4Kx6GAlAIZrWw?=
 =?us-ascii?Q?qEThNVeYF5F6dBXx05CCNXo/loeOqO3q+gq7FCCPRFTlN8HgIDBxE7Wy1wXx?=
 =?us-ascii?Q?1z03U3rM6PJY53Uv5bBpd7ZijJqX/85RgaLGdOivRihvNqTU?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 518322ae-ff49-4643-1c38-08da42d43508
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB7164.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 07:07:21.8613
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I6LK/8Y6J1psoHVstBxzPbqwJlFGyL3+XdpSO/CP/Fx2+RgkLSo/nb8L0568tj1R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6831
Message-ID-Hash: CZX3DW4ZFEDCU76FCMGGWOPCZGDQSTBQ
X-Message-ID-Hash: CZX3DW4ZFEDCU76FCMGGWOPCZGDQSTBQ
X-MailFrom: jlee@suse.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Why the patch against CVE-2017-13693 not be merged?
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/CZX3DW4ZFEDCU76FCMGGWOPCZGDQSTBQ/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

There have a old patch against CVE-2017-13693 which is
subumitted by kkamagui:

acpi: acpica: fix acpi operand cache leak in dsutils.c
https://github.com/acpica/acpica/pull/295

Why this patch not be merged? Does there have any conern?

Thanks a lot!
Joey Lee
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
