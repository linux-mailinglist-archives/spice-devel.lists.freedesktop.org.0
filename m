Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5891632AC
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C9716EA7B;
	Tue, 18 Feb 2020 20:11:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E453D6EA75
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S4aaQbotD2wC1nAXiuWmpXBUaYsgqtrfZ1PPU/PSy6c=; b=OPFuNo0UB05vTHCnvfFUQtZUFP
 3+Py4vclDpG/dDVHmUZmegVehjsyPZdjStDoMH8dG4AUHch0WGztuLoGoK2vwuJyMnwoUx2NDT57s
 upIha3IGxfMIM8050rTykrP5KOTLA+Mnve2CA24TxoKPAVp/fWg/AMKltPCsK7JbmLS4=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48w7-0000F4-1k
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:39 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:30 -0600
Message-Id: <20200218195337.4080-1-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 1/8] Style: tweak a few spaces to
 match Spice style.
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

From: Jeremy White <jwhite@codeweavers.com>

Signed-off-by: Jeremy White <jwhite@codeweavers.com>
Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 spice-video-dummy/src/dummy.h             | 2 +-
 spice-video-dummy/src/spicedummy_driver.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/spice-video-dummy/src/dummy.h b/spice-video-dummy/src/dummy.h
index cb8afc3..d287a59 100644
--- a/spice-video-dummy/src/dummy.h
+++ b/spice-video-dummy/src/dummy.h
@@ -56,7 +56,7 @@ typedef struct dummyRec {
     int cursorFG, cursorBG;
 
     dummy_colors colors[1024];
-    Bool (*CreateWindow)();    /* wrapped CreateWindow */
+    Bool (*CreateWindow)();     /* wrapped CreateWindow */
     Bool prop;
 
     Bool glamor;
diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
index 1dbe87b..1efae47 100644
--- a/spice-video-dummy/src/spicedummy_driver.c
+++ b/spice-video-dummy/src/spicedummy_driver.c
@@ -292,7 +292,7 @@ dummy_enable_glamor(ScrnInfoRec * scrn)
     const char *accel_method;
 
     if (((accel_method = xf86GetOptValString(dummy->Options, OPTION_ACCEL_METHOD))
-        && strcmp(accel_method, "glamor")) || dummy->fd == -1) {
+         && strcmp(accel_method, "glamor")) || dummy->fd == -1) {
         xf86DrvMsg(scrn->scrnIndex, X_CONFIG, "Glamor disabled.\n");
         return FALSE;
     }
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
