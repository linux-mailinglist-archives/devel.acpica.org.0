Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD9921855A
	for <lists+devel-acpica@lfdr.de>; Wed,  8 Jul 2020 12:59:01 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 9C649110F2E12;
	Wed,  8 Jul 2020 03:58:59 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.195; helo=mail-oi1-f195.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 02088110E5FDC
	for <devel@acpica.org>; Wed,  8 Jul 2020 03:58:57 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id k22so26114090oib.0
        for <devel@acpica.org>; Wed, 08 Jul 2020 03:58:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ma9ZJcX3rCASQ1Yers2il4SNeWPyd7g9t6DtIKiBr1U=;
        b=SUcBQMaZSYPKlOV1eVcwHRIL2MmsFFPa16DdAPUA7O0k67YtMgqGBUWOUHW/SB7rgy
         m5i9b3in9h5RwKPVdvlZT//7krGKwNWv+WAKk6mVRnlWUocZQHGyVBwSViUU8pZRaza8
         ApCrUhohm5MOseUYtuATy4pJ0mURJPg2C6W29VyRcfGGeSW1VnxgAv6Ytoax9IbECXsI
         o8lxs3ur3KBfsIwO5xX2DSEV45HtVDk7BrRlGPPNldiIgVZHG9sijTNAiW7vUy2Dq/tZ
         N5ddBZXRUHTB0OMsLSUhsi5Kmdap2EmNgAw6HwhjSt6NHXEhIwaOsqsxDzY7nOmtrYuT
         x3wA==
X-Gm-Message-State: AOAM531u5ROP7Tc2VT3+mo2vVmTIbFHpnbixttKu9LQ/YpnSH7HDOXJt
	Pt8v/9A2tbv52fBaAm0fzF3R8voP50cA+yBqfgs=
X-Google-Smtp-Source: ABdhPJwEGUtyHaA88w/taqZov0miWMOkIlHqWfppH2+c5Ch8dK/EmDEKEBRA2C7pZBmW1k372KAZdtwcc6/iforzXjA=
X-Received: by 2002:aca:f58a:: with SMTP id t132mr6405827oih.68.1594205936617;
 Wed, 08 Jul 2020 03:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200707200716.GA4920@embeddedor>
In-Reply-To: <20200707200716.GA4920@embeddedor>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 8 Jul 2020 12:58:44 +0200
Message-ID: <CAJZ5v0iDz_EsrpdMQQDfaVC2orMQkEcubmR6-J6mvtrXmKXbRg@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID-Hash: SQL7UWJXCADCUJ6JIZBHYLHLUN4FEECB
X-Message-ID-Hash: SQL7UWJXCADCUJ6JIZBHYLHLUN4FEECB
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Erik Kaneda <erik.kaneda@intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH][next] ACPICA: Use fallthrough pseudo-keyword
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/SQL7UWJXCADCUJ6JIZBHYLHLUN4FEECB/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 7, 2020 at 10:01 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> Replace the existing /* fall through */ comments and its variants with
> the new pseudo-keyword macro fallthrough[1]. Also, remove unnecessary
> fall-through markings when it is the case.
>
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through
>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

I need to talk to Erik and Bob about this one.

> ---
>  drivers/acpi/acpica/dscontrol.c |    2 +-
>  drivers/acpi/acpica/dswexec.c   |    3 +--
>  drivers/acpi/acpica/dswload.c   |    2 +-
>  drivers/acpi/acpica/dswload2.c  |    4 +---
>  drivers/acpi/acpica/exfldio.c   |    2 +-
>  drivers/acpi/acpica/exresop.c   |    4 ++--
>  drivers/acpi/acpica/exstore.c   |    4 ++--
>  drivers/acpi/acpica/hwgpe.c     |    3 +--
>  drivers/acpi/acpica/utdelete.c  |    3 +--
>  drivers/acpi/acpica/utprint.c   |    2 +-
>  10 files changed, 12 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c
> index 4b5b6e859f62..134d53380663 100644
> --- a/drivers/acpi/acpica/dscontrol.c
> +++ b/drivers/acpi/acpica/dscontrol.c
> @@ -62,7 +62,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
>                         }
>                 }
>
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case AML_IF_OP:
>                 /*
> diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c
> index 1d4f8c81028c..41f6cb61778a 100644
> --- a/drivers/acpi/acpica/dswexec.c
> +++ b/drivers/acpi/acpica/dswexec.c
> @@ -598,8 +598,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
>                                         break;
>                                 }
>
> -                               /* Fall through */
> -                               /*lint -fallthrough */
> +                               fallthrough;
>
>                         case AML_INT_EVAL_SUBTREE_OP:
>
> diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c
> index 27069325b6de..1d8789869dda 100644
> --- a/drivers/acpi/acpica/dswload.c
> +++ b/drivers/acpi/acpica/dswload.c
> @@ -224,7 +224,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
>                                 break;
>                         }
>
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 default:
>
> diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c
> index edadbe146506..de367e8e4cf4 100644
> --- a/drivers/acpi/acpica/dswload2.c
> +++ b/drivers/acpi/acpica/dswload2.c
> @@ -213,9 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
>                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
>                                 break;
>                         }
> -
> -                       /*lint -fallthrough */
> -
> +                       fallthrough;
>                 default:
>
>                         /* All other types are an error */
> diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c
> index ade35ff1c7ba..677ba3ab1482 100644
> --- a/drivers/acpi/acpica/exfldio.c
> +++ b/drivers/acpi/acpica/exfldio.c
> @@ -434,7 +434,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
>                  * region_field case and write the datum to the Operation Region
>                  */
>
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_LOCAL_REGION_FIELD:
>                 /*
> diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c
> index 4d1b22971d58..7c8676adcf43 100644
> --- a/drivers/acpi/acpica/exresop.c
> +++ b/drivers/acpi/acpica/exresop.c
> @@ -198,7 +198,7 @@ acpi_ex_resolve_operands(u16 opcode,
>
>                                         target_op = AML_DEBUG_OP;
>
> -                                       /*lint -fallthrough */
> +                                       fallthrough;
>
>                                 case ACPI_REFCLASS_ARG:
>                                 case ACPI_REFCLASS_LOCAL:
> @@ -264,7 +264,7 @@ acpi_ex_resolve_operands(u16 opcode,
>                          * Else not a string - fall through to the normal Reference
>                          * case below
>                          */
> -                       /*lint -fallthrough */
> +                       fallthrough;
>
>                 case ARGI_REFERENCE:    /* References: */
>                 case ARGI_INTEGER_REF:
> diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c
> index 3adc0a29d890..fcf8dff56c5b 100644
> --- a/drivers/acpi/acpica/exstore.c
> +++ b/drivers/acpi/acpica/exstore.c
> @@ -96,7 +96,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
>                         return_ACPI_STATUS(AE_OK);
>                 }
>
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         default:
>
> @@ -422,7 +422,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
>                                 break;
>                         }
>
> -                       /* Fallthrough */
> +                       fallthrough;
>
>                 case ACPI_TYPE_DEVICE:
>                 case ACPI_TYPE_EVENT:
> diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c
> index 49c46d4dd070..19d574f64c78 100644
> --- a/drivers/acpi/acpica/hwgpe.c
> +++ b/drivers/acpi/acpica/hwgpe.c
> @@ -95,8 +95,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
>                 if (!(register_bit & gpe_register_info->enable_mask)) {
>                         return (AE_BAD_PARAMETER);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_GPE_ENABLE:
>
> diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c
> index c365faf4e6cd..6db09eb9d257 100644
> --- a/drivers/acpi/acpica/utdelete.c
> +++ b/drivers/acpi/acpica/utdelete.c
> @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
>                         (void)acpi_ev_delete_gpe_block(object->device.
>                                                        gpe_block);
>                 }
> -
> -               /*lint -fallthrough */
> +               fallthrough;
>
>         case ACPI_TYPE_PROCESSOR:
>         case ACPI_TYPE_THERMAL:
> diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c
> index 681c11f4af4e..f7e43baf5ff2 100644
> --- a/drivers/acpi/acpica/utprint.c
> +++ b/drivers/acpi/acpica/utprint.c
> @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
>                 case 'X':
>
>                         type |= ACPI_FORMAT_UPPER;
> -                       /* FALLTHROUGH */
> +                       fallthrough;
>
>                 case 'x':
>
>
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
