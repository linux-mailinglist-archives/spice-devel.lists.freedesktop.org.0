Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B282CA869
	for <lists+spice-devel@lfdr.de>; Tue,  1 Dec 2020 17:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135656E84A;
	Tue,  1 Dec 2020 16:44:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4806E58E;
 Tue,  1 Dec 2020 10:35:56 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 2DBFBACC1;
 Tue,  1 Dec 2020 10:35:55 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Tue,  1 Dec 2020 11:35:30 +0100
Message-Id: <20201201103542.2182-9-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201103542.2182-1-tzimmermann@suse.de>
References: <20201201103542.2182-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 01 Dec 2020 16:44:12 +0000
Subject: [Spice-devel] [PATCH v2 08/20] drm/hibmc: Remove references to
 struct drm_device.pdev
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Xinliang Liu <xinliang.liu@linaro.org>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 John Stultz <john.stultz@linaro.org>, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Tian Tao <tiantao6@hisilicon.com>,
 spice-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 Chen Feng <puck.chen@hisilicon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Using struct drm_device.pdev is deprecated. Convert hibmc to struct
drm_device.dev. No functional changes.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Xinliang Liu <xinliang.liu@linaro.org>
Cc: Tian Tao  <tiantao6@hisilicon.com>
Cc: John Stultz <john.stultz@linaro.org>
Cc: Xinwei Kong <kong.kongxinwei@hisilicon.com>
Cc: Chen Feng <puck.chen@hisilicon.com>
---
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c | 10 +++++-----
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c |  2 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_ttm.c     |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c
index d845657fd99c..ac5868343d0c 100644
--- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c
+++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c
@@ -203,7 +203,7 @@ static void hibmc_hw_config(struct hibmc_drm_private *priv)
 static int hibmc_hw_map(struct hibmc_drm_private *priv)
 {
 	struct drm_device *dev = priv->dev;
-	struct pci_dev *pdev = dev->pdev;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	resource_size_t addr, size, ioaddr, iosize;
 
 	ioaddr = pci_resource_start(pdev, 1);
@@ -249,7 +249,7 @@ static int hibmc_unload(struct drm_device *dev)
 	if (dev->irq_enabled)
 		drm_irq_uninstall(dev);
 
-	pci_disable_msi(dev->pdev);
+	pci_disable_msi(to_pci_dev(dev->dev));
 	hibmc_kms_fini(priv);
 	hibmc_mm_fini(priv);
 	dev->dev_private = NULL;
@@ -258,6 +258,7 @@ static int hibmc_unload(struct drm_device *dev)
 
 static int hibmc_load(struct drm_device *dev)
 {
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct hibmc_drm_private *priv;
 	int ret;
 
@@ -287,11 +288,11 @@ static int hibmc_load(struct drm_device *dev)
 		goto err;
 	}
 
-	ret = pci_enable_msi(dev->pdev);
+	ret = pci_enable_msi(pdev);
 	if (ret) {
 		drm_warn(dev, "enabling MSI failed: %d\n", ret);
 	} else {
-		ret = drm_irq_install(dev, dev->pdev->irq);
+		ret = drm_irq_install(dev, pdev->irq);
 		if (ret)
 			drm_warn(dev, "install irq failed: %d\n", ret);
 	}
@@ -324,7 +325,6 @@ static int hibmc_pci_probe(struct pci_dev *pdev,
 		return PTR_ERR(dev);
 	}
 
-	dev->pdev = pdev;
 	pci_set_drvdata(pdev, dev);
 
 	ret = pci_enable_device(pdev);
diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c
index 86d712090d87..410bd019bb35 100644
--- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c
+++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c
@@ -83,7 +83,7 @@ int hibmc_ddc_create(struct drm_device *drm_dev,
 	connector->adapter.owner = THIS_MODULE;
 	connector->adapter.class = I2C_CLASS_DDC;
 	snprintf(connector->adapter.name, I2C_NAME_SIZE, "HIS i2c bit bus");
-	connector->adapter.dev.parent = &drm_dev->pdev->dev;
+	connector->adapter.dev.parent = drm_dev->dev;
 	i2c_set_adapdata(&connector->adapter, connector);
 	connector->adapter.algo_data = &connector->bit_data;
 
diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_ttm.c b/drivers/gpu/drm/hisilicon/hibmc/hibmc_ttm.c
index 602ece11bb4a..77f075075db2 100644
--- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_ttm.c
+++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_ttm.c
@@ -26,9 +26,9 @@ int hibmc_mm_init(struct hibmc_drm_private *hibmc)
 	struct drm_vram_mm *vmm;
 	int ret;
 	struct drm_device *dev = hibmc->dev;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 
-	vmm = drm_vram_helper_alloc_mm(dev,
-				       pci_resource_start(dev->pdev, 0),
+	vmm = drm_vram_helper_alloc_mm(dev, pci_resource_start(pdev, 0),
 				       hibmc->fb_size);
 	if (IS_ERR(vmm)) {
 		ret = PTR_ERR(vmm);
-- 
2.29.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
