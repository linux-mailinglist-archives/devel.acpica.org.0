Return-Path: <devel-bounces@acpica.org>
X-Original-To: lists+devel-acpica@lfdr.de
Delivered-To: lists+devel-acpica@lfdr.de
Received: from ml01.01.org (ml01.01.org [198.145.21.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1934C37DE
	for <lists+devel-acpica@lfdr.de>; Thu, 24 Feb 2022 22:33:40 +0100 (CET)
Received: from ml01.vlan13.01.org (localhost [IPv6:::1])
	by ml01.01.org (Postfix) with ESMTP id 2A15C100F3937;
	Thu, 24 Feb 2022 13:33:39 -0800 (PST)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.43; helo=mga05.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ml01.01.org (Postfix) with ESMTPS id F3C13100F3936
	for <devel@acpica.org>; Thu, 24 Feb 2022 13:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645738416; x=1677274416;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=wS6f9QL9K9zzrsjMtdj+3Akg42ceTvzowR30yf8RUX4=;
  b=SeCwaRlOsjpDnOanhPloEKUUlSYOXJQRmIpg+qzwcOYO8yWqgxSigUO1
   0h6jOWRcBxgEfoiKSrYhTi5AO5FwWkzTN23H93u5uQ/iFY3IBbbKjGVkL
   ELQxUXypxWBlAzIB6HtL6wooPZ3cJLrtZPlKN5aIlPw14XC5WjYOFjMRA
   JAFuMx3u4Or0N4F2aY+o3luwjdCZj9RWrr50Td3Uh6rv17Q8S0wFpIDWy
   dkaUUcoyzLYWxf5EUUpmK1Bv8k3dVeS3eAu/g93BcG/VzifWMJ4MA1G5A
   m48ZzvzdZx5LNCW09J5KwUX4wr9k10wCYTpqyHLm4MdFnYTabyXmJdd8/
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="338794200"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="338794200"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2022 13:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="788282915"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 24 Feb 2022 13:33:34 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nNLjx-0003U1-ID; Thu, 24 Feb 2022 21:33:33 +0000
Date: Fri, 25 Feb 2022 05:32:51 +0800
From: kernel test robot <lkp@intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <202202250514.JzetOofA-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: BDGNURVUHCIEZTLV7S7KCFMYNF3BY4ZU
X-Message-ID-Hash: BDGNURVUHCIEZTLV7S7KCFMYNF3BY4ZU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Mika Westerberg <mika.westerberg@linux.intel.com>
X-Mailman-Version: 3.1.1
Precedence: list
Subject: [Devel] [rafael-pm:testing 54/57] arch/x86/include/asm/pci_x86.h:97:8: error: unknown type name 'raw_spinlock_t'
List-Id: ACPICA Developer Mailing List <devel.acpica.org>
Archived-At: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/message/BDGNURVUHCIEZTLV7S7KCFMYNF3BY4ZU/>
List-Archive: <https://lists.acpica.org/hyperkitty/list/devel@acpica.org/>
List-Help: <mailto:devel-request@acpica.org?subject=help>
List-Post: <mailto:devel@acpica.org>
List-Subscribe: <mailto:devel-join@acpica.org>
List-Unsubscribe: <mailto:devel-leave@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git testing
head:   fc4232749306d2fb9341c4c6d17c489ab657a67e
commit: 62fabd56faafe033eb0be3ba24000b8db13d4c17 [54/57] x86/PCI: Disable exclusion of E820 reserved addresses in some cases
config: i386-tinyconfig (https://download.01.org/0day-ci/archive/20220225/202202250514.JzetOofA-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=62fabd56faafe033eb0be3ba24000b8db13d4c17
        git remote add rafael-pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
        git fetch --no-tags rafael-pm testing
        git checkout 62fabd56faafe033eb0be3ba24000b8db13d4c17
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash arch/x86/kernel/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/resource.c:4:
>> arch/x86/include/asm/pci_x86.h:97:8: error: unknown type name 'raw_spinlock_t'
      97 | extern raw_spinlock_t pci_config_lock;
         |        ^~~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:133:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'dmi_check_pciprobe'
     133 | extern void __init dmi_check_pciprobe(void);
         |                    ^~~~~~~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:134:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'dmi_check_skip_isa_align'
     134 | extern void __init dmi_check_skip_isa_align(void);
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:140:27: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_acpi_init'
     140 | static inline int  __init pci_acpi_init(void)
         |                           ^~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:145:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pcibios_irq_init'
     145 | extern void __init pcibios_irq_init(void);
         |                    ^~~~~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:146:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pcibios_init'
     146 | extern int __init pcibios_init(void);
         |                   ^~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:166:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_mmcfg_arch_init'
     166 | extern int __init pci_mmcfg_arch_init(void);
         |                   ^~~~~~~~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:167:20: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_mmcfg_arch_free'
     167 | extern void __init pci_mmcfg_arch_free(void);
         |                    ^~~~~~~~~~~~~~~~~~~
>> arch/x86/include/asm/pci_x86.h:174:40: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'pci_mmconfig_add'
     174 | extern struct pci_mmcfg_region *__init pci_mmconfig_add(int segment, int start,
         |                                        ^~~~~~~~~~~~~~~~


vim +/raw_spinlock_t +97 arch/x86/include/asm/pci_x86.h

^1da177e4c3f41 arch/i386/pci/pci.h            Linus Torvalds     2005-04-16   96  
d19f61f098ae93 arch/x86/include/asm/pci_x86.h Thomas Gleixner    2010-02-17  @97  extern raw_spinlock_t pci_config_lock;
^1da177e4c3f41 arch/i386/pci/pci.h            Linus Torvalds     2005-04-16   98  
^1da177e4c3f41 arch/i386/pci/pci.h            Linus Torvalds     2005-04-16   99  extern int (*pcibios_enable_irq)(struct pci_dev *dev);
87bec66b969152 arch/i386/pci/pci.h            David Shaohua Li   2005-07-27  100  extern void (*pcibios_disable_irq)(struct pci_dev *dev);
928cf8c6276334 arch/i386/pci/pci.h            Andi Kleen         2005-12-12  101  
6c777e8799a93e arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2016-02-17  102  extern bool mp_should_keep_irq(struct device *dev);
6c777e8799a93e arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2016-02-17  103  
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  104  struct pci_raw_ops {
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  105  	int (*read)(unsigned int domain, unsigned int bus, unsigned int devfn,
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  106  						int reg, int len, u32 *val);
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  107  	int (*write)(unsigned int domain, unsigned int bus, unsigned int devfn,
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  108  						int reg, int len, u32 val);
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  109  };
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  110  
72da0b07b1b497 arch/x86/include/asm/pci_x86.h Jan Beulich        2011-09-15  111  extern const struct pci_raw_ops *raw_pci_ops;
72da0b07b1b497 arch/x86/include/asm/pci_x86.h Jan Beulich        2011-09-15  112  extern const struct pci_raw_ops *raw_pci_ext_ops;
b6ce068a1285a2 arch/x86/pci/pci.h             Matthew Wilcox     2008-02-10  113  
c0fa40784cce9c arch/x86/include/asm/pci_x86.h Jiang Liu          2012-06-22  114  extern const struct pci_raw_ops pci_mmcfg;
72da0b07b1b497 arch/x86/include/asm/pci_x86.h Jan Beulich        2011-09-15  115  extern const struct pci_raw_ops pci_direct_conf1;
14d7ca5c575853 arch/x86/pci/pci.h             H. Peter Anvin     2008-11-11  116  extern bool port_cf9_safe;
928cf8c6276334 arch/i386/pci/pci.h            Andi Kleen         2005-12-12  117  
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02  118  /* arch_initcall level */
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  119  #ifdef CONFIG_PCI_DIRECT
5e544d618f0fb2 arch/i386/pci/pci.h            Andi Kleen         2006-09-26  120  extern int pci_direct_probe(void);
5e544d618f0fb2 arch/i386/pci/pci.h            Andi Kleen         2006-09-26  121  extern void pci_direct_init(int type);
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  122  #else
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  123  static inline int pci_direct_probe(void) { return -1; }
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  124  static inline  void pci_direct_init(int type) { }
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  125  #endif
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  126  
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  127  #ifdef CONFIG_PCI_BIOS
92c05fc1a32e5c arch/i386/pci/pci.h            Andi Kleen         2006-03-23  128  extern void pci_pcbios_init(void);
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  129  #else
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  130  static inline void pci_pcbios_init(void) { }
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  131  #endif
445d3595ab290b arch/x86/include/asm/pci_x86.h Thomas Gleixner    2020-08-26  132  
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02 @133  extern void __init dmi_check_pciprobe(void);
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02 @134  extern void __init dmi_check_skip_isa_align(void);
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02  135  
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02  136  /* some common used subsys_initcalls */
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19  137  #ifdef CONFIG_PCI
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02  138  extern int __init pci_acpi_init(void);
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19  139  #else
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19 @140  static inline int  __init pci_acpi_init(void)
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19  141  {
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19  142  	return -EINVAL;
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19  143  }
5d32a66541c468 arch/x86/include/asm/pci_x86.h Sinan Kaya         2018-12-19  144  #endif
ab3b37937e8f4f arch/x86/include/asm/pci_x86.h Thomas Gleixner    2009-08-29 @145  extern void __init pcibios_irq_init(void);
8dd779b19ce597 arch/x86/pci/pci.h             Robert Richter     2008-07-02 @146  extern int __init pcibios_init(void);
b72d0db9dd41da arch/x86/include/asm/pci_x86.h Thomas Gleixner    2009-08-29  147  extern int pci_legacy_init(void);
9325a28ce2fa7c arch/x86/include/asm/pci_x86.h Thomas Gleixner    2009-08-29  148  extern void pcibios_fixup_irqs(void);
5e544d618f0fb2 arch/i386/pci/pci.h            Andi Kleen         2006-09-26  149  
b78673944b22b6 arch/i386/pci/pci.h            Olivier Galibert   2007-02-13  150  /* pci-mmconfig.c */
b78673944b22b6 arch/i386/pci/pci.h            Olivier Galibert   2007-02-13  151  
56ddf4d3cf04e8 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  152  /* "PCI MMCONFIG %04x [bus %02x-%02x]" */
56ddf4d3cf04e8 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  153  #define PCI_MMCFG_RESOURCE_NAME_LEN (22 + 4 + 2 + 2)
56ddf4d3cf04e8 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  154  
d215a9c8b46e55 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  155  struct pci_mmcfg_region {
ff097ddd4aeac7 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  156  	struct list_head list;
56ddf4d3cf04e8 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  157  	struct resource res;
d215a9c8b46e55 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  158  	u64 address;
3f0f5503926f74 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  159  	char __iomem *virt;
d7e6b66fe87c9f arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  160  	u16 segment;
d7e6b66fe87c9f arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  161  	u8 start_bus;
d7e6b66fe87c9f arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  162  	u8 end_bus;
56ddf4d3cf04e8 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  163  	char name[PCI_MMCFG_RESOURCE_NAME_LEN];
d215a9c8b46e55 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  164  };
d215a9c8b46e55 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  165  
429d512e532ec9 arch/i386/pci/pci.h            OGAWA Hirofumi     2007-02-13 @166  extern int __init pci_mmcfg_arch_init(void);
0b64ad7123eb01 arch/x86/pci/pci.h             Yinghai Lu         2008-02-15 @167  extern void __init pci_mmcfg_arch_free(void);
a18e3690a52790 arch/x86/include/asm/pci_x86.h Greg Kroah-Hartman 2012-12-21  168  extern int pci_mmcfg_arch_map(struct pci_mmcfg_region *cfg);
9cf0105da5a315 arch/x86/include/asm/pci_x86.h Jiang Liu          2012-06-22  169  extern void pci_mmcfg_arch_unmap(struct pci_mmcfg_region *cfg);
a18e3690a52790 arch/x86/include/asm/pci_x86.h Greg Kroah-Hartman 2012-12-21  170  extern int pci_mmconfig_insert(struct device *dev, u16 seg, u8 start, u8 end,
a18e3690a52790 arch/x86/include/asm/pci_x86.h Greg Kroah-Hartman 2012-12-21  171  			       phys_addr_t addr);
9c95111b330d2d arch/x86/include/asm/pci_x86.h Jiang Liu          2012-06-22  172  extern int pci_mmconfig_delete(u16 seg, u8 start, u8 end);
f6e1d8cc38b377 arch/x86/include/asm/pci_x86.h Bjorn Helgaas      2009-11-13  173  extern struct pci_mmcfg_region *pci_mmconfig_lookup(int segment, int bus);
6fa4a94e150be2 arch/x86/include/asm/pci_x86.h Otavio Pontes      2018-03-07 @174  extern struct pci_mmcfg_region *__init pci_mmconfig_add(int segment, int start,
6fa4a94e150be2 arch/x86/include/asm/pci_x86.h Otavio Pontes      2018-03-07  175  							int end, u64 addr);
3320ad994afb2c arch/i386/pci/pci.h            dean gaudet        2007-08-10  176  

:::::: The code at line 97 was first introduced by commit
:::::: d19f61f098ae9315b76a97962007f687683916d4 x86/PCI: Convert pci_config_lock to raw_spinlock

:::::: TO: Thomas Gleixner <tglx@linutronix.de>
:::::: CC: Jesse Barnes <jbarnes@virtuousgeek.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Devel mailing list -- devel@acpica.org
To unsubscribe send an email to devel-leave@acpica.org
%(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s
