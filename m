Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7564FD2AD
	for <lists+spice-devel@lfdr.de>; Tue, 12 Apr 2022 09:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3E410E98A;
	Tue, 12 Apr 2022 07:37:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A450610FB4A;
 Tue, 12 Apr 2022 03:35:37 +0000 (UTC)
Received: from vertex.localdomain (pool-108-36-85-85.phlapa.fios.verizon.net
 [108.36.85.85]) (Authenticated sender: zack)
 by letterbox.kde.org (Postfix) with ESMTPSA id 65429283884;
 Tue, 12 Apr 2022 04:35:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1649734536; bh=EMav8tC5+SYVEEBmZtmVZXFia3Bz7qzOggBZLqun0Xw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fXS/BGr1gmTLBue2OJ6ze0qgzMa/Wa0xoVqulfkDUQkAdXySlUZJUVYKlrP6Hpczs
 gdw6KBWFo9cRMMEp6Jt8imrNzfwK4ZAFauTmI7liAZ7vsbezIfSbyulTw6Rep5YKo5
 EWLyy2QcZL2m9kjEi2IJShWH7pHEgKW+wMGs/6DkeXMPI0WnPmyOp21n00K6SMIWLt
 wF7YczJC0OOyC+oWKC2taNT+RrrZ4Ka5uqmZikXLNVgbZKZ6RYOLx1O+bUuLPRhPzd
 S/pd/AalJjIdKFH/sQ5I/+PsQY/VWCOZuxO9EUdrrd1SYWVyR7uvnApkCwVdvH9yGx
 N5m5XdwvRaCEw==
From: Zack Rusin <zack@kde.org>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 23:35:25 -0400
Message-Id: <20220412033526.369115-5-zack@kde.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220412033526.369115-1-zack@kde.org>
References: <20220412033526.369115-1-zack@kde.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 12 Apr 2022 07:37:47 +0000
Subject: [Spice-devel] [PATCH v2 4/5] drm/qxl: Use TTM builtin resource
 manager debugfs code
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
Cc: David Airlie <airlied@linux.ie>, virtualization@lists.linux-foundation.org,
 krastevm@vmware.com, Huang Rui <ray.huang@amd.com>,
 Zack Rusin <zackr@vmware.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 Christian Koenig <christian.koenig@amd.com>, mombasawalam@vmware.com,
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Zack Rusin <zackr@vmware.com>

Switch to using the TTM resource manager debugfs helpers. The
functionality is largely the same.
The TTM resource managers need to stay valid for as long as the
drm debugfs_root is valid.

Signed-off-by: Zack Rusin <zackr@vmware.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_ttm.c | 39 ++++++-----------------------------
 1 file changed, 6 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c b/drivers/gpu/drm/qxl/qxl_ttm.c
index 95df5750f47f..0dfdbfc8f6af 100644
--- a/drivers/gpu/drm/qxl/qxl_ttm.c
+++ b/drivers/gpu/drm/qxl/qxl_ttm.c
@@ -222,41 +222,14 @@ void qxl_ttm_fini(struct qxl_device *qdev)
 	DRM_INFO("qxl: ttm finalized\n");
 }
 
-#define QXL_DEBUGFS_MEM_TYPES 2
-
-#if defined(CONFIG_DEBUG_FS)
-static int qxl_mm_dump_table(struct seq_file *m, void *data)
-{
-	struct drm_info_node *node = (struct drm_info_node *)m->private;
-	struct ttm_resource_manager *man = (struct ttm_resource_manager *)node->info_ent->data;
-	struct drm_printer p = drm_seq_file_printer(m);
-
-	ttm_resource_manager_debug(man, &p);
-	return 0;
-}
-#endif
-
 void qxl_ttm_debugfs_init(struct qxl_device *qdev)
 {
 #if defined(CONFIG_DEBUG_FS)
-	static struct drm_info_list qxl_mem_types_list[QXL_DEBUGFS_MEM_TYPES];
-	static char qxl_mem_types_names[QXL_DEBUGFS_MEM_TYPES][32];
-	unsigned int i;
-
-	for (i = 0; i < QXL_DEBUGFS_MEM_TYPES; i++) {
-		if (i == 0)
-			sprintf(qxl_mem_types_names[i], "qxl_mem_mm");
-		else
-			sprintf(qxl_mem_types_names[i], "qxl_surf_mm");
-		qxl_mem_types_list[i].name = qxl_mem_types_names[i];
-		qxl_mem_types_list[i].show = &qxl_mm_dump_table;
-		qxl_mem_types_list[i].driver_features = 0;
-		if (i == 0)
-			qxl_mem_types_list[i].data = ttm_manager_type(&qdev->mman.bdev, TTM_PL_VRAM);
-		else
-			qxl_mem_types_list[i].data = ttm_manager_type(&qdev->mman.bdev, TTM_PL_PRIV);
-
-	}
-	qxl_debugfs_add_files(qdev, qxl_mem_types_list, i);
+	ttm_resource_manager_create_debugfs(ttm_manager_type(&qdev->mman.bdev,
+							     TTM_PL_VRAM),
+					    qdev->ddev.primary->debugfs_root, "qxl_mem_mm");
+	ttm_resource_manager_create_debugfs(ttm_manager_type(&qdev->mman.bdev,
+							     TTM_PL_PRIV),
+					    qdev->ddev.primary->debugfs_root, "qxl_surf_mm");
 #endif
 }
-- 
2.32.0

