Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AA43A148A
	for <lists+spice-devel@lfdr.de>; Wed,  9 Jun 2021 14:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF946E301;
	Wed,  9 Jun 2021 12:36:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 333 seconds by postgrey-1.36 at gabe;
 Wed, 09 Jun 2021 11:25:48 UTC
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6355D6E8F5;
 Wed,  9 Jun 2021 11:25:48 +0000 (UTC)
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 70A741FD4E;
 Wed,  9 Jun 2021 11:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1623237619; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uHgjG881Tzc6TF1wm3lJNykWl3nzYgQpZTifsGlExSU=;
 b=hgqBLcoJY2hRbV6/3Hrf2WYuynMUd9lzWYUR+DdXlNfTZli8hzGqhtU3QmtTRRAqV6fS8M
 wDJdF1FkdaZY1ArXcHL5VCIPMV0PRYELkHJOZDDwCl2CsYPEyMKRwPJ3ZZ5Ic5fk30uGGW
 rCSXuXdk8BiSRqjnpkEqOsqJ8E3bvFY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1623237619;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uHgjG881Tzc6TF1wm3lJNykWl3nzYgQpZTifsGlExSU=;
 b=eGgR9KjAmEUGAXpoJk3a/G6GTIkV9mSVYZLHZAU/NHGNMndowHzlD+P9aLIVMDFR5MbUPm
 KIutgtmlNht3fHCg==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id CDACA118DD;
 Wed,  9 Jun 2021 11:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1623237619; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uHgjG881Tzc6TF1wm3lJNykWl3nzYgQpZTifsGlExSU=;
 b=hgqBLcoJY2hRbV6/3Hrf2WYuynMUd9lzWYUR+DdXlNfTZli8hzGqhtU3QmtTRRAqV6fS8M
 wDJdF1FkdaZY1ArXcHL5VCIPMV0PRYELkHJOZDDwCl2CsYPEyMKRwPJ3ZZ5Ic5fk30uGGW
 rCSXuXdk8BiSRqjnpkEqOsqJ8E3bvFY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1623237619;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uHgjG881Tzc6TF1wm3lJNykWl3nzYgQpZTifsGlExSU=;
 b=eGgR9KjAmEUGAXpoJk3a/G6GTIkV9mSVYZLHZAU/NHGNMndowHzlD+P9aLIVMDFR5MbUPm
 KIutgtmlNht3fHCg==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id 0G1AMfKjwGBTUgAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Wed, 09 Jun 2021 11:20:18 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 l.stach@pengutronix.de, linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 krzysztof.kozlowski@canonical.com, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, matthias.bgg@gmail.com, robdclark@gmail.com,
 sean@poorly.run, airlied@redhat.com, kraxel@redhat.com, hjc@rock-chips.com,
 heiko@sntech.de, oleksandr_andrushchenko@epam.com, sumit.semwal@linaro.org,
 christian.koenig@amd.com
Date: Wed,  9 Jun 2021 13:20:11 +0200
Message-Id: <20210609112012.10019-9-tzimmermann@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609112012.10019-1-tzimmermann@suse.de>
References: <20210609112012.10019-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 09 Jun 2021 12:36:34 +0000
Subject: [Spice-devel] [PATCH 8/9] drm/rockchip: Implement mmap as GEM
 object function
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 etnaviv@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>, xen-devel@lists.xenproject.org,
 spice-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Moving the driver-specific mmap code into a GEM object function allows
for using DRM helpers for various mmap callbacks.

The respective rockchip functions are being removed. The file_operations
structure fops is now being created by the helper macro
DEFINE_DRM_GEM_FOPS().

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   | 13 +-----
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |  3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c   | 44 +++++--------------
 drivers/gpu/drm/rockchip/rockchip_drm_gem.h   |  7 ---
 4 files changed, 15 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index b730b8d5d949..2e3ab573a817 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -208,16 +208,7 @@ static void rockchip_drm_unbind(struct device *dev)
 	drm_dev_put(drm_dev);
 }
 
-static const struct file_operations rockchip_drm_driver_fops = {
-	.owner = THIS_MODULE,
-	.open = drm_open,
-	.mmap = rockchip_gem_mmap,
-	.poll = drm_poll,
-	.read = drm_read,
-	.unlocked_ioctl = drm_ioctl,
-	.compat_ioctl = drm_compat_ioctl,
-	.release = drm_release,
-};
+DEFINE_DRM_GEM_FOPS(rockchip_drm_driver_fops);
 
 static const struct drm_driver rockchip_drm_driver = {
 	.driver_features	= DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
@@ -226,7 +217,7 @@ static const struct drm_driver rockchip_drm_driver = {
 	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
 	.gem_prime_import_sg_table	= rockchip_gem_prime_import_sg_table,
-	.gem_prime_mmap		= rockchip_gem_mmap_buf,
+	.gem_prime_mmap		= drm_gem_prime_mmap,
 	.fops			= &rockchip_drm_driver_fops,
 	.name	= DRIVER_NAME,
 	.desc	= DRIVER_DESC,
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
index 2fdc455c4ad7..d8418dd39d0e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
@@ -7,6 +7,7 @@
 #include <drm/drm.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_prime.h>
 #include <drm/drm_probe_helper.h>
 
 #include "rockchip_drm_drv.h"
@@ -24,7 +25,7 @@ static int rockchip_fbdev_mmap(struct fb_info *info,
 	struct drm_fb_helper *helper = info->par;
 	struct rockchip_drm_private *private = to_drm_private(helper);
 
-	return rockchip_gem_mmap_buf(private->fbdev_bo, vma);
+	return drm_gem_prime_mmap(private->fbdev_bo, vma);
 }
 
 static const struct fb_ops rockchip_drm_fbdev_ops = {
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 7971f57436dd..63eb73b624aa 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -240,12 +240,22 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
 	int ret;
 	struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
 
+	/*
+	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
+	 * whole buffer from the start.
+	 */
+	vma->vm_pgoff = 0;
+
 	/*
 	 * We allocated a struct page table for rk_obj, so clear
 	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
 	 */
+	vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 	vma->vm_flags &= ~VM_PFNMAP;
 
+	vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
+	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
+
 	if (rk_obj->pages)
 		ret = rockchip_drm_gem_object_mmap_iommu(obj, vma);
 	else
@@ -257,39 +267,6 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
 	return ret;
 }
 
-int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
-			  struct vm_area_struct *vma)
-{
-	int ret;
-
-	ret = drm_gem_mmap_obj(obj, obj->size, vma);
-	if (ret)
-		return ret;
-
-	return rockchip_drm_gem_object_mmap(obj, vma);
-}
-
-/* drm driver mmap file operations */
-int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
-{
-	struct drm_gem_object *obj;
-	int ret;
-
-	ret = drm_gem_mmap(filp, vma);
-	if (ret)
-		return ret;
-
-	/*
-	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
-	 * whole buffer from the start.
-	 */
-	vma->vm_pgoff = 0;
-
-	obj = vma->vm_private_data;
-
-	return rockchip_drm_gem_object_mmap(obj, vma);
-}
-
 static void rockchip_gem_release_object(struct rockchip_gem_object *rk_obj)
 {
 	drm_gem_object_release(&rk_obj->base);
@@ -301,6 +278,7 @@ static const struct drm_gem_object_funcs rockchip_gem_object_funcs = {
 	.get_sg_table = rockchip_gem_prime_get_sg_table,
 	.vmap = rockchip_gem_prime_vmap,
 	.vunmap	= rockchip_gem_prime_vunmap,
+	.mmap = rockchip_drm_gem_object_mmap,
 	.vm_ops = &drm_gem_cma_vm_ops,
 };
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
index 5a70a56cd406..47c1861eece0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
@@ -34,13 +34,6 @@ rockchip_gem_prime_import_sg_table(struct drm_device *dev,
 int rockchip_gem_prime_vmap(struct drm_gem_object *obj, struct dma_buf_map *map);
 void rockchip_gem_prime_vunmap(struct drm_gem_object *obj, struct dma_buf_map *map);
 
-/* drm driver mmap file operations */
-int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma);
-
-/* mmap a gem object to userspace. */
-int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
-			  struct vm_area_struct *vma);
-
 struct rockchip_gem_object *
 	rockchip_gem_create_object(struct drm_device *drm, unsigned int size,
 				   bool alloc_kmap);
-- 
2.31.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
