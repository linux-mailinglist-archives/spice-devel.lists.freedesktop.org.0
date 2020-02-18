Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 768E61632A9
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850BB6EA76;
	Tue, 18 Feb 2020 20:10:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C796E3F5
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=trpBfd7/tYczzyW2BYEP7BoBH6QYlHYcfNP6YAkHS/U=; b=njqvwrk3Hnp4oP78+sU8svCeym
 hYHSjaoaqGcYTBLYYiwcYRjj3my3dN+FCRIaNNTY0H1A4vd2cmxaVkDlcaLf6LXZzr0c31T7a3MBK
 Hbsd0Owhvl81ZGQffa5g2B/veJne1Qnu74ZEXljuoGTcey/5QdbNz5KML/UOR8f7qyrM=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48w9-0000F4-LV
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:41 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:33 -0600
Message-Id: <20200218195337.4080-4-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 4/8] Enable warnings for
 spice-video-dummy.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 spice-video-dummy/src/Makefile.am | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/spice-video-dummy/src/Makefile.am b/spice-video-dummy/src/Makefile.am
index 6befa46..1dc4df8 100644
--- a/spice-video-dummy/src/Makefile.am
+++ b/spice-video-dummy/src/Makefile.am
@@ -25,7 +25,7 @@
 # _ladir passes a dummy rpath to libtool so the thing will actually link
 # TODO: -nostdlib/-Bstatic/-lgcc platform magic, not installing the .a, etc.
 
-AM_CFLAGS = $(XORG_CFLAGS) $(PCIACCESS_CFLAGS)
+AM_CFLAGS = $(BASE_CFLAGS) $(XORG_CFLAGS) $(PCIACCESS_CFLAGS)
 
 spicedummy_drv_la_LTLIBRARIES = spicedummy_drv.la
 spicedummy_drv_la_LDFLAGS = -module -avoid-version
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
