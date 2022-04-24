Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559F950D005
	for <lists+devel-acpica@lfdr.de>; Sun, 24 Apr 2022 08:24:02 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 8BB95100EA90F;
	Sat, 23 Apr 2022 23:23:59 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.120; helo=mga04.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id B61F4100EAAEB
	for <devel@acpica.org>; Sat, 23 Apr 2022 23:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650781436; x=1682317436;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=YliaMT8TR9bAjexxNV1yfpqeWdYHjrzqiH1zJqBnqwo=;
  b=CyXyCBV+oGDTRFq1PtpW0QeO2YbPj9Q+z0OpDU40WUauzKQzjlU5FbUr
   qDGHDQTMZCNsuwpEHgEx4zUei16W4qJ0GY664ZCS+KqZ0/gmHp3JsBEGF
   +eyNqvX4cau1HBUXbB/zMmi7vMyDCzKivLyk8GCVVvD78bagf4BCKI0/9
   t2dpuRyHAG90pSQ5ovCq6VfJtEqlbrWcBJy5fP/CTP1wPZfH3la2o9rC4
   bpR8J4854HNoEMD8jMekD41IOSUsLKbjbyhXVZAO/smUdGiTJatTNqImx
   EQWl4doJ8GbkL219vE13LJg/Egs/xyu/tpaY/s8HwFi3Ff8W5vS60fjeZ
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10326"; a="263849942"
X-IronPort-AV: E=Sophos;i="5.90,285,1643702400";
   d="scan'208";a="263849942"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2022 23:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,285,1643702400";
   d="scan'208";a="729176177"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 23 Apr 2022 23:23:53 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1niVey-00017L-R4;
	Sun, 24 Apr 2022 06:23:52 +0000
Date: Sun, 24 Apr 2022 14:23:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <202204241452.pAvKt2JP-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: 4YAGCDZQLQXWAB3SOF6VM6TAE5LSBKVT
X-Message-ID-Hash: 4YAGCDZQLQXWAB3SOF6VM6TAE5LSBKVT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 8/20] WARNING: modpost: vmlinux.o(.text+0xfdc8e4): Section mismatch in reference from the function component_compare_dev_name() to the variable .exit.text:.LFB4478
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/4YAGCDZQLQXWAB3SOF6VM6TAE5LSBKVT/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   f23bedef4354b1e8a69a25d8c9c1201e6d8e8762
commit: 9d66f8243f05815087050993644c46a71ffc3d04 [8/20] Merge branches 'thermal-int340x' and 'thermal-misc' into linux-next
config: riscv-buildonly-randconfig-r002-20220421 (https://download.01.org/0day-ci/archive/20220424/202204241452.pAvKt2JP-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=9d66f8243f05815087050993644c46a71ffc3d04
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout 9d66f8243f05815087050993644c46a71ffc3d04
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: vmlinux.o(.text+0xfdc8e4): Section mismatch in reference from the function component_compare_dev_name() to the variable .exit.text:.LFB4478
The function component_compare_dev_name() references a variable in an exit section.
Often the variable .LFB4478 has valid usage outside the exit section
and the fix is to remove the __exit annotation of .LFB4478.
--
>> WARNING: modpost: vmlinux.o(.text+0x15ff5e0): Section mismatch in reference from the function dm_stats_init() to the variable .init.text:.L0
The function dm_stats_init() references
the variable __init .L0 .
This is often because dm_stats_init lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0x1bf624c): Section mismatch in reference from the function sctp_sched_ops_init() to the variable .init.text:.L0
The function sctp_sched_ops_init() references
the variable __init .L0 .
This is often because sctp_sched_ops_init lacks a __init
annotation or the annotation of .L0 is wrong.

Note: the below error/warnings can be found in parent commit:
<< WARNING: modpost: vmlinux.o(.text+0xcb5b08): Section mismatch in reference from the function pci_sriov_resource_alignment() to the function .init.text:sm501fb_driver_init()
<< WARNING: modpost: vmlinux.o(.text+0xfdc8e4): Section mismatch in reference from the function component_compare_dev_name() to the variable .exit.text:.LFE4478
<< WARNING: modpost: vmlinux.o(.exit.text+0xe120): Section mismatch in reference from the function hsr_netlink_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .rodata:_entry.30
<< WARNING: modpost: vmlinux.o(.text+0x1697378): Section mismatch in reference from the function btintel_send_intel_reset() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1a9f788): Section mismatch in reference from the function fib_free_table() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf6234): Section mismatch in reference from the function sctp_sched_ops_register() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf627c): Section mismatch in reference from the function sctp_sched_set_sched() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf640c): Section mismatch in reference from the function sctp_sched_get_sched() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xcb5b08): Section mismatch in reference from the function pci_sriov_resource_alignment() to the function .init.text:sm501fb_driver_init()
<< WARNING: modpost: vmlinux.o(.text+0xfdc8e4): Section mismatch in reference from the function component_compare_dev_name() to the variable .exit.text:.LFE4478
<< WARNING: modpost: vmlinux.o(.exit.text+0xe120): Section mismatch in reference from the function hsr_netlink_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .rodata:_entry.30
<< WARNING: modpost: vmlinux.o(.text+0x1697378): Section mismatch in reference from the function btintel_send_intel_reset() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1a9f788): Section mismatch in reference from the function fib_free_table() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf6234): Section mismatch in reference from the function sctp_sched_ops_register() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf627c): Section mismatch in reference from the function sctp_sched_set_sched() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf640c): Section mismatch in reference from the function sctp_sched_get_sched() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0xcb5b08): Section mismatch in reference from the function pci_sriov_resource_alignment() to the function .init.text:sm501fb_driver_init()
<< WARNING: modpost: vmlinux.o(.text+0xfdc8e4): Section mismatch in reference from the function component_compare_dev_name() to the variable .exit.text:.LFE4478
<< WARNING: modpost: vmlinux.o(.exit.text+0xe120): Section mismatch in reference from the function hsr_netlink_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .rodata:_entry.30
<< WARNING: modpost: vmlinux.o(.text+0x1697378): Section mismatch in reference from the function btintel_send_intel_reset() to the variable .exit.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1a9f788): Section mismatch in reference from the function fib_free_table() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf6234): Section mismatch in reference from the function sctp_sched_ops_register() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf627c): Section mismatch in reference from the function sctp_sched_set_sched() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1bf640c): Section mismatch in reference from the function sctp_sched_get_sched() to the variable .init.text:.L0

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
