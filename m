Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD622483FF
	for <lists+spice-devel@lfdr.de>; Tue, 18 Aug 2020 13:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AAF089BB0;
	Tue, 18 Aug 2020 11:40:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93898984E
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Aug 2020 19:58:52 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id b14so16150338qkn.4
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Aug 2020 12:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=xU/OG6O79qAJpRUJHqCBtq8zJaVc3EZyZVdl+5wcZRM=;
 b=Ko4qegpWNtFSVLEeQI4gXqPbS8llypdR84EVgC3gY4CMu+A100ob3JNemmxAABbqk3
 G5E4ty8S0zoJB7/ciDC6/5/hYKri7FdVmcn7tYCUrE88d3L0euuwzIanbSYGKpRJ9LQi
 TgkY0sCCRiJct8GRsjWFcczcs6ErkzltXtL43Ez3niR1X0a13YiWQfG9H3BrGFJdoDsL
 bcAVZLeqi8HTlc8ytpiLpkafA6uu2aYk3PfISy/HGQMfGGnQ0p1JMonSsa1m5E6dCHTz
 Mg84cpt57IsjDSufU06nt/94y9cof1jcAyeF5OuMl7erca2qi1wT/jk7s9RRwV2/RZmM
 zpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xU/OG6O79qAJpRUJHqCBtq8zJaVc3EZyZVdl+5wcZRM=;
 b=jfaCrh6SVYO/LxlhoNrQ2NkzMnaeWOMNEAennRmqzCG3sVrcQUNNcwSszIhq1U54iJ
 WyOp39blkCX5LmgBRuMCHcvpVrqOwgs4pyuHq4DgiBpwbKxwt0HijVLFndeeXN94ojsb
 X6cGHpiyeKQnGu3kLFIITZoVfdXrzcJKX6xqEkSulz0f7mu5uzcb/K86cesPJCWhzT3Q
 bC85IHdXGpTctP1WU+BRVOjyvRtEeyCTK2cdlZo+TLdlxnOwsRPfg52VpyFZ2lENOC9u
 kZ3yTzvVxX5R4c0Wn1UFBaJZk6luyGoX2axmQAcEe/ZJTodjzhD10zO7udW3X37PXJ85
 l1gw==
X-Gm-Message-State: AOAM531YbLFnf4+rxyaHh37iJloNmB/IblbmnvonoIYhOx/lSdsDBOk1
 wR2VikbTvjEeTJX0Pd2Jojmlwg==
X-Google-Smtp-Source: ABdhPJzBYAedRoy68cQ0vEr2YM3vkFw8UixJcb006ITTDtCA7o6bIk9pvIQafxDkxq6fGfGJ4rBQ8Q==
X-Received: by 2002:a37:afc3:: with SMTP id y186mr14469113qke.36.1597694331908; 
 Mon, 17 Aug 2020 12:58:51 -0700 (PDT)
Received: from localhost (mobile-166-170-57-110.mycingular.net.
 [166.170.57.110])
 by smtp.gmail.com with ESMTPSA id k55sm20463099qtf.17.2020.08.17.12.58.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Aug 2020 12:58:51 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Date: Mon, 17 Aug 2020 15:58:38 -0400
Message-Id: <20200817195846.14076-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 18 Aug 2020 11:40:14 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: Fix build errors
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
Cc: David Airlie <airlied@linux.ie>, virtualization@lists.linux-foundation.org,
 Sean Paul <seanpaul@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Sidong Yang <realwakka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Introduced in the patch below, the END macro was missing 'dev' and BEGIN
macro needs drm_drv_uses_atomic_modeset() from drm_drv.h

Fixes: bbaac1354cc9 ("drm/qxl: Replace deprecated function in qxl_display")
Cc: Sidong Yang <realwakka@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: virtualization@lists.linux-foundation.org
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/qxl/qxl_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index fa79688013b7..5b4fd6952b53 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
@@ -186,7 +187,7 @@ void qxl_display_read_client_monitors_config(struct qxl_device *qdev)
 
 	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE, ret);
 	qxl_update_offset_props(qdev);
-	DRM_MODESET_LOCK_ALL_END(ctx, ret);
+	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
 	if (!drm_helper_hpd_irq_event(dev)) {
 		/* notify that the monitor configuration changed, to
 		   adjust at the arbitrary resolution */
@@ -431,7 +432,7 @@ static int qxl_framebuffer_surface_dirty(struct drm_framebuffer *fb,
 			  clips, num_clips, inc, 0);
 
 out_lock_end:
-	DRM_MODESET_LOCK_ALL_END(ctx, ret);
+	DRM_MODESET_LOCK_ALL_END(fb->dev, ctx, ret);
 
 	return 0;
 }
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
