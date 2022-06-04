Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9109753D42C
	for <lists+devel-acpica@lfdr.de>; Sat,  4 Jun 2022 02:56:14 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 70DC5100EAB1C;
	Fri,  3 Jun 2022 17:56:11 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=194.104.111.102; helo=de-smtp-delivery-102.mimecast.com; envelope-from=jlee@suse.com; receiver=<UNKNOWN> 
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com [194.104.111.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id D64C1100F226B
	for <devel@acpica.org>; Fri,  3 Jun 2022 17:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=mimecast20200619;
	t=1654304167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ycEzPoNLWLrP2oXb+1jhLeV+hKAphcHN5UTYKnGuU6s=;
	b=VQu0eC7VTo199dNb0r/5fmDYVw2s6O8pz4z4SGspL/mm2Qy6zf2F5LEs8iIFxmjRbaQw4+
	DA2WFYVZ+X6d+/Va/brx9USsFSGmbCLox5lD69/LBkYZqihD37BDxyOsrwAuL8K4xzxSlN
	OvznUe/tgA7i9t1c4V+MmwJmw/clS+c=
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03lp2176.outbound.protection.outlook.com [104.47.51.176]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-22-klTGMqoIM2i1qIXmL1PG2g-2; Sat, 04 Jun 2022 02:56:05 +0200
X-MC-Unique: klTGMqoIM2i1qIXmL1PG2g-2
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axvEevuG4qA9A6XjknYPSZdOR9c5pb4v79dmqYBBKGbQvt4ZFs6g21tA9YrT6te4m7/Z3oNw34S0HXWpGsPDg+H9e/Yf10KFKm9zlCyEZ9N890kS/KAMgh+kuZujjppzMJUeSzYmX/Dni8JIpszl/i4GKhbhjU5t7y2dzPZZWeox+wxs5NOW7svOEbMcYJCc9qWrcBN+41IJNsq5YKvxgJPgmQr/UerY+I6/WAMy1xwznWLOx08eJo1dCHFQDwMEeQm0QdaauPMSk9I1AyEovNUBHUNY0SFxEBIe3SBQ4lRKoYO5GYLRH/yzW7Hm4hJpnEvXhsOqFy8LfOsrk24R8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ycEzPoNLWLrP2oXb+1jhLeV+hKAphcHN5UTYKnGuU6s=;
 b=iGUUj9elSOLyC9q/n2zg0tz0Ck0BKc68dIvThuAcFSKQUl43n5d0wG5I5wr0ZlFQH5DIR+N8gnAwV9SuGaT0RtTaWTN4wYBdH9jXxrLAh7RGDNiXjJiCO/iDT9MkJo+pGJ8n2Llzg7hJ9PjXSXPRw/DJ0GkY3sqN/DGCSdhxXSeFeQsPnWFhkB3h046DqTyYCwNNTaXC3t4KYJRLsxOm392LMplLkg+zHtjXTbbBnUunFKg6EUqJoAKD1nbncgVTND2v6CMsOI/XY65K0WlwV2rTLCG1ek0+C9x/ep2J+oI49VXpOfdrTCJWgNkZAqqAzUQ63nMiawrtd0wg47LbuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from DB8PR04MB7164.eurprd04.prod.outlook.com (2603:10a6:10:129::23)
 by AS8PR04MB7510.eurprd04.prod.outlook.com (2603:10a6:20b:294::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.15; Sat, 4 Jun
 2022 00:55:58 +0000
Received: from DB8PR04MB7164.eurprd04.prod.outlook.com
 ([fe80::89f4:fec5:25b6:a9e9]) by DB8PR04MB7164.eurprd04.prod.outlook.com
 ([fe80::89f4:fec5:25b6:a9e9%5]) with mapi id 15.20.5314.015; Sat, 4 Jun 2022
 00:55:58 +0000
Date: Sat, 4 Jun 2022 08:55:48 +0800
From: joeyli <jlee@suse.com>
To: "Moore, Robert" <robert.moore@intel.com>
Message-ID: <20220604005548.GG20481@linux-l9pv.suse>
References: <20220531070714.GA20481@linux-l9pv.suse>
 <BYAPR11MB3256E4BF34A7BF67607FA51687DE9@BYAPR11MB3256.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <BYAPR11MB3256E4BF34A7BF67607FA51687DE9@BYAPR11MB3256.namprd11.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-ClientProxiedBy: TY2PR02CA0057.apcprd02.prod.outlook.com
 (2603:1096:404:e2::21) To DB8PR04MB7164.eurprd04.prod.outlook.com
 (2603:10a6:10:129::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c89b169b-f83e-4b79-4ac0-08da45c4fc56
X-MS-TrafficTypeDiagnostic: AS8PR04MB7510:EE_
X-Microsoft-Antispam-PRVS: 
	<AS8PR04MB75107AE69ABD6B90CC55359EA3A09@AS8PR04MB7510.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	r7+tZVlrnxHg6Jpq1S8pGWZLeKTTLCSBFG5i4JZTwq5fTONrAY1tD9ELxVLGGGC5z+2Ih8D0C4TqVdDgHqydf8twUIV3Bth1pwuEQ7nop51sdcYniGT8NqcHkIxsTT2eQ+muqYLIt0j+z5IPbbvbyYvAq3Ue950BPKTqHw5eutI5Lpiyz40h4TsJnkiL4zFssLujQL3hL0DNrTm1JqNeKV43V2KC1v/z79Fy9hg8Z6q/opyPp9W4qdN+WyXh+0+m0sPJ9nV6gs8sp+x4wYG4W+AP7MwV6L9jnJPLgQ5MUsCZrY2lCFMDItYABqz43P5CtoJT2qqDxHVBJG5XPsfw0C9AVVwuPOlrK6kePVWZM0T1lLej7wg+D0fqt11A4Ql9Whfkbdw5KH5knvuvJHLnXvkJCJ9rJDVs0kOMmGE5oSS2UdSedxwtoUP385DzJYw/bXFYzt4CkIZA5V3GJW9w8l7X59zWxXxyqjh2nEetPfx/hcY2vrys7chansa0iUjDWzBIk5U4gJd3F3zPyHMStJ4Kr9jQpa+3g/bvmE/lEBhyP29sCjsjqICbJauas52is17mzMZZ9LgDefmUiDQVYo7pR1Mmkp1b99iKe05UgTHePpUevzqqgu1yE3L/CIzRsEfPUngB1hvlNjbcWkVBTn3pcoJAlJaYK9BWCY7kWfHtiHpiqrN/lLG7qvAkzgQ08RKQbpiYtMHOdYJB8aSXsJGyu2jn7m+Wb+nhOnPD7TxBjYDq936Qk4WgmmgrF+R610kFi5DdxRkIwssR0Rxy1w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB7164.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(966005)(83380400001)(4326008)(66556008)(66476007)(6486002)(8676002)(66946007)(186003)(2906002)(26005)(6666004)(9686003)(6512007)(53546011)(6506007)(86362001)(33656002)(5660300002)(8936002)(1076003)(508600001)(4744005)(316002)(36756003)(38100700002)(6916009)(43062005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ZyEKJppq1m0Gp/2e1QtVOQh9oFt9eq6E1VLgIAIHDJ8FhHGkbW60cO6xk96v?=
 =?us-ascii?Q?QMVd7KY94OKmlkCQJdK1+89r7bYtZNT727ygcaQsfdr5i7N32tqj64yBrla2?=
 =?us-ascii?Q?nlEbedCx2BOPtzfEecw7xFZgUFsBTvZa39REDEhLnR3JxcIFNxD2cH0o5AId?=
 =?us-ascii?Q?PpP83DPJNV0DQOHBF6nu1M+g58zv+i8/NecTEr2XLaav3b3TcdCKSVEv4RWi?=
 =?us-ascii?Q?19M40/Kv0ouZiUFyDpL4/cAvsgyqZUXep2ii8YfDvC151z1mmblIGQDHrgkK?=
 =?us-ascii?Q?fhvcKd7NlLs55M28NljUD1eb+pVzh+Wy91vmXagDaacCKrGXQcUuXufEeb+C?=
 =?us-ascii?Q?FmyEJTC1PtHQ1khcv3tcPJgTvkLw1NPYnLSqqSb0usAdptD7gXbKprY2WAnL?=
 =?us-ascii?Q?hMPC0MHw/e8iaKa3/1m1C7hf6hFRNTH/7PlKSO14QR+DzAwSkBmACZYFRSbb?=
 =?us-ascii?Q?yb6Qi0122l9ZindmdE3yeg3e8dSZ4/slxLCwXjQ52xQHHdNb9/AxULzZBYo1?=
 =?us-ascii?Q?mqJzxGDzB57KtLBe/5s3fyvKtUPB3jf3MA+1mYu8kUP+vGDOkjjO2uWEiRB0?=
 =?us-ascii?Q?mFNOjQmcKh0p3XgiLq30sNi/u8v9zKjN0AFgVYlKBvHhMGY3UQQlQ+rIKbxs?=
 =?us-ascii?Q?LrgL9hqAuArdLLtdDRt6/G3I0hXbEhOJco5lRiHwhFgO8yzFwAn98oiOY2qj?=
 =?us-ascii?Q?USU/z3GenTIbRf4ngX7LQniIvB3un2Vzv6/3/JtHD0RTsSqu6m3bUgeZ3oBx?=
 =?us-ascii?Q?nvaAnFwPORwiG3tmIwIO9XaPqUqTJEbmPbm2lcPaVhKvVdlHQ175CMVY5ExJ?=
 =?us-ascii?Q?S2CbRtzduwMVtI8gqwje6FxQCxmsH2KwVP4ZKTME1YTfZ/M1mj4gtGjn/JhE?=
 =?us-ascii?Q?xMPK5Q8LFAJVG2bWoOaxFsgzZL3N5cqyvHcqD2WKvj7aNJTH/25KDLnx9S5Q?=
 =?us-ascii?Q?OQ6WuXsNz6EqisgfJoWP6I+c2L4sV0ZIG23WidFdH9jylgedhdk+W38ZMkP8?=
 =?us-ascii?Q?dm7pcr+MSu//W3AoYOXxbDiM+5WQbS1xAe4+d0bmJxNe5z+0inxScBGL4UUi?=
 =?us-ascii?Q?wqiUZTKvA7cO0ryy31szaM80+JcJeZPb9IGXcc8eR/khvrgKUOs0IaAK1iWK?=
 =?us-ascii?Q?P1l3Y6sTLdpyf5vEh2o/4gqYyvZdjdmE/Q01oU3YphQtP/T2/Io0gp7PvIZu?=
 =?us-ascii?Q?VJUhlkN0AnNR1iKwT4WRFeeiv/b6/t8WWuNIe0hMcSo9Ty7MLIn7WW2AS+FX?=
 =?us-ascii?Q?0gnNg/ObpaO73VtuhAnMFBIqgyDx9RmZf5g6Ztc8U8iyh0sN0CHHHmXWLLmv?=
 =?us-ascii?Q?Is5p8w26FLPaawthKoBKaK5NvUpBJgNYXikZGUmWrwckebUZmtsNUfg4MkdL?=
 =?us-ascii?Q?vhSC39Yze2MjKYEmC74XSAAI4UZWPnr+D3PphWGH++8ZCQdqga3a8pdYUMBL?=
 =?us-ascii?Q?QCitUw6HuKQIMoIswEtsD5FkhWGX+pYn3CGd45RgihkC7aslRtQi/TE6eFX3?=
 =?us-ascii?Q?9ltmRNDFuMk5JO9hK0VRIrsPAVgSi/a0PUtN6yBBc4QC4DT0ycalKh2PiMLo?=
 =?us-ascii?Q?dW1ConXEsevdlrTD2B7m10jUYF+osQ2k2Cq6MP/+US1wW0DL49EWXkLVdEEU?=
 =?us-ascii?Q?Op2BkZOddhwXeEv/MEquFVIsf7Gw0sejM3h4hy7FMSU9JK6wH+4FN38YlcAw?=
 =?us-ascii?Q?mZvmZX6xmxLgtR57ymM9ENokASJBdUb28b+I+it2ATszzZMh?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c89b169b-f83e-4b79-4ac0-08da45c4fc56
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB7164.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2022 00:55:58.0296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZRgIaoL64cLcB1s7bbEcNyJasRRMNHGYwFv00DRJ71YsPZX2kLeQk6YhpocKJ6Jg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7510
Message-ID-Hash: PWPVWNGDMSFIYDOGQTYYPCNZUSM34KTU
X-Message-ID-Hash: PWPVWNGDMSFIYDOGQTYYPCNZUSM34KTU
X-MailFrom: jlee@suse.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "devel@acpica.org" <devel@acpica.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: Why the patch against CVE-2017-13693 not be merged?
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/PWPVWNGDMSFIYDOGQTYYPCNZUSM34KTU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Robert, 

Thanks for your response!

I have filed a bug against this patch:
https://bugs.acpica.org/show_bug.cgi?id=1549

Joey Lee

On Thu, Jun 02, 2022 at 03:39:36PM +0000, Moore, Robert wrote:
> We need to look closely at this patch, and have not had the time to do this.
> 
> 
> -----Original Message-----
> From: joeyli <jlee@suse.com> 
> Sent: Tuesday, May 31, 2022 12:07 AM
> To: devel@acpica.org
> Subject: [Devel] Why the patch against CVE-2017-13693 not be merged?
> 
> Hi all,
> 
> There have a old patch against CVE-2017-13693 which is subumitted by kkamagui:
> 
> acpi: acpica: fix acpi operand cache leak in dsutils.c
> https://github.com/acpica/acpica/pull/295
> 
> Why this patch not be merged? Does there have any conern?
> 
> Thanks a lot!
> Joey Lee
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
