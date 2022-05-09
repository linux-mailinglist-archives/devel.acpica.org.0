Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B477451FB8E
	for <lists+devel-acpica@lfdr.de>; Mon,  9 May 2022 13:47:18 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5B541100EA10E;
	Mon,  9 May 2022 04:47:16 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.93; helo=mga11.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 2D61B100EA2A8
	for <devel@acpica.org>; Mon,  9 May 2022 04:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652096833; x=1683632833;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=lkxWfmqxJYq1LGA4Ch08RZWvQgJ+xq3YvaeKvadgChs=;
  b=UTRN7BqWIYtrhszMWzFHtQ3OhvMJ0wI3QLIvycchQiuIXhU11ZhalT5T
   LuVnJ9WEJd7o7Cz59danUrWiSgXTSOwr7uMUfWpgOPG7gmHE9LRcZLAfb
   fkws6mldeBFaGBzza9444s4+IG2ZMY9UrJsLheD4KoJ6GHD276stWbVkD
   aNoZ0+KdvJxPr3qRWfP0FVNR42tnC3qJNt3gAg8hMhXSfUtL7pwLLMLzq
   fkCtNoVViP/DUimc4p74rRMP0dY2DEOZFP/UbjTizlr5yLXa6NLRpCsXU
   vg98GT5aVhHRSFeU92bd8utlo5FXg6upkNwwbPa20fCNE5vi266C2bz1c
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="266614608"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600";
   d="scan'208";a="266614608"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 May 2022 04:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600";
   d="scan'208";a="710485331"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 09 May 2022 04:47:10 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1no1r3-000GU2-Co;
	Mon, 09 May 2022 11:47:09 +0000
Date: Mon, 9 May 2022 19:47:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <202205091949.BeE39vLd-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: 3SPC6QFDU5K57YLV33SLFC2RLTBFO77C
X-Message-ID-Hash: 3SPC6QFDU5K57YLV33SLFC2RLTBFO77C
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 4/16] WARNING: modpost: vmlinux.o(.text+0xae6ba8): Section mismatch in reference from the function img_ir_isr_raw() to the variable .init.text:.LBB2360
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/3SPC6QFDU5K57YLV33SLFC2RLTBFO77C/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   85595c9b5107be01157871392e1aa1ce065a7ca7
commit: 8dd2434c1ab5239533382fe988c57e8269a0988c [4/16] Merge branch 'devprop' into linux-next
config: riscv-randconfig-r042-20220509 (https://download.01.org/0day-ci/archive/20220509/202205091949.BeE39vLd-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8dd2434c1ab5239533382fe988c57e8269a0988c
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout 8dd2434c1ab5239533382fe988c57e8269a0988c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: vmlinux.o(.text+0xae6ba8): Section mismatch in reference from the function img_ir_isr_raw() to the variable .init.text:.LBB2360
The function img_ir_isr_raw() references
the variable __init .LBB2360.
This is often because img_ir_isr_raw lacks a __init
annotation or the annotation of .LBB2360 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0xae6bdc): Section mismatch in reference from the function img_ir_setup_raw() to the variable .init.text:.LBE2360
The function img_ir_setup_raw() references
the variable __init .LBE2360.
This is often because img_ir_setup_raw lacks a __init
annotation or the annotation of .LBE2360 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0xc031fe): Section mismatch in reference from the function nvmem_cell_read_u32() to the variable .init.text:.L0
The function nvmem_cell_read_u32() references
the variable __init .L0 .
This is often because nvmem_cell_read_u32 lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0xc03208): Section mismatch in reference from the function nvmem_cell_read_u64() to the variable .init.text:.L0
The function nvmem_cell_read_u64() references
the variable __init .L0 .
This is often because nvmem_cell_read_u64 lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(__ex_table+0x1434): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF1599
FATAL: modpost: extable_entry size hasn't been discovered!
--
>> WARNING: modpost: vmlinux.o(.text+0xc02b22): Section mismatch in reference from the function nvmem_device_find() to the variable .init.text:.L0
The function nvmem_device_find() references
the variable __init .L0 .
This is often because nvmem_device_find lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0xc031ea): Section mismatch in reference from the function nvmem_cell_read_u8() to the variable .init.text:.L0
The function nvmem_cell_read_u8() references
the variable __init .L0 .
This is often because nvmem_cell_read_u8 lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0xc031f4): Section mismatch in reference from the function nvmem_cell_read_u16() to the variable .init.text:.L0
The function nvmem_cell_read_u16() references
the variable __init .L0 .
This is often because nvmem_cell_read_u16 lacks a __init
annotation or the annotation of .L0 is wrong.

Note: the below error/warnings can be found in parent commit:
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864
<< WARNING: modpost: vmlinux.o(.text+0xa740cc): Section mismatch in reference from the function rtc_month_days() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xb34f2e): Section mismatch in reference from the function btintel_enter_mfg() to the variable .init.text:.LBB18632
<< WARNING: modpost: vmlinux.o(.text+0xc2a6ce): Section mismatch in reference from the function __sys_recvmsg_sock() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xd02eec): Section mismatch in reference from the function dn_fib_lookup() to the variable .init.text:.LBB1596
<< WARNING: modpost: vmlinux.o(__ex_table+0x141c): Section mismatch in reference from the variable .L0 to the variable .debug_str:.LASF864

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
