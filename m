Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F452354F18
	for <lists+spice-devel@lfdr.de>; Tue,  6 Apr 2021 10:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539986E3B7;
	Tue,  6 Apr 2021 08:53:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E9F56E0A0;
 Tue,  6 Apr 2021 08:29:46 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 962D7B120;
 Tue,  6 Apr 2021 08:29:44 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@linux.ie, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, bskeggs@redhat.com, kraxel@redhat.com
Date: Tue,  6 Apr 2021 10:29:39 +0200
Message-Id: <20210406082942.24049-2-tzimmermann@suse.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210406082942.24049-1-tzimmermann@suse.de>
References: <20210406082942.24049-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 06 Apr 2021 08:53:52 +0000
Subject: [Spice-devel] [PATCH 1/4] drm/gem-ttm-helper: Provide helper for
 struct drm_driver.dumb_map_offset
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
Cc: nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Provides an implementation of struct drm_driver.dumb_map_offset that
can be used by TTM-based GEM drivers.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_gem_ttm_helper.c | 33 ++++++++++++++++++++++++++++
 include/drm/drm_gem_ttm_helper.h     |  5 ++++-
 2 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_gem_ttm_helper.c b/drivers/gpu/drm/drm_gem_ttm_helper.c
index de28720757af..b14bed8be771 100644
--- a/drivers/gpu/drm/drm_gem_ttm_helper.c
+++ b/drivers/gpu/drm/drm_gem_ttm_helper.c
@@ -114,5 +114,38 @@ int drm_gem_ttm_mmap(struct drm_gem_object *gem,
 }
 EXPORT_SYMBOL(drm_gem_ttm_mmap);
 
+/**
+ * drm_gem_ttm_dumb_map_offset() - Implements struct &drm_driver.dumb_map_offset
+ * @file:	DRM file pointer.
+ * @dev:	DRM device.
+ * @handle:	GEM handle
+ * @offset:	Returns the mapping's memory offset on success
+ *
+ * Provides an implementation of struct &drm_driver.dumb_map_offset for
+ * TTM-based GEM drivers. TTM allocates the offset internally and
+ * drm_gem_ttm_dumb_map_offset() returns it for dumb-buffer implementations.
+ *
+ * See struct &drm_driver.dumb_map_offset.
+ *
+ * Returns:
+ * 0 on success, or a negative errno code otherwise.
+ */
+int drm_gem_ttm_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
+				uint32_t handle, uint64_t *offset)
+{
+	struct drm_gem_object *gem;
+
+	gem = drm_gem_object_lookup(file, handle);
+	if (!gem)
+		return -ENOENT;
+
+	*offset = drm_vma_node_offset_addr(&gem->vma_node);
+
+	drm_gem_object_put(gem);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_gem_ttm_dumb_map_offset);
+
 MODULE_DESCRIPTION("DRM gem ttm helpers");
 MODULE_LICENSE("GPL");
diff --git a/include/drm/drm_gem_ttm_helper.h b/include/drm/drm_gem_ttm_helper.h
index 7c6d874910b8..c1aa02bd4c89 100644
--- a/include/drm/drm_gem_ttm_helper.h
+++ b/include/drm/drm_gem_ttm_helper.h
@@ -5,8 +5,8 @@
 
 #include <linux/kernel.h>
 
-#include <drm/drm_gem.h>
 #include <drm/drm_device.h>
+#include <drm/drm_gem.h>
 #include <drm/ttm/ttm_bo_api.h>
 #include <drm/ttm/ttm_bo_driver.h>
 
@@ -24,4 +24,7 @@ void drm_gem_ttm_vunmap(struct drm_gem_object *gem,
 int drm_gem_ttm_mmap(struct drm_gem_object *gem,
 		     struct vm_area_struct *vma);
 
+int drm_gem_ttm_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
+				uint32_t handle, uint64_t *offset);
+
 #endif
-- 
2.30.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
