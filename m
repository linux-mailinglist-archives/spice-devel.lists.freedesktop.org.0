Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 281485713D7
	for <lists+spice-devel@lfdr.de>; Tue, 12 Jul 2022 10:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A0F927C3;
	Tue, 12 Jul 2022 08:01:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A365D10F52B;
 Tue, 12 Jul 2022 03:33:06 +0000 (UTC)
Received: from vertex.vmware.com (pool-173-49-113-140.phlapa.fios.verizon.net
 [173.49.113.140]) (Authenticated sender: zack)
 by letterbox.kde.org (Postfix) with ESMTPSA id 80779321FD7;
 Tue, 12 Jul 2022 04:33:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1657596785; bh=/aAxHLW9l8QQXIo2Y4YhE+1Z7jJRQc8YK1YXuuq1ILs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AwVNHx8rnjnba8T6aVPshg/y3MBbmUzWg4cl0sAKUgX+l49uZ3nNwQ8jYKdqNdxH2
 +Ygo71e8i2D4t8683f5pGQ+vOtbuaYlJomV+ECiyJlM921DeUMBlOWyKw15nVsRzKd
 hGDY+hdxMq88NsgeP1cntf3uxQuy6tI/cyOwq3b7nWTG1ufZffHbZGteEX8sOFtBRo
 LBrRWb2U+Vnq4Sp/hyLaP7zUz674GHs/iJTG272ilCJ1JneANHn1LHrfx1ynNR3tl+
 xY/TQAnwdZkjxwdKl3CrT+Yyv7Px+Rm3BupVwOq/v2HQoQudzqlOwatyxeJfrTCoqq
 TCWf83e6jg5sQ==
From: Zack Rusin <zack@kde.org>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Jul 2022 23:32:42 -0400
Message-Id: <20220712033246.1148476-5-zack@kde.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220712033246.1148476-1-zack@kde.org>
References: <20220712033246.1148476-1-zack@kde.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 12 Jul 2022 08:01:54 +0000
Subject: [Spice-devel] [PATCH v2 4/8] drm/qxl: Use the hotspot properties
 from cursor planes
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
Reply-To: Zack Rusin <zackr@vmware.com>
Cc: contact@emersion.fr, virtualization@lists.linux-foundation.org,
 krastevm@vmware.com, ppaalanen@gmail.com, mombasawalam@vmware.com,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Zack Rusin <zackr@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Zack Rusin <zackr@vmware.com>

Atomic modesetting got support for mouse hotspots via the hotspot
properties. Port the legacy kms hotspot handling to the new properties
on cursor planes.

Signed-off-by: Zack Rusin <zackr@vmware.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 2e8949863d6b..f5a90be84e93 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -485,7 +485,6 @@ static int qxl_primary_atomic_check(struct drm_plane *plane,
 static int qxl_primary_apply_cursor(struct qxl_device *qdev,
 				    struct drm_plane_state *plane_state)
 {
-	struct drm_framebuffer *fb = plane_state->fb;
 	struct qxl_crtc *qcrtc = to_qxl_crtc(plane_state->crtc);
 	struct qxl_cursor_cmd *cmd;
 	struct qxl_release *release;
@@ -510,8 +509,8 @@ static int qxl_primary_apply_cursor(struct qxl_device *qdev,
 
 	cmd = (struct qxl_cursor_cmd *)qxl_release_map(qdev, release);
 	cmd->type = QXL_CURSOR_SET;
-	cmd->u.set.position.x = plane_state->crtc_x + fb->hot_x;
-	cmd->u.set.position.y = plane_state->crtc_y + fb->hot_y;
+	cmd->u.set.position.x = plane_state->crtc_x + plane_state->hotspot_x;
+	cmd->u.set.position.y = plane_state->crtc_y + plane_state->hotspot_y;
 
 	cmd->u.set.shape = qxl_bo_physical_address(qdev, qcrtc->cursor_bo, 0);
 
@@ -531,7 +530,6 @@ static int qxl_primary_apply_cursor(struct qxl_device *qdev,
 static int qxl_primary_move_cursor(struct qxl_device *qdev,
 				   struct drm_plane_state *plane_state)
 {
-	struct drm_framebuffer *fb = plane_state->fb;
 	struct qxl_crtc *qcrtc = to_qxl_crtc(plane_state->crtc);
 	struct qxl_cursor_cmd *cmd;
 	struct qxl_release *release;
@@ -554,8 +552,8 @@ static int qxl_primary_move_cursor(struct qxl_device *qdev,
 
 	cmd = (struct qxl_cursor_cmd *)qxl_release_map(qdev, release);
 	cmd->type = QXL_CURSOR_MOVE;
-	cmd->u.position.x = plane_state->crtc_x + fb->hot_x;
-	cmd->u.position.y = plane_state->crtc_y + fb->hot_y;
+	cmd->u.position.x = plane_state->crtc_x + plane_state->hotspot_x;
+	cmd->u.position.y = plane_state->crtc_y + plane_state->hotspot_y;
 	qxl_release_unmap(qdev, release, &cmd->release_info);
 
 	qxl_release_fence_buffer_objects(release);
@@ -851,8 +849,8 @@ static int qxl_plane_prepare_fb(struct drm_plane *plane,
 		struct qxl_bo *old_cursor_bo = qcrtc->cursor_bo;
 
 		qcrtc->cursor_bo = qxl_create_cursor(qdev, user_bo,
-						     new_state->fb->hot_x,
-						     new_state->fb->hot_y);
+						     new_state->hotspot_x,
+						     new_state->hotspot_y);
 		qxl_free_cursor(old_cursor_bo);
 	}
 
-- 
2.34.1

