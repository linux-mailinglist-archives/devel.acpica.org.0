Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCA760D38B
	for <lists+devel-acpica@lfdr.de>; Tue, 25 Oct 2022 20:28:54 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 46480100EA111;
	Tue, 25 Oct 2022 11:28:51 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.222.169; helo=mail-qk1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id EF584100EB855
	for <devel@acpica.org>; Tue, 25 Oct 2022 11:28:49 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id t25so8739484qkm.2
        for <devel@acpica.org>; Tue, 25 Oct 2022 11:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q0qDLT2/ugYxesAKoNxxNCB38rx3Tt8/+W+P9UItTBk=;
        b=w29mRtmN29Ug7af7mhFlOAcMbr79qFv137OsG+prXf07mAwYiDSZ7B8Vkgo78oem2z
         HRcFocgR6MWkcwnhAaSEdkY8I3d881hOlIJRMyIfwG1AdEgG4YJWb9EDmjVsoWr7rk35
         M7fRiwtaXssdSoOodfAfim1hidCawedb0mfyhIrWBEzWWOKPNG/nWzC0n13U8jdq5sPq
         Adlc5Cu6dcFaBzplGaW73pbyE7IDu8UEnDxoyKQNNIFaosrivrpwoEDFIiGvu3MxZp1t
         TL4iZeL9sbQCmikRulZ7FAj7Wq6nmy9dv8+3GA1cayDrXwv93lsYAUcok6DGntdnQktG
         Utug==
X-Gm-Message-State: ACrzQf3x7vk7WPvXFoDnpoQwblv7TBDIMt4vBuMi5Ly5Iv1vBcdmk49L
	YZSYcFW8Wg3J92mFyt1cbTcuMNTvo/cV3T4+sAg=
X-Google-Smtp-Source: AMsMyM7k2MrXChsdZQSfEi0NsK0MXuZY5ChPYbmqFUzJmPltrEIDRD3Lz/k2ZKZ3V8aRc/PXaROWYlfQIRjwJ7z2Jog=
X-Received: by 2002:a05:620a:4626:b0:6ee:b43:d2bc with SMTP id
 br38-20020a05620a462600b006ee0b43d2bcmr26840797qkb.764.1666722528524; Tue, 25
 Oct 2022 11:28:48 -0700 (PDT)
MIME-Version: 1.0
References: <20221018082214.569504-1-justin.he@arm.com> <20221018082214.569504-7-justin.he@arm.com>
 <Y1OtRpLRwPPG/4Il@zn.tnic> <CAMj1kXFu36faTPoGSGPs9KhcKsoh_DE9X2rmwdenxaJwa3P_yw@mail.gmail.com>
 <Y1O/QN32d2AlzEiA@zn.tnic> <Y1ayrYZgLqjp7WOG@zn.tnic>
In-Reply-To: <Y1ayrYZgLqjp7WOG@zn.tnic>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 25 Oct 2022 20:28:37 +0200
Message-ID: <CAJZ5v0gvHZ7WwyC5F2y3NTEno8J-VLdAOp-JjohON7MNnbmt6g@mail.gmail.com>
To: Borislav Petkov <bp@alien8.de>
Message-ID-Hash: 7KSX6YGZZ3QKE6DIZN37CSIU6C5DEFT3
X-Message-ID-Hash: 7KSX6YGZZ3QKE6DIZN37CSIU6C5DEFT3
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ard Biesheuvel <ardb@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Jia He <justin.he@arm.com>, Tony Luck <tony.luck@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Richter <rric@kernel.org>, Qiuxu Zhuo <qiuxu.zhuo@intel.com>, Yazen Ghannam <yazen.ghannam@amd.com>, Jan Luebbe <jlu@pengutronix.de>, Khuong Dinh <khuong@os.amperecomputing.com>, Kani Toshi <toshi.kani@hpe.com>, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org, devel@acpica.org, Shuai Xue <xueshuai@linux.alibaba.com>, Jarkko Sakkinen <jarkko@kernel.org>, linux-efi@vger.kernel.org, nd@arm.com, Peter Zijlstra <peterz@infradead.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [PATCH] apei/ghes: Use xchg_release() for updating new cache slot instead of cmpxchg()
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/7KSX6YGZZ3QKE6DIZN37CSIU6C5DEFT3/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 24, 2022 at 5:43 PM Borislav Petkov <bp@alien8.de> wrote:
>
> Ok,
>
> here's what I've done to it, holler if something's still missing.
>
> @rjw, if you wanna take this through your tree, it should work too - it
> is unrelated to the ghes_edac changes we're doing. Or I can carry it,
> whatever you prefer.

I think I can take it.

Is this urgent or is it OK to queue it up for 6.2?

> ---
> From: Ard Biesheuvel <ardb@kernel.org>
>
> Some documentation first, about how this machinery works:
>
> It seems, the intent of the GHES error records cache is to collect
> already reported errors - see the ghes_estatus_cached() checks. There's
> even a sentence trying to say what this does:
>
>   /*
>    * GHES error status reporting throttle, to report more kinds of
>    * errors, instead of just most frequently occurred errors.
>    */
>
> New elements are added to the cache this way:
>
>   if (!ghes_estatus_cached(estatus)) {
>           if (ghes_print_estatus(NULL, ghes->generic, estatus))
>                   ghes_estatus_cache_add(ghes->generic, estatus);
>
> The intent being, once this new error record is reported, it gets cached
> so that it doesn't get reported for a while due to too many, same-type
> error records getting reported in burst-like scenarios. I.e., new,
> unreported error types can have a higher chance of getting reported.
>
> Now, the loop in ghes_estatus_cache_add() is trying to pick out the
> oldest element in there. Meaning, something which got reported already
> but a long while ago, i.e., a LRU-type scheme.
>
> And the cmpxchg() is there presumably to make sure when that selected
> element slot_cache is removed, it really *is* that element that gets
> removed and not one which replaced it in the meantime.
>
> Now, ghes_estatus_cache_add() selects a slot, and either succeeds in
> replacing its contents with a pointer to a newly cached item, or it just
> gives up and frees the new item again, without attempting to select
> another slot even if one might be available.
>
> Since only inserting new items is being done here, the race can only
> cause a failure if the selected slot was updated with another new item
> concurrently, which means that it is arbitrary which of those two items
> gets dropped.
>
> And "dropped" here means, the item doesn't get added to the cache so
> the next time it is seen, it'll get reported again and an insertion
> attempt will be done again. Eventually, it'll get inserted and all those
> times when the insertion fails, the item will get reported although the
> cache is supposed to prevent that and "ratelimit" those repeated error
> records. Not a big deal in any case.
>
> This means the cmpxchg() and the special case are not necessary.
> Therefore, just drop the existing item unconditionally.
>
> Move the xchg_release() and call_rcu() out of rcu_read_lock/unlock
> section since there is no actually dereferencing the pointer at all.
>
>   [ bp:
>     - Flesh out and summarize what was discussed on the thread now
>       that that cache contraption is understood;
>     - Touch up code style. ]
>
> Co-developed-by: Jia He <justin.he@arm.com>
> Signed-off-by: Jia He <justin.he@arm.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Borislav Petkov <bp@suse.de>
> Link: https://lore.kernel.org/r/20221010023559.69655-7-justin.he@arm.com
> ---
>  drivers/acpi/apei/ghes.c | 60 ++++++++++++++++++++++------------------
>  1 file changed, 33 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> index 249cd01cb920..6164bf737ee6 100644
> --- a/drivers/acpi/apei/ghes.c
> +++ b/drivers/acpi/apei/ghes.c
> @@ -154,7 +154,7 @@ struct ghes_vendor_record_entry {
>  static struct gen_pool *ghes_estatus_pool;
>  static unsigned long ghes_estatus_pool_size_request;
>
> -static struct ghes_estatus_cache *ghes_estatus_caches[GHES_ESTATUS_CACHES_SIZE];
> +static struct ghes_estatus_cache __rcu *ghes_estatus_caches[GHES_ESTATUS_CACHES_SIZE];
>  static atomic_t ghes_estatus_cache_alloced;
>
>  static int ghes_panic_timeout __read_mostly = 30;
> @@ -789,48 +789,42 @@ static struct ghes_estatus_cache *ghes_estatus_cache_alloc(
>         return cache;
>  }
>
> -static void ghes_estatus_cache_free(struct ghes_estatus_cache *cache)
> +static void ghes_estatus_cache_rcu_free(struct rcu_head *head)
>  {
> +       struct ghes_estatus_cache *cache;
>         u32 len;
>
> +       cache = container_of(head, struct ghes_estatus_cache, rcu);
>         len = cper_estatus_len(GHES_ESTATUS_FROM_CACHE(cache));
>         len = GHES_ESTATUS_CACHE_LEN(len);
>         gen_pool_free(ghes_estatus_pool, (unsigned long)cache, len);
>         atomic_dec(&ghes_estatus_cache_alloced);
>  }
>
> -static void ghes_estatus_cache_rcu_free(struct rcu_head *head)
> -{
> -       struct ghes_estatus_cache *cache;
> -
> -       cache = container_of(head, struct ghes_estatus_cache, rcu);
> -       ghes_estatus_cache_free(cache);
> -}
> -
> -static void ghes_estatus_cache_add(
> -       struct acpi_hest_generic *generic,
> -       struct acpi_hest_generic_status *estatus)
> +static void
> +ghes_estatus_cache_add(struct acpi_hest_generic *generic,
> +                      struct acpi_hest_generic_status *estatus)
>  {
> -       int i, slot = -1, count;
>         unsigned long long now, duration, period, max_period = 0;
> -       struct ghes_estatus_cache *cache, *slot_cache = NULL, *new_cache;
> +       struct ghes_estatus_cache *cache, *new_cache;
> +       struct ghes_estatus_cache __rcu *victim;
> +       int i, slot = -1, count;
>
>         new_cache = ghes_estatus_cache_alloc(generic, estatus);
> -       if (new_cache == NULL)
> +       if (!new_cache)
>                 return;
> +
>         rcu_read_lock();
>         now = sched_clock();
>         for (i = 0; i < GHES_ESTATUS_CACHES_SIZE; i++) {
>                 cache = rcu_dereference(ghes_estatus_caches[i]);
>                 if (cache == NULL) {
>                         slot = i;
> -                       slot_cache = NULL;
>                         break;
>                 }
>                 duration = now - cache->time_in;
>                 if (duration >= GHES_ESTATUS_IN_CACHE_MAX_NSEC) {
>                         slot = i;
> -                       slot_cache = cache;
>                         break;
>                 }
>                 count = atomic_read(&cache->count);
> @@ -839,18 +833,30 @@ static void ghes_estatus_cache_add(
>                 if (period > max_period) {
>                         max_period = period;
>                         slot = i;
> -                       slot_cache = cache;
>                 }
>         }
> -       /* new_cache must be put into array after its contents are written */
> -       smp_wmb();
> -       if (slot != -1 && cmpxchg(ghes_estatus_caches + slot,
> -                                 slot_cache, new_cache) == slot_cache) {
> -               if (slot_cache)
> -                       call_rcu(&slot_cache->rcu, ghes_estatus_cache_rcu_free);
> -       } else
> -               ghes_estatus_cache_free(new_cache);
>         rcu_read_unlock();
> +
> +       if (slot != -1) {
> +               /*
> +                * Use release semantics to ensure that ghes_estatus_cached()
> +                * running on another CPU will see the updated cache fields if
> +                * it can see the new value of the pointer.
> +                */
> +               victim = xchg_release(&ghes_estatus_caches[slot],
> +                                     RCU_INITIALIZER(new_cache));
> +
> +               /*
> +                * At this point, victim may point to a cached item different
> +                * from the one based on which we selected the slot. Instead of
> +                * going to the loop again to pick another slot, let's just
> +                * drop the other item anyway: this may cause a false cache
> +                * miss later on, but that won't cause any problems.
> +                */
> +               if (victim)
> +                       call_rcu(&unrcu_pointer(victim)->rcu,
> +                                ghes_estatus_cache_rcu_free);
> +       }
>  }
>
>  static void __ghes_panic(struct ghes *ghes,
> --
> 2.35.1
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
