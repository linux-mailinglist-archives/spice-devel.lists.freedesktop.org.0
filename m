Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2964997392
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2024 19:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B0310E7AD;
	Wed,  9 Oct 2024 17:47:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ibm.com header.i=@ibm.com header.b="D0L+RSlr";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB8210E519;
 Tue,  8 Oct 2024 12:40:48 +0000 (UTC)
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 498CL0dl013317;
 Tue, 8 Oct 2024 12:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from
 :date:subject:mime-version:content-type
 :content-transfer-encoding:message-id:references:in-reply-to:to
 :cc; s=pp1; bh=irEkUnfOCK26+7I9ZnbJEpSwf6oraa+74Fg4hq7TUGc=; b=D
 0L+RSlr7Qcw2GeMVWHv26cKfiQbRmLCIoNOoNPY0nxzzqtd92h1h9E56JG4n0M+A
 rN7YCxaJoKKyL5uBfF46dMC99J6cfPsr9KGLwzcO+m2Ly8p9np3eHOJK38qIyNac
 hXJi+mCFwB6rbHnEqEjIsQesGV1wZrPM95Wb73+maN9ZAubn6bVknzbz47GH6mf+
 zucLdSaNa5xONOIODRF+hVIPL6JflX+OVh7owZJH03Ft05V3xSp6s44DTEQX8bzI
 aaPScHQMyk/50XW9AG3hHxsUn3Op0AJsM50lvZG3vb+cleEehOoq4egoL6ECnXzD
 VOi4iLHxB2oIOBCSb+tJQ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4254np04ex-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2024 12:40:37 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 498CTceT003856;
 Tue, 8 Oct 2024 12:40:37 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4254np04ej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2024 12:40:37 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 4989x21n022851;
 Tue, 8 Oct 2024 12:40:35 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 423h9jv4xm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2024 12:40:35 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com
 [10.39.53.230])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 498CeYY348693530
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 8 Oct 2024 12:40:34 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 352665805C;
 Tue,  8 Oct 2024 12:40:34 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4275058064;
 Tue,  8 Oct 2024 12:40:29 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  8 Oct 2024 12:40:29 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
Date: Tue, 08 Oct 2024 14:39:42 +0200
Subject: [PATCH v8 1/5] hexagon: Don't select GENERIC_IOMAP without
 HAS_IOPORT support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-b4-has_ioport-v8-1-793e68aeadda@linux.ibm.com>
References: <20241008-b4-has_ioport-v8-0-793e68aeadda@linux.ibm.com>
In-Reply-To: <20241008-b4-has_ioport-v8-0-793e68aeadda@linux.ibm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=986; i=schnelle@linux.ibm.com; 
 h=from:subject:message-id;
 bh=Jxbgw/YBZzqIN9Ui044lI2C/Q459oyf0l31CYpqRevk=; 
 b=owGbwMvMwCX2Wz534YHOJ2GMp9WSGNJZNaTcFdfczdXimlZ+/fyP9z58p9Z7pLRYc2ZGO4pm/
 jwXvZq3o5SFQYyLQVZMkWVRl7PfuoIppnuC+jtg5rAygQxh4OIUgIk8t2f4n26Qfvf0Tr4HUy+/
 Om/0wd39bpHcnfZLRw+8envgwj0jtTiGf+Y/jPRd5wt2m2twLbN5eaCBXaf9go+N3h6z05vYtog
 95AAA
X-Developer-Key: i=schnelle@linux.ibm.com; a=openpgp;
 fpr=9DB000B2D2752030A5F72DDCAFE43F15E8C26090
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: o8qBnorpJv9C_rJcKYwKwqVAWzkLnEo-
X-Proofpoint-ORIG-GUID: YIh8gu7tcYf-rBUfllbHK5pXrqSxj5F-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-08_10,2024-10-08_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=735 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410080078
X-Mailman-Approved-At: Wed, 09 Oct 2024 17:47:34 +0000
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

In a future patch HAS_IOPORT=n will disable inb()/outb() and friends at
compile time. As hexagon does not support I/O port access it also
the GENERIC_IOMAP mechanism of dynamically choosing between I/O port and
MMIO access doesn't work so don't select it.

Reviewed-by: Brian Cain <bcain@quicinc.com>
Co-developed-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 arch/hexagon/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/hexagon/Kconfig b/arch/hexagon/Kconfig
index e233b5efa2761e35c416cbc147f6b6422a7c5b8f..5ea1bf4b7d4f5471a9c39ee9fb5c701455d21342 100644
--- a/arch/hexagon/Kconfig
+++ b/arch/hexagon/Kconfig
@@ -31,7 +31,6 @@ config HEXAGON
 	select HAVE_ARCH_TRACEHOOK
 	select NEED_SG_DMA_LENGTH
 	select NO_IOPORT_MAP
-	select GENERIC_IOMAP
 	select GENERIC_IOREMAP
 	select GENERIC_SMP_IDLE_THREAD
 	select STACKTRACE_SUPPORT

-- 
2.43.0

