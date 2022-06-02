Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D537653BFAB
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jun 2022 22:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383B3112E75;
	Thu,  2 Jun 2022 20:23:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97F7112FEE;
 Thu,  2 Jun 2022 15:42:59 +0000 (UTC)
Received: from vertex.vmware.com (pool-108-36-85-85.phlapa.fios.verizon.net
 [108.36.85.85]) (Authenticated sender: zack)
 by letterbox.kde.org (Postfix) with ESMTPSA id D6490335FF4;
 Thu,  2 Jun 2022 16:42:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1654184578; bh=/2nOGYCqYZn6MDWS8jS8EFfA23N2p+fn+QlogboYpGY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O1dRAS4x1uCt2dvb5s5Raft8p5+7kZi48REZDM+7mccQLroVLl10bycdSF3ctx4rf
 NBNcm8Wq8hWcUgQ+80dq4yn1g/U7GJq3voGRhyX3RqVpmanPcqqihbbc977RYW14A4
 n8h/YeabBcWZTXPcIDO90anOenjBFcT0ecFGQZ1xONi5EjBM+2PlvavhoEG2I65ORw
 8zRZGaFVpCD96AyI3stKswLFrzIuXJXtmvQ8QnxelXROzAN7JsOYAtoMqoSIrxLdW5
 Byyf6Tsio0RPT/MD+zLQlNp9e4fl8E0ahWZLXY7a6wd9Nq9cQ0HvNrgRYRiEpkhQSn
 JTnh8FvX1D7ag==
From: Zack Rusin <zack@kde.org>
To: dri-devel@lists.freedesktop.org
Date: Thu,  2 Jun 2022 11:42:40 -0400
Message-Id: <20220602154243.1015688-4-zack@kde.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220602154243.1015688-1-zack@kde.org>
References: <20220602154243.1015688-1-zack@kde.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 02 Jun 2022 20:23:45 +0000
Subject: [Spice-devel] [PATCH 3/6] drm/qxl: Create mouse hotspot properties
 on cursor planes
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
Cc: mombasawalam@vmware.com, virtualization@lists.linux-foundation.org,
 krastevm@vmware.com, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Zack Rusin <zackr@vmware.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Zack Rusin <zackr@vmware.com>

Atomic modesetting got support for mouse hotspots via the hotspot
properties. Drivers need to create those properties on cursor planes
which require the mouse hotspot coordinates.

Add the code creating hotspot properties and port away from old legacy
hotspot API. The legacy hotspot paths have an implementation that works
with new atomic properties so there's no reason to keep them and it
makes sense to unify both paths.

Signed-off-by: Zack Rusin <zackr@vmware.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_display.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 9a64fa4c7530..4b578f9960cd 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -508,8 +508,8 @@ static int qxl_primary_apply_cursor(struct qxl_device *qdev,
 
 	cmd = (struct qxl_cursor_cmd *)qxl_release_map(qdev, release);
 	cmd->type = QXL_CURSOR_SET;
-	cmd->u.set.position.x = plane_state->crtc_x + fb->hot_x;
-	cmd->u.set.position.y = plane_state->crtc_y + fb->hot_y;
+	cmd->u.set.position.x = plane_state->crtc_x + plane_state->hotspot_x;
+	cmd->u.set.position.y = plane_state->crtc_y + plane_state->hotspot_y;
 
 	cmd->u.set.shape = qxl_bo_physical_address(qdev, qcrtc->cursor_bo, 0);
 
@@ -552,8 +552,8 @@ static int qxl_primary_move_cursor(struct qxl_device *qdev,
 
 	cmd = (struct qxl_cursor_cmd *)qxl_release_map(qdev, release);
 	cmd->type = QXL_CURSOR_MOVE;
-	cmd->u.position.x = plane_state->crtc_x + fb->hot_x;
-	cmd->u.position.y = plane_state->crtc_y + fb->hot_y;
+	cmd->u.position.x = plane_state->crtc_x + plane_state->hotspot_x;
+	cmd->u.position.y = plane_state->crtc_y + plane_state->hotspot_y;
 	qxl_release_unmap(qdev, release, &cmd->release_info);
 
 	qxl_release_fence_buffer_objects(release);
@@ -849,8 +849,8 @@ static int qxl_plane_prepare_fb(struct drm_plane *plane,
 		struct qxl_bo *old_cursor_bo = qcrtc->cursor_bo;
 
 		qcrtc->cursor_bo = qxl_create_cursor(qdev, user_bo,
-						     new_state->fb->hot_x,
-						     new_state->fb->hot_y);
+						     new_state->hotspot_x,
+						     new_state->hotspot_y);
 		qxl_free_cursor(old_cursor_bo);
 	}
 
@@ -1002,6 +1002,7 @@ static int qdev_crtc_init(struct drm_device *dev, int crtc_id)
 
 	qxl_crtc->index = crtc_id;
 	drm_crtc_helper_add(&qxl_crtc->base, &qxl_crtc_helper_funcs);
+	drm_plane_create_hotspot_properties(cursor);
 	return 0;
 
 clean_cursor:
-- 
2.34.1

