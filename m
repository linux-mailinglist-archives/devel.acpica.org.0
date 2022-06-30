Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [IPv6:2001:19d0:306:5::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0625612F8
	for <lists+devel-acpica@lfdr.de>; Thu, 30 Jun 2022 09:12:42 +0200 (CEST)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 430A2100EA2BB;
	Thu, 30 Jun 2022 00:12:39 -0700 (PDT)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.100; helo=mga07.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id 216BC100EAB1F
	for <devel@acpica.org>; Thu, 30 Jun 2022 00:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656573157; x=1688109157;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=G1h74Xu36gYmsn2iK1z9yNKFVonoCSvaEq9Lgn97PII=;
  b=lhN8ZOl+kx8pCdI+cuxJaCakqz6YgP0uH2cLlQB5QQOj/9R/VLQT8mM7
   C1b1mXo4T/l30KkBUsqaHvyMfZ/6hvq8WTV2pD4vxNz5KJrJbbPyT1mdW
   hPzsSq5ywKSIUCgwNNRHFUJdIznubnCNvAPPDgiNZ9FxeFAHIK9TAce4Y
   IVabolflQO4fy/zdorfZBH6pxoloiEI/Hrwwkt13qWdvwamtU7mrwL9UI
   2gml0SKaUznDwmkefA8ZhESXJ3w4TXlmRTgkIdRXu+qipLERU3zQhmYpx
   HtxKMrrHhGONbl7qqEU2ONfrrMXhqs11bfpqQtBI0BDy3va/azJbygrrJ
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="346258020"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400";
   d="scan'208";a="346258020"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2022 00:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400";
   d="scan'208";a="917932547"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 30 Jun 2022 00:12:34 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o6oLp-000CNC-IC;
	Thu, 30 Jun 2022 07:12:33 +0000
Date: Thu, 30 Jun 2022 15:11:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <202206301543.JpCxX65V-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: 6DDR5PRH5VYG3G2ZOS22ASCU5P4EAY6A
X-Message-ID-Hash: 6DDR5PRH5VYG3G2ZOS22ASCU5P4EAY6A
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:bleeding-edge 37/63] include/linux/compiler_types.h:293:27: error: expression in static assertion is not an integer
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/6DDR5PRH5VYG3G2ZOS22ASCU5P4EAY6A/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
head:   7451d4b13852834afd17b629fb7d4410cefba74c
commit: 022b762e0e96a96bbc1ec271f59c2f6adf1d594b [37/63] ACPI: bus: Drop unused list heads from struct acpi_device
config: ia64-allmodconfig (https://download.01.org/0day-ci/archive/20220630/202206301543.JpCxX65V-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=022b762e0e96a96bbc1ec271f59c2f6adf1d594b
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm bleeding-edge
        git checkout 022b762e0e96a96bbc1ec271f59c2f6adf1d594b
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=ia64 SHELL=/bin/bash drivers/bus/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/list.h:5,
                    from include/linux/kobject.h:19,
                    from include/linux/of.h:17,
                    from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c: In function 'hisi_lpc_acpi_probe':
   drivers/bus/hisi_lpc.c:511:41: error: 'struct acpi_device' has no member named 'children'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                         ^~
   include/linux/container_of.h:18:33: note: in definition of macro 'container_of'
      18 |         void *__mptr = (void *)(ptr);                                   \
         |                                 ^~~
   include/linux/list.h:531:9: note: in expansion of macro 'list_entry'
     531 |         list_entry((ptr)->next, type, member)
         |         ^~~~~~~~~~
   include/linux/list.h:674:20: note: in expansion of macro 'list_first_entry'
     674 |         for (pos = list_first_entry(head, typeof(*pos), member);        \
         |                    ^~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   In file included from include/linux/bits.h:22,
                    from include/linux/ioport.h:13,
                    from include/linux/acpi.h:12,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c:511:41: error: 'struct acpi_device' has no member named 'children'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                         ^~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:531:9: note: in expansion of macro 'list_entry'
     531 |         list_entry((ptr)->next, type, member)
         |         ^~~~~~~~~~
   include/linux/list.h:674:20: note: in expansion of macro 'list_first_entry'
     674 |         for (pos = list_first_entry(head, typeof(*pos), member);        \
         |                    ^~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:531:9: note: in expansion of macro 'list_entry'
     531 |         list_entry((ptr)->next, type, member)
         |         ^~~~~~~~~~
   include/linux/list.h:674:20: note: in expansion of macro 'list_first_entry'
     674 |         for (pos = list_first_entry(head, typeof(*pos), member);        \
         |                    ^~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:41: error: 'struct acpi_device' has no member named 'children'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                         ^~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:20:23: note: in expansion of macro '__same_type'
      20 |                       __same_type(*(ptr), void),                        \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:531:9: note: in expansion of macro 'list_entry'
     531 |         list_entry((ptr)->next, type, member)
         |         ^~~~~~~~~~
   include/linux/list.h:674:20: note: in expansion of macro 'list_first_entry'
     674 |         for (pos = list_first_entry(head, typeof(*pos), member);        \
         |                    ^~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
>> include/linux/compiler_types.h:293:27: error: expression in static assertion is not an integer
     293 | #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:531:9: note: in expansion of macro 'list_entry'
     531 |         list_entry((ptr)->next, type, member)
         |         ^~~~~~~~~~
   include/linux/list.h:674:20: note: in expansion of macro 'list_first_entry'
     674 |         for (pos = list_first_entry(head, typeof(*pos), member);        \
         |                    ^~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   In file included from include/uapi/linux/posix_types.h:5,
                    from include/uapi/linux/types.h:14,
                    from include/linux/types.h:6,
                    from include/linux/kasan-checks.h:5,
                    from include/asm-generic/rwonce.h:26,
                    from ./arch/ia64/include/generated/asm/rwonce.h:1,
                    from include/linux/compiler.h:248,
                    from include/linux/build_bug.h:5,
                    from include/linux/bits.h:22,
                    from include/linux/ioport.h:13,
                    from include/linux/acpi.h:12,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/stddef.h:16:58: note: in definition of macro 'offsetof'
      16 | #define offsetof(TYPE, MEMBER)  __builtin_offsetof(TYPE, MEMBER)
         |                                                          ^~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:531:9: note: in expansion of macro 'list_entry'
     531 |         list_entry((ptr)->next, type, member)
         |         ^~~~~~~~~~
   include/linux/list.h:674:20: note: in expansion of macro 'list_first_entry'
     674 |         for (pos = list_first_entry(head, typeof(*pos), member);        \
         |                    ^~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   In file included from include/linux/kobject.h:19,
                    from include/linux/of.h:17,
                    from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/list.h:665:16: note: in definition of macro 'list_entry_is_head'
     665 |         (&pos->member == (head))
         |                ^~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:41: error: 'struct acpi_device' has no member named 'children'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                         ^~
   include/linux/list.h:665:27: note: in definition of macro 'list_entry_is_head'
     665 |         (&pos->member == (head))
         |                           ^~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   In file included from include/linux/list.h:5,
                    from include/linux/kobject.h:19,
                    from include/linux/of.h:17,
                    from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/container_of.h:18:33: note: in definition of macro 'container_of'
      18 |         void *__mptr = (void *)(ptr);                                   \
         |                                 ^~~
   include/linux/list.h:564:9: note: in expansion of macro 'list_entry'
     564 |         list_entry((pos)->member.next, typeof(*(pos)), member)
         |         ^~~~~~~~~~
   include/linux/list.h:676:20: note: in expansion of macro 'list_next_entry'
     676 |              pos = list_next_entry(pos, member))
         |                    ^~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   In file included from include/linux/bits.h:22,
                    from include/linux/ioport.h:13,
                    from include/linux/acpi.h:12,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:564:9: note: in expansion of macro 'list_entry'
     564 |         list_entry((pos)->member.next, typeof(*(pos)), member)
         |         ^~~~~~~~~~
   include/linux/list.h:676:20: note: in expansion of macro 'list_next_entry'
     676 |              pos = list_next_entry(pos, member))
         |                    ^~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:564:9: note: in expansion of macro 'list_entry'
     564 |         list_entry((pos)->member.next, typeof(*(pos)), member)
         |         ^~~~~~~~~~
   include/linux/list.h:676:20: note: in expansion of macro 'list_next_entry'
     676 |              pos = list_next_entry(pos, member))
         |                    ^~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:20:23: note: in expansion of macro '__same_type'
      20 |                       __same_type(*(ptr), void),                        \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:564:9: note: in expansion of macro 'list_entry'
     564 |         list_entry((pos)->member.next, typeof(*(pos)), member)
         |         ^~~~~~~~~~
   include/linux/list.h:676:20: note: in expansion of macro 'list_next_entry'
     676 |              pos = list_next_entry(pos, member))
         |                    ^~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
>> include/linux/compiler_types.h:293:27: error: expression in static assertion is not an integer
     293 | #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:564:9: note: in expansion of macro 'list_entry'
     564 |         list_entry((pos)->member.next, typeof(*(pos)), member)
         |         ^~~~~~~~~~
   include/linux/list.h:676:20: note: in expansion of macro 'list_next_entry'
     676 |              pos = list_next_entry(pos, member))
         |                    ^~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~
   In file included from include/uapi/linux/posix_types.h:5,
                    from include/uapi/linux/types.h:14,
                    from include/linux/types.h:6,
                    from include/linux/kasan-checks.h:5,
                    from include/asm-generic/rwonce.h:26,
                    from ./arch/ia64/include/generated/asm/rwonce.h:1,
                    from include/linux/compiler.h:248,
                    from include/linux/build_bug.h:5,
                    from include/linux/bits.h:22,
                    from include/linux/ioport.h:13,
                    from include/linux/acpi.h:12,
                    from drivers/bus/hisi_lpc.c:9:
   drivers/bus/hisi_lpc.c:511:53: error: 'struct acpi_device' has no member named 'node'; did you mean 'fwnode'?
     511 |         list_for_each_entry(child, &adev->children, node) {
         |                                                     ^~~~
   include/linux/stddef.h:16:58: note: in definition of macro 'offsetof'
      16 | #define offsetof(TYPE, MEMBER)  __builtin_offsetof(TYPE, MEMBER)
         |                                                          ^~~~~~
   include/linux/list.h:520:9: note: in expansion of macro 'container_of'
     520 |         container_of(ptr, type, member)
         |         ^~~~~~~~~~~~
   include/linux/list.h:564:9: note: in expansion of macro 'list_entry'
     564 |         list_entry((pos)->member.next, typeof(*(pos)), member)
         |         ^~~~~~~~~~
   include/linux/list.h:676:20: note: in expansion of macro 'list_next_entry'
     676 |              pos = list_next_entry(pos, member))
         |                    ^~~~~~~~~~~~~~~
   drivers/bus/hisi_lpc.c:511:9: note: in expansion of macro 'list_for_each_entry'
     511 |         list_for_each_entry(child, &adev->children, node) {
         |         ^~~~~~~~~~~~~~~~~~~


vim +293 include/linux/compiler_types.h

eb111869301e15 Rasmus Villemoes 2019-09-13  291  
d15155824c5014 Will Deacon      2017-10-24  292  /* Are two types/vars the same type (ignoring qualifiers)? */
d15155824c5014 Will Deacon      2017-10-24 @293  #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
d15155824c5014 Will Deacon      2017-10-24  294  

:::::: The code at line 293 was first introduced by commit
:::::: d15155824c5014803d91b829736d249c500bdda6 linux/compiler.h: Split into compiler.h and compiler_types.h

:::::: TO: Will Deacon <will.deacon@arm.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
