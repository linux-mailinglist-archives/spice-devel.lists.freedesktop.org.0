Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C33393A1489
	for <lists+spice-devel@lfdr.de>; Wed,  9 Jun 2021 14:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A366E2C7;
	Wed,  9 Jun 2021 12:36:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B8916E969;
 Wed,  9 Jun 2021 11:26:48 +0000 (UTC)
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1EEE2219DE;
 Wed,  9 Jun 2021 11:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1623237618; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=Qqr+wxRHDfcailoytXEx2oS2lcd/30JrzOhkpalX061VmVUSrdLwmnhSN0MtbG7SF3Lswx
 sQnQ8cPp3QB4PF/l8crVWeS09RmiLZkfgwuhMYtcPRnrUahhNxSrscRyW90luzSwv3G0CF
 7A0GUIi66rqUX0OkNYcpsZIV/8EwyQU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1623237618;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=EYZQ1fZ4GiUePdUKfwvu3c7uANqrcaYHVRwXY+xLr2rs0MZBPp9J/4r/U+gB27YIyBmPIF
 iyt7y2F2VM4VApDw==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id 77538118DD;
 Wed,  9 Jun 2021 11:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1623237618; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=Qqr+wxRHDfcailoytXEx2oS2lcd/30JrzOhkpalX061VmVUSrdLwmnhSN0MtbG7SF3Lswx
 sQnQ8cPp3QB4PF/l8crVWeS09RmiLZkfgwuhMYtcPRnrUahhNxSrscRyW90luzSwv3G0CF
 7A0GUIi66rqUX0OkNYcpsZIV/8EwyQU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1623237618;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=EYZQ1fZ4GiUePdUKfwvu3c7uANqrcaYHVRwXY+xLr2rs0MZBPp9J/4r/U+gB27YIyBmPIF
 iyt7y2F2VM4VApDw==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id 4KVTHPGjwGBTUgAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Wed, 09 Jun 2021 11:20:17 +0000
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
Date: Wed,  9 Jun 2021 13:20:09 +0200
Message-Id: <20210609112012.10019-7-tzimmermann@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609112012.10019-1-tzimmermann@suse.de>
References: <20210609112012.10019-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 09 Jun 2021 12:36:34 +0000
Subject: [Spice-devel] [PATCH 6/9] drm/vgem: Implement mmap as GEM object
 function
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

The respective vgem functions are being removed. The file_operations
structure vgem_driver_fops is now being created by the helper macro
DEFINE_DRM_GEM_FOPS().

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 46 ++++-----------------------------
 1 file changed, 5 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index bf38a7e319d1..df634aa52638 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -239,32 +239,7 @@ static struct drm_ioctl_desc vgem_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(VGEM_FENCE_SIGNAL, vgem_fence_signal_ioctl, DRM_RENDER_ALLOW),
 };
 
-static int vgem_mmap(struct file *filp, struct vm_area_struct *vma)
-{
-	unsigned long flags = vma->vm_flags;
-	int ret;
-
-	ret = drm_gem_mmap(filp, vma);
-	if (ret)
-		return ret;
-
-	/* Keep the WC mmaping set by drm_gem_mmap() but our pages
-	 * are ordinary and not special.
-	 */
-	vma->vm_flags = flags | VM_DONTEXPAND | VM_DONTDUMP;
-	return 0;
-}
-
-static const struct file_operations vgem_driver_fops = {
-	.owner		= THIS_MODULE,
-	.open		= drm_open,
-	.mmap		= vgem_mmap,
-	.poll		= drm_poll,
-	.read		= drm_read,
-	.unlocked_ioctl = drm_ioctl,
-	.compat_ioctl	= drm_compat_ioctl,
-	.release	= drm_release,
-};
+DEFINE_DRM_GEM_FOPS(vgem_driver_fops);
 
 static struct page **vgem_pin_pages(struct drm_vgem_gem_object *bo)
 {
@@ -387,24 +362,12 @@ static void vgem_prime_vunmap(struct drm_gem_object *obj, struct dma_buf_map *ma
 	vgem_unpin_pages(bo);
 }
 
-static int vgem_prime_mmap(struct drm_gem_object *obj,
-			   struct vm_area_struct *vma)
+static int vgem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
-	int ret;
-
-	if (obj->size < vma->vm_end - vma->vm_start)
-		return -EINVAL;
-
-	if (!obj->filp)
-		return -ENODEV;
-
-	ret = call_mmap(obj->filp, vma);
-	if (ret)
-		return ret;
-
 	vma_set_file(vma, obj->filp);
 	vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 	vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
+	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
 
 	return 0;
 }
@@ -416,6 +379,7 @@ static const struct drm_gem_object_funcs vgem_gem_object_funcs = {
 	.get_sg_table = vgem_prime_get_sg_table,
 	.vmap = vgem_prime_vmap,
 	.vunmap = vgem_prime_vunmap,
+	.mmap = vgem_prime_mmap,
 	.vm_ops = &vgem_gem_vm_ops,
 };
 
@@ -433,7 +397,7 @@ static const struct drm_driver vgem_driver = {
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_prime_import = vgem_prime_import,
 	.gem_prime_import_sg_table = vgem_prime_import_sg_table,
-	.gem_prime_mmap = vgem_prime_mmap,
+	.gem_prime_mmap = drm_gem_prime_mmap,
 
 	.name	= DRIVER_NAME,
 	.desc	= DRIVER_DESC,
-- 
2.31.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
