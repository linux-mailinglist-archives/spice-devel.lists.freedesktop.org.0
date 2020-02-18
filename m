Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCF21632AD
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11EF6EA7D;
	Tue, 18 Feb 2020 20:11:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277976EA75
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kl28X9MjbU0JKbz2c0iwCGnM1GCWyZ0cAqf3hVtMqfk=; b=tkWfXduwYf6rbkjvdC3OH01Voa
 Sb3Eluhz52KCdg0snZSKlhfChywQAZ6VemCK0CbQjmLM/HVxQ1gIQj3fWXcPJDzPHOnkmGrqNp/uH
 1lHtw2JvGWhJgjJCuK+y6l7HPmKxWBaSLCyieKdNrvcxV+EKkFzunFt+iglYQ6PqgYhw=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48wB-0000F4-8i
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:43 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:35 -0600
Message-Id: <20200218195337.4080-6-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 6/8] Implement page flips.
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
 spice-video-dummy/src/present.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/spice-video-dummy/src/present.c b/spice-video-dummy/src/present.c
index ad29dc9..40290d7 100644
--- a/spice-video-dummy/src/present.c
+++ b/spice-video-dummy/src/present.c
@@ -162,19 +162,24 @@ dummy_present_flush(WindowRec * window)
 static Bool
 dummy_present_check_flip(RRCrtcRec * crtc, WindowRec * window, PixmapRec * pixmap, Bool sync_flip)
 {
-    return FALSE;
+    const ScrnInfoRec *scrn = xf86ScreenToScrn(crtc->pScreen);
+    const DUMMYRec *dummy = scrn->driverPrivate;
+
+    return !dummy->swCursor;
 }
 
 static Bool
 dummy_present_flip(RRCrtcRec * crtc, uint64_t event_id,
                    uint64_t target_msc, PixmapRec * pixmap, Bool sync_flip)
 {
-    return FALSE;
+    glamor_block_handler(crtc->pScreen);
+    return dummy_present_queue_vblank(crtc, event_id, target_msc) == Success;
 }
 
 static void
 dummy_present_unflip(ScreenRec * screen, uint64_t event_id)
 {
+    glamor_block_handler(screen);
     present_event_notify(event_id, 0, 0);
 }
 
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
