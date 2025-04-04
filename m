Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CDAA7CE72
	for <lists+spice-devel@lfdr.de>; Sun,  6 Apr 2025 16:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870F710E098;
	Sun,  6 Apr 2025 14:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="fGG3cCsh";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DAC410EB91
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Apr 2025 09:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1743758257;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jdt0UC5Y+YSICWNN9M7UpOd4+QGCXUQrqY/ZjKnsARY=;
 b=fGG3cCshquFG0rzvVS2cee7KpdoMZoiFjj+f99QP0QBqdAp0j7jXqAwBjuDyIToyFqf+tp
 69jbjvsgbDPYUvvYizgSnOydf08fWT5fHkOTaQak0tr062U5koXmlBNMyYUwchmmgO0FN3
 FKsTABKn6V0FYkYt+jgmamVZpOizUxM=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-484-4iTfcxb_OcC7mAfgBV3-tQ-1; Fri, 04 Apr 2025 05:17:36 -0400
X-MC-Unique: 4iTfcxb_OcC7mAfgBV3-tQ-1
X-Mimecast-MFC-AGG-ID: 4iTfcxb_OcC7mAfgBV3-tQ_1743758255
Received: by mail-pg1-f198.google.com with SMTP id
 41be03b00d2f7-af248209ba4so1302235a12.3
 for <spice-devel@lists.freedesktop.org>; Fri, 04 Apr 2025 02:17:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743758255; x=1744363055;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jdt0UC5Y+YSICWNN9M7UpOd4+QGCXUQrqY/ZjKnsARY=;
 b=AUHW4T/h7zY/2KWw/i45vHFcfmswp5M95YwIUa/pi8CtGo7EW49+n0IoAa4oigntje
 RWeWcK0dOtDRRfwgsCsjIALfx/4v6xEAQi+MeWfDwxYkUoMS35Hjqy2N1zWbojmnKtFd
 4VTSMM/vRIc2AnowqgJHp7YyY/Vegmwa/hVYLkgQ/gPuDJEvB44673GZ71PFoD2J5yaA
 qgW/aE41Bsd6rWoqoTgo7l3I6nJdowoF4ypdyEP01A3Fg9+Vwfzw6rpPfiFfGf5yhEwS
 apqhkpDhBb6xxt3fUQySMQ5Ih92a9xsCKM7Dx5TDoQU6h5/MJMd2+b29uRtIYzlKo7tY
 HjEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlTjdjcKJFm1wjNIebamAucjDH1zQV84ghRiWm88O0V5fEKGvk2hAGgg7fpprJqZm1SSHRC6Y/JayP+A==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxJbApc4zSlylYzqgS9/UHTeFy4Rl+C2jgHSfc7ilrXDDYSqC7s
 posABGLlYh/Ufoph9/5bm0/2at7N9BTSXVy8g9qhzzlz7EAVcG0Y7x79wEdD2A3MSphuqQcGtmT
 eKtDt/KpPKsJsFN32Sfk2BNbBi57Dt5lZw9Z9j0VOVLCjGNDWM2lfG3Hbp5L93RbIJlqN
X-Gm-Gg: ASbGnctUebfYshBUY1ojCQkii1jBTA0i87yank5mnsJPFXx7Iq0mycWEHsyxbVO/Wrk
 PPcCe9wCVV2St3ASSLs4k4c0bWW6ORm+DHx2inqHddM8qlt37RUTfZYqGIVdGet0E4lnSGlxmsE
 ddXWYjMKfG636Xwb3vzafe7Jrob98P7gLtNBj19fUuvmiNtTjWj/7W4jpHqt0iNgQOpI1/W0UKz
 N775nXW5rcqEivW1T3t/eKr6TkVryV5vIsNze9l+NjQ3Q7faDmbdVppd+rNssMrvZQjBCzudsYD
 RnwU5tfYiOIakBaA
X-Received: by 2002:a05:6a20:2d14:b0:1f5:55b7:1bb4 with SMTP id
 adf61e73a8af0-201045a6c2dmr4306813637.11.1743758255243; 
 Fri, 04 Apr 2025 02:17:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4cF4AJ9IrgwOr6kkgUgDT+AZY2Wj7fW+I4Ga378jGkThhOH+aHldzacKBbkECHVRoyItLUQ==
X-Received: by 2002:a05:6a20:2d14:b0:1f5:55b7:1bb4 with SMTP id
 adf61e73a8af0-201045a6c2dmr4306786637.11.1743758254905; 
 Fri, 04 Apr 2025 02:17:34 -0700 (PDT)
Received: from zeus.elecom ([240b:10:83a2:bd00:6e35:f2f5:2e21:ae3a])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-af9bc3fd411sm2432493a12.52.2025.04.04.02.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Apr 2025 02:17:34 -0700 (PDT)
From: Ryosuke Yasuoka <ryasuoka@redhat.com>
To: airlied@redhat.com, kraxel@redhat.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch
Cc: Ryosuke Yasuoka <ryasuoka@redhat.com>, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/qxl: Remove unused argument from
 qxl_alloc_release_reserved
Date: Fri,  4 Apr 2025 18:16:51 +0900
Message-ID: <20250404091654.1664838-1-ryasuoka@redhat.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: HvALCftZ5E4fUWWZvqunelUElQT1sDtMVLACwXYC8CI_1743758255
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Sun, 06 Apr 2025 14:37:56 +0000
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

The `size` argument in the `qxl_alloc_release_reserved` function is
currently unused and has no effect on the function's logic. So remove
this argument to clean up the code. No functional changes are expected.

Signed-off-by: Ryosuke Yasuoka <ryasuoka@redhat.com>
---
 drivers/gpu/drm/qxl/qxl_display.c | 9 +++------
 drivers/gpu/drm/qxl/qxl_draw.c    | 3 +--
 drivers/gpu/drm/qxl/qxl_drv.h     | 5 ++---
 drivers/gpu/drm/qxl/qxl_ioctl.c   | 7 +------
 drivers/gpu/drm/qxl/qxl_release.c | 8 +++-----
 5 files changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 70aff64ced87..c0c65efbfa32 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -496,8 +496,7 @@ static int qxl_primary_apply_cursor(struct qxl_device *qdev,
 	if (!qcrtc->cursor_bo)
 		return 0;
 
-	ret = qxl_alloc_release_reserved(qdev, sizeof(*cmd),
-					 QXL_RELEASE_CURSOR_CMD,
+	ret = qxl_alloc_release_reserved(qdev, QXL_RELEASE_CURSOR_CMD,
 					 &release, NULL);
 	if (ret)
 		return ret;
@@ -541,8 +540,7 @@ static int qxl_primary_move_cursor(struct qxl_device *qdev,
 	if (!qcrtc->cursor_bo)
 		return 0;
 
-	ret = qxl_alloc_release_reserved(qdev, sizeof(*cmd),
-					 QXL_RELEASE_CURSOR_CMD,
+	ret = qxl_alloc_release_reserved(qdev, QXL_RELEASE_CURSOR_CMD,
 					 &release, NULL);
 	if (ret)
 		return ret;
@@ -714,8 +712,7 @@ static void qxl_cursor_atomic_disable(struct drm_plane *plane,
 	struct qxl_cursor_cmd *cmd;
 	int ret;
 
-	ret = qxl_alloc_release_reserved(qdev, sizeof(*cmd),
-					 QXL_RELEASE_CURSOR_CMD,
+	ret = qxl_alloc_release_reserved(qdev, QXL_RELEASE_CURSOR_CMD,
 					 &release, NULL);
 	if (ret)
 		return;
diff --git a/drivers/gpu/drm/qxl/qxl_draw.c b/drivers/gpu/drm/qxl/qxl_draw.c
index 3a3e127ce297..b4c41545fb06 100644
--- a/drivers/gpu/drm/qxl/qxl_draw.c
+++ b/drivers/gpu/drm/qxl/qxl_draw.c
@@ -64,8 +64,7 @@ static struct qxl_rect *drawable_set_clipping(struct qxl_device *qdev,
 static int
 alloc_drawable(struct qxl_device *qdev, struct qxl_release **release)
 {
-	return qxl_alloc_release_reserved(qdev, sizeof(struct qxl_drawable),
-					  QXL_RELEASE_DRAWABLE, release, NULL);
+	return qxl_alloc_release_reserved(qdev, QXL_RELEASE_DRAWABLE, release, NULL);
 }
 
 static void
diff --git a/drivers/gpu/drm/qxl/qxl_drv.h b/drivers/gpu/drm/qxl/qxl_drv.h
index cc02b5f10ad9..fbc15338ae3c 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.h
+++ b/drivers/gpu/drm/qxl/qxl_drv.h
@@ -372,9 +372,8 @@ int qxl_alloc_surface_release_reserved(struct qxl_device *qdev,
 				       enum qxl_surface_cmd_type surface_cmd_type,
 				       struct qxl_release *create_rel,
 				       struct qxl_release **release);
-int qxl_alloc_release_reserved(struct qxl_device *qdev, unsigned long size,
-			       int type, struct qxl_release **release,
-			       struct qxl_bo **rbo);
+int qxl_alloc_release_reserved(struct qxl_device *qdev, int type,
+			       struct qxl_release **release, struct qxl_bo **rbo);
 
 int
 qxl_push_command_ring_release(struct qxl_device *qdev, struct qxl_release *release,
diff --git a/drivers/gpu/drm/qxl/qxl_ioctl.c b/drivers/gpu/drm/qxl/qxl_ioctl.c
index 506ae1f5e099..5e0321b6f319 100644
--- a/drivers/gpu/drm/qxl/qxl_ioctl.c
+++ b/drivers/gpu/drm/qxl/qxl_ioctl.c
@@ -171,12 +171,7 @@ static int qxl_process_single_command(struct qxl_device *qdev,
 	if (!reloc_info)
 		return -ENOMEM;
 
-	ret = qxl_alloc_release_reserved(qdev,
-					 sizeof(union qxl_release_info) +
-					 cmd->command_size,
-					 release_type,
-					 &release,
-					 &cmd_bo);
+	ret = qxl_alloc_release_reserved(qdev, release_type, &release, &cmd_bo);
 	if (ret)
 		goto out_free_reloc;
 
diff --git a/drivers/gpu/drm/qxl/qxl_release.c b/drivers/gpu/drm/qxl/qxl_release.c
index 05204a6a3fa8..52c444a482be 100644
--- a/drivers/gpu/drm/qxl/qxl_release.c
+++ b/drivers/gpu/drm/qxl/qxl_release.c
@@ -279,13 +279,11 @@ int qxl_alloc_surface_release_reserved(struct qxl_device *qdev,
 		return 0;
 	}
 
-	return qxl_alloc_release_reserved(qdev, sizeof(struct qxl_surface_cmd),
-					 QXL_RELEASE_SURFACE_CMD, release, NULL);
+	return qxl_alloc_release_reserved(qdev, QXL_RELEASE_SURFACE_CMD, release, NULL);
 }
 
-int qxl_alloc_release_reserved(struct qxl_device *qdev, unsigned long size,
-				       int type, struct qxl_release **release,
-				       struct qxl_bo **rbo)
+int qxl_alloc_release_reserved(struct qxl_device *qdev, int type,
+			       struct qxl_release **release, struct qxl_bo **rbo)
 {
 	struct qxl_bo *bo, *free_bo = NULL;
 	int idr_ret;

base-commit: e48e99b6edf41c69c5528aa7ffb2daf3c59ee105
-- 
2.48.1

