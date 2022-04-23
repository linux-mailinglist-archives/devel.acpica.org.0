Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 765D250CCE3
	for <lists+devel-acpica@lfdr.de>; Sat, 23 Apr 2022 20:32:37 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 5C8CC100EB842;
	Sat, 23 Apr 2022 11:32:31 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id C34BA100EB825
	for <devel@acpica.org>; Sat, 23 Apr 2022 11:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650738748; x=1682274748;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=NLI6B+T+c6KcSRFcOjCP4njvCPoWm8EpOmyLtcT4jLI=;
  b=dLe5fzhYh960pL7MOebe15G1YxmFRUccnA2PLTfFpJsvmf5Nj978kcJn
   be4vSKhO1IB46tHERM/tnAtHMNAJDdMy8ZavPHobA7muheFjps9lPBMZp
   UZ2rswaID2ruivo7o72g6ayuVy3GMx6tiQk2hTTCEuKxrs2FdgaaX87sJ
   BFXXLQogd89OuKW6M7yryHOYkmxG1CTQv3ZpEO0bYKlUoi4ntfrja0Deu
   nfiN2/KzK8PDO2agMAKAS32kdCL6aTCz4N0V06oQ3PN5YOgTZ5AscKfG3
   uHu+yccjhqd8EvPlwMWCnG5fPqKbmNirIIKjRBvVJ06q/GDZnfVas3pUi
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10326"; a="327854904"
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400";
   d="scan'208";a="327854904"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2022 11:32:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400";
   d="scan'208";a="531384294"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 23 Apr 2022 11:32:26 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1niKYT-0000LG-Es;
	Sat, 23 Apr 2022 18:32:25 +0000
Date: Sun, 24 Apr 2022 02:32:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <202204240259.PyW8hsJz-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: JYL6B7OHAOKWE3OO3I4OVA3HQUX2VUUA
X-Message-ID-Hash: JYL6B7OHAOKWE3OO3I4OVA3HQUX2VUUA
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 7/20] WARNING: modpost: vmlinux.o(.exit.text+0xe120): Section mismatch in reference from the function hsr_netlink_exit() to the variable .init.text:.L0
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/JYL6B7OHAOKWE3OO3I4OVA3HQUX2VUUA/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   f23bedef4354b1e8a69a25d8c9c1201e6d8e8762
commit: 989108f9dfffcaebab87d8b37aa7d4d9d10d2745 [7/20] Merge branch 'devprop' into linux-next
config: riscv-buildonly-randconfig-r002-20220421 (https://download.01.org/0day-ci/archive/20220424/202204240259.PyW8hsJz-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=989108f9dfffcaebab87d8b37aa7d4d9d10d2745
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout 989108f9dfffcaebab87d8b37aa7d4d9d10d2745
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: vmlinux.o(.exit.text+0xe120): Section mismatch in reference from the function hsr_netlink_exit() to the variable .init.text:.L0
The function __exit hsr_netlink_exit() references
a variable __init .L0 .
This is often seen when error handling in the exit function
uses functionality in the init path.
The fix is often to remove the __init annotation of
.L0 so it may be used outside an init section.
--
>> WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .rodata:_entry.30
FATAL: modpost: extable_entry size hasn't been discovered!
--
>> WARNING: modpost: vmlinux.o(.text+0x1697378): Section mismatch in reference from the function btintel_send_intel_reset() to the variable .exit.text:.L0
The function btintel_send_intel_reset() references a variable in an exit section.
Often the variable .L0 has valid usage outside the exit section
and the fix is to remove the __exit annotation of .L0 .
--
>> WARNING: modpost: vmlinux.o(.text+0x1bf6234): Section mismatch in reference from the function sctp_sched_ops_register() to the variable .init.text:.L0
The function sctp_sched_ops_register() references
the variable __init .L0 .
This is often because sctp_sched_ops_register lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0x1bf627c): Section mismatch in reference from the function sctp_sched_set_sched() to the variable .init.text:.L0
The function sctp_sched_set_sched() references
the variable __init .L0 .
This is often because sctp_sched_set_sched lacks a __init
annotation or the annotation of .L0 is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0x1bf640c): Section mismatch in reference from the function sctp_sched_get_sched() to the variable .init.text:.L0
The function sctp_sched_get_sched() references
the variable __init .L0 .
This is often because sctp_sched_get_sched lacks a __init
annotation or the annotation of .L0 is wrong.

Note: the below error/warnings can be found in parent commit:
<< WARNING: modpost: vmlinux.o(.text+0x66d448): Section mismatch in reference from the function nilfs_segbuf_free() to the variable .exit.text:.LVL12
<< WARNING: modpost: vmlinux.o(.text+0x15a8b7c): Section mismatch in reference from the function bch_keybuf_init() to the variable .init.text:.LVL52
<< WARNING: modpost: vmlinux.o(.text+0x1aa0df0): Section mismatch in reference from the function ping_seq_stop() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2298): Section mismatch in reference from the function ping_common_sendmsg() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2e08): Section mismatch in reference from the function ping_proc_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aeca5c): Section mismatch in reference from the function x25_limit_facilities() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .debug_loc:.LLST136
<< WARNING: modpost: vmlinux.o(.text+0x66d448): Section mismatch in reference from the function nilfs_segbuf_free() to the variable .exit.text:.LVL12
<< WARNING: modpost: vmlinux.o(.text+0x15a8b7c): Section mismatch in reference from the function bch_keybuf_init() to the variable .init.text:.LVL52
<< WARNING: modpost: vmlinux.o(.text+0x1aa0df0): Section mismatch in reference from the function ping_seq_stop() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2298): Section mismatch in reference from the function ping_common_sendmsg() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2e08): Section mismatch in reference from the function ping_proc_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aeca5c): Section mismatch in reference from the function x25_limit_facilities() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .debug_loc:.LLST136
<< WARNING: modpost: vmlinux.o(.text+0x66d448): Section mismatch in reference from the function nilfs_segbuf_free() to the variable .exit.text:.LVL12
<< WARNING: modpost: vmlinux.o(.text+0x15a8b7c): Section mismatch in reference from the function bch_keybuf_init() to the variable .init.text:.LVL52
<< WARNING: modpost: vmlinux.o(.text+0x1aa0df0): Section mismatch in reference from the function ping_seq_stop() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2298): Section mismatch in reference from the function ping_common_sendmsg() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2e08): Section mismatch in reference from the function ping_proc_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aeca5c): Section mismatch in reference from the function x25_limit_facilities() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .debug_loc:.LLST136
<< WARNING: modpost: vmlinux.o(.text+0x66d448): Section mismatch in reference from the function nilfs_segbuf_free() to the variable .exit.text:.LVL12
<< WARNING: modpost: vmlinux.o(.text+0x15a8b7c): Section mismatch in reference from the function bch_keybuf_init() to the variable .init.text:.LVL52
<< WARNING: modpost: vmlinux.o(.text+0x1aa0df0): Section mismatch in reference from the function ping_seq_stop() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2298): Section mismatch in reference from the function ping_common_sendmsg() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2e08): Section mismatch in reference from the function ping_proc_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aeca5c): Section mismatch in reference from the function x25_limit_facilities() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .debug_loc:.LLST136
<< WARNING: modpost: vmlinux.o(.text+0x66d448): Section mismatch in reference from the function nilfs_segbuf_free() to the variable .exit.text:.LVL12
<< WARNING: modpost: vmlinux.o(.text+0x15a8b7c): Section mismatch in reference from the function bch_keybuf_init() to the variable .init.text:.LVL52
<< WARNING: modpost: vmlinux.o(.text+0x1aa0df0): Section mismatch in reference from the function ping_seq_stop() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2298): Section mismatch in reference from the function ping_common_sendmsg() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2e08): Section mismatch in reference from the function ping_proc_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aeca5c): Section mismatch in reference from the function x25_limit_facilities() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .debug_loc:.LLST136
<< WARNING: modpost: vmlinux.o(.text+0x66d448): Section mismatch in reference from the function nilfs_segbuf_free() to the variable .exit.text:.LVL12
<< WARNING: modpost: vmlinux.o(.text+0x15a8b7c): Section mismatch in reference from the function bch_keybuf_init() to the variable .init.text:.LVL52
<< WARNING: modpost: vmlinux.o(.text+0x1aa0df0): Section mismatch in reference from the function ping_seq_stop() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2298): Section mismatch in reference from the function ping_common_sendmsg() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aa2e08): Section mismatch in reference from the function ping_proc_exit() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(.text+0x1aeca5c): Section mismatch in reference from the function x25_limit_facilities() to the variable .init.text:.L0
<< WARNING: modpost: vmlinux.o(__ex_table+0x1260): Section mismatch in reference from the variable .L0 to the variable .debug_loc:.LLST136

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
