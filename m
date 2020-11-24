Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B052C280E
	for <lists+spice-devel@lfdr.de>; Tue, 24 Nov 2020 14:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BB56E3EC;
	Tue, 24 Nov 2020 13:33:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1DD66E22C;
 Tue, 24 Nov 2020 11:38:28 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4988EAD21;
 Tue, 24 Nov 2020 11:38:27 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Tue, 24 Nov 2020 12:38:11 +0100
Message-Id: <20201124113824.19994-3-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124113824.19994-1-tzimmermann@suse.de>
References: <20201124113824.19994-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 24 Nov 2020 13:33:53 +0000
Subject: [Spice-devel] [PATCH 02/15] drm/ast: Remove references to struct
 drm_device.pdev
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
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 spice-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Using struct drm_device.pdev is deprecated. Convert ast to struct
drm_device.dev. No functional changes.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/ast/ast_drv.c  |  4 ++--
 drivers/gpu/drm/ast/ast_main.c | 25 +++++++++++++------------
 drivers/gpu/drm/ast/ast_mm.c   | 17 +++++++++--------
 drivers/gpu/drm/ast/ast_mode.c |  5 +++--
 drivers/gpu/drm/ast/ast_post.c |  8 +++++---
 5 files changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/ast/ast_drv.c b/drivers/gpu/drm/ast/ast_drv.c
index 667b450606ef..ea8164e7a6dc 100644
--- a/drivers/gpu/drm/ast/ast_drv.c
+++ b/drivers/gpu/drm/ast/ast_drv.c
@@ -147,7 +147,7 @@ static int ast_drm_freeze(struct drm_device *dev)
 	error = drm_mode_config_helper_suspend(dev);
 	if (error)
 		return error;
-	pci_save_state(dev->pdev);
+	pci_save_state(to_pci_dev(dev->dev));
 	return 0;
 }
 
@@ -162,7 +162,7 @@ static int ast_drm_resume(struct drm_device *dev)
 {
 	int ret;
 
-	if (pci_enable_device(dev->pdev))
+	if (pci_enable_device(to_pci_dev(dev->dev)))
 		return -EIO;
 
 	ret = ast_drm_thaw(dev);
diff --git a/drivers/gpu/drm/ast/ast_main.c b/drivers/gpu/drm/ast/ast_main.c
index 1b13199858cb..0ac3c2039c4b 100644
--- a/drivers/gpu/drm/ast/ast_main.c
+++ b/drivers/gpu/drm/ast/ast_main.c
@@ -67,8 +67,9 @@ uint8_t ast_get_index_reg_mask(struct ast_private *ast,
 
 static void ast_detect_config_mode(struct drm_device *dev, u32 *scu_rev)
 {
-	struct device_node *np = dev->pdev->dev.of_node;
+	struct device_node *np = dev->dev->of_node;
 	struct ast_private *ast = to_ast_private(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	uint32_t data, jregd0, jregd1;
 
 	/* Defaults */
@@ -85,7 +86,7 @@ static void ast_detect_config_mode(struct drm_device *dev, u32 *scu_rev)
 	}
 
 	/* Not all families have a P2A bridge */
-	if (dev->pdev->device != PCI_CHIP_AST2000)
+	if (pdev->device != PCI_CHIP_AST2000)
 		return;
 
 	/*
@@ -119,6 +120,7 @@ static void ast_detect_config_mode(struct drm_device *dev, u32 *scu_rev)
 static int ast_detect_chip(struct drm_device *dev, bool *need_post)
 {
 	struct ast_private *ast = to_ast_private(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	uint32_t jreg, scu_rev;
 
 	/*
@@ -143,19 +145,19 @@ static int ast_detect_chip(struct drm_device *dev, bool *need_post)
 	ast_detect_config_mode(dev, &scu_rev);
 
 	/* Identify chipset */
-	if (dev->pdev->revision >= 0x50) {
+	if (pdev->revision >= 0x50) {
 		ast->chip = AST2600;
 		drm_info(dev, "AST 2600 detected\n");
-	} else if (dev->pdev->revision >= 0x40) {
+	} else if (pdev->revision >= 0x40) {
 		ast->chip = AST2500;
 		drm_info(dev, "AST 2500 detected\n");
-	} else if (dev->pdev->revision >= 0x30) {
+	} else if (pdev->revision >= 0x30) {
 		ast->chip = AST2400;
 		drm_info(dev, "AST 2400 detected\n");
-	} else if (dev->pdev->revision >= 0x20) {
+	} else if (pdev->revision >= 0x20) {
 		ast->chip = AST2300;
 		drm_info(dev, "AST 2300 detected\n");
-	} else if (dev->pdev->revision >= 0x10) {
+	} else if (pdev->revision >= 0x10) {
 		switch (scu_rev & 0x0300) {
 		case 0x0200:
 			ast->chip = AST1100;
@@ -265,7 +267,7 @@ static int ast_detect_chip(struct drm_device *dev, bool *need_post)
 
 static int ast_get_dram_info(struct drm_device *dev)
 {
-	struct device_node *np = dev->pdev->dev.of_node;
+	struct device_node *np = dev->dev->of_node;
 	struct ast_private *ast = to_ast_private(dev);
 	uint32_t mcr_cfg, mcr_scu_mpll, mcr_scu_strap;
 	uint32_t denum, num, div, ref_pll, dsel;
@@ -409,10 +411,9 @@ struct ast_private *ast_device_create(const struct drm_driver *drv,
 		return ast;
 	dev = &ast->base;
 
-	dev->pdev = pdev;
 	pci_set_drvdata(pdev, dev);
 
-	ast->regs = pci_iomap(dev->pdev, 1, 0);
+	ast->regs = pci_iomap(pdev, 1, 0);
 	if (!ast->regs)
 		return ERR_PTR(-EIO);
 
@@ -421,14 +422,14 @@ struct ast_private *ast_device_create(const struct drm_driver *drv,
 	 * assume the chip has MMIO enabled by default (rev 0x20
 	 * and higher).
 	 */
-	if (!(pci_resource_flags(dev->pdev, 2) & IORESOURCE_IO)) {
+	if (!(pci_resource_flags(pdev, 2) & IORESOURCE_IO)) {
 		drm_info(dev, "platform has no IO space, trying MMIO\n");
 		ast->ioregs = ast->regs + AST_IO_MM_OFFSET;
 	}
 
 	/* "map" IO regs if the above hasn't done so already */
 	if (!ast->ioregs) {
-		ast->ioregs = pci_iomap(dev->pdev, 2, 0);
+		ast->ioregs = pci_iomap(pdev, 2, 0);
 		if (!ast->ioregs)
 			return ERR_PTR(-EIO);
 	}
diff --git a/drivers/gpu/drm/ast/ast_mm.c b/drivers/gpu/drm/ast/ast_mm.c
index 8392ebde504b..7592f1b9e1f1 100644
--- a/drivers/gpu/drm/ast/ast_mm.c
+++ b/drivers/gpu/drm/ast/ast_mm.c
@@ -77,31 +77,32 @@ static u32 ast_get_vram_size(struct ast_private *ast)
 static void ast_mm_release(struct drm_device *dev, void *ptr)
 {
 	struct ast_private *ast = to_ast_private(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 
 	arch_phys_wc_del(ast->fb_mtrr);
-	arch_io_free_memtype_wc(pci_resource_start(dev->pdev, 0),
-				pci_resource_len(dev->pdev, 0));
+	arch_io_free_memtype_wc(pci_resource_start(pdev, 0),
+				pci_resource_len(pdev, 0));
 }
 
 int ast_mm_init(struct ast_private *ast)
 {
 	struct drm_device *dev = &ast->base;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 vram_size;
 	int ret;
 
 	vram_size = ast_get_vram_size(ast);
 
-	ret = drmm_vram_helper_init(dev, pci_resource_start(dev->pdev, 0),
-				    vram_size);
+	ret = drmm_vram_helper_init(dev, pci_resource_start(pdev, 0), vram_size);
 	if (ret) {
 		drm_err(dev, "Error initializing VRAM MM; %d\n", ret);
 		return ret;
 	}
 
-	arch_io_reserve_memtype_wc(pci_resource_start(dev->pdev, 0),
-				   pci_resource_len(dev->pdev, 0));
-	ast->fb_mtrr = arch_phys_wc_add(pci_resource_start(dev->pdev, 0),
-					pci_resource_len(dev->pdev, 0));
+	arch_io_reserve_memtype_wc(pci_resource_start(pdev, 0),
+				   pci_resource_len(pdev, 0));
+	ast->fb_mtrr = arch_phys_wc_add(pci_resource_start(pdev, 0),
+					pci_resource_len(pdev, 0));
 
 	return drmm_add_action_or_reset(dev, ast_mm_release, NULL);
 }
diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index 9db371f4054f..fd61055001bd 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -1107,6 +1107,7 @@ static const struct drm_mode_config_funcs ast_mode_config_funcs = {
 int ast_mode_config_init(struct ast_private *ast)
 {
 	struct drm_device *dev = &ast->base;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	int ret;
 
 	ret = ast_cursor_init(ast);
@@ -1122,7 +1123,7 @@ int ast_mode_config_init(struct ast_private *ast)
 	dev->mode_config.min_height = 0;
 	dev->mode_config.preferred_depth = 24;
 	dev->mode_config.prefer_shadow = 1;
-	dev->mode_config.fb_base = pci_resource_start(dev->pdev, 0);
+	dev->mode_config.fb_base = pci_resource_start(pdev, 0);
 
 	if (ast->chip == AST2100 ||
 	    ast->chip == AST2200 ||
@@ -1259,7 +1260,7 @@ static struct ast_i2c_chan *ast_i2c_create(struct drm_device *dev)
 
 	i2c->adapter.owner = THIS_MODULE;
 	i2c->adapter.class = I2C_CLASS_DDC;
-	i2c->adapter.dev.parent = &dev->pdev->dev;
+	i2c->adapter.dev.parent = dev->dev;
 	i2c->dev = dev;
 	i2c_set_adapdata(&i2c->adapter, i2c);
 	snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
diff --git a/drivers/gpu/drm/ast/ast_post.c b/drivers/gpu/drm/ast/ast_post.c
index 8902c2f84bf9..0607658dde51 100644
--- a/drivers/gpu/drm/ast/ast_post.c
+++ b/drivers/gpu/drm/ast/ast_post.c
@@ -71,6 +71,7 @@ static void
 ast_set_def_ext_reg(struct drm_device *dev)
 {
 	struct ast_private *ast = to_ast_private(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u8 i, index, reg;
 	const u8 *ext_reg_info;
 
@@ -80,7 +81,7 @@ ast_set_def_ext_reg(struct drm_device *dev)
 
 	if (ast->chip == AST2300 || ast->chip == AST2400 ||
 	    ast->chip == AST2500) {
-		if (dev->pdev->revision >= 0x20)
+		if (pdev->revision >= 0x20)
 			ext_reg_info = extreginfo_ast2300;
 		else
 			ext_reg_info = extreginfo_ast2300a0;
@@ -366,11 +367,12 @@ static void ast_init_dram_reg(struct drm_device *dev)
 void ast_post_gpu(struct drm_device *dev)
 {
 	struct ast_private *ast = to_ast_private(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 reg;
 
-	pci_read_config_dword(dev->pdev, 0x04, &reg);
+	pci_read_config_dword(pdev, 0x04, &reg);
 	reg |= 0x3;
-	pci_write_config_dword(dev->pdev, 0x04, reg);
+	pci_write_config_dword(pdev, 0x04, reg);
 
 	ast_enable_vga(dev);
 	ast_open_key(ast);
-- 
2.29.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
