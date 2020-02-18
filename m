Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503C21632A7
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459156E3F4;
	Tue, 18 Feb 2020 20:10:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1036 seconds by postgrey-1.36 at gabe;
 Tue, 18 Feb 2020 20:10:55 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC106E3F4
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cc1ICDMRV7GjWGI2CveJYS8HbdClNqkZPBUMUS7Fflw=; b=cpuWjiTuiS8080+yc9aT19iuIt
 2nTL4Gji6f/KcfYhc1nvqvUw9COpFIB2WTRg188ilRkJCFz78EA92OVLNRkuRt+xIfOXknH0LYTLT
 s4jeRS09n4GgaMjVfni6bXG1WqYCvAcn9+EZLONomvIhWlIjahabKzcpg9/uMact7/TY=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48w8-0000F4-IU
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:40 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:32 -0600
Message-Id: <20200218195337.4080-3-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 3/8] Use a proper prototype for
 CreateWindow() in struct dummyRec.
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
 spice-video-dummy/src/dummy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/spice-video-dummy/src/dummy.h b/spice-video-dummy/src/dummy.h
index d287a59..dc4ab92 100644
--- a/spice-video-dummy/src/dummy.h
+++ b/spice-video-dummy/src/dummy.h
@@ -56,7 +56,7 @@ typedef struct dummyRec {
     int cursorFG, cursorBG;
 
     dummy_colors colors[1024];
-    Bool (*CreateWindow)();     /* wrapped CreateWindow */
+    Bool (*CreateWindow)(WindowRec * window);   /* wrapped CreateWindow */
     Bool prop;
 
     Bool glamor;
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
