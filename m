Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06205483511
	for <lists+devel-acpica@lfdr.de>; Mon,  3 Jan 2022 17:49:22 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 84A2D100EB32F;
	Mon,  3 Jan 2022 08:49:20 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.222.169; helo=mail-qk1-f169.google.com; envelope-from=rjwysocki@gmail.com; receiver=<UNKNOWN> 
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 0BBAD100EBB7F
	for <devel@acpica.org>; Mon,  3 Jan 2022 08:49:18 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id e25so26118088qkl.12
        for <devel@acpica.org>; Mon, 03 Jan 2022 08:49:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P5XLm7blW/qx7b/luF97YrO03ortKkqhxYqNga2al/I=;
        b=NJPh2wgtDF5BkTJv5XiO0yJvfG6DdLF/xnEZEnLc6usiIVA46mAJWx6t4nNSTGzmLm
         rV59IXGW/Cr14m4ZOedYi2m4GDvjkyhilEXdWGWQ0zk/kyIkB5KyCLk9FZmSZ6kKNcM5
         HuxH/6oH62DJsAOQlDY9b8U/oP+Juy4Uixz3OhdueLADaM2IQch4GpV3Sz8lnEg0AZOE
         tsdDGySDpRjLsWGFW7I9WzgJbJufsgMGDiDdPQ6lCikMCK899P8kRd7psvo1sXyzqaui
         hiOZu4F+LIr4vNH1QM0KiuZsn0xgZkgwoz1hkUrLoD8lpoBxmVtPxHdDFbNDZRx0qDe2
         dswQ==
X-Gm-Message-State: AOAM530oBn2BvZi88yx5r1rFurs4h5pvPphSKWzsVZ9qXCGLO02tGv01
	Unf8JubUKO/dz/J6+Qpx79fueQOi4RbZ4VxGwPU=
X-Google-Smtp-Source: ABdhPJySwwd/GmduRwn9q0eTVHybZdJDmkL/qm2qBqrABak204hAqI2i6ykQIPjAdMpHP1Poca2hiKcpi1drsPpZbfk=
X-Received: by 2002:a05:620a:40d1:: with SMTP id g17mr33403308qko.621.1641228557684;
 Mon, 03 Jan 2022 08:49:17 -0800 (PST)
MIME-Version: 1.0
References: <61cc007a.mWwpG8hntz2tC9i6%lkp@intel.com> <BYAPR11MB32566B65A82D815C214720E487499@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB32566B65A82D815C214720E487499@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 3 Jan 2022 17:49:06 +0100
Message-ID: <CAJZ5v0gx70huuZ7tj_iMZR3ViFfzX9F2Zt4BxqcHk_9OdioP1Q@mail.gmail.com>
To: "Moore, Robert" <robert.moore@intel.com>
Content-Type: multipart/mixed; boundary="0000000000002dc0fb05d4b04d79"
Message-ID-Hash: JXH2WFWDURONC3EZS4DVRXDBKNMZFK65
X-Message-ID-Hash: JXH2WFWDURONC3EZS4DVRXDBKNMZFK65
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, Arnd Bergmann <arnd@kernel.org>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] Re: [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JXH2WFWDURONC3EZS4DVRXDBKNMZFK65/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>

--0000000000002dc0fb05d4b04d79
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 3, 2022 at 4:57 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> Are these new warnings, or legacy warnings?

They are new, but AFAICS they appear because an old macro,
ACPI_PTR_DIFF(), has been used for defining a new one,
ACPI_PTR_TO_PHYSADDR(), which is now triggering the old warning in a
new way.

I guess this could be addressed by applying the Arnd's patch at
https://patchwork.kernel.org/project/linux-acpi/patch/20210927121338.938994-1-arnd@kernel.org/
, but that's problematic for the upstream.

However, I'm wondering if we can do something like the attached patch instead.



> -----Original Message-----
> From: kernel test robot <lkp@intel.com>
> Sent: Tuesday, December 28, 2021 10:30 PM
> To: Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: linux-pm@vger.kernel.org; devel@acpica.org; linux-acpi@vger.kernel.org
> Subject: [Devel] [rafael-pm:bleeding-edge] BUILD SUCCESS WITH WARNING 8d681a5245f0a5cfb20326b4f6578af1adb8676b
>
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge branch HEAD: 8d681a5245f0a5cfb20326b4f6578af1adb8676b  Merge branch 'acpi-sysfs' into bleeding-edge
>
> Warning reports:
>
> https://lore.kernel.org/llvm/202112280907.gTYYYuB4-lkp@intel.com
>
> Warning in current branch:
>
> drivers/acpi/acpica/exregion.c:519:17: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
>
> Warning ids grouped by kconfigs:
>
> clang_recent_errors
> |-- i386-randconfig-a001-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a002-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a003-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a004-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a005-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a006-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a011-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a012-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a013-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a014-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a015-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- i386-randconfig-a016-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a001-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a002-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a003-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a004-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a005-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a006-20211229
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a011-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a012-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a013-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a014-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a015-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-a016-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> |-- x86_64-randconfig-r012-20211228
> |   `--
> |drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-w
> |ith-a-null-pointer-has-undefined-behavior
> `-- x86_64-randconfig-r024-20211228
>     `-- drivers-acpi-acpica-exregion.c:warning:performing-pointer-subtraction-with-a-null-pointer-has-undefined-behavior
>
> elapsed time: 725m
>
> configs tested: 104
> configs skipped: 3
>
> gcc tested configs:
> arm                              allyesconfig
> arm                              allmodconfig
> arm                                 defconfig
> arm64                               defconfig
> arm64                            allyesconfig
> i386                 randconfig-c001-20211228
> arm                           sama7_defconfig
> arc                        nsim_700_defconfig
> arm                            qcom_defconfig
> arm                          pxa3xx_defconfig
> powerpc                   bluestone_defconfig
> mips                      bmips_stb_defconfig
> arm                             ezx_defconfig
> sh                           se7343_defconfig
> powerpc                     skiroot_defconfig
> arm                         lpc18xx_defconfig
> arm                       imx_v6_v7_defconfig
> arm                          pxa910_defconfig
> powerpc                  mpc885_ads_defconfig
> powerpc                     pq2fads_defconfig
> arm                           sama5_defconfig
> arm                        shmobile_defconfig
> arc                    vdk_hs38_smp_defconfig
> csky                             alldefconfig
> riscv             nommu_k210_sdcard_defconfig
> arm                  randconfig-c002-20211229
> ia64                                defconfig
> ia64                             allmodconfig
> ia64                             allyesconfig
> m68k                             allmodconfig
> m68k                                defconfig
> m68k                             allyesconfig
> nds32                             allnoconfig
> nios2                               defconfig
> arc                              allyesconfig
> csky                                defconfig
> alpha                               defconfig
> nds32                               defconfig
> alpha                            allyesconfig
> nios2                            allyesconfig
> arc                                 defconfig
> sh                               allmodconfig
> h8300                            allyesconfig
> xtensa                           allyesconfig
> parisc                              defconfig
> s390                             allmodconfig
> parisc                           allyesconfig
> s390                                defconfig
> s390                             allyesconfig
> i386                             allyesconfig
> sparc                               defconfig
> i386                                defconfig
> i386                   debian-10.3-kselftests
> i386                              debian-10.3
> sparc                            allyesconfig
> mips                             allyesconfig
> mips                             allmodconfig
> powerpc                           allnoconfig
> powerpc                          allmodconfig
> powerpc                          allyesconfig
> arc                  randconfig-r043-20211228
> riscv                    nommu_k210_defconfig
> riscv                            allyesconfig
> riscv                    nommu_virt_defconfig
> riscv                             allnoconfig
> riscv                               defconfig
> riscv                          rv32_defconfig
> riscv                            allmodconfig
> um                           x86_64_defconfig
> um                             i386_defconfig
> x86_64                           allyesconfig
> x86_64                              defconfig
> x86_64                               rhel-8.3
> x86_64                          rhel-8.3-func
> x86_64                                  kexec
> x86_64                    rhel-8.3-kselftests
>
> clang tested configs:
> x86_64               randconfig-a001-20211229
> x86_64               randconfig-a003-20211229
> x86_64               randconfig-a004-20211229
> x86_64               randconfig-a002-20211229
> x86_64               randconfig-a005-20211229
> x86_64               randconfig-a006-20211229
> i386                 randconfig-a002-20211229
> i386                 randconfig-a003-20211229
> i386                 randconfig-a001-20211229
> i386                 randconfig-a005-20211229
> i386                 randconfig-a006-20211229
> i386                 randconfig-a004-20211229
> x86_64               randconfig-a013-20211228
> x86_64               randconfig-a012-20211228
> x86_64               randconfig-a011-20211228
> x86_64               randconfig-a016-20211228
> x86_64               randconfig-a015-20211228
> x86_64               randconfig-a014-20211228
> i386                 randconfig-a012-20211228
> i386                 randconfig-a011-20211228
> i386                 randconfig-a013-20211228
> i386                 randconfig-a016-20211228
> i386                 randconfig-a014-20211228
> i386                 randconfig-a015-20211228
> hexagon              randconfig-r041-20211228
> riscv                randconfig-r042-20211228
> s390                 randconfig-r044-20211228
> hexagon              randconfig-r045-20211228
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s

--0000000000002dc0fb05d4b04d79
Content-Type: text/x-patch; charset="US-ASCII"; name="acpica-build.patch"
Content-Disposition: attachment; filename="acpica-build.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kxywsiy50>
X-Attachment-Id: f_kxywsiy50

LS0tCiBpbmNsdWRlL2FjcGkvYWN0eXBlcy5oICAgICAgICAgIHwgICAgNCArKysrCiBpbmNsdWRl
L2FjcGkvcGxhdGZvcm0vYWNsaW51eC5oIHwgICAgNSArKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKykKCkluZGV4OiBsaW51eC1wbS9pbmNsdWRlL2FjcGkvcGxhdGZvcm0vYWNs
aW51eC5oCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KLS0tIGxpbnV4LXBtLm9yaWcvaW5jbHVkZS9hY3BpL3BsYXRmb3Jt
L2FjbGludXguaAorKysgbGludXgtcG0vaW5jbHVkZS9hY3BpL3BsYXRmb3JtL2FjbGludXguaApA
QCAtMjEzLDQgKzIxMyw5IEBACiAKICNlbmRpZgkJCQkvKiBfX0tFUk5FTF9fICovCiAKKyNkZWZp
bmUgYWNwaV91aW50cHRyX3QJCXVpbnRwdHJfdAorCisjZGVmaW5lIEFDUElfVE9fSU5URUdFUihw
KQkoKHVpbnRwdHJfdCkocCkpCisjZGVmaW5lIEFDUElfT0ZGU0VUKGQsIGYpCW9mZnNldG9mKGQs
IGYpCisKICNlbmRpZgkJCQkvKiBfX0FDTElOVVhfSF9fICovCkluZGV4OiBsaW51eC1wbS9pbmNs
dWRlL2FjcGkvYWN0eXBlcy5oCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KLS0tIGxpbnV4LXBtLm9yaWcvaW5jbHVkZS9h
Y3BpL2FjdHlwZXMuaAorKysgbGludXgtcG0vaW5jbHVkZS9hY3BpL2FjdHlwZXMuaApAQCAtNTA3
LDggKzUwNywxMiBAQCB0eXBlZGVmIHU2NCBhY3BpX2ludGVnZXI7CiAvKiBQb2ludGVyL0ludGVn
ZXIgdHlwZSBjb252ZXJzaW9ucyAqLwogCiAjZGVmaW5lIEFDUElfVE9fUE9JTlRFUihpKSAgICAg
ICAgICAgICAgQUNQSV9DQVNUX1BUUiAodm9pZCwgKGFjcGlfc2l6ZSkgKGkpKQorI2lmbmRlZiBB
Q1BJX1RPX0lOVEVHRVIKICNkZWZpbmUgQUNQSV9UT19JTlRFR0VSKHApICAgICAgICAgICAgICBB
Q1BJX1BUUl9ESUZGIChwLCAodm9pZCAqKSAwKQorI2VuZGlmCisjaWZuZGVmIEFDUElfT0ZGU0VU
CiAjZGVmaW5lIEFDUElfT0ZGU0VUKGQsIGYpICAgICAgICAgICAgICAgQUNQSV9QVFJfRElGRiAo
JigoKGQgKikgMCktPmYpLCAodm9pZCAqKSAwKQorI2VuZGlmCiAjZGVmaW5lIEFDUElfUFRSX1RP
X1BIWVNBRERSKGkpICAgICAgICAgQUNQSV9UT19JTlRFR0VSKGkpCiAKIC8qIE9wdGltaXphdGlv
bnMgZm9yIDQtY2hhcmFjdGVyICgzMi1iaXQpIGFjcGlfbmFtZSBtYW5pcHVsYXRpb24gKi8K
--0000000000002dc0fb05d4b04d79
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
--0000000000002dc0fb05d4b04d79--
