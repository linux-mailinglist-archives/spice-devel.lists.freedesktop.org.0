Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C2A27253F
	for <lists+spice-devel@lfdr.de>; Mon, 21 Sep 2020 15:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7FE6E33D;
	Mon, 21 Sep 2020 13:18:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3876E06D;
 Mon, 21 Sep 2020 13:10:11 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0577B86AF4BD5483D1DB;
 Mon, 21 Sep 2020 21:10:09 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Mon, 21 Sep 2020 21:09:58 +0800
From: Qinglang Miao <miaoqinglang@huawei.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
 "David Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 21 Sep 2020 21:10:22 +0800
Message-ID: <20200921131022.91649-1-miaoqinglang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 21 Sep 2020 13:18:44 +0000
Subject: [Spice-devel] [PATCH -next] drm/qxl: simplify the return expression
 of qxl_plane_prepare_fb()
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
Cc: spice-devel@lists.freedesktop.org, Qinglang Miao <miaoqinglang@huawei.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Simplify the return expression.

Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
---
 drivers/gpu/drm/qxl/qxl_display.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 6063f3a15..65de1f69a 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -768,7 +768,6 @@ static int qxl_plane_prepare_fb(struct drm_plane *plane,
 	struct drm_gem_object *obj;
 	struct qxl_bo *user_bo;
 	struct qxl_surface surf;
-	int ret;
 
 	if (!new_state->fb)
 		return 0;
@@ -804,11 +803,7 @@ static int qxl_plane_prepare_fb(struct drm_plane *plane,
 		}
 	}
 
-	ret = qxl_bo_pin(user_bo);
-	if (ret)
-		return ret;
-
-	return 0;
+	return qxl_bo_pin(user_bo);
 }
 
 static void qxl_plane_cleanup_fb(struct drm_plane *plane,
-- 
2.23.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
