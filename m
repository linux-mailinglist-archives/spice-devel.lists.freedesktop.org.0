Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89470993922
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2024 23:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD85C10E431;
	Mon,  7 Oct 2024 21:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ibm.com header.i=@ibm.com header.b="K+AlNO7c";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD57C10E374;
 Mon,  7 Oct 2024 11:42:13 +0000 (UTC)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 497BIk3o008189;
 Mon, 7 Oct 2024 11:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from
 :date:subject:content-type:message-id:references:in-reply-to:to
 :cc:content-transfer-encoding:mime-version; s=pp1; bh=gJGd5/wr8D
 cxtqBm0AFwiAsWUR/rh1W6zfn73uIs31M=; b=K+AlNO7cbdwHVbdionf/rWw588
 ipSe3iouyKqeW95TBg/lCAAtLUxcTibLOfg/XNTWtH96eLfuPYTTFJV1M0pkZCBf
 Qf9UERYT/5pA4VBqSZ7mz5TOmshaMQ8/1z9m0q52VVp6PD91gbO9DwgtCTOy6L0v
 /ePVkW3gtEyG/Xb5x0xobIw9ByKUCfgPw7iIGYzhIYPZDkROzwRbiLqGs/Of6o2h
 Z2RVBCdSgZNow65PHj7ZxxPR8+jgGQBz3h5TZFvIP2zVgLMXpB9itnTRyyvvCPYK
 XZ3U3gMwGfjw0URih/IVmaI+X316LdFK5kgc6H5Fc1vCUr5neO7iuLDwvD2g==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 424enc864w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2024 11:42:04 +0000 (GMT)
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 497Bg3eD010573;
 Mon, 7 Oct 2024 11:42:03 GMT
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 424enc864q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2024 11:42:03 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 49795uir022867;
 Mon, 7 Oct 2024 11:42:02 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 423jg0nyct-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2024 11:42:02 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 497Bg1vP15794806
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 7 Oct 2024 11:42:01 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2D38358056;
 Mon,  7 Oct 2024 11:42:01 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 07ABC58045;
 Mon,  7 Oct 2024 11:41:56 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon,  7 Oct 2024 11:41:55 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
Date: Mon, 07 Oct 2024 13:40:23 +0200
Subject: [PATCH v6 5/5] asm-generic/io.h: Remove I/O port accessors for
 HAS_IOPORT=n
Content-Type: text/plain; charset="utf-8"
Message-Id: <20241007-b4-has_ioport-v6-5-03f7240da6e5@linux.ibm.com>
References: <20241007-b4-has_ioport-v6-0-03f7240da6e5@linux.ibm.com>
In-Reply-To: <20241007-b4-has_ioport-v6-0-03f7240da6e5@linux.ibm.com>
To: Brian Cain <bcain@quicinc.com>, Marcel Holtmann <marcel@holtmann.org>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>, Heiko Carstens <hca@linux.ibm.com>
Cc: linux-kernel@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-serial@vger.kernel.org,
 linux-arch@vger.kernel.org, Niklas Schnelle <schnelle@linux.ibm.com>,
 Arnd Bergmann <arnd@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5763;
 i=schnelle@linux.ibm.com; h=from:subject:message-id;
 bh=j7KaGUsyaLEUfGtXkukiFzIvWKJHDMnnZRqJknyuK2M=;
 b=owGbwMvMwCX2Wz534YHOJ2GMp9WSGNKZTzy6djb8auy3/GyTk2tYOGfmrsy8m6IWv2rW2y2yB
 7lfhYeIdpSyMIhxMciKKbIs6nL2W1cwxXRPUH8HzBxWJpAhDFycAjCR210M/92KbRlbty85NXPN
 xFRFv5O7/6lYH1mS1NOqerv76gqFL3mMDHO+d4bu/Lp1T8emlAvXvzns3ubs+UdNwvHzs6Jptw/
 6PeMAAA==
X-Developer-Key: i=schnelle@linux.ibm.com; a=openpgp;
 fpr=9DB000B2D2752030A5F72DDCAFE43F15E8C26090
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: RNvYtpLSwiVG1NoQ25vYY0xX4cawI8en
X-Proofpoint-GUID: lsqrlwZBfXREZJQh0f2T0p_3xB0hkfcT
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-07_02,2024-10-07_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1015 mlxlogscore=999
 bulkscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410070081
X-Mailman-Approved-At: Mon, 07 Oct 2024 21:26:48 +0000
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

With all subsystems and drivers either declaring their dependence on
HAS_IOPORT or fencing I/O port specific code sections we can finally
make inb()/outb() and friends compile-time dependent on HAS_IOPORT as
suggested by Linus in the linked mail. The main benefit of this is that
on platforms such as s390 which have no meaningful way of implementing
inb()/outb() their use without the proper HAS_IOPORT dependency will
result in easy to catch and fix compile-time errors instead of compiling
code that can never work.

Link: https://lore.kernel.org/lkml/CAHk-=wg80je=K7madF4e7WrRNp37e3qh6y10Svhdc7O8SZ_-8g@mail.gmail.com/
Co-developed-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 include/asm-generic/io.h | 60 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 80de699bf6af4b7b77f582c0469c43e978f67a43..1027be6a62bcbcd5f6797e0fa42035208d0ca79f 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -540,6 +540,7 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
 
 #if !defined(inb) && !defined(_inb)
 #define _inb _inb
+#ifdef CONFIG_HAS_IOPORT
 static inline u8 _inb(unsigned long addr)
 {
 	u8 val;
@@ -549,10 +550,15 @@ static inline u8 _inb(unsigned long addr)
 	__io_par(val);
 	return val;
 }
+#else
+u8 _inb(unsigned long addr)
+	__compiletime_error("inb()) requires CONFIG_HAS_IOPORT");
+#endif
 #endif
 
 #if !defined(inw) && !defined(_inw)
 #define _inw _inw
+#ifdef CONFIG_HAS_IOPORT
 static inline u16 _inw(unsigned long addr)
 {
 	u16 val;
@@ -562,10 +568,15 @@ static inline u16 _inw(unsigned long addr)
 	__io_par(val);
 	return val;
 }
+#else
+u16 _inw(unsigned long addr)
+	__compiletime_error("inw() requires CONFIG_HAS_IOPORT");
+#endif
 #endif
 
 #if !defined(inl) && !defined(_inl)
 #define _inl _inl
+#ifdef CONFIG_HAS_IOPORT
 static inline u32 _inl(unsigned long addr)
 {
 	u32 val;
@@ -575,36 +586,55 @@ static inline u32 _inl(unsigned long addr)
 	__io_par(val);
 	return val;
 }
+#else
+u32 _inl(unsigned long addr)
+	__compiletime_error("inl() requires CONFIG_HAS_IOPORT");
+#endif
 #endif
 
 #if !defined(outb) && !defined(_outb)
 #define _outb _outb
+#ifdef CONFIG_HAS_IOPORT
 static inline void _outb(u8 value, unsigned long addr)
 {
 	__io_pbw();
 	__raw_writeb(value, PCI_IOBASE + addr);
 	__io_paw();
 }
+#else
+void _outb(u8 value, unsigned long addr)
+	__compiletime_error("outb() requires CONFIG_HAS_IOPORT");
+#endif
 #endif
 
 #if !defined(outw) && !defined(_outw)
 #define _outw _outw
+#ifdef CONFIG_HAS_IOPORT
 static inline void _outw(u16 value, unsigned long addr)
 {
 	__io_pbw();
 	__raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
 	__io_paw();
 }
+#else
+void _outw(u16 value, unsigned long addr)
+	__compiletime_error("outw() requires CONFIG_HAS_IOPORT");
+#endif
 #endif
 
 #if !defined(outl) && !defined(_outl)
 #define _outl _outl
+#ifdef CONFIG_HAS_IOPORT
 static inline void _outl(u32 value, unsigned long addr)
 {
 	__io_pbw();
 	__raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
 	__io_paw();
 }
+#else
+void _outl(u32 value, unsigned long addr)
+	__compiletime_error("outl() requires CONFIG_HAS_IOPORT");
+#endif
 #endif
 
 #include <linux/logic_pio.h>
@@ -688,53 +718,83 @@ static inline void outl_p(u32 value, unsigned long addr)
 
 #ifndef insb
 #define insb insb
+#ifdef CONFIG_HAS_IOPORT
 static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 {
 	readsb(PCI_IOBASE + addr, buffer, count);
 }
+#else
+void insb(unsigned long addr, void *buffer, unsigned int count)
+	__compiletime_error("insb() requires HAS_IOPORT");
+#endif
 #endif
 
 #ifndef insw
 #define insw insw
+#ifdef CONFIG_HAS_IOPORT
 static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 {
 	readsw(PCI_IOBASE + addr, buffer, count);
 }
+#else
+void insw(unsigned long addr, void *buffer, unsigned int count)
+	__compiletime_error("insw() requires HAS_IOPORT");
+#endif
 #endif
 
 #ifndef insl
 #define insl insl
+#ifdef CONFIG_HAS_IOPORT
 static inline void insl(unsigned long addr, void *buffer, unsigned int count)
 {
 	readsl(PCI_IOBASE + addr, buffer, count);
 }
+#else
+void insl(unsigned long addr, void *buffer, unsigned int count)
+	__compiletime_error("insl() requires HAS_IOPORT");
+#endif
 #endif
 
 #ifndef outsb
 #define outsb outsb
+#ifdef CONFIG_HAS_IOPORT
 static inline void outsb(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
 	writesb(PCI_IOBASE + addr, buffer, count);
 }
+#else
+void outsb(unsigned long addr, const void *buffer, unsigned int count)
+	__compiletime_error("outsb() requires HAS_IOPORT");
+#endif
 #endif
 
 #ifndef outsw
 #define outsw outsw
+#ifdef CONFIG_HAS_IOPORT
 static inline void outsw(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
 	writesw(PCI_IOBASE + addr, buffer, count);
 }
+#else
+void outsw(unsigned long addr, const void *buffer, unsigned int count)
+	__compiletime_error("outsw() requires HAS_IOPORT");
+#endif
 #endif
 
 #ifndef outsl
 #define outsl outsl
+#ifdef CONFIG_HAS_IOPORT
 static inline void outsl(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
 	writesl(PCI_IOBASE + addr, buffer, count);
 }
+#else
+void outsl(unsigned long addr, const void *buffer, unsigned int count)
+	__compiletime_error("outsl() requires HAS_IOPORT");
+#endif
 #endif
 
 #ifndef insb_p

-- 
2.43.0

