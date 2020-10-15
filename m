Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ABF28F33B
	for <lists+spice-devel@lfdr.de>; Thu, 15 Oct 2020 15:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281986ED08;
	Thu, 15 Oct 2020 13:32:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEDD6ECF3;
 Thu, 15 Oct 2020 12:38:17 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 28C49B19A;
 Thu, 15 Oct 2020 12:38:16 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, kraxel@redhat.com, l.stach@pengutronix.de,
 linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com,
 inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Date: Thu, 15 Oct 2020 14:38:04 +0200
Message-Id: <20201015123806.32416-9-tzimmermann@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015123806.32416-1-tzimmermann@suse.de>
References: <20201015123806.32416-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 15 Oct 2020 13:32:03 +0000
Subject: [Spice-devel] [PATCH v4 08/10] drm/gem: Store client buffer
 mappings as struct dma_buf_map
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 etnaviv@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, xen-devel@lists.xenproject.org,
 spice-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Kernel DRM clients now store their framebuffer address in an instance
of struct dma_buf_map. Depending on the buffer's location, the address
refers to system or I/O memory.

Callers of drm_client_buffer_vmap() receive a copy of the value in
the call's supplied arguments. It can be accessed and modified with
dma_buf_map interfaces.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/drm_client.c    | 34 +++++++++++++++++++--------------
 drivers/gpu/drm/drm_fb_helper.c | 23 +++++++++++++---------
 include/drm/drm_client.h        |  7 ++++---
 3 files changed, 38 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
index ac0082bed966..fe573acf1067 100644
--- a/drivers/gpu/drm/drm_client.c
+++ b/drivers/gpu/drm/drm_client.c
@@ -235,7 +235,7 @@ static void drm_client_buffer_delete(struct drm_client_buffer *buffer)
 {
 	struct drm_device *dev = buffer->client->dev;
 
-	drm_gem_vunmap(buffer->gem, buffer->vaddr);
+	drm_gem_vunmap(buffer->gem, &buffer->map);
 
 	if (buffer->gem)
 		drm_gem_object_put(buffer->gem);
@@ -291,25 +291,31 @@ drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u
 /**
  * drm_client_buffer_vmap - Map DRM client buffer into address space
  * @buffer: DRM client buffer
+ * @map_copy: Returns the mapped memory's address
  *
  * This function maps a client buffer into kernel address space. If the
- * buffer is already mapped, it returns the mapping's address.
+ * buffer is already mapped, it returns the existing mapping's address.
  *
  * Client buffer mappings are not ref'counted. Each call to
  * drm_client_buffer_vmap() should be followed by a call to
  * drm_client_buffer_vunmap(); or the client buffer should be mapped
  * throughout its lifetime.
  *
+ * The returned address is a copy of the internal value. In contrast to
+ * other vmap interfaces, you don't need it for the client's vunmap
+ * function. So you can modify it at will during blit and draw operations.
+ *
  * Returns:
- *	The mapped memory's address
+ *	0 on success, or a negative errno code otherwise.
  */
-void *drm_client_buffer_vmap(struct drm_client_buffer *buffer)
+int
+drm_client_buffer_vmap(struct drm_client_buffer *buffer, struct dma_buf_map *map_copy)
 {
-	struct dma_buf_map map;
+	struct dma_buf_map *map = &buffer->map;
 	int ret;
 
-	if (buffer->vaddr)
-		return buffer->vaddr;
+	if (dma_buf_map_is_set(map))
+		goto out;
 
 	/*
 	 * FIXME: The dependency on GEM here isn't required, we could
@@ -319,13 +325,14 @@ void *drm_client_buffer_vmap(struct drm_client_buffer *buffer)
 	 * fd_install step out of the driver backend hooks, to make that
 	 * final step optional for internal users.
 	 */
-	ret = drm_gem_vmap(buffer->gem, &map);
+	ret = drm_gem_vmap(buffer->gem, map);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
-	buffer->vaddr = map.vaddr;
+out:
+	*map_copy = *map;
 
-	return map.vaddr;
+	return 0;
 }
 EXPORT_SYMBOL(drm_client_buffer_vmap);
 
@@ -339,10 +346,9 @@ EXPORT_SYMBOL(drm_client_buffer_vmap);
  */
 void drm_client_buffer_vunmap(struct drm_client_buffer *buffer)
 {
-	struct dma_buf_map map = DMA_BUF_MAP_INIT_VADDR(buffer->vaddr);
+	struct dma_buf_map *map = &buffer->map;
 
-	drm_gem_vunmap(buffer->gem, &map);
-	buffer->vaddr = NULL;
+	drm_gem_vunmap(buffer->gem, map);
 }
 EXPORT_SYMBOL(drm_client_buffer_vunmap);
 
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index c2f72bb6afb1..6212cd7cde1d 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -378,7 +378,7 @@ static void drm_fb_helper_dirty_blit_real(struct drm_fb_helper *fb_helper,
 	unsigned int cpp = fb->format->cpp[0];
 	size_t offset = clip->y1 * fb->pitches[0] + clip->x1 * cpp;
 	void *src = fb_helper->fbdev->screen_buffer + offset;
-	void *dst = fb_helper->buffer->vaddr + offset;
+	void *dst = fb_helper->buffer->map.vaddr + offset;
 	size_t len = (clip->x2 - clip->x1) * cpp;
 	unsigned int y;
 
@@ -400,7 +400,8 @@ static void drm_fb_helper_dirty_work(struct work_struct *work)
 	struct drm_clip_rect *clip = &helper->dirty_clip;
 	struct drm_clip_rect clip_copy;
 	unsigned long flags;
-	void *vaddr;
+	struct dma_buf_map map;
+	int ret;
 
 	spin_lock_irqsave(&helper->dirty_lock, flags);
 	clip_copy = *clip;
@@ -413,8 +414,8 @@ static void drm_fb_helper_dirty_work(struct work_struct *work)
 
 		/* Generic fbdev uses a shadow buffer */
 		if (helper->buffer) {
-			vaddr = drm_client_buffer_vmap(helper->buffer);
-			if (IS_ERR(vaddr))
+			ret = drm_client_buffer_vmap(helper->buffer, &map);
+			if (ret)
 				return;
 			drm_fb_helper_dirty_blit_real(helper, &clip_copy);
 		}
@@ -2060,7 +2061,8 @@ static int drm_fb_helper_generic_probe(struct drm_fb_helper *fb_helper,
 	struct drm_framebuffer *fb;
 	struct fb_info *fbi;
 	u32 format;
-	void *vaddr;
+	struct dma_buf_map map;
+	int ret;
 
 	drm_dbg_kms(dev, "surface width(%d), height(%d) and bpp(%d)\n",
 		    sizes->surface_width, sizes->surface_height,
@@ -2096,11 +2098,14 @@ static int drm_fb_helper_generic_probe(struct drm_fb_helper *fb_helper,
 		fb_deferred_io_init(fbi);
 	} else {
 		/* buffer is mapped for HW framebuffer */
-		vaddr = drm_client_buffer_vmap(fb_helper->buffer);
-		if (IS_ERR(vaddr))
-			return PTR_ERR(vaddr);
+		ret = drm_client_buffer_vmap(fb_helper->buffer, &map);
+		if (ret)
+			return ret;
+		if (map.is_iomem)
+			fbi->screen_base = map.vaddr_iomem;
+		else
+			fbi->screen_buffer = map.vaddr;
 
-		fbi->screen_buffer = vaddr;
 		/* Shamelessly leak the physical address to user-space */
 #if IS_ENABLED(CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM)
 		if (drm_leak_fbdev_smem && fbi->fix.smem_start == 0)
diff --git a/include/drm/drm_client.h b/include/drm/drm_client.h
index 7aaea665bfc2..f07f2fb02e75 100644
--- a/include/drm/drm_client.h
+++ b/include/drm/drm_client.h
@@ -3,6 +3,7 @@
 #ifndef _DRM_CLIENT_H_
 #define _DRM_CLIENT_H_
 
+#include <linux/dma-buf-map.h>
 #include <linux/lockdep.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
@@ -141,9 +142,9 @@ struct drm_client_buffer {
 	struct drm_gem_object *gem;
 
 	/**
-	 * @vaddr: Virtual address for the buffer
+	 * @map: Virtual address for the buffer
 	 */
-	void *vaddr;
+	struct dma_buf_map map;
 
 	/**
 	 * @fb: DRM framebuffer
@@ -155,7 +156,7 @@ struct drm_client_buffer *
 drm_client_framebuffer_create(struct drm_client_dev *client, u32 width, u32 height, u32 format);
 void drm_client_framebuffer_delete(struct drm_client_buffer *buffer);
 int drm_client_framebuffer_flush(struct drm_client_buffer *buffer, struct drm_rect *rect);
-void *drm_client_buffer_vmap(struct drm_client_buffer *buffer);
+int drm_client_buffer_vmap(struct drm_client_buffer *buffer, struct dma_buf_map *map);
 void drm_client_buffer_vunmap(struct drm_client_buffer *buffer);
 
 int drm_client_modeset_create(struct drm_client_dev *client);
-- 
2.28.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
